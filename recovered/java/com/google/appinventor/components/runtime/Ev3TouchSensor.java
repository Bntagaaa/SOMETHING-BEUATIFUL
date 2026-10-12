package com.google.appinventor.components.runtime;

import android.os.Handler;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;

@DesignerComponent(category = ComponentCategory.LEGOMINDSTORMS, description = "A component that provides a high-level interface to a touch sensor on a LEGO MINDSTORMS EV3 robot.", iconName = "images/legoMindstormsEv3.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public class Ev3TouchSensor extends LegoMindstormsEv3Sensor implements Deleteable {
    private static final int DELAY_MILLISECONDS = 50;
    private static final int SENSOR_MODE_TOUCH = 0;
    private static final String SENSOR_MODE_TOUCH_STRING = "touch";
    private static final int SENSOR_TYPE = 16;
    private static final int SENSOR_VALUE_THRESHOLD = 50;
    private Handler eventHandler;
    private int mode;
    private String modeString;
    private boolean pressedEventEnabled;
    private boolean releasedEventEnabled;
    private int savedPressedValue;
    private final Runnable sensorValueChecker;

    public static /* bridge */ /* synthetic */ int f(Ev3TouchSensor ev3TouchSensor) {
        return ev3TouchSensor.getPressedValue("");
    }

    public Ev3TouchSensor(ComponentContainer componentContainer) {
        super(componentContainer, "Ev3TouchSensor");
        this.modeString = SENSOR_MODE_TOUCH_STRING;
        this.mode = 0;
        this.savedPressedValue = -1;
        this.eventHandler = new Handler();
        Runnable runnable = new Runnable() { // from class: com.google.appinventor.components.runtime.Ev3TouchSensor.1
            @Override // java.lang.Runnable
            public void run() {
                BluetoothClient bluetoothClient = Ev3TouchSensor.this.bluetooth;
                if (bluetoothClient != null && bluetoothClient.IsConnected()) {
                    int iF = Ev3TouchSensor.f(Ev3TouchSensor.this);
                    if (Ev3TouchSensor.this.savedPressedValue < 0) {
                        Ev3TouchSensor.this.savedPressedValue = iF;
                        Ev3TouchSensor.this.eventHandler.postDelayed(this, 50L);
                        return;
                    }
                    if (Ev3TouchSensor.this.savedPressedValue < 50) {
                        if (Ev3TouchSensor.this.releasedEventEnabled && iF >= 50) {
                            Ev3TouchSensor.this.Pressed();
                        }
                    } else if (Ev3TouchSensor.this.pressedEventEnabled && iF < 50) {
                        Ev3TouchSensor.this.Released();
                    }
                    Ev3TouchSensor.this.savedPressedValue = iF;
                }
                Ev3TouchSensor.this.eventHandler.postDelayed(this, 50L);
            }
        };
        this.sensorValueChecker = runnable;
        this.eventHandler.post(runnable);
        PressedEventEnabled(false);
        ReleasedEventEnabled(false);
    }

    @SimpleFunction(description = "Returns true if the touch sensor is pressed.")
    public boolean IsPressed() {
        return getPressedValue("IsPressed") >= 50;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void PressedEventEnabled(boolean z) {
        this.pressedEventEnabled = z;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether the Released event should fire when the touch sensor is pressed.")
    public boolean PressedEventEnabled() {
        return this.pressedEventEnabled;
    }

    @SimpleEvent(description = "Called when the touch sensor is pressed.")
    public void Pressed() {
        EventDispatcher.dispatchEvent(this, "Pressed", new Object[0]);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether the Released event should fire when the touch sensor is released.")
    public boolean ReleasedEventEnabled() {
        return this.releasedEventEnabled;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ReleasedEventEnabled(boolean z) {
        this.releasedEventEnabled = z;
    }

    @SimpleEvent(description = "Called when the touch sensor is pressed.")
    public void Released() {
        EventDispatcher.dispatchEvent(this, "Released", new Object[0]);
    }

    private int getPressedValue(String str) {
        return readInputPercentage(str, 0, this.sensorPortNumber, 16, this.mode);
    }

    @Override // com.google.appinventor.components.runtime.LegoMindstormsEv3Base, com.google.appinventor.components.runtime.Deleteable
    public void onDelete() {
        this.eventHandler.removeCallbacks(this.sensorValueChecker);
        super.onDelete();
    }
}
