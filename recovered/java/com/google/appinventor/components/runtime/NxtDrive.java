package com.google.appinventor.components.runtime;

import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.NxtMotorMode;
import com.google.appinventor.components.common.NxtMotorPort;
import com.google.appinventor.components.common.NxtRegulationMode;
import com.google.appinventor.components.common.NxtRunState;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@DesignerComponent(category = ComponentCategory.LEGOMINDSTORMS, description = "A component that provides a high-level interface to a LEGO MINDSTORMS NXT robot, with functions that can move and turn the robot.", iconName = "images/legoMindstormsNxt.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public class NxtDrive extends LegoMindstormsNxtBase {
    private List<NxtMotorPort> driveMotorPorts;
    private String driveMotors;
    private boolean stopBeforeDisconnect;
    private double wheelDiameter;

    public NxtDrive(ComponentContainer componentContainer) {
        super(componentContainer, "NxtDrive");
        DriveMotors("CB");
        WheelDiameter(4.32f);
        StopBeforeDisconnect(true);
    }

    @Override // com.google.appinventor.components.runtime.LegoMindstormsNxtBase, com.google.appinventor.components.runtime.BluetoothConnectionListener
    public void beforeDisconnect(BluetoothConnectionBase bluetoothConnectionBase) throws IOException {
        if (this.stopBeforeDisconnect) {
            Iterator<NxtMotorPort> it = this.driveMotorPorts.iterator();
            while (it.hasNext()) {
                setOutputState("Disconnect", it.next(), 0, NxtMotorMode.Brake, NxtRegulationMode.Disabled, 0, NxtRunState.Disabled, 0L);
            }
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The motor ports that are used for driving: the left wheel's motor port followed by the right wheel's motor port.", userVisible = false)
    public String DriveMotors() {
        return this.driveMotors;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "CB", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void DriveMotors(String str) {
        this.driveMotors = str;
        this.driveMotorPorts = new ArrayList();
        for (int i = 0; i < str.length(); i++) {
            String strValueOf = String.valueOf(str.charAt(i));
            NxtMotorPort nxtMotorPortFromUnderlyingValue = NxtMotorPort.fromUnderlyingValue(strValueOf);
            if (nxtMotorPortFromUnderlyingValue == null) {
                this.form.dispatchErrorOccurredEvent(this, "DriveMotors", ErrorMessages.ERROR_NXT_INVALID_MOTOR_PORT, strValueOf);
            } else {
                this.driveMotorPorts.add(nxtMotorPortFromUnderlyingValue);
            }
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The diameter of the wheels used for driving.", userVisible = false)
    public float WheelDiameter() {
        return (float) this.wheelDiameter;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "4.32", editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void WheelDiameter(float f) {
        this.wheelDiameter = f;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether to stop the drive motors before disconnecting.")
    public boolean StopBeforeDisconnect() {
        return this.stopBeforeDisconnect;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void StopBeforeDisconnect(boolean z) {
        this.stopBeforeDisconnect = z;
    }

    @SimpleFunction(description = "Move the robot forward indefinitely, with the specified percentage of maximum power, by powering both drive motors forward.")
    public void MoveForwardIndefinitely(int i) throws IOException {
        move("MoveForwardIndefinitely", i, 0L);
    }

    @SimpleFunction(description = "Move the robot backward indefinitely, with the specified percentage of maximum power, by powering both drive motors backward.")
    public void MoveBackwardIndefinitely(int i) throws IOException {
        move("MoveBackwardIndefinitely", -i, 0L);
    }

    @SimpleFunction(description = "Move the robot forward the given distance, with the specified percentage of maximum power, by powering both drive motors forward.")
    public void MoveForward(int i, double d) throws IOException {
        move("MoveForward", i, (long) ((d * 360.0d) / (this.wheelDiameter * 3.141592653589793d)));
    }

    @SimpleFunction(description = "Move the robot backward the given distance, with the specified percentage of maximum power, by powering both drive motors backward.")
    public void MoveBackward(int i, double d) throws IOException {
        move("MoveBackward", -i, (long) ((d * 360.0d) / (this.wheelDiameter * 3.141592653589793d)));
    }

    private void move(String str, int i, long j) throws IOException {
        if (checkBluetooth(str)) {
            Iterator<NxtMotorPort> it = this.driveMotorPorts.iterator();
            while (it.hasNext()) {
                setOutputState(str, it.next(), i, NxtMotorMode.On, NxtRegulationMode.Speed, 0, NxtRunState.Running, j);
            }
        }
    }

    @SimpleFunction(description = "Turn the robot clockwise indefinitely, with the specified percentage of maximum power, by powering the left drive motor forward and the right drive motor backward.")
    public void TurnClockwiseIndefinitely(int i) throws IOException {
        int size = this.driveMotorPorts.size();
        if (size >= 2) {
            turnIndefinitely("TurnClockwiseIndefinitely", i, 0, size - 1);
        }
    }

    @SimpleFunction(description = "Turn the robot counterclockwise indefinitely, with the specified percentage of maximum power, by powering the right drive motor forward and the left drive motor backward.")
    public void TurnCounterClockwiseIndefinitely(int i) throws IOException {
        int size = this.driveMotorPorts.size();
        if (size >= 2) {
            turnIndefinitely("TurnCounterClockwiseIndefinitely", i, size - 1, 0);
        }
    }

    private void turnIndefinitely(String str, int i, int i2, int i3) throws IOException {
        if (checkBluetooth(str)) {
            NxtMotorPort nxtMotorPort = this.driveMotorPorts.get(i2);
            NxtMotorMode nxtMotorMode = NxtMotorMode.On;
            NxtRegulationMode nxtRegulationMode = NxtRegulationMode.Speed;
            NxtRunState nxtRunState = NxtRunState.Running;
            setOutputState(str, nxtMotorPort, i, nxtMotorMode, nxtRegulationMode, 0, nxtRunState, 0L);
            setOutputState(str, this.driveMotorPorts.get(i3), -i, nxtMotorMode, nxtRegulationMode, 0, nxtRunState, 0L);
        }
    }

    @SimpleFunction(description = "Stop the drive motors of the robot.")
    public void Stop() throws IOException {
        if (checkBluetooth("Stop")) {
            Iterator<NxtMotorPort> it = this.driveMotorPorts.iterator();
            while (it.hasNext()) {
                setOutputState("Stop", it.next(), 0, NxtMotorMode.Brake, NxtRegulationMode.Disabled, 0, NxtRunState.Disabled, 0L);
            }
        }
    }
}
