package com.google.appinventor.components.runtime;

import android.util.Log;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.NxtMotorMode;
import com.google.appinventor.components.common.NxtMotorPort;
import com.google.appinventor.components.common.NxtRegulationMode;
import com.google.appinventor.components.common.NxtRunState;
import com.google.appinventor.components.common.NxtSensorMode;
import com.google.appinventor.components.common.NxtSensorPort;
import com.google.appinventor.components.common.NxtSensorType;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.FullScreenVideoUtil;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Collections;
import java.util.HashMap;
import kawa.Telnet;

@SimpleObject
/* loaded from: classes.dex */
public class LegoMindstormsNxtBase extends AndroidNonvisibleComponent implements BluetoothConnectionListener, Component, Deleteable {
    private static final java.util.Map<Integer, String> ERROR_MESSAGES;
    private static final int TOY_ROBOT = 2052;
    protected BluetoothClient bluetooth;
    protected final String logTag;

    public final void Initialize() {
    }

    @Override // com.google.appinventor.components.runtime.BluetoothConnectionListener
    public void afterConnect(BluetoothConnectionBase bluetoothConnectionBase) {
    }

    @Override // com.google.appinventor.components.runtime.BluetoothConnectionListener
    public void beforeDisconnect(BluetoothConnectionBase bluetoothConnectionBase) {
    }

    static {
        HashMap map = new HashMap();
        ERROR_MESSAGES = map;
        _COROUTINE.a.u(32, map, "Pending communication transaction in progress", 64, "Specified mailbox queue is empty");
        _COROUTINE.a.u(129, map, "No more handles", 130, "No space");
        _COROUTINE.a.u(131, map, "No more files", 132, "End of file expected");
        _COROUTINE.a.u(133, map, "End of file", 134, "Not a linear file");
        _COROUTINE.a.u(135, map, "File not found", 136, "Handle already closed");
        _COROUTINE.a.u(137, map, "No linear space", 138, "Undefined error");
        _COROUTINE.a.u(139, map, "File is busy", 140, "No write buffers");
        _COROUTINE.a.u(141, map, "Append not possible", 142, "File is full");
        _COROUTINE.a.u(143, map, "File exists", 144, "Module not found");
        _COROUTINE.a.u(145, map, "Out of boundary", 146, "Illegal file name");
        _COROUTINE.a.u(147, map, "Illegal handle", FullScreenVideoUtil.FULLSCREEN_VIDEO_DIALOG_FLAG, "Request failed (i.e. specified file not found)");
        _COROUTINE.a.u(FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_SEEK, map, "Unknown command opcode", FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PLAY, "Insane packet");
        _COROUTINE.a.u(FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PAUSE, map, "Data contains out-of-range values", 221, "Communication bus error");
        _COROUTINE.a.u(222, map, "No free memory in communication buffer", 223, "Specified channel/connection is not valid");
        _COROUTINE.a.u(224, map, "Specified channel/connection not configured or busy", 236, "No active program");
        _COROUTINE.a.u(237, map, "Illegal size specified", 238, "Illegal mailbox queue ID specified");
        _COROUTINE.a.u(239, map, "Attempted to access invalid field of a structure", 240, "Bad input or output specified");
        _COROUTINE.a.u(Telnet.WILL, map, "Insufficient memory available", 255, "Bad arguments");
    }

    public LegoMindstormsNxtBase(ComponentContainer componentContainer, String str) {
        super(componentContainer.$form());
        this.logTag = str;
    }

    public LegoMindstormsNxtBase() {
        super(null);
        this.logTag = null;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The BluetoothClient component that should be used for communication.", userVisible = false)
    public BluetoothClient BluetoothClient() {
        return this.bluetooth;
    }

    @SimpleProperty(userVisible = false)
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

    public final void setOutputState(String str, int i, int i2, int i3, int i4, int i5, int i6, long j) throws IOException {
        int iSanitizePower = sanitizePower(i2);
        int iSanitizeTurnRatio = sanitizeTurnRatio(i5);
        byte[] bArr = new byte[12];
        bArr[0] = -128;
        bArr[1] = 4;
        copyUBYTEValueToBytes(i, bArr, 2);
        copySBYTEValueToBytes(iSanitizePower, bArr, 3);
        copyUBYTEValueToBytes(i3, bArr, 4);
        copyUBYTEValueToBytes(i4, bArr, 5);
        copySBYTEValueToBytes(iSanitizeTurnRatio, bArr, 6);
        copyUBYTEValueToBytes(i6, bArr, 7);
        copyULONGValueToBytes(j, bArr, 8);
        sendCommand(str, bArr);
    }

    public final void setOutputState(String str, NxtMotorPort nxtMotorPort, int i, NxtMotorMode nxtMotorMode, NxtRegulationMode nxtRegulationMode, int i2, NxtRunState nxtRunState, long j) throws IOException {
        setOutputState(str, nxtMotorPort.toInt().intValue(), i, nxtMotorMode.toUnderlyingValue().intValue(), nxtRegulationMode.toUnderlyingValue().intValue(), i2, nxtRunState.toUnderlyingValue().intValue(), j);
    }

    public final void setInputMode(String str, int i, int i2, int i3) throws IOException {
        byte[] bArr = {-128, 5, 0, 0, 0};
        copyUBYTEValueToBytes(i, bArr, 2);
        copyUBYTEValueToBytes(i2, bArr, 3);
        copyUBYTEValueToBytes(i3, bArr, 4);
        sendCommand(str, bArr);
    }

    public final void setInputMode(String str, NxtSensorPort nxtSensorPort, NxtSensorType nxtSensorType, NxtSensorMode nxtSensorMode) throws IOException {
        setInputMode(str, nxtSensorPort.toInt().intValue(), nxtSensorType.toUnderlyingValue().intValue(), nxtSensorMode.toUnderlyingValue().intValue());
    }

    public final byte[] getInputValues(String str, int i) throws IOException {
        byte[] bArr = {0, 7, 0};
        copyUBYTEValueToBytes(i, bArr, 2);
        byte[] bArrSendCommandAndReceiveReturnPackage = sendCommandAndReceiveReturnPackage(str, bArr);
        if (!evaluateStatus(str, bArrSendCommandAndReceiveReturnPackage, bArr[1])) {
            return null;
        }
        if (bArrSendCommandAndReceiveReturnPackage.length == 16) {
            return bArrSendCommandAndReceiveReturnPackage;
        }
        Log.w(this.logTag, str + ": unexpected return package length " + bArrSendCommandAndReceiveReturnPackage.length + " (expected 16)");
        return null;
    }

    public final byte[] getInputValues(String str, NxtSensorPort nxtSensorPort) {
        return getInputValues(str, nxtSensorPort.toInt().intValue());
    }

    public final void resetInputScaledValue(String str, int i) throws IOException {
        byte[] bArr = {-128, 8, 0};
        copyUBYTEValueToBytes(i, bArr, 2);
        sendCommand(str, bArr);
    }

    public final void resetInputScaledValue(String str, NxtSensorPort nxtSensorPort) throws IOException {
        resetInputScaledValue(str, nxtSensorPort.toInt().intValue());
    }

    public final int lsGetStatus(String str, int i) throws IOException {
        byte[] bArr = {0, 14, 0};
        copyUBYTEValueToBytes(i, bArr, 2);
        byte[] bArrSendCommandAndReceiveReturnPackage = sendCommandAndReceiveReturnPackage(str, bArr);
        if (evaluateStatus(str, bArrSendCommandAndReceiveReturnPackage, bArr[1])) {
            if (bArrSendCommandAndReceiveReturnPackage.length == 4) {
                return getUBYTEValueFromBytes(bArrSendCommandAndReceiveReturnPackage, 3);
            }
            Log.w(this.logTag, str + ": unexpected return package length " + bArrSendCommandAndReceiveReturnPackage.length + " (expected 4)");
        }
        return 0;
    }

    public final int lsGetStatus(String str, NxtSensorPort nxtSensorPort) {
        return lsGetStatus(str, nxtSensorPort.toInt().intValue());
    }

    public final void lsWrite(String str, int i, byte[] bArr, int i2) {
        if (bArr.length > 16) {
            throw new IllegalArgumentException("length must be <= 16");
        }
        byte[] bArr2 = new byte[bArr.length + 5];
        bArr2[0] = 0;
        bArr2[1] = 15;
        copyUBYTEValueToBytes(i, bArr2, 2);
        copyUBYTEValueToBytes(bArr.length, bArr2, 3);
        copyUBYTEValueToBytes(i2, bArr2, 4);
        System.arraycopy(bArr, 0, bArr2, 5, bArr.length);
        evaluateStatus(str, sendCommandAndReceiveReturnPackage(str, bArr2), bArr2[1]);
    }

    public final void lsWrite(String str, NxtSensorPort nxtSensorPort, byte[] bArr, int i) {
        lsWrite(str, nxtSensorPort.toInt().intValue(), bArr, i);
    }

    public final byte[] lsRead(String str, int i) throws IOException {
        byte[] bArr = {0, 16, 0};
        copyUBYTEValueToBytes(i, bArr, 2);
        byte[] bArrSendCommandAndReceiveReturnPackage = sendCommandAndReceiveReturnPackage(str, bArr);
        if (!evaluateStatus(str, bArrSendCommandAndReceiveReturnPackage, bArr[1])) {
            return null;
        }
        if (bArrSendCommandAndReceiveReturnPackage.length == 20) {
            return bArrSendCommandAndReceiveReturnPackage;
        }
        Log.w(this.logTag, str + ": unexpected return package length " + bArrSendCommandAndReceiveReturnPackage.length + " (expected 20)");
        return null;
    }

    public final byte[] lsRead(String str, NxtSensorPort nxtSensorPort) {
        return lsRead(str, nxtSensorPort.toInt().intValue());
    }

    public final boolean checkBluetooth(String str) {
        BluetoothClient bluetoothClient = this.bluetooth;
        if (bluetoothClient == null) {
            this.form.dispatchErrorOccurredEvent(this, str, ErrorMessages.ERROR_NXT_BLUETOOTH_NOT_SET, new Object[0]);
            return false;
        }
        if (bluetoothClient.IsConnected()) {
            return true;
        }
        this.form.dispatchErrorOccurredEvent(this, str, ErrorMessages.ERROR_NXT_NOT_CONNECTED_TO_ROBOT, new Object[0]);
        return false;
    }

    public final byte[] sendCommandAndReceiveReturnPackage(String str, byte[] bArr) throws IOException {
        sendCommand(str, bArr);
        return receiveReturnPackage(str);
    }

    public final void sendCommand(String str, byte[] bArr) throws IOException {
        byte[] bArr2 = new byte[2];
        copyUWORDValueToBytes(bArr.length, bArr2, 0);
        this.bluetooth.write(str, bArr2);
        this.bluetooth.write(str, bArr);
    }

    private byte[] receiveReturnPackage(String str) throws IOException {
        byte[] bArr = this.bluetooth.read(str, 2);
        if (bArr.length == 2) {
            byte[] bArr2 = this.bluetooth.read(str, getUWORDValueFromBytes(bArr, 0));
            if (bArr2.length >= 3) {
                return bArr2;
            }
        }
        this.form.dispatchErrorOccurredEvent(this, str, ErrorMessages.ERROR_NXT_INVALID_RETURN_PACKAGE, new Object[0]);
        return new byte[0];
    }

    public final boolean evaluateStatus(String str, byte[] bArr, byte b2) {
        int status = getStatus(str, bArr, b2);
        if (status == 0) {
            return true;
        }
        handleError(str, status);
        return false;
    }

    public final int getStatus(String str, byte[] bArr, byte b2) {
        if (bArr.length >= 3) {
            byte b3 = bArr[0];
            if (b3 != 2) {
                Log.w(this.logTag, str + ": unexpected return package byte 0: 0x" + Integer.toHexString(b3 & 255) + " (expected 0x02)");
            }
            byte b4 = bArr[1];
            if (b4 != b2) {
                Log.w(this.logTag, str + ": unexpected return package byte 1: 0x" + Integer.toHexString(b4 & 255) + " (expected 0x" + Integer.toHexString(b2 & 255) + ")");
            }
            return getUBYTEValueFromBytes(bArr, 2);
        }
        Log.w(this.logTag, str + ": unexpected return package length " + bArr.length + " (expected >= 3)");
        return -1;
    }

    private void handleError(String str, int i) {
        if (i < 0) {
            return;
        }
        String str2 = ERROR_MESSAGES.get(Integer.valueOf(i));
        if (str2 != null) {
            this.form.dispatchErrorOccurredEvent(this, str, 404, str2);
        } else {
            this.form.dispatchErrorOccurredEvent(this, str, 404, _COROUTINE.a.i("Error code 0x", Integer.toHexString(i & 255)));
        }
    }

    public final void copyBooleanValueToBytes(boolean z, byte[] bArr, int i) {
        bArr[i] = z ? (byte) 1 : (byte) 0;
    }

    public final void copySBYTEValueToBytes(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
    }

    public final void copyUBYTEValueToBytes(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
    }

    public final void copySWORDValueToBytes(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i & 255);
        bArr[i2 + 1] = (byte) ((i >> 8) & 255);
    }

    public final void copyUWORDValueToBytes(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i & 255);
        bArr[i2 + 1] = (byte) ((i >> 8) & 255);
    }

    public final void copySLONGValueToBytes(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i & 255);
        bArr[i2 + 1] = (byte) ((i >> 8) & 255);
        bArr[i2 + 2] = (byte) ((i >> 16) & 255);
        bArr[i2 + 3] = (byte) ((i >> 24) & 255);
    }

    public final void copyULONGValueToBytes(long j, byte[] bArr, int i) {
        bArr[i] = (byte) (j & 255);
        bArr[i + 1] = (byte) ((j >> 8) & 255);
        bArr[i + 2] = (byte) ((j >> 16) & 255);
        bArr[i + 3] = (byte) ((j >> 24) & 255);
    }

    public final void copyStringValueToBytes(String str, byte[] bArr, int i, int i2) throws UnsupportedEncodingException {
        byte[] bytes;
        if (str.length() > i2) {
            str = str.substring(0, i2);
        }
        try {
            bytes = str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            Log.w(this.logTag, "UnsupportedEncodingException: " + e.getMessage());
            bytes = str.getBytes();
        }
        System.arraycopy(bytes, 0, bArr, i, Math.min(i2, bytes.length));
    }

    public final boolean getBooleanValueFromBytes(byte[] bArr, int i) {
        return bArr[i] != 0;
    }

    public final int getSBYTEValueFromBytes(byte[] bArr, int i) {
        return bArr[i];
    }

    public final int getUBYTEValueFromBytes(byte[] bArr, int i) {
        return bArr[i] & 255;
    }

    public final int getSWORDValueFromBytes(byte[] bArr, int i) {
        return (bArr[i + 1] << 8) | (bArr[i] & 255);
    }

    public final int getUWORDValueFromBytes(byte[] bArr, int i) {
        return ((bArr[i + 1] & 255) << 8) | (bArr[i] & 255);
    }

    public final int getSLONGValueFromBytes(byte[] bArr, int i) {
        return (bArr[i + 3] << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public final long getULONGValueFromBytes(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public final String getStringValueFromBytes(byte[] bArr, int i) {
        int i2;
        int i3 = i;
        while (true) {
            if (i3 >= bArr.length) {
                i2 = 0;
                break;
            }
            if (bArr[i3] == 0) {
                i2 = i3 - i;
                break;
            }
            i3++;
        }
        return getStringValueFromBytes(bArr, i, i2);
    }

    public final String getStringValueFromBytes(byte[] bArr, int i, int i2) {
        try {
            return new String(bArr, i, i2, "ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            Log.w(this.logTag, "UnsupportedEncodingException: " + e.getMessage());
            return new String(bArr, i, i2);
        }
    }

    public final int convertMotorPortLetterToNumber(String str) {
        if (str.length() == 1) {
            return convertMotorPortLetterToNumber(str.charAt(0));
        }
        throw new IllegalArgumentException("Illegal motor port letter ".concat(str));
    }

    public final int convertMotorPortLetterToNumber(char c) {
        if (c == 'A' || c == 'a') {
            return 0;
        }
        if (c == 'B' || c == 'b') {
            return 1;
        }
        if (c == 'C' || c == 'c') {
            return 2;
        }
        throw new IllegalArgumentException("Illegal motor port letter " + c);
    }

    public final int convertSensorPortLetterToNumber(String str) {
        if (str.length() == 1) {
            return convertSensorPortLetterToNumber(str.charAt(0));
        }
        throw new IllegalArgumentException("Illegal sensor port letter ".concat(str));
    }

    public final int convertSensorPortLetterToNumber(char c) {
        if (c == '1') {
            return 0;
        }
        if (c == '2') {
            return 1;
        }
        if (c == '3') {
            return 2;
        }
        if (c == '4') {
            return 3;
        }
        throw new IllegalArgumentException("Illegal sensor port letter " + c);
    }

    public final int sanitizePower(int i) {
        if (i < -100) {
            Log.w(this.logTag, "power " + i + " is invalid, using -100.");
            i = -100;
        }
        if (i <= 100) {
            return i;
        }
        Log.w(this.logTag, "power " + i + " is invalid, using 100.");
        return 100;
    }

    public final int sanitizeTurnRatio(int i) {
        if (i < -100) {
            Log.w(this.logTag, "turnRatio " + i + " is invalid, using -100.");
            i = -100;
        }
        if (i <= 100) {
            return i;
        }
        Log.w(this.logTag, "turnRatio " + i + " is invalid, using 100.");
        return 100;
    }

    @Override // com.google.appinventor.components.runtime.Deleteable
    public void onDelete() {
        BluetoothClient bluetoothClient = this.bluetooth;
        if (bluetoothClient != null) {
            bluetoothClient.removeBluetoothConnectionListener(this);
            this.bluetooth.detachComponent(this);
            this.bluetooth = null;
        }
    }
}
