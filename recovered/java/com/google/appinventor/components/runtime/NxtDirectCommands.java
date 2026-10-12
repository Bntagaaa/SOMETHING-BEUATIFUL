package com.google.appinventor.components.runtime;

import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.NxtMailbox;
import com.google.appinventor.components.common.NxtMotorMode;
import com.google.appinventor.components.common.NxtMotorPort;
import com.google.appinventor.components.common.NxtRegulationMode;
import com.google.appinventor.components.common.NxtRunState;
import com.google.appinventor.components.common.NxtSensorMode;
import com.google.appinventor.components.common.NxtSensorPort;
import com.google.appinventor.components.common.NxtSensorType;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.Ev3Constants;
import com.google.appinventor.components.runtime.util.FileUtil;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.google.appinventor.components.runtime.util.YailList;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

@DesignerComponent(category = ComponentCategory.LEGOMINDSTORMS, description = "A component that provides a low-level interface to a LEGO MINDSTORMS NXT robot, with functions to send NXT Direct Commands.", iconName = "images/legoMindstormsNxt.png", nonVisible = true, version = 2)
@SimpleObject
/* loaded from: classes.dex */
public class NxtDirectCommands extends LegoMindstormsNxtBase {
    public NxtDirectCommands(ComponentContainer componentContainer) {
        super(componentContainer, "NxtDirectCommands");
    }

    @SimpleFunction(description = "Start execution of a previously downloaded program on the robot.")
    public void StartProgram(String str) throws IOException {
        if (checkBluetooth("StartProgram")) {
            if (str.length() == 0) {
                this.form.dispatchErrorOccurredEvent(this, "StartProgram", ErrorMessages.ERROR_NXT_INVALID_PROGRAM_NAME, new Object[0]);
                return;
            }
            if (str.indexOf(".") == -1) {
                str = str.concat(".rxe");
            }
            byte[] bArr = new byte[22];
            bArr[0] = -128;
            bArr[1] = 0;
            copyStringValueToBytes(str, bArr, 2, 19);
            sendCommand("StartProgram", bArr);
        }
    }

    @SimpleFunction(description = "Stop execution of the currently running program on the robot.")
    public void StopProgram() throws IOException {
        if (checkBluetooth("StopProgram")) {
            sendCommand("StopProgram", new byte[]{-128, 1});
        }
    }

    @SimpleFunction(description = "Play a sound file on the robot.")
    public void PlaySoundFile(String str) throws IOException {
        if (checkBluetooth("PlaySoundFile")) {
            if (str.length() == 0) {
                this.form.dispatchErrorOccurredEvent(this, "PlaySoundFile", ErrorMessages.ERROR_NXT_INVALID_FILE_NAME, new Object[0]);
                return;
            }
            if (str.indexOf(".") == -1) {
                str = str.concat(".rso");
            }
            byte[] bArr = new byte[23];
            bArr[0] = -128;
            bArr[1] = 2;
            copyBooleanValueToBytes(false, bArr, 2);
            copyStringValueToBytes(str, bArr, 3, 19);
            sendCommand("PlaySoundFile", bArr);
        }
    }

    @SimpleFunction(description = "Make the robot play a tone.")
    public void PlayTone(int i, int i2) throws IOException {
        if (checkBluetooth("PlayTone")) {
            if (i < 200) {
                Log.w(this.logTag, "frequencyHz " + i + " is invalid, using 200.");
                i = 200;
            }
            if (i > 14000) {
                Log.w(this.logTag, "frequencyHz " + i + " is invalid, using 14000.");
                i = 14000;
            }
            byte[] bArr = new byte[6];
            bArr[0] = -128;
            bArr[1] = 3;
            copyUWORDValueToBytes(i, bArr, 2);
            copyUWORDValueToBytes(i2, bArr, 4);
            sendCommand("PlayTone", bArr);
        }
    }

    @SimpleFunction(description = "Sets the output state of a motor on the robot.")
    public void SetOutputState(@Options(NxtMotorPort.class) String str, int i, @Options(NxtMotorMode.class) int i2, @Options(NxtRegulationMode.class) int i3, int i4, @Options(NxtRunState.class) int i5, long j) throws IOException {
        if (checkBluetooth("SetOutputState")) {
            NxtMotorPort nxtMotorPortFromUnderlyingValue = NxtMotorPort.fromUnderlyingValue(str);
            if (nxtMotorPortFromUnderlyingValue == null) {
                this.form.dispatchErrorOccurredEvent(this, "SetOutputState", ErrorMessages.ERROR_NXT_INVALID_MOTOR_PORT, str);
                return;
            }
            NxtMotorMode nxtMotorModeFromUnderlyingValue = NxtMotorMode.fromUnderlyingValue(Integer.valueOf(i2));
            if (nxtMotorModeFromUnderlyingValue == null) {
                this.form.dispatchErrorOccurredEvent(this, "SetOutputState", ErrorMessages.ERROR_NXT_INVALID_MOTOR_MODE, Integer.valueOf(i2));
                return;
            }
            NxtRegulationMode nxtRegulationModeFromUnderlyingValue = NxtRegulationMode.fromUnderlyingValue(Integer.valueOf(i3));
            if (nxtRegulationModeFromUnderlyingValue == null) {
                this.form.dispatchErrorOccurredEvent(this, "SetOutputState", ErrorMessages.ERROR_NXT_INVALID_REGULATION_MODE, nxtRegulationModeFromUnderlyingValue);
            } else {
                setOutputState("SetOutputState", nxtMotorPortFromUnderlyingValue, i, nxtMotorModeFromUnderlyingValue, nxtRegulationModeFromUnderlyingValue, i4, NxtRunState.fromUnderlyingValue(Integer.valueOf(i5)), j);
            }
        }
    }

    @SimpleFunction(description = "Configure an input sensor on the robot.")
    public void SetInputMode(@Options(NxtSensorPort.class) String str, @Options(NxtSensorType.class) int i, @Options(NxtSensorMode.class) int i2) throws IOException {
        if (checkBluetooth("SetInputMode")) {
            NxtSensorPort nxtSensorPortFromUnderlyingValue = NxtSensorPort.fromUnderlyingValue(str);
            if (nxtSensorPortFromUnderlyingValue == null) {
                this.form.dispatchErrorOccurredEvent(this, "SetInputMode", ErrorMessages.ERROR_NXT_INVALID_SENSOR_PORT, str);
                return;
            }
            NxtSensorType nxtSensorTypeFromUnderlyingValue = NxtSensorType.fromUnderlyingValue(Integer.valueOf(i));
            if (nxtSensorTypeFromUnderlyingValue == null) {
                this.form.dispatchErrorOccurredEvent(this, "SetInputMode", ErrorMessages.ERROR_NXT_INVALID_SENSOR_TYPE, nxtSensorTypeFromUnderlyingValue);
                return;
            }
            NxtSensorMode nxtSensorModeFromUnderlyingValue = NxtSensorMode.fromUnderlyingValue(Integer.valueOf(i2));
            if (nxtSensorModeFromUnderlyingValue == null) {
                this.form.dispatchErrorOccurredEvent(this, "SetInputMode", ErrorMessages.ERROR_NXT_INVALID_SENSOR_MODE, nxtSensorModeFromUnderlyingValue);
            } else {
                setInputMode("SetInputMode", nxtSensorPortFromUnderlyingValue, nxtSensorTypeFromUnderlyingValue, nxtSensorModeFromUnderlyingValue);
            }
        }
    }

    @SimpleFunction(description = "Reads the output state of a motor on the robot.")
    public List<Number> GetOutputState(@Options(NxtMotorPort.class) String str) throws IOException {
        if (!checkBluetooth("GetOutputState")) {
            return new ArrayList();
        }
        NxtMotorPort nxtMotorPortFromUnderlyingValue = NxtMotorPort.fromUnderlyingValue(str);
        if (nxtMotorPortFromUnderlyingValue == null) {
            this.form.dispatchErrorOccurredEvent(this, "GetOutputState", ErrorMessages.ERROR_NXT_INVALID_MOTOR_PORT, str);
            return new ArrayList();
        }
        byte[] outputState = getOutputState("GetOutputState", nxtMotorPortFromUnderlyingValue);
        if (outputState != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(Integer.valueOf(getSBYTEValueFromBytes(outputState, 4)));
            arrayList.add(Integer.valueOf(getUBYTEValueFromBytes(outputState, 5)));
            arrayList.add(Integer.valueOf(getUBYTEValueFromBytes(outputState, 6)));
            arrayList.add(Integer.valueOf(getSBYTEValueFromBytes(outputState, 7)));
            arrayList.add(Integer.valueOf(getUBYTEValueFromBytes(outputState, 8)));
            arrayList.add(Long.valueOf(getULONGValueFromBytes(outputState, 9)));
            arrayList.add(Integer.valueOf(getSLONGValueFromBytes(outputState, 13)));
            arrayList.add(Integer.valueOf(getSLONGValueFromBytes(outputState, 17)));
            arrayList.add(Integer.valueOf(getSLONGValueFromBytes(outputState, 21)));
            return arrayList;
        }
        return new ArrayList();
    }

    private byte[] getOutputState(String str, NxtMotorPort nxtMotorPort) throws IOException {
        byte[] bArr = {0, 6, 0};
        copyUBYTEValueToBytes(nxtMotorPort.toInt().intValue(), bArr, 2);
        byte[] bArrSendCommandAndReceiveReturnPackage = sendCommandAndReceiveReturnPackage(str, bArr);
        if (!evaluateStatus(str, bArrSendCommandAndReceiveReturnPackage, bArr[1])) {
            return null;
        }
        if (bArrSendCommandAndReceiveReturnPackage.length == 25) {
            return bArrSendCommandAndReceiveReturnPackage;
        }
        Log.w(this.logTag, str + ": unexpected return package length " + bArrSendCommandAndReceiveReturnPackage.length + " (expected 25)");
        return null;
    }

    @SimpleFunction(description = "Reads the values of an input sensor on the robot. Assumes sensor type has been configured via SetInputMode.")
    public List<Object> GetInputValues(@Options(NxtSensorPort.class) String str) {
        if (!checkBluetooth("GetInputValues")) {
            return new ArrayList();
        }
        NxtSensorPort nxtSensorPortFromUnderlyingValue = NxtSensorPort.fromUnderlyingValue(str);
        if (nxtSensorPortFromUnderlyingValue == null) {
            this.form.dispatchErrorOccurredEvent(this, "GetInputValues", ErrorMessages.ERROR_NXT_INVALID_SENSOR_PORT, str);
            return new ArrayList();
        }
        byte[] inputValues = getInputValues("GetInputValues", nxtSensorPortFromUnderlyingValue);
        if (inputValues != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(Boolean.valueOf(getBooleanValueFromBytes(inputValues, 4)));
            arrayList.add(Boolean.valueOf(getBooleanValueFromBytes(inputValues, 5)));
            arrayList.add(Integer.valueOf(getUBYTEValueFromBytes(inputValues, 6)));
            arrayList.add(Integer.valueOf(getUBYTEValueFromBytes(inputValues, 7)));
            arrayList.add(Integer.valueOf(getUWORDValueFromBytes(inputValues, 8)));
            arrayList.add(Integer.valueOf(getUWORDValueFromBytes(inputValues, 10)));
            arrayList.add(Integer.valueOf(getSWORDValueFromBytes(inputValues, 12)));
            arrayList.add(Integer.valueOf(getSWORDValueFromBytes(inputValues, 14)));
            return arrayList;
        }
        return new ArrayList();
    }

    @SimpleFunction(description = "Reset the scaled value of an input sensor on the robot.")
    public void ResetInputScaledValue(@Options(NxtSensorPort.class) String str) throws IOException {
        if (checkBluetooth("ResetInputScaledValue")) {
            NxtSensorPort nxtSensorPortFromUnderlyingValue = NxtSensorPort.fromUnderlyingValue(str);
            if (nxtSensorPortFromUnderlyingValue == null) {
                this.form.dispatchErrorOccurredEvent(this, "ResetInputScaledValue", ErrorMessages.ERROR_NXT_INVALID_SENSOR_PORT, str);
                return;
            }
            resetInputScaledValue("ResetInputScaledValue", nxtSensorPortFromUnderlyingValue);
            byte[] bArr = {-128, 8, 0};
            copyUBYTEValueToBytes(nxtSensorPortFromUnderlyingValue.toInt().intValue(), bArr, 2);
            sendCommand("ResetInputScaledValue", bArr);
        }
    }

    @SimpleFunction(description = "Reset motor position.")
    public void ResetMotorPosition(@Options(NxtMotorPort.class) String str, boolean z) throws IOException {
        if (checkBluetooth("ResetMotorPosition")) {
            NxtMotorPort nxtMotorPortFromUnderlyingValue = NxtMotorPort.fromUnderlyingValue(str);
            if (nxtMotorPortFromUnderlyingValue == null) {
                this.form.dispatchErrorOccurredEvent(this, "ResetMotorPosition", ErrorMessages.ERROR_NXT_INVALID_MOTOR_PORT, str);
                return;
            }
            byte[] bArr = {-128, 10, 0, 0};
            copyUBYTEValueToBytes(nxtMotorPortFromUnderlyingValue.toInt().intValue(), bArr, 2);
            copyBooleanValueToBytes(z, bArr, 3);
            sendCommand("ResetMotorPosition", bArr);
        }
    }

    @SimpleFunction(description = "Get the battery level for the robot. Returns the voltage in millivolts.")
    public int GetBatteryLevel() throws IOException {
        if (!checkBluetooth("GetBatteryLevel")) {
            return 0;
        }
        byte[] bArr = {0, 11};
        byte[] bArrSendCommandAndReceiveReturnPackage = sendCommandAndReceiveReturnPackage("GetBatteryLevel", bArr);
        if (evaluateStatus("GetBatteryLevel", bArrSendCommandAndReceiveReturnPackage, bArr[1])) {
            if (bArrSendCommandAndReceiveReturnPackage.length == 5) {
                return getUWORDValueFromBytes(bArrSendCommandAndReceiveReturnPackage, 3);
            }
            Log.w(this.logTag, "GetBatteryLevel: unexpected return package length " + bArrSendCommandAndReceiveReturnPackage.length + " (expected 5)");
        }
        return 0;
    }

    @SimpleFunction(description = "Stop sound playback.")
    public void StopSoundPlayback() throws IOException {
        if (checkBluetooth("StopSoundPlayback")) {
            sendCommand("StopSoundPlayback", new byte[]{-128, 12});
        }
    }

    @SimpleFunction(description = "Keep Alive. Returns the current sleep time limit in milliseconds.")
    public long KeepAlive() throws IOException {
        if (!checkBluetooth("KeepAlive")) {
            return 0L;
        }
        byte[] bArr = {0, 13};
        byte[] bArrSendCommandAndReceiveReturnPackage = sendCommandAndReceiveReturnPackage("KeepAlive", bArr);
        if (evaluateStatus("KeepAlive", bArrSendCommandAndReceiveReturnPackage, bArr[1])) {
            if (bArrSendCommandAndReceiveReturnPackage.length == 7) {
                return getULONGValueFromBytes(bArrSendCommandAndReceiveReturnPackage, 3);
            }
            Log.w(this.logTag, "KeepAlive: unexpected return package length " + bArrSendCommandAndReceiveReturnPackage.length + " (expected 7)");
        }
        return 0L;
    }

    @SimpleFunction(description = "Returns the count of available bytes to read.")
    public int LsGetStatus(@Options(NxtSensorPort.class) String str) {
        if (!checkBluetooth("LsGetStatus")) {
            return 0;
        }
        NxtSensorPort nxtSensorPortFromUnderlyingValue = NxtSensorPort.fromUnderlyingValue(str);
        if (nxtSensorPortFromUnderlyingValue == null) {
            this.form.dispatchErrorOccurredEvent(this, "LsGetStatus", ErrorMessages.ERROR_NXT_INVALID_SENSOR_PORT, str);
            return 0;
        }
        return lsGetStatus("LsGetStatus", nxtSensorPortFromUnderlyingValue);
    }

    @SimpleFunction(description = "Writes low speed data to an input sensor on the robot. Assumes sensor type has been configured via SetInputMode.")
    public void LsWrite(@Options(NxtSensorPort.class) String str, YailList yailList, int i) {
        if (checkBluetooth("LsWrite")) {
            NxtSensorPort nxtSensorPortFromUnderlyingValue = NxtSensorPort.fromUnderlyingValue(str);
            if (nxtSensorPortFromUnderlyingValue == null) {
                this.form.dispatchErrorOccurredEvent(this, "LsWrite", ErrorMessages.ERROR_NXT_INVALID_SENSOR_PORT, str);
                return;
            }
            if (yailList.size() > 16) {
                this.form.dispatchErrorOccurredEvent(this, "LsWrite", ErrorMessages.ERROR_NXT_DATA_TOO_LARGE, new Object[0]);
                return;
            }
            Object[] array = yailList.toArray();
            byte[] bArr = new byte[array.length];
            for (int i2 = 0; i2 < array.length; i2++) {
                try {
                    int iIntValue = Integer.decode(array[i2].toString()).intValue();
                    bArr[i2] = (byte) (iIntValue & 255);
                    int i3 = iIntValue >> 8;
                    if (i3 != 0 && i3 != -1) {
                        this.form.dispatchErrorOccurredEvent(this, "LsWrite", ErrorMessages.ERROR_NXT_COULD_NOT_FIT_ELEMENT_IN_BYTE, Integer.valueOf(i2 + 1));
                        return;
                    }
                } catch (NumberFormatException unused) {
                    this.form.dispatchErrorOccurredEvent(this, "LsWrite", ErrorMessages.ERROR_NXT_COULD_NOT_DECODE_ELEMENT, Integer.valueOf(i2 + 1));
                    return;
                }
            }
            lsWrite("LsWrite", nxtSensorPortFromUnderlyingValue, bArr, i);
        }
    }

    @SimpleFunction(description = "Reads unsigned low speed data from an input sensor on the robot. Assumes sensor type has been configured via SetInputMode.")
    public List<Integer> LsRead(@Options(NxtSensorPort.class) String str) {
        if (!checkBluetooth("LsRead")) {
            return new ArrayList();
        }
        NxtSensorPort nxtSensorPortFromUnderlyingValue = NxtSensorPort.fromUnderlyingValue(str);
        if (nxtSensorPortFromUnderlyingValue == null) {
            this.form.dispatchErrorOccurredEvent(this, "LsRead", ErrorMessages.ERROR_NXT_INVALID_SENSOR_PORT, str);
            return new ArrayList();
        }
        byte[] bArrLsRead = lsRead("LsRead", nxtSensorPortFromUnderlyingValue);
        if (bArrLsRead != null) {
            ArrayList arrayList = new ArrayList();
            int uBYTEValueFromBytes = getUBYTEValueFromBytes(bArrLsRead, 3);
            for (int i = 0; i < uBYTEValueFromBytes; i++) {
                arrayList.add(Integer.valueOf(bArrLsRead[i + 4] & 255));
            }
            return arrayList;
        }
        return new ArrayList();
    }

    @SimpleFunction(description = "Get the name of currently running program on the robot.")
    public String GetCurrentProgramName() throws IOException {
        if (!checkBluetooth("GetCurrentProgramName")) {
            return "";
        }
        byte[] bArr = {0, 17};
        byte[] bArrSendCommandAndReceiveReturnPackage = sendCommandAndReceiveReturnPackage("GetCurrentProgramName", bArr);
        int status = getStatus("GetCurrentProgramName", bArrSendCommandAndReceiveReturnPackage, bArr[1]);
        if (status == 0) {
            return getStringValueFromBytes(bArrSendCommandAndReceiveReturnPackage, 3);
        }
        if (status == 236) {
            return "";
        }
        evaluateStatus("GetCurrentProgramName", bArrSendCommandAndReceiveReturnPackage, bArr[1]);
        return "";
    }

    @SimpleFunction(description = "Read a message from a mailbox (1-10) on the robot.")
    public String MessageRead(@Options(NxtMailbox.class) int i) {
        NxtMailbox nxtMailboxFromUnderlyingValue = NxtMailbox.fromUnderlyingValue(Integer.valueOf(i));
        if (nxtMailboxFromUnderlyingValue == null) {
            this.form.dispatchErrorOccurredEvent(this, "MessageRead", ErrorMessages.ERROR_NXT_INVALID_MAILBOX, Integer.valueOf(i));
            return "";
        }
        return MessageReadAbstract(nxtMailboxFromUnderlyingValue);
    }

    public String MessageReadAbstract(NxtMailbox nxtMailbox) throws IOException {
        int iIntValue = nxtMailbox.toInt().intValue();
        if (!checkBluetooth("MessageRead")) {
            return "";
        }
        byte[] bArr = {0, 19, 0, 0, 0};
        copyUBYTEValueToBytes(0, bArr, 2);
        copyUBYTEValueToBytes(iIntValue, bArr, 3);
        copyBooleanValueToBytes(true, bArr, 4);
        byte[] bArrSendCommandAndReceiveReturnPackage = sendCommandAndReceiveReturnPackage("MessageRead", bArr);
        if (evaluateStatus("MessageRead", bArrSendCommandAndReceiveReturnPackage, bArr[1])) {
            if (bArrSendCommandAndReceiveReturnPackage.length == 64) {
                int uBYTEValueFromBytes = getUBYTEValueFromBytes(bArrSendCommandAndReceiveReturnPackage, 3);
                if (uBYTEValueFromBytes != iIntValue) {
                    Log.w(this.logTag, "MessageRead: unexpected return mailbox: Box" + uBYTEValueFromBytes + " (expected " + iIntValue + ")");
                }
                return getStringValueFromBytes(bArrSendCommandAndReceiveReturnPackage, 5, getUBYTEValueFromBytes(bArrSendCommandAndReceiveReturnPackage, 4) - 1);
            }
            Log.w(this.logTag, "MessageRead: unexpected return package length " + bArrSendCommandAndReceiveReturnPackage.length + " (expected 64)");
        }
        return "";
    }

    @SimpleFunction(description = "Write a message to a mailbox (1-10) on the robot.")
    public void MessageWrite(@Options(NxtMailbox.class) int i, String str) throws IOException {
        NxtMailbox nxtMailboxFromUnderlyingValue = NxtMailbox.fromUnderlyingValue(Integer.valueOf(i));
        if (nxtMailboxFromUnderlyingValue == null) {
            this.form.dispatchErrorOccurredEvent(this, "MessageWrite", ErrorMessages.ERROR_NXT_INVALID_MAILBOX, Integer.valueOf(i));
        } else {
            MessageWriteAbstract(nxtMailboxFromUnderlyingValue, str);
        }
    }

    public void MessageWriteAbstract(NxtMailbox nxtMailbox, String str) throws IOException {
        if (checkBluetooth("MessageWrite")) {
            int length = str.length();
            if (length > 58) {
                this.form.dispatchErrorOccurredEvent(this, "MessageWrite", ErrorMessages.ERROR_NXT_MESSAGE_TOO_LONG, new Object[0]);
                return;
            }
            byte[] bArr = new byte[length + 5];
            bArr[0] = -128;
            bArr[1] = 9;
            copyUBYTEValueToBytes(nxtMailbox.toInt().intValue(), bArr, 2);
            copyUBYTEValueToBytes(length + 1, bArr, 3);
            copyStringValueToBytes(str, bArr, 4, length);
            sendCommand("MessageWrite", bArr);
        }
    }

    @SimpleFunction(description = "Download a file to the robot.")
    public void DownloadFile(String str, String str2) {
        Integer numOpenWriteLinear;
        if (checkBluetooth("DownloadFile")) {
            if (str.length() == 0) {
                this.form.dispatchErrorOccurredEvent(this, "DownloadFile", ErrorMessages.ERROR_NXT_INVALID_SOURCE_ARGUMENT, new Object[0]);
                return;
            }
            if (str2.length() == 0) {
                this.form.dispatchErrorOccurredEvent(this, "DownloadFile", ErrorMessages.ERROR_NXT_INVALID_DESTINATION_ARGUMENT, new Object[0]);
                return;
            }
            try {
                java.io.File fileCopyMediaToTempFile = MediaUtil.copyMediaToTempFile(this.form, str);
                try {
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(FileUtil.openFile(this.form, fileCopyMediaToTempFile), 1024);
                    try {
                        long length = fileCopyMediaToTempFile.length();
                        if (str2.endsWith(".rxe") || str2.endsWith(".ric")) {
                            numOpenWriteLinear = openWriteLinear("DownloadFile", str2, length);
                        } else {
                            numOpenWriteLinear = openWrite("DownloadFile", str2, length);
                        }
                        if (numOpenWriteLinear != null) {
                            try {
                                byte[] bArr = new byte[32];
                                long jWriteChunk = 0;
                                while (jWriteChunk < length) {
                                    bufferedInputStream.read(bArr, 0, (int) Math.min(32L, length - jWriteChunk));
                                    jWriteChunk += writeChunk("DownloadFile", numOpenWriteLinear.intValue(), bArr, r9);
                                }
                                bufferedInputStream.close();
                            } finally {
                                closeHandle("DownloadFile", numOpenWriteLinear.intValue());
                            }
                        } else {
                            bufferedInputStream.close();
                        }
                    } catch (Throwable th) {
                        bufferedInputStream.close();
                        throw th;
                    }
                } finally {
                    fileCopyMediaToTempFile.delete();
                }
            } catch (IOException e) {
                this.form.dispatchErrorOccurredEvent(this, "DownloadFile", ErrorMessages.ERROR_NXT_UNABLE_TO_DOWNLOAD_FILE, e.getMessage());
            }
        }
    }

    private Integer openWrite(String str, String str2, long j) throws IOException {
        byte[] bArr = new byte[26];
        bArr[0] = 1;
        bArr[1] = -127;
        copyStringValueToBytes(str2, bArr, 2, 19);
        copyULONGValueToBytes(j, bArr, 22);
        byte[] bArrSendCommandAndReceiveReturnPackage = sendCommandAndReceiveReturnPackage(str, bArr);
        if (!evaluateStatus(str, bArrSendCommandAndReceiveReturnPackage, bArr[1])) {
            return null;
        }
        if (bArrSendCommandAndReceiveReturnPackage.length == 4) {
            return Integer.valueOf(getUBYTEValueFromBytes(bArrSendCommandAndReceiveReturnPackage, 3));
        }
        Log.w(this.logTag, str + ": unexpected return package length " + bArrSendCommandAndReceiveReturnPackage.length + " (expected 4)");
        return null;
    }

    private int writeChunk(String str, int i, byte[] bArr, int i2) throws IOException {
        if (i2 > 32) {
            throw new IllegalArgumentException("length must be <= 32");
        }
        byte[] bArr2 = new byte[i2 + 3];
        bArr2[0] = 1;
        bArr2[1] = Ev3Constants.Opcode.UI_BUTTON;
        copyUBYTEValueToBytes(i, bArr2, 2);
        System.arraycopy(bArr, 0, bArr2, 3, i2);
        byte[] bArrSendCommandAndReceiveReturnPackage = sendCommandAndReceiveReturnPackage(str, bArr2);
        if (evaluateStatus(str, bArrSendCommandAndReceiveReturnPackage, bArr2[1])) {
            if (bArrSendCommandAndReceiveReturnPackage.length == 6) {
                int uWORDValueFromBytes = getUWORDValueFromBytes(bArrSendCommandAndReceiveReturnPackage, 4);
                if (uWORDValueFromBytes == i2) {
                    return uWORDValueFromBytes;
                }
                Log.e(this.logTag, str + ": only " + uWORDValueFromBytes + " bytes were written (expected " + i2 + ")");
                throw new IOException("Unable to write file on robot");
            }
            Log.w(this.logTag, str + ": unexpected return package length " + bArrSendCommandAndReceiveReturnPackage.length + " (expected 6)");
        }
        return 0;
    }

    private void closeHandle(String str, int i) {
        byte[] bArr = {1, Ev3Constants.Opcode.UI_DRAW, 0};
        copyUBYTEValueToBytes(i, bArr, 2);
        evaluateStatus(str, sendCommandAndReceiveReturnPackage(str, bArr), bArr[1]);
    }

    @SimpleFunction(description = "Delete a file on the robot.")
    public void DeleteFile(String str) throws UnsupportedEncodingException {
        if (checkBluetooth("DeleteFile")) {
            if (str.length() == 0) {
                this.form.dispatchErrorOccurredEvent(this, "DeleteFile", ErrorMessages.ERROR_NXT_INVALID_FILE_NAME, new Object[0]);
                return;
            }
            byte[] bArr = new byte[22];
            bArr[0] = 1;
            bArr[1] = Ev3Constants.Opcode.TIMER_WAIT;
            copyStringValueToBytes(str, bArr, 2, 19);
            evaluateStatus("DeleteFile", sendCommandAndReceiveReturnPackage("DeleteFile", bArr), bArr[1]);
        }
    }

    @SimpleFunction(description = "Returns a list containing the names of matching files found on the robot.")
    public List<String> ListFiles(String str) throws IOException {
        if (!checkBluetooth("ListFiles")) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        if (str.length() == 0) {
            str = "*.*";
        }
        byte[] bArr = new byte[22];
        bArr[0] = 1;
        bArr[1] = Ev3Constants.Opcode.TIMER_READY;
        copyStringValueToBytes(str, bArr, 2, 19);
        byte[] bArrSendCommandAndReceiveReturnPackage = sendCommandAndReceiveReturnPackage("ListFiles", bArr);
        int status = getStatus("ListFiles", bArrSendCommandAndReceiveReturnPackage, bArr[1]);
        while (status == 0) {
            int uBYTEValueFromBytes = getUBYTEValueFromBytes(bArrSendCommandAndReceiveReturnPackage, 3);
            arrayList.add(getStringValueFromBytes(bArrSendCommandAndReceiveReturnPackage, 4));
            byte[] bArr2 = {1, Ev3Constants.Opcode.TIMER_READ, 0};
            copyUBYTEValueToBytes(uBYTEValueFromBytes, bArr2, 2);
            byte[] bArrSendCommandAndReceiveReturnPackage2 = sendCommandAndReceiveReturnPackage("ListFiles", bArr2);
            status = getStatus("ListFiles", bArrSendCommandAndReceiveReturnPackage2, bArr2[1]);
            bArrSendCommandAndReceiveReturnPackage = bArrSendCommandAndReceiveReturnPackage2;
        }
        return arrayList;
    }

    @SimpleFunction(description = "Get the firmware and protocol version numbers for the robot as a list where the first element is the firmware version number and the second element is the protocol version number.")
    public List<String> GetFirmwareVersion() throws IOException {
        if (!checkBluetooth("GetFirmwareVersion")) {
            return new ArrayList();
        }
        byte[] bArr = {1, Ev3Constants.Opcode.BP0};
        byte[] bArrSendCommandAndReceiveReturnPackage = sendCommandAndReceiveReturnPackage("GetFirmwareVersion", bArr);
        if (evaluateStatus("GetFirmwareVersion", bArrSendCommandAndReceiveReturnPackage, bArr[1])) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(((int) bArrSendCommandAndReceiveReturnPackage[6]) + "." + ((int) bArrSendCommandAndReceiveReturnPackage[5]));
            arrayList.add(((int) bArrSendCommandAndReceiveReturnPackage[4]) + "." + ((int) bArrSendCommandAndReceiveReturnPackage[3]));
            return arrayList;
        }
        return new ArrayList();
    }

    private Integer openWriteLinear(String str, String str2, long j) throws IOException {
        byte[] bArr = new byte[26];
        bArr[0] = 1;
        bArr[1] = Ev3Constants.Opcode.BP1;
        copyStringValueToBytes(str2, bArr, 2, 19);
        copyULONGValueToBytes(j, bArr, 22);
        byte[] bArrSendCommandAndReceiveReturnPackage = sendCommandAndReceiveReturnPackage(str, bArr);
        if (!evaluateStatus(str, bArrSendCommandAndReceiveReturnPackage, bArr[1])) {
            return null;
        }
        if (bArrSendCommandAndReceiveReturnPackage.length == 4) {
            return Integer.valueOf(getUBYTEValueFromBytes(bArrSendCommandAndReceiveReturnPackage, 3));
        }
        Log.w(this.logTag, str + ": unexpected return package length " + bArrSendCommandAndReceiveReturnPackage.length + " (expected 4)");
        return null;
    }

    @SimpleFunction(description = "Set the brick name of the robot.")
    public void SetBrickName(String str) throws UnsupportedEncodingException {
        if (checkBluetooth("SetBrickName")) {
            byte[] bArr = new byte[18];
            bArr[0] = 1;
            bArr[1] = -104;
            copyStringValueToBytes(str, bArr, 2, 15);
            evaluateStatus("SetBrickName", sendCommandAndReceiveReturnPackage("SetBrickName", bArr), bArr[1]);
        }
    }

    @SimpleFunction(description = "Get the brick name of the robot.")
    public String GetBrickName() throws IOException {
        if (!checkBluetooth("GetBrickName")) {
            return "";
        }
        byte[] bArr = {1, -101};
        byte[] bArrSendCommandAndReceiveReturnPackage = sendCommandAndReceiveReturnPackage("GetBrickName", bArr);
        return evaluateStatus("GetBrickName", bArrSendCommandAndReceiveReturnPackage, bArr[1]) ? getStringValueFromBytes(bArrSendCommandAndReceiveReturnPackage, 3) : "";
    }
}
