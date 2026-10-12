package com.google.appinventor.components.runtime;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;

@DesignerComponent(category = ComponentCategory.SENSORS, description = "<p>Non-visible component that measures the ambient geomagnetic field for all three physical axes (x, y, z) in Tesla https://en.wikipedia.org/wiki/Tesla_(unit).</p>", iconName = "images/magneticSensor.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public class MagneticFieldSensor extends AndroidNonvisibleComponent implements SensorEventListener, Deleteable, OnPauseListener, OnResumeListener, OnStopListener, SensorComponent {
    private double absoluteStrength;
    private boolean enabled;
    private boolean listening;
    private Sensor magneticSensor;
    private final SensorManager sensorManager;
    private float xStrength;
    private float yStrength;
    private float zStrength;

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    public MagneticFieldSensor(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.enabled = true;
        this.form.registerForOnResume(this);
        this.form.registerForOnStop(this);
        this.form.registerForOnPause(this);
        SensorManager sensorManager = (SensorManager) componentContainer.$context().getSystemService("sensor");
        this.sensorManager = sensorManager;
        this.magneticSensor = sensorManager.getDefaultSensor(2);
        startListening();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Indicates that there is a magnetic field sensor in the device and it is available.")
    public boolean Available() {
        return this.sensorManager.getSensorList(2).size() > 0;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Indicates the maximum range the magnetic sensor can reach.")
    public float MaximumRange() {
        return this.magneticSensor.getMaximumRange();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Indicates whether or not the magnetic field sensor is enabled and working.")
    public boolean Enabled() {
        return this.enabled;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Enabled(boolean z) {
        if (this.enabled != z) {
            this.enabled = z;
        }
        if (this.enabled) {
            startListening();
        } else {
            stopListening();
        }
    }

    @SimpleEvent(description = "Triggers when magnetic field has changed, setting the new values in parameters.")
    public void MagneticChanged(float f, float f2, float f3, double d) {
        EventDispatcher.dispatchEvent(this, "MagneticChanged", Float.valueOf(f), Float.valueOf(f2), Float.valueOf(f3), Double.valueOf(d));
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Indicates the absolute strength of the field.")
    public double AbsoluteStrength() {
        return this.absoluteStrength;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Indicates the field's strength in the X-axis.")
    public float XStrength() {
        return this.xStrength;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Indicates the field's strength in the Y-axis.")
    public float YStrength() {
        return this.yStrength;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Indicates the field's strength in the Z-axis.")
    public float ZStrength() {
        return this.zStrength;
    }

    private Sensor getMagneticSensor() {
        Sensor defaultSensor = this.sensorManager.getDefaultSensor(2);
        return defaultSensor != null ? defaultSensor : this.sensorManager.getDefaultSensor(2);
    }

    @Override // com.google.appinventor.components.runtime.OnResumeListener
    public void onResume() {
        if (this.enabled) {
            startListening();
        }
    }

    @Override // com.google.appinventor.components.runtime.OnStopListener
    public void onStop() {
        if (this.enabled) {
            stopListening();
        }
    }

    @Override // com.google.appinventor.components.runtime.Deleteable
    public void onDelete() {
        if (this.enabled) {
            stopListening();
        }
    }

    @Override // com.google.appinventor.components.runtime.OnPauseListener
    public void onPause() {
        stopListening();
    }

    private void startListening() {
        SensorManager sensorManager;
        Sensor sensor;
        if (this.listening || (sensorManager = this.sensorManager) == null || (sensor = this.magneticSensor) == null) {
            return;
        }
        sensorManager.registerListener(this, sensor, 3);
        this.listening = true;
    }

    private void stopListening() {
        SensorManager sensorManager;
        if (!this.listening || (sensorManager = this.sensorManager) == null) {
            return;
        }
        sensorManager.unregisterListener(this);
        this.listening = false;
        this.xStrength = 0.0f;
        this.yStrength = 0.0f;
        this.zStrength = 0.0f;
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) throws CloneNotSupportedException {
        if (this.enabled && sensorEvent.sensor.getType() == 2) {
            sensorEvent.values.clone();
            float[] fArr = sensorEvent.values;
            this.xStrength = fArr[0];
            this.yStrength = fArr[1];
            float f = fArr[2];
            this.zStrength = f;
            float f2 = f * f;
            double dSqrt = Math.sqrt(f2 + (r2 * r2) + (r0 * r0));
            this.absoluteStrength = dSqrt;
            MagneticChanged(this.xStrength, this.yStrength, this.zStrength, dSqrt);
        }
    }
}
