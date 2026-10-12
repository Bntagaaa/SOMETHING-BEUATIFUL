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
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.Ev3BinaryParser;
import com.google.appinventor.components.runtime.util.Ev3Constants;
import java.io.IOException;

@DesignerComponent(category = ComponentCategory.LEGOMINDSTORMS, description = "A component that provides both high- and low-level interfaces to a LEGO MINDSTORMS EV3 robot, with functions that can control the motors.", iconName = "images/legoMindstormsEv3.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public class Ev3Motors extends LegoMindstormsEv3Base {
    private static final String DEFAULT_MOTOR_PORTS = "ABC";
    private static final double DEFAULT_WHEEL_DIAMETER = 4.32d;
    private static final int DELAY_MILLISECONDS = 50;
    private boolean directionReversed;
    private Handler eventHandler;
    private boolean ifReset;
    private int motorPortBitField;
    private int previousValue;
    private boolean regulationEnabled;
    private final Runnable sensorValueChecker;
    private boolean stopBeforeDisconnect;
    private boolean tachoCountChangedEventEnabled;
    private double wheelDiameter;

    public static /* bridge */ /* synthetic */ int h(Ev3Motors ev3Motors, int i) {
        return ev3Motors.getOutputCount("", 0, i);
    }

    private boolean isOneShotInteger(int i) {
        return i != 0 && (i & (~((i + (-1)) ^ i))) == 0;
    }

    private int roundValue(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    public Ev3Motors(ComponentContainer componentContainer) throws IOException {
        super(componentContainer, "Ev3Motors");
        this.motorPortBitField = 1;
        this.wheelDiameter = DEFAULT_WHEEL_DIAMETER;
        this.directionReversed = false;
        this.regulationEnabled = true;
        this.stopBeforeDisconnect = true;
        this.tachoCountChangedEventEnabled = false;
        this.previousValue = 0;
        this.ifReset = false;
        this.eventHandler = new Handler();
        Runnable runnable = new Runnable() { // from class: com.google.appinventor.components.runtime.Ev3Motors.1
            @Override // java.lang.Runnable
            public void run() {
                BluetoothClient bluetoothClient = Ev3Motors.this.bluetooth;
                if (bluetoothClient != null && bluetoothClient.IsConnected()) {
                    Ev3Motors ev3Motors = Ev3Motors.this;
                    int iH = Ev3Motors.h(ev3Motors, ev3Motors.motorPortBitField);
                    if (!Ev3Motors.this.ifReset) {
                        if (iH != Ev3Motors.this.previousValue && Ev3Motors.this.tachoCountChangedEventEnabled) {
                            Ev3Motors.this.TachoCountChanged(iH);
                        }
                    } else {
                        Ev3Motors.this.ifReset = false;
                    }
                    Ev3Motors.this.previousValue = iH;
                }
                Ev3Motors.this.eventHandler.postDelayed(this, 50L);
            }
        };
        this.sensorValueChecker = runnable;
        this.eventHandler.post(runnable);
        MotorPorts(DEFAULT_MOTOR_PORTS);
        StopBeforeDisconnect(true);
        EnableSpeedRegulation(true);
        ReverseDirection(false);
        WheelDiameter(DEFAULT_WHEEL_DIAMETER);
        TachoCountChangedEventEnabled(false);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The motor ports that the motors are connected to. The ports are specified by a sequence of port letters.", userVisible = false)
    public String MotorPorts() {
        return bitFieldToMotorPortLetters(this.motorPortBitField);
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = DEFAULT_MOTOR_PORTS, editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void MotorPorts(String str) {
        try {
            this.motorPortBitField = motorPortLettersToBitField(str);
        } catch (IllegalArgumentException unused) {
            this.form.dispatchErrorOccurredEvent(this, "MotorPorts", ErrorMessages.ERROR_EV3_ILLEGAL_MOTOR_PORT, str);
        }
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "4.32", editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void WheelDiameter(double d) {
        this.wheelDiameter = d;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The diameter of the wheels attached on the motors in centimeters.", userVisible = false)
    public double WheelDiameter() {
        return this.wheelDiameter;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ReverseDirection(boolean z) throws IOException {
        try {
            setOutputDirection("ReverseDirection", 0, this.motorPortBitField, z ? -1 : 1);
            this.directionReversed = z;
        } catch (IllegalArgumentException unused) {
            this.form.dispatchErrorOccurredEvent(this, "ReverseDirection", ErrorMessages.ERROR_EV3_ILLEGAL_ARGUMENT, "ReverseDirection");
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "It specifies if the direction of the motors is reversed.")
    public boolean ReverseDirection() {
        return this.directionReversed;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void EnableSpeedRegulation(boolean z) {
        this.regulationEnabled = z;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The robot adjusts the power to maintain the speed if speed regulation is enabled.")
    public boolean EnableSpeedRegulation() {
        return this.regulationEnabled;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether to stop the motor before disconnecting.")
    public boolean StopBeforeDisconnect() {
        return this.stopBeforeDisconnect;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void StopBeforeDisconnect(boolean z) {
        this.stopBeforeDisconnect = z;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether the TachoCountChanged event should fire when the angle is changed.")
    public boolean TachoCountChangedEventEnabled() {
        return this.tachoCountChangedEventEnabled;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void TachoCountChangedEventEnabled(boolean z) {
        this.tachoCountChangedEventEnabled = z;
    }

    @SimpleFunction(description = "Start to rotate the motors.")
    public void RotateIndefinitely(int i) throws IOException {
        try {
            if (this.regulationEnabled) {
                setOutputPower("RotateIndefinitely", 0, this.motorPortBitField, i);
            } else {
                setOutputSpeed("RotateIndefinitely", 0, this.motorPortBitField, i);
            }
            startOutput("RotateIndefinitely", 0, this.motorPortBitField);
        } catch (IllegalArgumentException unused) {
            this.form.dispatchErrorOccurredEvent(this, "RotateIndefinitely", ErrorMessages.ERROR_EV3_ILLEGAL_ARGUMENT, "RotateIndefinitely");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.appinventor.components.runtime.AndroidNonvisibleComponent] */
    /* JADX WARN: Type inference failed for: r0v2, types: [boolean] */
    @SimpleFunction(description = "Rotate the motors in a number of tacho counts.")
    public void RotateInTachoCounts(int i, int i2, boolean z) throws IOException {
        ?? r0;
        try {
            r0 = this.regulationEnabled;
            try {
                if (r0 != 0) {
                    outputStepSpeed("RotateInTachoCounts", 0, this.motorPortBitField, i, 0, i2, 0, z);
                } else {
                    outputStepPower("RotateInTachoCounts", 0, this.motorPortBitField, i, 0, i2, 0, z);
                }
            } catch (IllegalArgumentException unused) {
                r0.form.dispatchErrorOccurredEvent(this, "RotateInTachoCounts", ErrorMessages.ERROR_EV3_ILLEGAL_ARGUMENT, "RotateInTachoCounts");
            }
        } catch (IllegalArgumentException unused2) {
            r0 = this;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.appinventor.components.runtime.AndroidNonvisibleComponent] */
    /* JADX WARN: Type inference failed for: r0v2, types: [boolean] */
    @SimpleFunction(description = "Rotate the motors in a period of time.")
    public void RotateInDuration(int i, int i2, boolean z) throws IOException {
        ?? r0;
        try {
            r0 = this.regulationEnabled;
            try {
                if (r0 != 0) {
                    outputTimeSpeed("RotateInDuration", 0, this.motorPortBitField, i, 0, i2, 0, z);
                } else {
                    outputTimePower("RotateInDuration", 0, this.motorPortBitField, i, 0, i2, 0, z);
                }
            } catch (IllegalArgumentException unused) {
                r0.form.dispatchErrorOccurredEvent(this, "RotateInDuration", ErrorMessages.ERROR_EV3_ILLEGAL_ARGUMENT, "RotateInDuration");
            }
        } catch (IllegalArgumentException unused2) {
            r0 = this;
        }
    }

    @SimpleFunction(description = "Rotate the motors in a distance.")
    public void RotateInDistance(int i, double d, boolean z) throws IOException {
        int i2 = (int) (((d * 360.0d) / this.wheelDiameter) / 3.141592653589793d);
        try {
            if (this.regulationEnabled) {
                outputStepSpeed("RotateInDistance", 0, this.motorPortBitField, i, 0, i2, 0, z);
            } else {
                outputStepPower("RotateInDistance", 0, this.motorPortBitField, i, 0, i2, 0, z);
            }
        } catch (IllegalArgumentException unused) {
            this.form.dispatchErrorOccurredEvent(this, "RotateInDistance", ErrorMessages.ERROR_EV3_ILLEGAL_ARGUMENT, "RotateInDistance");
        }
    }

    @SimpleFunction(description = "Start to rotate the motors at the same speed.")
    public void RotateSyncIndefinitely(int i, int i2) throws IOException {
        Ev3Motors ev3Motors;
        try {
            int i3 = this.motorPortBitField;
            if (i3 != 0) {
                if (isOneShotInteger(i3)) {
                    setOutputSpeed("RotateSyncIndefinitely", 0, this.motorPortBitField, i);
                    return;
                }
                ev3Motors = this;
                try {
                    ev3Motors.outputStepSync("RotateSyncIndefinitely", 0, this.motorPortBitField, i, i2, 0, true);
                } catch (IllegalArgumentException unused) {
                    ev3Motors.form.dispatchErrorOccurredEvent(this, "RotateSyncIndefinitely", ErrorMessages.ERROR_EV3_ILLEGAL_ARGUMENT, "RotateSyncIndefinitely");
                }
            }
        } catch (IllegalArgumentException unused2) {
            ev3Motors = this;
        }
    }

    @SimpleFunction(description = "Rotate the motors at the same speed for a distance in cm.")
    public void RotateSyncInDistance(int i, int i2, int i3, boolean z) throws IOException {
        int i4 = (int) (((i2 * 360.0d) / this.wheelDiameter) / 3.141592653589793d);
        try {
            int i5 = this.motorPortBitField;
            if (i5 != 0) {
                try {
                    if (isOneShotInteger(i5)) {
                        outputStepSpeed("RotateSyncInDuration", 0, this.motorPortBitField, i, 0, i4, 0, z);
                    } else {
                        outputStepSync("RotateSyncInDuration", 0, this.motorPortBitField, i, i3, i4, z);
                    }
                } catch (IllegalArgumentException unused) {
                    this.form.dispatchErrorOccurredEvent(this, "RotateSyncInDuration", ErrorMessages.ERROR_EV3_ILLEGAL_ARGUMENT, "RotateSyncInDuration");
                }
            }
        } catch (IllegalArgumentException unused2) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.appinventor.components.runtime.AndroidNonvisibleComponent] */
    /* JADX WARN: Type inference failed for: r0v4, types: [boolean] */
    @SimpleFunction(description = "Rotate the motors at the same speed in a period of time.")
    public void RotateSyncInDuration(int i, int i2, int i3, boolean z) throws IOException {
        ?? IsOneShotInteger;
        try {
            int i4 = this.motorPortBitField;
            if (i4 != 0) {
                IsOneShotInteger = isOneShotInteger(i4);
                try {
                    if (IsOneShotInteger != 0) {
                        outputTimeSpeed("RotateSyncInDuration", 0, this.motorPortBitField, i, 0, i2, 0, z);
                    } else {
                        outputTimeSync("RotateSyncInDuration", 0, this.motorPortBitField, i, i3, i2, z);
                    }
                } catch (IllegalArgumentException unused) {
                    IsOneShotInteger.form.dispatchErrorOccurredEvent(this, "RotateSyncInDuration", ErrorMessages.ERROR_EV3_ILLEGAL_ARGUMENT, "RotateSyncInDuration");
                }
            }
        } catch (IllegalArgumentException unused2) {
            IsOneShotInteger = this;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.appinventor.components.runtime.AndroidNonvisibleComponent] */
    /* JADX WARN: Type inference failed for: r0v4, types: [boolean] */
    @SimpleFunction(description = "Rotate the motors at the same speed in a number of tacho counts.")
    public void RotateSyncInTachoCounts(int i, int i2, int i3, boolean z) throws IOException {
        ?? IsOneShotInteger;
        try {
            int i4 = this.motorPortBitField;
            if (i4 != 0) {
                IsOneShotInteger = isOneShotInteger(i4);
                try {
                    if (IsOneShotInteger != 0) {
                        outputStepSpeed("RotateSyncInTachoCounts", 0, this.motorPortBitField, i, 0, i2, 0, z);
                    } else {
                        outputStepSync("RotateSyncInTachoCounts", 0, this.motorPortBitField, i, i3, i2, z);
                    }
                } catch (IllegalArgumentException unused) {
                    IsOneShotInteger.form.dispatchErrorOccurredEvent(this, "RotateSyncInTachoCounts", ErrorMessages.ERROR_EV3_ILLEGAL_ARGUMENT, "RotateSyncInTachoCounts");
                }
            }
        } catch (IllegalArgumentException unused2) {
            IsOneShotInteger = this;
        }
    }

    @SimpleFunction(description = "Stop the motors of the robot.")
    public void Stop(boolean z) throws IOException {
        try {
            stopOutput("Stop", 0, this.motorPortBitField, z);
        } catch (IllegalArgumentException unused) {
            this.form.dispatchErrorOccurredEvent(this, "Stop", ErrorMessages.ERROR_EV3_ILLEGAL_ARGUMENT, "Stop");
        }
    }

    @SimpleFunction(description = "Toggle the direction of motors.")
    public void ToggleDirection() throws IOException {
        try {
            setOutputDirection("ToggleDirection", 0, this.motorPortBitField, 0);
            this.directionReversed = !this.directionReversed;
        } catch (IllegalArgumentException unused) {
            this.form.dispatchErrorOccurredEvent(this, "ToggleDirection", ErrorMessages.ERROR_EV3_ILLEGAL_ARGUMENT, "ToggleDirection");
        }
    }

    @SimpleFunction(description = "Set the current tacho count to zero.")
    public void ResetTachoCount() throws IOException {
        try {
            clearOutputCount("ResetTachoCount", 0, this.motorPortBitField);
        } catch (IllegalArgumentException unused) {
            this.form.dispatchErrorOccurredEvent(this, "ResetTachoCount", ErrorMessages.ERROR_EV3_ILLEGAL_ARGUMENT, "ResetTachoCount");
        }
    }

    @SimpleFunction(description = "Get the current tacho count.")
    public int GetTachoCount() {
        try {
            return getOutputCount("GetTachoCount", 0, this.motorPortBitField);
        } catch (IllegalArgumentException unused) {
            this.form.dispatchErrorOccurredEvent(this, "GetTachoCount", ErrorMessages.ERROR_EV3_ILLEGAL_ARGUMENT, "GetTachoCount");
            return 0;
        }
    }

    @SimpleEvent(description = "Called when the tacho count has changed.")
    public void TachoCountChanged(int i) {
        EventDispatcher.dispatchEvent(this, "TachoCountChanged", Integer.valueOf(i));
    }

    private void resetOutput(String str, int i, int i2) throws IOException, IllegalArgumentException {
        if (i < 0 || i > 3 || i2 < 0 || i2 > 15) {
            throw new IllegalArgumentException();
        }
        this.ifReset = true;
        sendCommand(str, Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.OUTPUT_RESET, false, 0, 0, "cc", Byte.valueOf((byte) i), Byte.valueOf((byte) i2)), false);
    }

    private void startOutput(String str, int i, int i2) throws IOException, IllegalArgumentException {
        if (i < 0 || i > 3 || i2 < 0 || i2 > 15) {
            throw new IllegalArgumentException();
        }
        sendCommand(str, Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.OUTPUT_START, false, 0, 0, "cc", Byte.valueOf((byte) i), Byte.valueOf((byte) i2)), false);
    }

    private void stopOutput(String str, int i, int i2, boolean z) throws IOException, IllegalArgumentException {
        if (i < 0 || i > 3 || i2 < 0 || i2 > 15) {
            throw new IllegalArgumentException();
        }
        sendCommand(str, Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.OUTPUT_STOP, false, 0, 0, "ccc", Byte.valueOf((byte) i), Byte.valueOf((byte) i2), Byte.valueOf(z ? (byte) 1 : (byte) 0)), false);
    }

    private void outputStepPower(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) throws IOException, IllegalArgumentException {
        if (i < 0 || i > 3 || i2 < 0 || i2 > 15 || i4 < 0 || i5 < 0 || i6 < 0) {
            throw new IllegalArgumentException();
        }
        sendCommand(str, Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.OUTPUT_STEP_POWER, false, 0, 0, "ccccccc", Byte.valueOf((byte) i), Byte.valueOf((byte) i2), Byte.valueOf((byte) roundValue(i3, -100, 100)), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6), Byte.valueOf(z ? (byte) 1 : (byte) 0)), false);
    }

    private void outputStepSpeed(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) throws IOException, IllegalArgumentException {
        if (i < 0 || i > 3 || i2 < 0 || i2 > 15 || i4 < 0 || i5 < 0 || i6 < 0) {
            throw new IllegalArgumentException();
        }
        sendCommand(str, Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.OUTPUT_STEP_SPEED, false, 0, 0, "ccccccc", Byte.valueOf((byte) i), Byte.valueOf((byte) i2), Byte.valueOf((byte) roundValue(i3, -100, 100)), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6), Byte.valueOf(z ? (byte) 1 : (byte) 0)), false);
    }

    private void outputStepSync(String str, int i, int i2, int i3, int i4, int i5, boolean z) throws IOException, IllegalArgumentException {
        if (i < 0 || i > 3 || i2 < 0 || i2 > 15 || i4 < -200 || i4 > 200) {
            throw new IllegalArgumentException();
        }
        sendCommand(str, Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.OUTPUT_STEP_SYNC, false, 0, 0, "cccccc", Byte.valueOf((byte) i), Byte.valueOf((byte) i2), Byte.valueOf((byte) roundValue(i3, -100, 100)), Short.valueOf((short) i4), Integer.valueOf(i5), Byte.valueOf(z ? (byte) 1 : (byte) 0)), false);
    }

    private void outputTimePower(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) throws IOException, IllegalArgumentException {
        if (i < 0 || i > 3 || i2 < 0 || i2 > 15 || i4 < 0 || i5 < 0 || i6 < 0) {
            throw new IllegalArgumentException();
        }
        sendCommand(str, Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.OUTPUT_TIME_POWER, false, 0, 0, "ccccccc", Byte.valueOf((byte) i), Byte.valueOf((byte) i2), Byte.valueOf((byte) roundValue(i3, -100, 100)), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6), Byte.valueOf(z ? (byte) 1 : (byte) 0)), false);
    }

    private void outputTimeSpeed(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) throws IOException, IllegalArgumentException {
        if (i < 0 || i > 3 || i2 < 0 || i2 > 15 || i4 < 0 || i5 < 0 || i6 < 0) {
            throw new IllegalArgumentException();
        }
        sendCommand(str, Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.OUTPUT_TIME_SPEED, false, 0, 0, "ccccccc", Byte.valueOf((byte) i), Byte.valueOf((byte) i2), Byte.valueOf((byte) roundValue(i3, -100, 100)), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6), Byte.valueOf(z ? (byte) 1 : (byte) 0)), false);
    }

    private void outputTimeSync(String str, int i, int i2, int i3, int i4, int i5, boolean z) throws IOException, IllegalArgumentException {
        if (i < 0 || i > 3 || i2 < 0 || i2 > 15 || i5 < 0) {
            throw new IllegalArgumentException();
        }
        sendCommand(str, Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.OUTPUT_TIME_SYNC, false, 0, 0, "cccccc", Byte.valueOf((byte) i), Byte.valueOf((byte) i2), Byte.valueOf((byte) roundValue(i3, -100, 100)), Short.valueOf((short) i4), Integer.valueOf(i5), Byte.valueOf(z ? (byte) 1 : (byte) 0)), false);
    }

    private void setOutputDirection(String str, int i, int i2, int i3) throws IOException, IllegalArgumentException {
        if (i < 0 || i > 3 || i2 < 0 || i2 > 15 || i3 < -1 || i3 > 1) {
            throw new IllegalArgumentException();
        }
        sendCommand(str, Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.OUTPUT_POLARITY, false, 0, 0, "ccc", Byte.valueOf((byte) i), Byte.valueOf((byte) i2), Byte.valueOf((byte) i3)), false);
    }

    private void setOutputSpeed(String str, int i, int i2, int i3) throws IOException, IllegalArgumentException {
        if (i < 0 || i > 3 || i2 < 0 || i2 > 15) {
            throw new IllegalArgumentException();
        }
        sendCommand(str, Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.OUTPUT_SPEED, false, 0, 0, "ccc", Byte.valueOf((byte) i), Byte.valueOf((byte) i2), Byte.valueOf((byte) roundValue(i3, -100, 100))), false);
    }

    private void setOutputPower(String str, int i, int i2, int i3) throws IOException, IllegalArgumentException {
        if (i < 0 || i > 3 || i2 < 0 || i2 > 15) {
            throw new IllegalArgumentException();
        }
        sendCommand(str, Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.OUTPUT_POWER, false, 0, 0, "ccc", Byte.valueOf((byte) i), Byte.valueOf((byte) i2), Byte.valueOf((byte) roundValue(i3, -100, 100))), false);
    }

    private int getOutputCount(String str, int i, int i2) throws IOException, IllegalArgumentException {
        int i3;
        if (i < 0 || i > 3 || i2 < 0 || i2 > 15) {
            throw new IllegalArgumentException();
        }
        int i4 = ((i2 ^ (i2 - 1)) + 1) >>> 1;
        if (i4 == 1) {
            i3 = 0;
        } else if (i4 == 2) {
            i3 = 1;
        } else if (i4 == 4) {
            i3 = 2;
        } else {
            if (i4 != 8) {
                throw new IllegalArgumentException();
            }
            i3 = 3;
        }
        byte[] bArrSendCommand = sendCommand(str, Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.OUTPUT_GET_COUNT, true, 4, 0, "ccg", Byte.valueOf((byte) i), Byte.valueOf((byte) i3), (byte) 0), true);
        if (bArrSendCommand != null && bArrSendCommand.length == 5 && bArrSendCommand[0] == 2) {
            return ((Integer) Ev3BinaryParser.unpack("xi", bArrSendCommand)[0]).intValue();
        }
        return 0;
    }

    private void clearOutputCount(String str, int i, int i2) throws IOException, IllegalArgumentException {
        if (i < 0 || i > 3 || i2 < 0 || i2 > 15) {
            throw new IllegalArgumentException();
        }
        sendCommand(str, Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.OUTPUT_CLR_COUNT, false, 0, 0, "cc", Byte.valueOf((byte) i), Byte.valueOf((byte) i2)), false);
    }

    @Override // com.google.appinventor.components.runtime.LegoMindstormsEv3Base, com.google.appinventor.components.runtime.BluetoothConnectionListener
    public void beforeDisconnect(BluetoothConnectionBase bluetoothConnectionBase) throws IOException {
        if (this.stopBeforeDisconnect) {
            try {
                stopOutput("beforeDisconnect", 0, this.motorPortBitField, true);
            } catch (IllegalArgumentException unused) {
                this.form.dispatchErrorOccurredEvent(this, "beforeDisconnect", ErrorMessages.ERROR_EV3_ILLEGAL_ARGUMENT, "beforeDisconnect");
            }
        }
    }
}
