package com.google.appinventor.components.runtime;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothServerSocket;
import android.bluetooth.BluetoothSocket;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.AsynchUtil;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.SUtil;
import java.io.IOException;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;

@UsesPermissions({"android.permission.BLUETOOTH", "android.permission.BLUETOOTH_ADMIN", "android.permission.BLUETOOTH_ADVERTISE"})
@DesignerComponent(category = ComponentCategory.CONNECTIVITY, description = "Bluetooth server component", iconName = "images/bluetooth_server_new.png", nonVisible = true, version = 5)
@SimpleObject
/* loaded from: classes.dex */
public final class BluetoothServer extends BluetoothConnectionBase {
    private static final String SPP_UUID = "00001101-0000-1000-8000-00805F9B34FB";
    private final Handler androidUIHandler;
    private final AtomicReference<BluetoothServerSocket> arBluetoothServerSocket;

    public BluetoothServer(ComponentContainer componentContainer) {
        super(componentContainer, "BluetoothServer");
        this.androidUIHandler = new Handler(Looper.getMainLooper());
        this.arBluetoothServerSocket = new AtomicReference<>();
    }

    @SimpleFunction(description = "Accept an incoming connection with the Serial Port Profile (SPP).")
    public void AcceptConnection(String str) throws IOException {
        accept("AcceptConnection", str, SPP_UUID);
    }

    @SimpleFunction(description = "Accept an incoming connection with a specific UUID.")
    public void AcceptConnectionWithUUID(String str, String str2) throws IOException {
        accept("AcceptConnectionWithUUID", str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void accept(final String str, final String str2, final String str3) throws IOException {
        BluetoothServerSocket bluetoothServerSocketListenUsingRfcommWithServiceRecord;
        if (SUtil.requestPermissionsForAdvertising(this.form, this, str, new PermissionResultHandler() { // from class: com.google.appinventor.components.runtime.BluetoothServer.1
            @Override // com.google.appinventor.components.runtime.PermissionResultHandler
            public void HandlePermissionResponse(String str4, boolean z) throws IOException {
                BluetoothServer.this.accept(str, str2, str3);
            }
        })) {
            return;
        }
        BluetoothAdapter bluetoothAdapter = this.adapter;
        if (bluetoothAdapter == null) {
            this.form.dispatchErrorOccurredEvent(this, str, ErrorMessages.ERROR_BLUETOOTH_NOT_AVAILABLE, new Object[0]);
            return;
        }
        if (!bluetoothAdapter.isEnabled()) {
            this.form.dispatchErrorOccurredEvent(this, str, ErrorMessages.ERROR_BLUETOOTH_NOT_ENABLED, new Object[0]);
            return;
        }
        try {
            UUID uuidFromString = UUID.fromString(str3);
            try {
                if (!this.secure) {
                    bluetoothServerSocketListenUsingRfcommWithServiceRecord = this.adapter.listenUsingInsecureRfcommWithServiceRecord(str2, uuidFromString);
                } else {
                    bluetoothServerSocketListenUsingRfcommWithServiceRecord = this.adapter.listenUsingRfcommWithServiceRecord(str2, uuidFromString);
                }
                this.arBluetoothServerSocket.set(bluetoothServerSocketListenUsingRfcommWithServiceRecord);
                AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.BluetoothServer.2
                    @Override // java.lang.Runnable
                    public void run() throws IOException {
                        final BluetoothSocket bluetoothSocketAccept;
                        BluetoothServerSocket bluetoothServerSocket = (BluetoothServerSocket) BluetoothServer.this.arBluetoothServerSocket.get();
                        if (bluetoothServerSocket != null) {
                            try {
                                bluetoothSocketAccept = bluetoothServerSocket.accept();
                            } catch (IOException unused) {
                                BluetoothServer.this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.BluetoothServer.2.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                        BluetoothServer bluetoothServer = BluetoothServer.this;
                                        bluetoothServer.form.dispatchErrorOccurredEvent(bluetoothServer, str, ErrorMessages.ERROR_BLUETOOTH_UNABLE_TO_ACCEPT, new Object[0]);
                                    }
                                });
                                return;
                            } finally {
                                BluetoothServer.this.StopAccepting();
                            }
                        } else {
                            bluetoothSocketAccept = null;
                        }
                        if (bluetoothSocketAccept != null) {
                            BluetoothServer.this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.BluetoothServer.2.2
                                @Override // java.lang.Runnable
                                public void run() throws IOException {
                                    try {
                                        BluetoothServer.this.setConnection(bluetoothSocketAccept);
                                        BluetoothServer.this.ConnectionAccepted();
                                    } catch (IOException unused2) {
                                        BluetoothServer.this.Disconnect();
                                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                        BluetoothServer bluetoothServer = BluetoothServer.this;
                                        bluetoothServer.form.dispatchErrorOccurredEvent(bluetoothServer, str, ErrorMessages.ERROR_BLUETOOTH_UNABLE_TO_ACCEPT, new Object[0]);
                                    }
                                }
                            });
                        }
                    }
                });
            } catch (IOException unused) {
                this.form.dispatchErrorOccurredEvent(this, str, ErrorMessages.ERROR_BLUETOOTH_UNABLE_TO_LISTEN, new Object[0]);
            }
        } catch (IllegalArgumentException unused2) {
            this.form.dispatchErrorOccurredEvent(this, str, ErrorMessages.ERROR_BLUETOOTH_INVALID_UUID, str3);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public final boolean IsAccepting() {
        return this.arBluetoothServerSocket.get() != null;
    }

    @SimpleFunction(description = "Stop accepting an incoming connection.")
    public void StopAccepting() throws IOException {
        BluetoothServerSocket andSet = this.arBluetoothServerSocket.getAndSet(null);
        if (andSet != null) {
            try {
                andSet.close();
            } catch (IOException e) {
                Log.w(this.logTag, "Error while closing bluetooth server socket: " + e.getMessage());
            }
        }
    }

    @SimpleEvent(description = "Indicates that a bluetooth connection has been accepted.")
    public void ConnectionAccepted() {
        Log.i(this.logTag, "Successfullly accepted bluetooth connection.");
        EventDispatcher.dispatchEvent(this, "ConnectionAccepted", new Object[0]);
    }
}
