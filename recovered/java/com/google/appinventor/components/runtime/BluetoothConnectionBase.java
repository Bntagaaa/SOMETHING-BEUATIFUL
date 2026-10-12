package com.google.appinventor.components.runtime;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothSocket;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.SUtil;
import com.google.appinventor.components.runtime.util.YailList;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@SimpleObject
/* loaded from: classes.dex */
public abstract class BluetoothConnectionBase extends AndroidNonvisibleComponent implements Component, OnDestroyListener, Deleteable {
    protected final BluetoothAdapter adapter;
    private final List<BluetoothConnectionListener> bluetoothConnectionListeners;
    private ByteOrder byteOrder;
    private byte delimiter;
    protected boolean disconnectOnError;
    private String encoding;
    private InputStream inputStream;
    protected final String logTag;
    private OutputStream outputStream;
    protected boolean secure;
    private BluetoothSocket socket;

    @SimpleEvent(description = "The BluetoothError event is no longer used. Please use the Screen.ErrorOccurred event instead.", userVisible = false)
    public void BluetoothError(String str, String str2) {
    }

    public final void Initialize() {
    }

    public BluetoothConnectionBase(ComponentContainer componentContainer, String str) {
        this(componentContainer.$form(), str);
        this.form.registerForOnDestroy(this);
    }

    private BluetoothConnectionBase(Form form, String str) throws UnsupportedEncodingException {
        super(form);
        this.bluetoothConnectionListeners = new ArrayList();
        this.logTag = str;
        this.disconnectOnError = false;
        this.adapter = SUtil.getAdapter(form);
        HighByteFirst(false);
        CharacterEncoding("UTF-8");
        DelimiterByte(0);
        Secure(true);
    }

    public BluetoothConnectionBase(OutputStream outputStream, InputStream inputStream) {
        this((Form) null, (String) null);
        this.socket = null;
        this.outputStream = outputStream;
        this.inputStream = inputStream;
    }

    public void addBluetoothConnectionListener(BluetoothConnectionListener bluetoothConnectionListener) {
        this.bluetoothConnectionListeners.add(bluetoothConnectionListener);
    }

    public void removeBluetoothConnectionListener(BluetoothConnectionListener bluetoothConnectionListener) {
        this.bluetoothConnectionListeners.remove(bluetoothConnectionListener);
    }

    private void fireAfterConnectEvent() {
        Iterator<BluetoothConnectionListener> it = this.bluetoothConnectionListeners.iterator();
        while (it.hasNext()) {
            it.next().afterConnect(this);
        }
    }

    private void fireBeforeDisconnectEvent() {
        Iterator<BluetoothConnectionListener> it = this.bluetoothConnectionListeners.iterator();
        while (it.hasNext()) {
            it.next().beforeDisconnect(this);
        }
    }

    public void bluetoothError(String str, int i, Object... objArr) {
        this.form.dispatchErrorOccurredEvent(this, str, i, objArr);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether Bluetooth is available on the device")
    public boolean Available() {
        return this.adapter != null;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether Bluetooth is enabled")
    public boolean Enabled() {
        BluetoothAdapter bluetoothAdapter = this.adapter;
        if (bluetoothAdapter == null) {
            return false;
        }
        return bluetoothAdapter.isEnabled();
    }

    public final void setConnection(BluetoothSocket bluetoothSocket) throws IOException {
        this.socket = bluetoothSocket;
        this.inputStream = new BufferedInputStream(this.socket.getInputStream());
        this.outputStream = new BufferedOutputStream(this.socket.getOutputStream());
        fireAfterConnectEvent();
    }

    @SimpleFunction(description = "Disconnect from the connected Bluetooth device.")
    public final void Disconnect() throws IOException {
        if (this.socket != null) {
            fireBeforeDisconnectEvent();
            try {
                this.socket.close();
                Log.i(this.logTag, "Disconnected from Bluetooth device.");
            } catch (IOException e) {
                Log.w(this.logTag, "Error while disconnecting: " + e.getMessage());
            }
            this.socket = null;
        }
        this.inputStream = null;
        this.outputStream = null;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "On devices with API level 14 (LEVEL_ICE_CREAM_SANDWICH) or higher, this property returned is accurate. But on old devices with API level lower than 14, it may not return the current state of connection(e.g., it might be disconnected but you may not know until you attempt to read/write the socket.")
    public boolean IsConnected() {
        BluetoothSocket bluetoothSocket = this.socket;
        return bluetoothSocket != null && bluetoothSocket.isConnected();
    }

    public boolean DisconnectOnError() {
        return this.disconnectOnError;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether to invoke SSP (Simple Secure Pairing), which is supported on devices with Bluetooth v2.1 or higher. When working with embedded Bluetooth devices, this property may need to be set to False. For Android 2.0-2.2, this property setting will be ignored.")
    public boolean Secure() {
        return this.secure;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Secure(boolean z) {
        this.secure = z;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean HighByteFirst() {
        return this.byteOrder == ByteOrder.BIG_ENDIAN;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void HighByteFirst(boolean z) {
        this.byteOrder = z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "UTF-8", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void CharacterEncoding(String str) throws UnsupportedEncodingException {
        try {
            "check".getBytes(str);
            this.encoding = str;
        } catch (UnsupportedEncodingException unused) {
            bluetoothError("CharacterEncoding", ErrorMessages.ERROR_BLUETOOTH_UNSUPPORTED_ENCODING, str);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String CharacterEncoding() {
        return this.encoding;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void DelimiterByte(int i) {
        byte b2 = (byte) i;
        int i2 = i >> 8;
        if (i2 != 0 && i2 != -1) {
            bluetoothError("DelimiterByte", 511, Integer.valueOf(i));
        } else {
            this.delimiter = b2;
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public int DelimiterByte() {
        return this.delimiter;
    }

    @SimpleFunction(description = "Send text to the connected Bluetooth device.")
    public void SendText(String str) throws IOException {
        byte[] bytes;
        try {
            bytes = str.getBytes(this.encoding);
        } catch (UnsupportedEncodingException e) {
            Log.w(this.logTag, "UnsupportedEncodingException: " + e.getMessage());
            bytes = str.getBytes();
        }
        write("SendText", bytes);
    }

    @SimpleFunction(description = "Send a 1-byte number to the connected Bluetooth device.")
    public void Send1ByteNumber(String str) throws IOException {
        try {
            int iIntValue = Integer.decode(str).intValue();
            byte b2 = (byte) iIntValue;
            int i = iIntValue >> 8;
            if (i != 0 && i != -1) {
                bluetoothError("Send1ByteNumber", 511, str);
            } else {
                write("Send1ByteNumber", b2);
            }
        } catch (NumberFormatException unused) {
            bluetoothError("Send1ByteNumber", ErrorMessages.ERROR_BLUETOOTH_COULD_NOT_DECODE, str);
        }
    }

    @SimpleFunction(description = "Send a 2-byte number to the connected Bluetooth device.")
    public void Send2ByteNumber(String str) throws IOException {
        int i;
        try {
            int iIntValue = Integer.decode(str).intValue();
            byte[] bArr = new byte[2];
            if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
                bArr[1] = (byte) (iIntValue & 255);
                i = iIntValue >> 8;
                bArr[0] = (byte) (i & 255);
            } else {
                bArr[0] = (byte) (iIntValue & 255);
                i = iIntValue >> 8;
                bArr[1] = (byte) (i & 255);
            }
            int i2 = i >> 8;
            if (i2 != 0 && i2 != -1) {
                bluetoothError("Send2ByteNumber", 512, str, 2);
            } else {
                write("Send2ByteNumber", bArr);
            }
        } catch (NumberFormatException unused) {
            bluetoothError("Send2ByteNumber", ErrorMessages.ERROR_BLUETOOTH_COULD_NOT_DECODE, str);
        }
    }

    @SimpleFunction(description = "Send a 4-byte number to the connected Bluetooth device.")
    public void Send4ByteNumber(String str) throws IOException {
        long j;
        try {
            long jLongValue = Long.decode(str).longValue();
            byte[] bArr = new byte[4];
            if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
                bArr[3] = (byte) (jLongValue & 255);
                bArr[2] = (byte) ((jLongValue >> 8) & 255);
                bArr[1] = (byte) ((jLongValue >> 16) & 255);
                j = jLongValue >> 24;
                bArr[0] = (byte) (j & 255);
            } else {
                bArr[0] = (byte) (jLongValue & 255);
                bArr[1] = (byte) ((jLongValue >> 8) & 255);
                bArr[2] = (byte) ((jLongValue >> 16) & 255);
                j = jLongValue >> 24;
                bArr[3] = (byte) (j & 255);
            }
            long j2 = j >> 8;
            if (j2 != 0 && j2 != -1) {
                bluetoothError("Send4ByteNumber", 512, str, 4);
            } else {
                write("Send4ByteNumber", bArr);
            }
        } catch (NumberFormatException unused) {
            bluetoothError("Send4ByteNumber", ErrorMessages.ERROR_BLUETOOTH_COULD_NOT_DECODE, str);
        }
    }

    @SimpleFunction(description = "Send a list of byte values to the connected Bluetooth device.")
    public void SendBytes(YailList yailList) throws IOException {
        Object[] array = yailList.toArray();
        byte[] bArr = new byte[array.length];
        for (int i = 0; i < array.length; i++) {
            try {
                int iIntValue = Integer.decode(array[i].toString()).intValue();
                bArr[i] = (byte) (iIntValue & 255);
                int i2 = iIntValue >> 8;
                if (i2 != 0 && i2 != -1) {
                    bluetoothError("SendBytes", ErrorMessages.ERROR_BLUETOOTH_COULD_NOT_FIT_ELEMENT_IN_BYTE, Integer.valueOf(i + 1));
                    return;
                }
            } catch (NumberFormatException unused) {
                bluetoothError("SendBytes", 513, Integer.valueOf(i + 1));
                return;
            }
        }
        write("SendBytes", bArr);
    }

    public void write(String str, byte b2) throws IOException {
        if (!IsConnected()) {
            bluetoothError(str, ErrorMessages.ERROR_BLUETOOTH_NOT_CONNECTED_TO_DEVICE, new Object[0]);
            return;
        }
        try {
            this.outputStream.write(b2);
            this.outputStream.flush();
        } catch (IOException e) {
            _COROUTINE.a.w("IO Exception during Writing", e.getMessage(), this.logTag);
            if (this.disconnectOnError) {
                Disconnect();
            }
            bluetoothError(str, ErrorMessages.ERROR_BLUETOOTH_UNABLE_TO_WRITE, e.getMessage());
        }
    }

    public void write(String str, byte[] bArr) throws IOException {
        if (!IsConnected()) {
            bluetoothError(str, ErrorMessages.ERROR_BLUETOOTH_NOT_CONNECTED_TO_DEVICE, new Object[0]);
            return;
        }
        try {
            this.outputStream.write(bArr);
            this.outputStream.flush();
        } catch (IOException e) {
            _COROUTINE.a.w("IO Exception during Writing", e.getMessage(), this.logTag);
            if (this.disconnectOnError) {
                Disconnect();
            }
            bluetoothError(str, ErrorMessages.ERROR_BLUETOOTH_UNABLE_TO_WRITE, e.getMessage());
        }
    }

    @SimpleFunction(description = "Returns an estimate of the number of bytes that can be received without blocking")
    public int BytesAvailableToReceive() throws IOException {
        if (!IsConnected()) {
            bluetoothError("BytesAvailableToReceive", ErrorMessages.ERROR_BLUETOOTH_NOT_CONNECTED_TO_DEVICE, new Object[0]);
            return 0;
        }
        try {
            return this.inputStream.available();
        } catch (IOException e) {
            _COROUTINE.a.w("IO Exception during Getting Receive Availability ", e.getMessage(), this.logTag);
            if (this.disconnectOnError) {
                Disconnect();
            }
            bluetoothError("BytesAvailableToReceive", ErrorMessages.ERROR_BLUETOOTH_UNABLE_TO_READ, e.getMessage());
            return 0;
        }
    }

    @SimpleFunction(description = "Receive text from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received.")
    public String ReceiveText(int i) throws IOException {
        byte[] bArr = read("ReceiveText", i);
        try {
            if (i < 0) {
                return new String(bArr, 0, bArr.length - 1, this.encoding);
            }
            return new String(bArr, this.encoding);
        } catch (UnsupportedEncodingException e) {
            Log.w(this.logTag, "UnsupportedEncodingException: " + e.getMessage());
            return new String(bArr);
        }
    }

    @SimpleFunction(description = "Receive a signed 1-byte number from the connected Bluetooth device.")
    public int ReceiveSigned1ByteNumber() throws IOException {
        byte[] bArr = read("ReceiveSigned1ByteNumber", 1);
        if (bArr.length != 1) {
            return 0;
        }
        return bArr[0];
    }

    @SimpleFunction(description = "Receive an unsigned 1-byte number from the connected Bluetooth device.")
    public int ReceiveUnsigned1ByteNumber() throws IOException {
        byte[] bArr = read("ReceiveUnsigned1ByteNumber", 1);
        if (bArr.length != 1) {
            return 0;
        }
        return bArr[0] & 255;
    }

    @SimpleFunction(description = "Receive a signed 2-byte number from the connected Bluetooth device.")
    public int ReceiveSigned2ByteNumber() throws IOException {
        int i;
        byte b2;
        byte[] bArr = read("ReceiveSigned2ByteNumber", 2);
        if (bArr.length != 2) {
            return 0;
        }
        if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
            i = bArr[1] & 255;
            b2 = bArr[0];
        } else {
            i = bArr[0] & 255;
            b2 = bArr[1];
        }
        return (b2 << 8) | i;
    }

    @SimpleFunction(description = "Receive a unsigned 2-byte number from the connected Bluetooth device.")
    public int ReceiveUnsigned2ByteNumber() throws IOException {
        int i;
        byte b2;
        byte[] bArr = read("ReceiveUnsigned2ByteNumber", 2);
        if (bArr.length != 2) {
            return 0;
        }
        if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
            i = bArr[1] & 255;
            b2 = bArr[0];
        } else {
            i = bArr[0] & 255;
            b2 = bArr[1];
        }
        return ((b2 & 255) << 8) | i;
    }

    @SimpleFunction(description = "Receive a signed 4-byte number from the connected Bluetooth device.")
    public long ReceiveSigned4ByteNumber() throws IOException {
        int i;
        byte b2;
        byte[] bArr = read("ReceiveSigned4ByteNumber", 4);
        if (bArr.length != 4) {
            return 0L;
        }
        if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
            i = (bArr[3] & 255) | ((bArr[2] & 255) << 8) | ((bArr[1] & 255) << 16);
            b2 = bArr[0];
        } else {
            i = (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16);
            b2 = bArr[3];
        }
        return (b2 << 24) | i;
    }

    @SimpleFunction(description = "Receive a unsigned 4-byte number from the connected Bluetooth device.")
    public long ReceiveUnsigned4ByteNumber() throws IOException {
        long j;
        byte b2;
        byte[] bArr = read("ReceiveUnsigned4ByteNumber", 4);
        if (bArr.length != 4) {
            return 0L;
        }
        if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
            j = (bArr[3] & 255) | ((bArr[2] & 255) << 8) | ((bArr[1] & 255) << 16);
            b2 = bArr[0];
        } else {
            j = (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16);
            b2 = bArr[3];
        }
        return j | ((b2 & 255) << 24);
    }

    @SimpleFunction(description = "Receive multiple signed byte values from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received.")
    public List<Integer> ReceiveSignedBytes(int i) throws IOException {
        byte[] bArr = read("ReceiveSignedBytes", i);
        ArrayList arrayList = new ArrayList();
        for (byte b2 : bArr) {
            arrayList.add(Integer.valueOf(b2));
        }
        return arrayList;
    }

    @SimpleFunction(description = "Receive multiple unsigned byte values from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received.")
    public List<Integer> ReceiveUnsignedBytes(int i) throws IOException {
        byte[] bArr = read("ReceiveUnsignedBytes", i);
        ArrayList arrayList = new ArrayList();
        for (byte b2 : bArr) {
            arrayList.add(Integer.valueOf(b2 & 255));
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002f, code lost:
    
        bluetoothError(r12, com.google.appinventor.components.runtime.util.ErrorMessages.ERROR_BLUETOOTH_END_OF_STREAM, new java.lang.Object[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0060, code lost:
    
        bluetoothError(r12, com.google.appinventor.components.runtime.util.ErrorMessages.ERROR_BLUETOOTH_END_OF_STREAM, new java.lang.Object[0]);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] read(java.lang.String r12, int r13) throws java.io.IOException {
        /*
            r11 = this;
            r0 = 1
            boolean r1 = r11.IsConnected()
            r2 = 0
            if (r1 != 0) goto L12
            r13 = 515(0x203, float:7.22E-43)
            java.lang.Object[] r0 = new java.lang.Object[r2]
            r11.bluetoothError(r12, r13, r0)
            byte[] r12 = new byte[r2]
            return r12
        L12:
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream
            r1.<init>()
            r3 = 517(0x205, float:7.24E-43)
            java.lang.String r4 = "IO Exception during Reading "
            r5 = 518(0x206, float:7.26E-43)
            r6 = -1
            if (r13 < 0) goto L58
            byte[] r7 = new byte[r13]
            r8 = 0
        L23:
            if (r8 >= r13) goto L54
            java.io.InputStream r9 = r11.inputStream     // Catch: java.io.IOException -> L35
            int r10 = r13 - r8
            int r9 = r9.read(r7, r8, r10)     // Catch: java.io.IOException -> L35
            if (r9 != r6) goto L37
            java.lang.Object[] r13 = new java.lang.Object[r2]     // Catch: java.io.IOException -> L35
            r11.bluetoothError(r12, r5, r13)     // Catch: java.io.IOException -> L35
            goto L54
        L35:
            r13 = move-exception
            goto L39
        L37:
            int r8 = r8 + r9
            goto L23
        L39:
            java.lang.String r5 = r11.logTag
            java.lang.String r6 = r13.getMessage()
            _COROUTINE.a.w(r4, r6, r5)
            boolean r4 = r11.disconnectOnError
            if (r4 == 0) goto L49
            r11.Disconnect()
        L49:
            java.lang.String r13 = r13.getMessage()
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r0[r2] = r13
            r11.bluetoothError(r12, r3, r0)
        L54:
            r1.write(r7, r2, r8)
            goto L8b
        L58:
            java.io.InputStream r13 = r11.inputStream     // Catch: java.io.IOException -> L66
            int r13 = r13.read()     // Catch: java.io.IOException -> L66
            if (r13 != r6) goto L68
            java.lang.Object[] r13 = new java.lang.Object[r2]     // Catch: java.io.IOException -> L66
            r11.bluetoothError(r12, r5, r13)     // Catch: java.io.IOException -> L66
            goto L8b
        L66:
            r13 = move-exception
            goto L70
        L68:
            r1.write(r13)     // Catch: java.io.IOException -> L66
            byte r7 = r11.delimiter     // Catch: java.io.IOException -> L66
            if (r13 != r7) goto L58
            goto L8b
        L70:
            java.lang.String r5 = r11.logTag
            java.lang.String r6 = r13.getMessage()
            _COROUTINE.a.w(r4, r6, r5)
            boolean r4 = r11.disconnectOnError
            if (r4 == 0) goto L80
            r11.Disconnect()
        L80:
            java.lang.String r13 = r13.getMessage()
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r0[r2] = r13
            r11.bluetoothError(r12, r3, r0)
        L8b:
            byte[] r12 = r1.toByteArray()
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.BluetoothConnectionBase.read(java.lang.String, int):byte[]");
    }

    @Override // com.google.appinventor.components.runtime.OnDestroyListener
    public void onDestroy() throws IOException {
        prepareToDie();
    }

    @Override // com.google.appinventor.components.runtime.Deleteable
    public void onDelete() throws IOException {
        prepareToDie();
    }

    private void prepareToDie() throws IOException {
        if (this.socket != null) {
            Disconnect();
        }
    }
}
