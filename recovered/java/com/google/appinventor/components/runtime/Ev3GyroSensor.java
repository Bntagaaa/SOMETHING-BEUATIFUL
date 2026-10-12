package com.google.appinventor.components.runtime;

import android.os.Handler;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.GyroSensorMode;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.ErrorMessages;

@DesignerComponent(category = ComponentCategory.LEGOMINDSTORMS, description = "A component that provides a high-level interface to a gyro sensor on a LEGO MINDSTORMS EV3 robot.", iconName = "images/legoMindstormsEv3.png", nonVisible = true, version = 2)
@SimpleObject
/* loaded from: classes.dex */
public class Ev3GyroSensor extends LegoMindstormsEv3Sensor implements Deleteable {
    private static final int DELAY_MILLISECONDS = 50;
    private static final int SENSOR_TYPE = 32;
    private Handler eventHandler;
    private GyroSensorMode mode;
    private double previousValue;
    private boolean sensorValueChangedEventEnabled;
    private final Runnable sensorValueChecker;

    public static /* bridge */ /* synthetic */ double e(Ev3GyroSensor ev3GyroSensor) {
        return ev3GyroSensor.getSensorValue("");
    }

    public Ev3GyroSensor(ComponentContainer componentContainer) {
        super(componentContainer, "Ev3GyroSensor");
        GyroSensorMode gyroSensorMode = GyroSensorMode.Angle;
        this.mode = gyroSensorMode;
        this.previousValue = -1.0d;
        this.sensorValueChangedEventEnabled = false;
        this.eventHandler = new Handler();
        Runnable runnable = new Runnable() { // from class: com.google.appinventor.components.runtime.Ev3GyroSensor.1
            @Override // java.lang.Runnable
            public void run() {
                BluetoothClient bluetoothClient = Ev3GyroSensor.this.bluetooth;
                if (bluetoothClient != null && bluetoothClient.IsConnected()) {
                    double dE = Ev3GyroSensor.e(Ev3GyroSensor.this);
                    if (Ev3GyroSensor.this.previousValue < 0.0d) {
                        Ev3GyroSensor.this.previousValue = dE;
                        Ev3GyroSensor.this.eventHandler.postDelayed(this, 50L);
                        return;
                    }
                    if ((Ev3GyroSensor.this.mode == GyroSensorMode.Rate && Math.abs(dE) >= 1.0d) || (Ev3GyroSensor.this.mode == GyroSensorMode.Angle && Math.abs(dE - Ev3GyroSensor.this.previousValue) >= 1.0d)) {
                        Ev3GyroSensor.this.SensorValueChanged(dE);
                    }
                    Ev3GyroSensor.this.previousValue = dE;
                }
                Ev3GyroSensor.this.eventHandler.postDelayed(this, 50L);
            }
        };
        this.sensorValueChecker = runnable;
        this.eventHandler.post(runnable);
        ModeAbstract(gyroSensorMode);
        SensorValueChangedEventEnabled(false);
    }

    @SimpleFunction(description = "Returns the current angle or rotation speed based on current mode, or -1 if the value cannot be read from sensor.")
    public double GetSensorValue() {
        return getSensorValue("");
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "angle", editorType = PropertyTypeConstants.PROPERTY_TYPE_LEGO_EV3_GYRO_SENSOR_MODE)
    public void Mode(@Options(GyroSensorMode.class) String str) {
        GyroSensorMode gyroSensorModeFromUnderlyingValue = GyroSensorMode.fromUnderlyingValue(str);
        if (gyroSensorModeFromUnderlyingValue == null) {
            this.form.dispatchErrorOccurredEvent(this, "Mode", ErrorMessages.ERROR_EV3_ILLEGAL_ARGUMENT, str);
        } else {
            setMode(gyroSensorModeFromUnderlyingValue);
        }
    }

    public void ModeAbstract(GyroSensorMode gyroSensorMode) {
        setMode(gyroSensorMode);
    }

    public GyroSensorMode ModeAbstract() {
        return this.mode;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The sensor mode can be a text constant of either \"rate\" or \"angle\", which correspond to SetAngleMode or SetRateMode respectively.")
    public String Mode() {
        return this.mode.toUnderlyingValue();
    }

    @SimpleFunction(description = "Measures the orientation of the sensor.")
    @Deprecated
    public void SetAngleMode() {
        setMode(GyroSensorMode.Angle);
    }

    @SimpleFunction(description = "Measures the angular velocity of the sensor.")
    @Deprecated
    public void SetRateMode() {
        setMode(GyroSensorMode.Rate);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether the SensorValueChanged event should fire when the sensor value changed.")
    public boolean SensorValueChangedEventEnabled() {
        return this.sensorValueChangedEventEnabled;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void SensorValueChangedEventEnabled(boolean z) {
        this.sensorValueChangedEventEnabled = z;
    }

    @SimpleEvent(description = "Called then the sensor value changed.")
    public void SensorValueChanged(double d) {
        EventDispatcher.dispatchEvent(this, "SensorValueChanged", Double.valueOf(d));
    }

    private double getSensorValue(String str) {
        return readInputSI(str, 0, this.sensorPortNumber, 32, this.mode.toInt().intValue());
    }

    private void setMode(GyroSensorMode gyroSensorMode) {
        if (gyroSensorMode != this.mode) {
            this.previousValue = -1.0d;
        }
        this.mode = gyroSensorMode;
    }

    @Override // com.google.appinventor.components.runtime.LegoMindstormsEv3Base, com.google.appinventor.components.runtime.Deleteable
    public void onDelete() {
        super.onDelete();
    }
}
