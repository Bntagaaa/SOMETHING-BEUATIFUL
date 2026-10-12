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
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.common.UltrasonicSensorUnit;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import java.io.IOException;

@DesignerComponent(category = ComponentCategory.LEGOMINDSTORMS, description = "A component that provides a high-level interface to an ultrasonic sensor on a LEGO MINDSTORMS EV3 robot.", iconName = "images/legoMindstormsEv3.png", nonVisible = true, version = 2)
@SimpleObject
/* loaded from: classes.dex */
public class Ev3UltrasonicSensor extends LegoMindstormsEv3Sensor implements Deleteable {
    private static final int DEFAULT_BOTTOM_OF_RANGE = 30;
    private static final int DEFAULT_TOP_OF_RANGE = 90;
    private static final int DELAY_MILLISECONDS = 50;
    private static final int SENSOR_TYPE = 30;
    private boolean aboveRangeEventEnabled;
    private boolean belowRangeEventEnabled;
    private int bottomOfRange;
    private Handler eventHandler;
    private UltrasonicSensorUnit mode;
    private double previousDistance;
    private final Runnable sensorValueChecker;
    private int topOfRange;
    private boolean withinRangeEventEnabled;

    public static /* bridge */ /* synthetic */ double i(Ev3UltrasonicSensor ev3UltrasonicSensor) {
        return ev3UltrasonicSensor.getDistance("");
    }

    public Ev3UltrasonicSensor(ComponentContainer componentContainer) {
        super(componentContainer, "Ev3UltrasonicSensor");
        UltrasonicSensorUnit ultrasonicSensorUnit = UltrasonicSensorUnit.Centimeters;
        this.mode = ultrasonicSensorUnit;
        this.previousDistance = -1.0d;
        this.eventHandler = new Handler();
        Runnable runnable = new Runnable() { // from class: com.google.appinventor.components.runtime.Ev3UltrasonicSensor.1
            @Override // java.lang.Runnable
            public void run() {
                BluetoothClient bluetoothClient = Ev3UltrasonicSensor.this.bluetooth;
                if (bluetoothClient != null && bluetoothClient.IsConnected()) {
                    double dI = Ev3UltrasonicSensor.i(Ev3UltrasonicSensor.this);
                    if (Ev3UltrasonicSensor.this.previousDistance < 0.0d) {
                        Ev3UltrasonicSensor.this.previousDistance = dI;
                        Ev3UltrasonicSensor.this.eventHandler.postDelayed(this, 50L);
                        return;
                    }
                    if (dI < Ev3UltrasonicSensor.this.bottomOfRange) {
                        if (Ev3UltrasonicSensor.this.belowRangeEventEnabled && Ev3UltrasonicSensor.this.previousDistance >= Ev3UltrasonicSensor.this.bottomOfRange) {
                            Ev3UltrasonicSensor.this.BelowRange();
                        }
                    } else if (dI > Ev3UltrasonicSensor.this.topOfRange) {
                        if (Ev3UltrasonicSensor.this.aboveRangeEventEnabled && Ev3UltrasonicSensor.this.previousDistance <= Ev3UltrasonicSensor.this.topOfRange) {
                            Ev3UltrasonicSensor.this.AboveRange();
                        }
                    } else if (Ev3UltrasonicSensor.this.withinRangeEventEnabled && (Ev3UltrasonicSensor.this.previousDistance < Ev3UltrasonicSensor.this.bottomOfRange || Ev3UltrasonicSensor.this.previousDistance > Ev3UltrasonicSensor.this.topOfRange)) {
                        Ev3UltrasonicSensor.this.WithinRange();
                    }
                    Ev3UltrasonicSensor.this.previousDistance = dI;
                }
                Ev3UltrasonicSensor.this.eventHandler.postDelayed(this, 50L);
            }
        };
        this.sensorValueChecker = runnable;
        this.eventHandler.post(runnable);
        TopOfRange(90);
        BottomOfRange(30);
        BelowRangeEventEnabled(false);
        AboveRangeEventEnabled(false);
        WithinRangeEventEnabled(false);
        UnitAbstract(ultrasonicSensorUnit);
    }

    @SimpleFunction(description = "Returns the current distance in centimeters as a value between 0 and 254, or -1 if the distance can not be read.")
    public double GetDistance() {
        return getDistance("GetDistance");
    }

    private double getDistance(String str) throws IOException, IllegalArgumentException {
        double inputSI = readInputSI(str, 0, this.sensorPortNumber, 30, this.mode.toInt().intValue());
        if (inputSI == 255.0d) {
            return -1.0d;
        }
        return inputSI;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events.")
    public int BottomOfRange() {
        return this.bottomOfRange;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "30", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void BottomOfRange(int i) {
        this.bottomOfRange = i;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events.")
    public int TopOfRange() {
        return this.topOfRange;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "90", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void TopOfRange(int i) {
        this.topOfRange = i;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether the BelowRange event should fire when the distance goes below the BottomOfRange.")
    public boolean BelowRangeEventEnabled() {
        return this.belowRangeEventEnabled;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void BelowRangeEventEnabled(boolean z) {
        this.belowRangeEventEnabled = z;
    }

    @SimpleEvent(description = "Called when the detected distance has gone below the range.")
    public void BelowRange() {
        EventDispatcher.dispatchEvent(this, "BelowRange", new Object[0]);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether the WithinRange event should fire when the distance goes between the BottomOfRange and the TopOfRange.")
    public boolean WithinRangeEventEnabled() {
        return this.withinRangeEventEnabled;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void WithinRangeEventEnabled(boolean z) {
        this.withinRangeEventEnabled = z;
    }

    @SimpleEvent(description = "Called when the detected distance has gone within the range.")
    public void WithinRange() {
        EventDispatcher.dispatchEvent(this, "WithinRange", new Object[0]);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether the AboveRange event should fire when the distance goes above the TopOfRange.")
    public boolean AboveRangeEventEnabled() {
        return this.aboveRangeEventEnabled;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void AboveRangeEventEnabled(boolean z) {
        this.aboveRangeEventEnabled = z;
    }

    @SimpleEvent(description = "Called when the detected distance has gone above the range.")
    public void AboveRange() {
        EventDispatcher.dispatchEvent(this, "AboveRange", new Object[0]);
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "cm", editorType = PropertyTypeConstants.PROPERTY_TYPE_LEGO_EV3_ULTRASONIC_SENSOR_MODE)
    public void Unit(@Options(UltrasonicSensorUnit.class) String str) {
        UltrasonicSensorUnit ultrasonicSensorUnitFromUnderlyingValue = UltrasonicSensorUnit.fromUnderlyingValue(str);
        if (ultrasonicSensorUnitFromUnderlyingValue == null) {
            this.form.dispatchErrorOccurredEvent(this, "Unit", ErrorMessages.ERROR_EV3_ILLEGAL_ARGUMENT, str);
        } else {
            setMode(ultrasonicSensorUnitFromUnderlyingValue);
        }
    }

    public void UnitAbstract(UltrasonicSensorUnit ultrasonicSensorUnit) {
        setMode(ultrasonicSensorUnit);
    }

    public UltrasonicSensorUnit UnitAbstract() {
        return this.mode;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The distance unit, which can be either \"cm\" or \"inch\".")
    public String Unit() {
        return this.mode.toUnderlyingValue();
    }

    @SimpleFunction(description = "Measure the distance in centimeters.")
    @Deprecated
    public void SetCmUnit() {
        setMode(UltrasonicSensorUnit.Centimeters);
    }

    @SimpleFunction(description = "Measure the distance in inches.")
    @Deprecated
    public void SetInchUnit() {
        setMode(UltrasonicSensorUnit.Inches);
    }

    private void setMode(UltrasonicSensorUnit ultrasonicSensorUnit) {
        this.previousDistance = -1.0d;
        this.mode = ultrasonicSensorUnit;
    }

    @Override // com.google.appinventor.components.runtime.LegoMindstormsEv3Base, com.google.appinventor.components.runtime.Deleteable
    public void onDelete() {
        this.eventHandler.removeCallbacks(this.sensorValueChecker);
        super.onDelete();
    }
}
