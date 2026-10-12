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
import com.google.appinventor.components.runtime.util.ErrorMessages;
import java.io.IOException;
import java.util.HashMap;

@DesignerComponent(category = ComponentCategory.LEGOMINDSTORMS, description = "A component that provides a high-level interface to a color sensor on a LEGO MINDSTORMS NXT robot.", iconName = "images/legoMindstormsNxt.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public class NxtColorSensor extends LegoMindstormsNxtSensor implements Deleteable {
    private static final int DEFAULT_BOTTOM_OF_RANGE = 256;
    private static final String DEFAULT_SENSOR_PORT = "3";
    private static final int DEFAULT_TOP_OF_RANGE = 767;
    private static final java.util.Map<Integer, NxtSensorType> mapColorToSensorType;
    private static final java.util.Map<Integer, Integer> mapSensorValueToColor;
    private boolean aboveRangeEventEnabled;
    private boolean belowRangeEventEnabled;
    private int bottomOfRange;
    private boolean colorChangedEventEnabled;
    private boolean detectColor;
    private int generateColor;
    private Handler handler;
    private int previousColor;
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

    public static /* bridge */ /* synthetic */ LegoMindstormsNxtSensor.SensorValue m(NxtColorSensor nxtColorSensor) {
        return nxtColorSensor.getColorValue("");
    }

    public static /* bridge */ /* synthetic */ LegoMindstormsNxtSensor.SensorValue n(NxtColorSensor nxtColorSensor) {
        return nxtColorSensor.getLightValue("");
    }

    static {
        HashMap map = new HashMap();
        mapColorToSensorType = map;
        map.put(-65536, NxtSensorType.ColorRed);
        Integer numValueOf = Integer.valueOf(Component.COLOR_GREEN);
        map.put(numValueOf, NxtSensorType.ColorGreen);
        Integer numValueOf2 = Integer.valueOf(Component.COLOR_BLUE);
        map.put(numValueOf2, NxtSensorType.ColorBlue);
        map.put(16777215, NxtSensorType.ColorNone);
        HashMap map2 = new HashMap();
        mapSensorValueToColor = map2;
        map2.put(1, -16777216);
        map2.put(2, numValueOf2);
        map2.put(3, numValueOf);
        map2.put(4, -256);
        map2.put(5, -65536);
        map2.put(6, -1);
    }

    public NxtColorSensor(ComponentContainer componentContainer) throws IOException {
        super(componentContainer, "NxtColorSensor");
        this.handler = new Handler();
        this.previousState = State.UNKNOWN;
        this.previousColor = 16777215;
        this.sensorReader = new Runnable() { // from class: com.google.appinventor.components.runtime.NxtColorSensor.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                State state;
                BluetoothClient bluetoothClient = NxtColorSensor.this.bluetooth;
                if (bluetoothClient != null && bluetoothClient.IsConnected()) {
                    if (NxtColorSensor.this.detectColor) {
                        LegoMindstormsNxtSensor.SensorValue sensorValueM = NxtColorSensor.m(NxtColorSensor.this);
                        if (sensorValueM.valid) {
                            int iIntValue = ((Integer) sensorValueM.value).intValue();
                            if (iIntValue != NxtColorSensor.this.previousColor) {
                                NxtColorSensor.this.ColorChanged(iIntValue);
                            }
                            NxtColorSensor.this.previousColor = iIntValue;
                        }
                    } else {
                        LegoMindstormsNxtSensor.SensorValue sensorValueN = NxtColorSensor.n(NxtColorSensor.this);
                        if (sensorValueN.valid) {
                            if (((Integer) sensorValueN.value).intValue() < NxtColorSensor.this.bottomOfRange) {
                                state = State.BELOW_RANGE;
                            } else if (((Integer) sensorValueN.value).intValue() > NxtColorSensor.this.topOfRange) {
                                state = State.ABOVE_RANGE;
                            } else {
                                state = State.WITHIN_RANGE;
                            }
                            if (state != NxtColorSensor.this.previousState) {
                                if (state == State.BELOW_RANGE && NxtColorSensor.this.belowRangeEventEnabled) {
                                    NxtColorSensor.this.BelowRange();
                                }
                                if (state == State.WITHIN_RANGE && NxtColorSensor.this.withinRangeEventEnabled) {
                                    NxtColorSensor.this.WithinRange();
                                }
                                if (state == State.ABOVE_RANGE && NxtColorSensor.this.aboveRangeEventEnabled) {
                                    NxtColorSensor.this.AboveRange();
                                }
                            }
                            NxtColorSensor.this.previousState = state;
                        }
                    }
                }
                if (NxtColorSensor.this.isHandlerNeeded()) {
                    NxtColorSensor.this.handler.post(NxtColorSensor.this.sensorReader);
                }
            }
        };
        SensorPort("3");
        DetectColor(true);
        ColorChangedEventEnabled(false);
        BottomOfRange(256);
        TopOfRange(DEFAULT_TOP_OF_RANGE);
        BelowRangeEventEnabled(false);
        WithinRangeEventEnabled(false);
        AboveRangeEventEnabled(false);
        GenerateColor(16777215);
    }

    @Override // com.google.appinventor.components.runtime.LegoMindstormsNxtSensor
    public void initializeSensor(String str) throws IOException {
        NxtSensorType nxtSensorType;
        if (this.detectColor) {
            nxtSensorType = NxtSensorType.ColorFull;
        } else {
            nxtSensorType = mapColorToSensorType.get(Integer.valueOf(this.generateColor));
        }
        setInputMode(str, this.port, nxtSensorType, NxtSensorMode.Raw);
        resetInputScaledValue(str, this.port);
    }

    @Override // com.google.appinventor.components.runtime.LegoMindstormsNxtSensor
    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = "3", editorType = PropertyTypeConstants.PROPERTY_TYPE_LEGO_NXT_SENSOR_PORT)
    public void SensorPort(String str) {
        setSensorPort(str);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether the sensor should detect color or light. True indicates that the sensor should detect color; False indicates that the sensor should detect light. If the DetectColor property is set to True, the BelowRange, WithinRange, and AboveRange events will not occur and the sensor will not generate color. If the DetectColor property is set to False, the ColorChanged event will not occur.")
    public boolean DetectColor() {
        return this.detectColor;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void DetectColor(boolean z) throws IOException {
        boolean zIsHandlerNeeded = isHandlerNeeded();
        this.detectColor = z;
        BluetoothClient bluetoothClient = this.bluetooth;
        if (bluetoothClient != null && bluetoothClient.IsConnected()) {
            initializeSensor("DetectColor");
        }
        boolean zIsHandlerNeeded2 = isHandlerNeeded();
        if (zIsHandlerNeeded && !zIsHandlerNeeded2) {
            this.handler.removeCallbacks(this.sensorReader);
        }
        this.previousColor = 16777215;
        this.previousState = State.UNKNOWN;
        if (zIsHandlerNeeded || !zIsHandlerNeeded2) {
            return;
        }
        this.handler.post(this.sensorReader);
    }

    @SimpleFunction(description = "Returns the current detected color, or the color None if the color can not be read or if the DetectColor property is set to False.")
    public int GetColor() {
        if (!checkBluetooth("GetColor")) {
            return 16777215;
        }
        if (!this.detectColor) {
            this.form.dispatchErrorOccurredEvent(this, "GetColor", ErrorMessages.ERROR_NXT_CANNOT_DETECT_COLOR, new Object[0]);
            return 16777215;
        }
        LegoMindstormsNxtSensor.SensorValue<Integer> colorValue = getColorValue("GetColor");
        if (colorValue.valid) {
            return colorValue.value.intValue();
        }
        return 16777215;
    }

    private LegoMindstormsNxtSensor.SensorValue<Integer> getColorValue(String str) {
        byte[] inputValues = getInputValues(str, this.port);
        if (inputValues != null && getBooleanValueFromBytes(inputValues, 4)) {
            int sWORDValueFromBytes = getSWORDValueFromBytes(inputValues, 12);
            java.util.Map<Integer, Integer> map = mapSensorValueToColor;
            if (map.containsKey(Integer.valueOf(sWORDValueFromBytes))) {
                Integer num = map.get(Integer.valueOf(sWORDValueFromBytes));
                num.intValue();
                return new LegoMindstormsNxtSensor.SensorValue<>(true, num);
            }
        }
        return new LegoMindstormsNxtSensor.SensorValue<>(false, null);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether the ColorChanged event should fire when the DetectColor property is set to True and the detected color changes.")
    public boolean ColorChangedEventEnabled() {
        return this.colorChangedEventEnabled;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ColorChangedEventEnabled(boolean z) {
        boolean zIsHandlerNeeded = isHandlerNeeded();
        this.colorChangedEventEnabled = z;
        boolean zIsHandlerNeeded2 = isHandlerNeeded();
        if (zIsHandlerNeeded && !zIsHandlerNeeded2) {
            this.handler.removeCallbacks(this.sensorReader);
        }
        if (zIsHandlerNeeded || !zIsHandlerNeeded2) {
            return;
        }
        this.previousColor = 16777215;
        this.handler.post(this.sensorReader);
    }

    @SimpleEvent(description = "Detected color has changed. The ColorChanged event will not occur if the DetectColor property is set to False or if the ColorChangedEventEnabled property is set to False.")
    public void ColorChanged(int i) {
        EventDispatcher.dispatchEvent(this, "ColorChanged", Integer.valueOf(i));
    }

    @SimpleFunction(description = "Returns the current light level as a value between 0 and 1023, or -1 if the light level can not be read or if the DetectColor property is set to True.")
    public int GetLightLevel() {
        if (!checkBluetooth("GetLightLevel")) {
            return -1;
        }
        if (this.detectColor) {
            this.form.dispatchErrorOccurredEvent(this, "GetLightLevel", ErrorMessages.ERROR_NXT_CANNOT_DETECT_LIGHT, new Object[0]);
            return -1;
        }
        LegoMindstormsNxtSensor.SensorValue<Integer> lightValue = getLightValue("GetLightLevel");
        if (lightValue.valid) {
            return lightValue.value.intValue();
        }
        return -1;
    }

    private LegoMindstormsNxtSensor.SensorValue<Integer> getLightValue(String str) {
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

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether the BelowRange event should fire when the DetectColor property is set to False and the light level goes below the BottomOfRange.")
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

    @SimpleEvent(description = "Light level has gone below the range. The BelowRange event will not occur if the DetectColor property is set to True or if the BelowRangeEventEnabled property is set to False.")
    public void BelowRange() {
        EventDispatcher.dispatchEvent(this, "BelowRange", new Object[0]);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether the WithinRange event should fire when the DetectColor property is set to False and the light level goes between the BottomOfRange and the TopOfRange.")
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

    @SimpleEvent(description = "Light level has gone within the range. The WithinRange event will not occur if the DetectColor property is set to True or if the WithinRangeEventEnabled property is set to False.")
    public void WithinRange() {
        EventDispatcher.dispatchEvent(this, "WithinRange", new Object[0]);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether the AboveRange event should fire when the DetectColor property is set to False and the light level goes above the TopOfRange.")
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

    @SimpleEvent(description = "Light level has gone above the range. The AboveRange event will not occur if the DetectColor property is set to True or if the AboveRangeEventEnabled property is set to False.")
    public void AboveRange() {
        EventDispatcher.dispatchEvent(this, "AboveRange", new Object[0]);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The color that should generated by the sensor. Only None, Red, Green, or Blue are valid values. The sensor will not generate color when the DetectColor property is set to True.")
    public int GenerateColor() {
        return this.generateColor;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_NONE, editorType = PropertyTypeConstants.PROPERTY_TYPE_LEGO_NXT_GENERATED_COLOR)
    public void GenerateColor(int i) throws IOException {
        if (mapColorToSensorType.containsKey(Integer.valueOf(i))) {
            this.generateColor = i;
            BluetoothClient bluetoothClient = this.bluetooth;
            if (bluetoothClient == null || !bluetoothClient.IsConnected()) {
                return;
            }
            initializeSensor("GenerateColor");
            return;
        }
        this.form.dispatchErrorOccurredEvent(this, "GenerateColor", ErrorMessages.ERROR_NXT_INVALID_GENERATE_COLOR, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isHandlerNeeded() {
        if (this.detectColor) {
            return this.colorChangedEventEnabled;
        }
        return this.belowRangeEventEnabled || this.withinRangeEventEnabled || this.aboveRangeEventEnabled;
    }

    @Override // com.google.appinventor.components.runtime.LegoMindstormsNxtBase, com.google.appinventor.components.runtime.Deleteable
    public void onDelete() {
        this.handler.removeCallbacks(this.sensorReader);
        super.onDelete();
    }
}
