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
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

@DesignerComponent(category = ComponentCategory.SENSORS, description = "<p>Non-visible component that can measure angular velocity in three dimensions in units of degrees per second.</p><p>In order to function, the component must have its <code>Enabled</code> property set to True, and the device must have a gyroscope sensor.</p>", iconName = "images/gyroscopesensor.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public class GyroscopeSensor extends AndroidNonvisibleComponent implements SensorEventListener, Deleteable, OnPauseListener, OnResumeListener, RealTimeDataSource<String, Float> {
    private Set<DataSourceChangeListener> dataSourceObservers;
    private boolean enabled;
    private final Sensor gyroSensor;
    private boolean listening;
    private final SensorManager sensorManager;
    private float xAngularVelocity;
    private float yAngularVelocity;
    private float zAngularVelocity;

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    public GyroscopeSensor(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.dataSourceObservers = new HashSet();
        SensorManager sensorManager = (SensorManager) this.form.getSystemService("sensor");
        this.sensorManager = sensorManager;
        this.gyroSensor = sensorManager.getDefaultSensor(4);
        this.form.registerForOnResume(this);
        this.form.registerForOnPause(this);
        Enabled(true);
    }

    private void startListening() {
        if (this.listening) {
            return;
        }
        this.sensorManager.registerListener(this, this.gyroSensor, 0);
        this.listening = true;
    }

    private void stopListening() {
        if (this.listening) {
            this.sensorManager.unregisterListener(this);
            this.listening = false;
            this.xAngularVelocity = 0.0f;
            this.yAngularVelocity = 0.0f;
            this.zAngularVelocity = 0.0f;
        }
    }

    @SimpleEvent(description = "Indicates that the gyroscope sensor data has changed. The timestamp parameter is the time in nanoseconds at which the event occurred.")
    public void GyroscopeChanged(float f, float f2, float f3, long j) {
        EventDispatcher.dispatchEvent(this, "GyroscopeChanged", Float.valueOf(f), Float.valueOf(f2), Float.valueOf(f3), Long.valueOf(j));
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Indicates whether a gyroscope sensor is available.")
    public boolean Available() {
        return this.sensorManager.getSensorList(4).size() > 0;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean Enabled() {
        return this.enabled;
    }

    @SimpleProperty(description = "If enabled, then sensor events will be generated and XAngularVelocity, YAngularVelocity, and ZAngularVelocity properties will have meaningful values.")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Enabled(boolean z) {
        if (this.enabled != z) {
            this.enabled = z;
            if (z) {
                startListening();
            } else {
                stopListening();
            }
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The angular velocity around the X axis, in degrees per second.")
    public float XAngularVelocity() {
        return this.xAngularVelocity;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The angular velocity around the Y axis, in degrees per second.")
    public float YAngularVelocity() {
        return this.yAngularVelocity;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The angular velocity around the Z axis, in degrees per second.")
    public float ZAngularVelocity() {
        return this.zAngularVelocity;
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (this.enabled) {
            this.xAngularVelocity = (float) Math.toDegrees(sensorEvent.values[0]);
            this.yAngularVelocity = (float) Math.toDegrees(sensorEvent.values[1]);
            this.zAngularVelocity = (float) Math.toDegrees(sensorEvent.values[2]);
            notifyDataObservers("X", (Object) Float.valueOf(this.xAngularVelocity));
            notifyDataObservers("Y", (Object) Float.valueOf(this.yAngularVelocity));
            notifyDataObservers("Z", (Object) Float.valueOf(this.zAngularVelocity));
            GyroscopeChanged(this.xAngularVelocity, this.yAngularVelocity, this.zAngularVelocity, sensorEvent.timestamp);
        }
    }

    @Override // com.google.appinventor.components.runtime.Deleteable
    public void onDelete() {
        stopListening();
    }

    @Override // com.google.appinventor.components.runtime.OnPauseListener
    public void onPause() {
        stopListening();
    }

    @Override // com.google.appinventor.components.runtime.OnResumeListener
    public void onResume() {
        if (this.enabled) {
            startListening();
        }
    }

    @Override // com.google.appinventor.components.runtime.ObservableDataSource
    public void addDataObserver(DataSourceChangeListener dataSourceChangeListener) {
        this.dataSourceObservers.add(dataSourceChangeListener);
    }

    @Override // com.google.appinventor.components.runtime.ObservableDataSource
    public void removeDataObserver(DataSourceChangeListener dataSourceChangeListener) {
        this.dataSourceObservers.remove(dataSourceChangeListener);
    }

    @Override // com.google.appinventor.components.runtime.ObservableDataSource
    public void notifyDataObservers(String str, Object obj) {
        Iterator<DataSourceChangeListener> it = this.dataSourceObservers.iterator();
        while (it.hasNext()) {
            it.next().onReceiveValue(this, str, obj);
        }
    }

    @Override // com.google.appinventor.components.runtime.DataSource
    public Float getDataValue(String str) {
        str.getClass();
        switch (str) {
            case "X":
                return Float.valueOf(this.xAngularVelocity);
            case "Y":
                return Float.valueOf(this.yAngularVelocity);
            case "Z":
                return Float.valueOf(this.zAngularVelocity);
            default:
                return Float.valueOf(0.0f);
        }
    }
}
