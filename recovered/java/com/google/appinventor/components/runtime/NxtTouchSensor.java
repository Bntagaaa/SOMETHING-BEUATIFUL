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
import com.google.appinventor.components.common.NxtSensorMode;
import com.google.appinventor.components.common.NxtSensorType;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.LegoMindstormsNxtSensor;
import java.io.IOException;

@DesignerComponent(category = ComponentCategory.LEGOMINDSTORMS, description = "A component that provides a high-level interface to a touch sensor on a LEGO MINDSTORMS NXT robot.", iconName = "images/legoMindstormsNxt.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public class NxtTouchSensor extends LegoMindstormsNxtSensor implements Deleteable {
    private static final String DEFAULT_SENSOR_PORT = "1";
    private Handler handler;
    private boolean pressedEventEnabled;
    private State previousState;
    private boolean releasedEventEnabled;
    private final Runnable sensorReader;

    public enum State {
        UNKNOWN,
        PRESSED,
        RELEASED
    }

    public static /* bridge */ /* synthetic */ LegoMindstormsNxtSensor.SensorValue g(NxtTouchSensor nxtTouchSensor) {
        return nxtTouchSensor.getPressedValue("");
    }

    public NxtTouchSensor(ComponentContainer componentContainer) {
        super(componentContainer, "NxtTouchSensor");
        this.handler = new Handler();
        this.previousState = State.UNKNOWN;
        this.sensorReader = new Runnable() { // from class: com.google.appinventor.components.runtime.NxtTouchSensor.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                BluetoothClient bluetoothClient = NxtTouchSensor.this.bluetooth;
                if (bluetoothClient != null && bluetoothClient.IsConnected()) {
                    LegoMindstormsNxtSensor.SensorValue sensorValueG = NxtTouchSensor.g(NxtTouchSensor.this);
                    if (sensorValueG.valid) {
                        State state = ((Boolean) sensorValueG.value).booleanValue() ? State.PRESSED : State.RELEASED;
                        if (state != NxtTouchSensor.this.previousState) {
                            if (state == State.PRESSED && NxtTouchSensor.this.pressedEventEnabled) {
                                NxtTouchSensor.this.Pressed();
                            }
                            if (state == State.RELEASED && NxtTouchSensor.this.releasedEventEnabled) {
                                NxtTouchSensor.this.Released();
                            }
                        }
                        NxtTouchSensor.this.previousState = state;
                    }
                }
                if (NxtTouchSensor.this.isHandlerNeeded()) {
                    NxtTouchSensor.this.handler.post(NxtTouchSensor.this.sensorReader);
                }
            }
        };
        SensorPort("1");
        PressedEventEnabled(false);
        ReleasedEventEnabled(false);
    }

    @Override // com.google.appinventor.components.runtime.LegoMindstormsNxtSensor
    public void initializeSensor(String str) throws IOException {
        setInputMode(str, this.port, NxtSensorType.Touch, NxtSensorMode.Boolean);
    }

    @Override // com.google.appinventor.components.runtime.LegoMindstormsNxtSensor
    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_LEGO_NXT_SENSOR_PORT)
    public void SensorPort(String str) {
        setSensorPort(str);
    }

    @SimpleFunction(description = "Returns true if the touch sensor is pressed.")
    public boolean IsPressed() {
        if (!checkBluetooth("IsPressed")) {
            return false;
        }
        LegoMindstormsNxtSensor.SensorValue<Boolean> pressedValue = getPressedValue("IsPressed");
        if (pressedValue.valid) {
            return pressedValue.value.booleanValue();
        }
        return false;
    }

    private LegoMindstormsNxtSensor.SensorValue<Boolean> getPressedValue(String str) {
        byte[] inputValues = getInputValues(str, this.port);
        if (inputValues != null && getBooleanValueFromBytes(inputValues, 4)) {
            return new LegoMindstormsNxtSensor.SensorValue<>(true, Boolean.valueOf(getSWORDValueFromBytes(inputValues, 12) != 0));
        }
        return new LegoMindstormsNxtSensor.SensorValue<>(false, null);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether the Pressed event should fire when the touch sensor is pressed.")
    public boolean PressedEventEnabled() {
        return this.pressedEventEnabled;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void PressedEventEnabled(boolean z) {
        boolean zIsHandlerNeeded = isHandlerNeeded();
        this.pressedEventEnabled = z;
        boolean zIsHandlerNeeded2 = isHandlerNeeded();
        if (zIsHandlerNeeded && !zIsHandlerNeeded2) {
            this.handler.removeCallbacks(this.sensorReader);
        }
        if (zIsHandlerNeeded || !zIsHandlerNeeded2) {
            return;
        }
        this.previousState = State.UNKNOWN;
        this.handler.post(this.sensorReader);
    }

    @SimpleEvent(description = "Touch sensor has been pressed.")
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
        boolean zIsHandlerNeeded = isHandlerNeeded();
        this.releasedEventEnabled = z;
        boolean zIsHandlerNeeded2 = isHandlerNeeded();
        if (zIsHandlerNeeded && !zIsHandlerNeeded2) {
            this.handler.removeCallbacks(this.sensorReader);
        }
        if (zIsHandlerNeeded || !zIsHandlerNeeded2) {
            return;
        }
        this.previousState = State.UNKNOWN;
        this.handler.post(this.sensorReader);
    }

    @SimpleEvent(description = "Touch sensor has been released.")
    public void Released() {
        EventDispatcher.dispatchEvent(this, "Released", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isHandlerNeeded() {
        return this.pressedEventEnabled || this.releasedEventEnabled;
    }

    @Override // com.google.appinventor.components.runtime.LegoMindstormsNxtBase, com.google.appinventor.components.runtime.Deleteable
    public void onDelete() {
        this.handler.removeCallbacks(this.sensorReader);
        super.onDelete();
    }
}
