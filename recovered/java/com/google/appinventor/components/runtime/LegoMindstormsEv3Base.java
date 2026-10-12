package com.google.appinventor.components.runtime;

import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.Ev3BinaryParser;
import java.io.IOException;
import java.util.Collections;

@SimpleObject
/* loaded from: classes.dex */
public class LegoMindstormsEv3Base extends AndroidNonvisibleComponent implements BluetoothConnectionListener, Component, Deleteable {
    private static final int TOY_ROBOT = 2052;
    protected BluetoothClient bluetooth;
    protected int commandCount;
    protected final String logTag;

    @Override // com.google.appinventor.components.runtime.BluetoothConnectionListener
    public void afterConnect(BluetoothConnectionBase bluetoothConnectionBase) {
    }

    public void beforeDisconnect(BluetoothConnectionBase bluetoothConnectionBase) {
    }

    public LegoMindstormsEv3Base(ComponentContainer componentContainer, String str) {
        super(componentContainer.$form());
        this.logTag = str;
    }

    public LegoMindstormsEv3Base() {
        super(null);
        this.logTag = null;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The BluetoothClient component that should be used for communication.")
    public BluetoothClient BluetoothClient() {
        return this.bluetooth;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_BLUETOOTHCLIENT)
    public void BluetoothClient(BluetoothClient bluetoothClient) {
        BluetoothClient bluetoothClient2 = this.bluetooth;
        if (bluetoothClient2 != null) {
            bluetoothClient2.removeBluetoothConnectionListener(this);
            this.bluetooth.detachComponent(this);
            this.bluetooth = null;
        }
        if (bluetoothClient != null) {
            this.bluetooth = bluetoothClient;
            bluetoothClient.attachComponent(this, Collections.singleton(Integer.valueOf(TOY_ROBOT)));
            this.bluetooth.addBluetoothConnectionListener(this);
            if (this.bluetooth.IsConnected()) {
                afterConnect(this.bluetooth);
            }
        }
    }

    public final boolean isBluetoothConnected(String str) {
        BluetoothClient bluetoothClient = this.bluetooth;
        if (bluetoothClient == null) {
            this.form.dispatchErrorOccurredEvent(this, str, ErrorMessages.ERROR_EV3_BLUETOOTH_NOT_SET, new Object[0]);
            return false;
        }
        if (bluetoothClient.IsConnected()) {
            return true;
        }
        this.form.dispatchErrorOccurredEvent(this, str, ErrorMessages.ERROR_EV3_NOT_CONNECTED_TO_ROBOT, new Object[0]);
        return false;
    }

    public final byte[] sendCommand(String str, byte[] bArr, boolean z) throws IOException, IllegalArgumentException {
        if (!isBluetoothConnected(str)) {
            return null;
        }
        byte[] bArrPack = Ev3BinaryParser.pack("hh", Short.valueOf((short) (bArr.length + 2)), Short.valueOf((short) this.commandCount));
        this.commandCount++;
        this.bluetooth.write(str, bArrPack);
        this.bluetooth.write(str, bArr);
        if (z) {
            byte[] bArr2 = this.bluetooth.read(str, 4);
            if (bArr2.length == 4) {
                Object[] objArrUnpack = Ev3BinaryParser.unpack("hh", bArr2);
                int iShortValue = ((Short) objArrUnpack[0]).shortValue() - 2;
                ((Short) objArrUnpack[1]).getClass();
                byte[] bArr3 = this.bluetooth.read(str, iShortValue);
                if (bArr3.length == iShortValue) {
                    return bArr3;
                }
                this.form.dispatchErrorOccurredEvent(this, str, ErrorMessages.ERROR_EV3_INVALID_REPLY, new Object[0]);
                return null;
            }
            this.form.dispatchErrorOccurredEvent(this, str, ErrorMessages.ERROR_EV3_INVALID_REPLY, new Object[0]);
        }
        return null;
    }

    public final int sensorPortLetterToPortNumber(String str) {
        if (str.length() != 1) {
            throw new IllegalArgumentException(_COROUTINE.a.A("String \"", str, "\" is not a valid sensor port letter"));
        }
        int iCharAt = str.charAt(0) - '1';
        if (iCharAt < 0 || iCharAt > 3) {
            throw new IllegalArgumentException(_COROUTINE.a.A("String \"", str, "\" is not a valid sensor port letter"));
        }
        return iCharAt;
    }

    public final String portNumberToSensorPortLetter(int i) {
        if (i < 0 || i > 3) {
            throw new IllegalArgumentException(i + " is not a valid port number");
        }
        StringBuilder sb = new StringBuilder();
        sb.append(i + 49);
        return sb.toString();
    }

    public final int motorPortLettersToBitField(String str) {
        if (str.length() > 4) {
            throw new IllegalArgumentException(_COROUTINE.a.A("Malformed motor port letters \"", str, "\""));
        }
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < str.length(); i5++) {
            switch (str.charAt(i5)) {
                case 'A':
                    if (i != 0) {
                        throw new IllegalArgumentException(_COROUTINE.a.A("Malformed motor port letters \"", str, "\""));
                    }
                    i = 1;
                    break;
                case 'B':
                    if (i2 != 0) {
                        throw new IllegalArgumentException(_COROUTINE.a.A("Malformed motor port letters \"", str, "\""));
                    }
                    i2 = 2;
                    break;
                case 'C':
                    if (i3 != 0) {
                        throw new IllegalArgumentException(_COROUTINE.a.A("Malformed motor port letters \"", str, "\""));
                    }
                    i3 = 4;
                    break;
                case 'D':
                    if (i4 != 0) {
                        throw new IllegalArgumentException(_COROUTINE.a.A("Malformed motor port letters \"", str, "\""));
                    }
                    i4 = 8;
                    break;
                default:
                    throw new IllegalArgumentException(_COROUTINE.a.A("Malformed motor port letters \"", str, "\""));
            }
        }
        return i | i2 | i3 | i4;
    }

    public final String bitFieldToMotorPortLetters(int i) {
        if (i < 0 || i > 15) {
            throw new IllegalArgumentException(_COROUTINE.a.d(i, "Invalid bit field number "));
        }
        String strZ = (i & 1) != 0 ? "A" : "";
        if ((i & 2) != 0) {
            strZ = _COROUTINE.a.z(strZ, "B");
        }
        if ((i & 4) != 0) {
            strZ = _COROUTINE.a.z(strZ, "C");
        }
        return (i & 8) != 0 ? _COROUTINE.a.z(strZ, "D") : strZ;
    }

    public void onDelete() {
        BluetoothClient bluetoothClient = this.bluetooth;
        if (bluetoothClient != null) {
            bluetoothClient.removeBluetoothConnectionListener(this);
            this.bluetooth.detachComponent(this);
            this.bluetooth = null;
        }
    }
}
