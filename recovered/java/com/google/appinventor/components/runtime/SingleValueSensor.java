package com.google.appinventor.components.runtime;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.PropertyTypeConstants;

@SimpleObject
/* loaded from: classes.dex */
public abstract class SingleValueSensor extends AndroidNonvisibleComponent implements OnPauseListener, OnResumeListener, SensorComponent, SensorEventListener, Deleteable {
    private static final int DEFAULT_REFRESH_TIME = 1000;
    protected boolean enabled;
    protected int refreshTime;
    private Sensor sensor;
    protected final SensorManager sensorManager;
    protected int sensorType;
    protected float value;

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    public abstract void onValueChanged(float f);

    public SingleValueSensor(ComponentContainer componentContainer, int i) {
        super(componentContainer.$form());
        this.sensorType = i;
        this.form.registerForOnResume(this);
        this.form.registerForOnPause(this);
        this.refreshTime = 1000;
        this.enabled = true;
        SensorManager sensorManager = (SensorManager) componentContainer.$context().getSystemService("sensor");
        this.sensorManager = sensorManager;
        this.sensor = sensorManager.getDefaultSensor(i);
        startListening();
    }

    public void startListening() {
        this.sensorManager.registerListener(this, this.sensor, this.refreshTime * 1000);
    }

    public void stopListening() {
        this.sensorManager.unregisterListener(this);
    }

    @SimpleProperty(description = "Specifies whether or not the device has the hardware to support the %type% component.")
    public boolean Available() {
        return isAvailable();
    }

    @SimpleProperty(description = "If enabled, then device will listen for changes.")
    public boolean Enabled() {
        return this.enabled;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Enabled(boolean z) {
        setEnabled(z);
    }

    @SimpleProperty(description = "The requested minimum time in milliseconds between changes in readings being reported. Android is not guaranteed to honor the request. Setting this property has no effect on pre-Gingerbread devices.")
    public int RefreshTime() {
        return this.refreshTime;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @DesignerProperty(defaultValue = "1000", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void RefreshTime(int i) {
        this.refreshTime = i;
        if (this.enabled) {
            stopListening();
            startListening();
        }
    }

    public void onSensorChanged(SensorEvent sensorEvent) {
        if (this.enabled && sensorEvent.sensor.getType() == this.sensorType) {
            float f = sensorEvent.values[0];
            this.value = f;
            onValueChanged(f);
        }
    }

    public boolean isAvailable() {
        return this.sensorManager.getSensorList(this.sensorType).size() > 0;
    }

    public void setEnabled(boolean z) {
        if (this.enabled == z) {
            return;
        }
        this.enabled = z;
        if (z) {
            startListening();
        } else {
            stopListening();
        }
    }

    @Override // com.google.appinventor.components.runtime.OnPauseListener
    public void onPause() {
        if (this.enabled) {
            stopListening();
        }
    }

    @Override // com.google.appinventor.components.runtime.OnResumeListener
    public void onResume() {
        if (this.enabled) {
            startListening();
        }
    }

    @Override // com.google.appinventor.components.runtime.Deleteable
    public void onDelete() {
        if (this.enabled) {
            stopListening();
        }
    }

    public float getValue() {
        return this.value;
    }
}
