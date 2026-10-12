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

@DesignerComponent(category = ComponentCategory.LEGOMINDSTORMS, description = "A component that provides a high-level interface to a sound sensor on a LEGO MINDSTORMS NXT robot.", iconName = "images/legoMindstormsNxt.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public class NxtSoundSensor extends LegoMindstormsNxtSensor implements Deleteable {
    private static final int DEFAULT_BOTTOM_OF_RANGE = 256;
    private static final String DEFAULT_SENSOR_PORT = "2";
    private static final int DEFAULT_TOP_OF_RANGE = 767;
    private boolean aboveRangeEventEnabled;
    private boolean belowRangeEventEnabled;
    private int bottomOfRange;
    private Handler handler;
    private State previousState;
    private final Runnable sensorReader;
    private int topOfRange;
    private boolean withinRangeEventEnabled;

    public enum State {
        UNKNOWN,
        BELOW_RANGE,
        WITHIN_RANGE,
        ABOVE_RANGE
    }

    public static /* bridge */ /* synthetic */ LegoMindstormsNxtSensor.SensorValue j(NxtSoundSensor nxtSoundSensor) {
        return nxtSoundSensor.getSoundValue("");
    }

    public NxtSoundSensor(ComponentContainer componentContainer) {
        super(componentContainer, "NxtSoundSensor");
        this.handler = new Handler();
        this.previousState = State.UNKNOWN;
        this.sensorReader = new Runnable() { // from class: com.google.appinventor.components.runtime.NxtSoundSensor.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                State state;
                BluetoothClient bluetoothClient = NxtSoundSensor.this.bluetooth;
                if (bluetoothClient != null && bluetoothClient.IsConnected()) {
                    LegoMindstormsNxtSensor.SensorValue sensorValueJ = NxtSoundSensor.j(NxtSoundSensor.this);
                    if (sensorValueJ.valid) {
                        if (((Integer) sensorValueJ.value).intValue() < NxtSoundSensor.this.bottomOfRange) {
                            state = State.BELOW_RANGE;
                        } else if (((Integer) sensorValueJ.value).intValue() > NxtSoundSensor.this.topOfRange) {
                            state = State.ABOVE_RANGE;
                        } else {
                            state = State.WITHIN_RANGE;
                        }
                        if (state != NxtSoundSensor.this.previousState) {
                            if (state == State.BELOW_RANGE && NxtSoundSensor.this.belowRangeEventEnabled) {
                                NxtSoundSensor.this.BelowRange();
                            }
                            if (state == State.WITHIN_RANGE && NxtSoundSensor.this.withinRangeEventEnabled) {
                                NxtSoundSensor.this.WithinRange();
                            }
                            if (state == State.ABOVE_RANGE && NxtSoundSensor.this.aboveRangeEventEnabled) {
                                NxtSoundSensor.this.AboveRange();
                            }
                        }
                        NxtSoundSensor.this.previousState = state;
                    }
                }
                if (NxtSoundSensor.this.isHandlerNeeded()) {
                    NxtSoundSensor.this.handler.post(NxtSoundSensor.this.sensorReader);
                }
            }
        };
        SensorPort("2");
        BottomOfRange(256);
        TopOfRange(DEFAULT_TOP_OF_RANGE);
        BelowRangeEventEnabled(false);
        WithinRangeEventEnabled(false);
        AboveRangeEventEnabled(false);
    }

    @Override // com.google.appinventor.components.runtime.LegoMindstormsNxtSensor
    public void initializeSensor(String str) throws IOException {
        setInputMode(str, this.port, NxtSensorType.SoundDB, NxtSensorMode.Raw);
    }

    @Override // com.google.appinventor.components.runtime.LegoMindstormsNxtSensor
    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = "2", editorType = PropertyTypeConstants.PROPERTY_TYPE_LEGO_NXT_SENSOR_PORT)
    public void SensorPort(String str) {
        setSensorPort(str);
    }

    @SimpleFunction(description = "Returns the current sound level as a value between 0 and 1023, or -1 if the sound level can not be read.")
    public int GetSoundLevel() {
        if (!checkBluetooth("GetSoundLevel")) {
            return -1;
        }
        LegoMindstormsNxtSensor.SensorValue<Integer> soundValue = getSoundValue("GetSoundLevel");
        if (soundValue.valid) {
            return soundValue.value.intValue();
        }
        return -1;
    }

    private LegoMindstormsNxtSensor.SensorValue<Integer> getSoundValue(String str) {
        byte[] inputValues = getInputValues(str, this.port);
        if (inputValues != null && getBooleanValueFromBytes(inputValues, 4)) {
            return new LegoMindstormsNxtSensor.SensorValue<>(true, Integer.valueOf(getUWORDValueFromBytes(inputValues, 10)));
        }
        return new LegoMindstormsNxtSensor.SensorValue<>(false, null);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events.")
    public int BottomOfRange() {
        return this.bottomOfRange;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "256", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void BottomOfRange(int i) {
        this.bottomOfRange = i;
        this.previousState = State.UNKNOWN;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events.")
    public int TopOfRange() {
        return this.topOfRange;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "767", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void TopOfRange(int i) {
        this.topOfRange = i;
        this.previousState = State.UNKNOWN;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether the BelowRange event should fire when the sound level goes below the BottomOfRange.")
    public boolean BelowRangeEventEnabled() {
        return this.belowRangeEventEnabled;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void BelowRangeEventEnabled(boolean z) {
        boolean zIsHandlerNeeded = isHandlerNeeded();
        this.belowRangeEventEnabled = z;
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

    @SimpleEvent(description = "Sound level has gone below the range.")
    public void BelowRange() {
        EventDispatcher.dispatchEvent(this, "BelowRange", new Object[0]);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether the WithinRange event should fire when the sound level goes between the BottomOfRange and the TopOfRange.")
    public boolean WithinRangeEventEnabled() {
        return this.withinRangeEventEnabled;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void WithinRangeEventEnabled(boolean z) {
        boolean zIsHandlerNeeded = isHandlerNeeded();
        this.withinRangeEventEnabled = z;
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

    @SimpleEvent(description = "Sound level has gone within the range.")
    public void WithinRange() {
        EventDispatcher.dispatchEvent(this, "WithinRange", new Object[0]);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether the AboveRange event should fire when the sound level goes above the TopOfRange.")
    public boolean AboveRangeEventEnabled() {
        return this.aboveRangeEventEnabled;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void AboveRangeEventEnabled(boolean z) {
        boolean zIsHandlerNeeded = isHandlerNeeded();
        this.aboveRangeEventEnabled = z;
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

    @SimpleEvent(description = "Sound level has gone above the range.")
    public void AboveRange() {
        EventDispatcher.dispatchEvent(this, "AboveRange", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isHandlerNeeded() {
        return this.belowRangeEventEnabled || this.withinRangeEventEnabled || this.aboveRangeEventEnabled;
    }

    @Override // com.google.appinventor.components.runtime.LegoMindstormsNxtBase, com.google.appinventor.components.runtime.Deleteable
    public void onDelete() {
        this.handler.removeCallbacks(this.sensorReader);
        super.onDelete();
    }
}
