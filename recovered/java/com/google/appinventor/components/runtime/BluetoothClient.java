package com.google.appinventor.components.runtime;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.os.Build;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PermissionConstraint;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.errors.PermissionException;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.SUtil;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

@UsesPermissions({"android.permission.BLUETOOTH", "android.permission.BLUETOOTH_ADMIN", "android.permission.BLUETOOTH_CONNECT", "android.permission.BLUETOOTH_SCAN"})
@DesignerComponent(category = ComponentCategory.CONNECTIVITY, description = "Bluetooth client component", iconName = "images/bluetooth_client_new.png", nonVisible = true, version = 8)
@SimpleObject
/* loaded from: classes.dex */
public final class BluetoothClient extends BluetoothConnectionBase implements RealTimeDataSource<String, String> {
    private static final String[] RUNTIME_PERMISSIONS = {"android.permission.BLUETOOTH_CONNECT", "android.permission.BLUETOOTH_SCAN"};
    private static final String SPP_UUID = "00001101-0000-1000-8000-00805F9B34FB";
    private Set<Integer> acceptableDeviceClasses;
    private final List<Component> attachedComponents;
    private ScheduledExecutorService dataPollService;
    private final HashSet<DataSourceChangeListener> dataSourceObservers;
    private boolean noLocationNeeded;
    private int pollingRate;

    public BluetoothClient(ComponentContainer componentContainer) {
        super(componentContainer, PropertyTypeConstants.PROPERTY_TYPE_BLUETOOTHCLIENT);
        this.attachedComponents = new ArrayList();
        this.dataSourceObservers = new HashSet<>();
        this.pollingRate = 10;
        this.noLocationNeeded = false;
        DisconnectOnError(false);
    }

    @Override // com.google.appinventor.components.runtime.BluetoothConnectionBase
    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Disconnects BluetoothClient automatically when an error occurs.")
    public boolean DisconnectOnError() {
        return this.disconnectOnError;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void DisconnectOnError(boolean z) {
        this.disconnectOnError = z;
    }

    public boolean attachComponent(Component component, Set<Integer> set) {
        if (this.attachedComponents.isEmpty()) {
            this.acceptableDeviceClasses = set == null ? null : new HashSet(set);
        } else {
            Set<Integer> set2 = this.acceptableDeviceClasses;
            if (set2 == null) {
                if (set != null) {
                    return false;
                }
            } else if (set == null || !set2.containsAll(set) || !set.containsAll(this.acceptableDeviceClasses)) {
                return false;
            }
        }
        this.attachedComponents.add(component);
        return true;
    }

    public void detachComponent(Component component) {
        this.attachedComponents.remove(component);
        if (this.attachedComponents.isEmpty()) {
            this.acceptableDeviceClasses = null;
        }
    }

    @SimpleFunction(description = "Checks whether the Bluetooth device with the specified address is paired.")
    public boolean IsDevicePaired(String str) {
        BluetoothAdapter bluetoothAdapter = this.adapter;
        if (bluetoothAdapter == null) {
            this.form.dispatchErrorOccurredEvent(this, "IsDevicePaired", ErrorMessages.ERROR_BLUETOOTH_NOT_AVAILABLE, new Object[0]);
            return false;
        }
        if (!bluetoothAdapter.isEnabled()) {
            this.form.dispatchErrorOccurredEvent(this, "IsDevicePaired", ErrorMessages.ERROR_BLUETOOTH_NOT_ENABLED, new Object[0]);
            return false;
        }
        int iIndexOf = str.indexOf(" ");
        if (iIndexOf != -1) {
            str = str.substring(0, iIndexOf);
        }
        if (BluetoothAdapter.checkBluetoothAddress(str)) {
            return this.adapter.getRemoteDevice(str).getBondState() == 12;
        }
        this.form.dispatchErrorOccurredEvent(this, "IsDevicePaired", ErrorMessages.ERROR_BLUETOOTH_INVALID_ADDRESS, new Object[0]);
        return false;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The addresses and names of paired Bluetooth devices")
    public List<String> AddressesAndNames() {
        if (Build.VERSION.SDK_INT >= 31) {
            for (String str : RUNTIME_PERMISSIONS) {
                if (this.form.isDeniedPermission(str)) {
                    throw new PermissionException(str);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        BluetoothAdapter bluetoothAdapter = this.adapter;
        if (bluetoothAdapter != null) {
            for (BluetoothDevice bluetoothDevice : bluetoothAdapter.getBondedDevices()) {
                if (isDeviceClassAcceptable(bluetoothDevice)) {
                    arrayList.add(bluetoothDevice.getAddress() + " " + bluetoothDevice.getName());
                }
            }
        }
        return arrayList;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @DesignerProperty(defaultValue = "10")
    public void PollingRate(int i) {
        this.pollingRate = Math.max(i, 1);
    }

    @SimpleProperty
    public int PollingRate() {
        return this.pollingRate;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, userVisible = false)
    @UsesPermissions(constraints = {@PermissionConstraint(name = "android.permission.BLUETOOTH_SCAN", usesPermissionFlags = "neverForLocation")})
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void NoLocationNeeded(boolean z) {
        this.noLocationNeeded = z;
    }

    @SimpleProperty(userVisible = false)
    public boolean NoLocationNeeded() {
        return this.noLocationNeeded;
    }

    private boolean isDeviceClassAcceptable(BluetoothDevice bluetoothDevice) {
        if (this.acceptableDeviceClasses == null) {
            return true;
        }
        BluetoothClass bluetoothClass = bluetoothDevice.getBluetoothClass();
        if (bluetoothClass == null) {
            return false;
        }
        return this.acceptableDeviceClasses.contains(Integer.valueOf(bluetoothClass.getDeviceClass()));
    }

    @SimpleFunction(description = "Connect to the Bluetooth device with the specified address and the Serial Port Profile (SPP). Returns true if the connection was successful.")
    public boolean Connect(String str) {
        return connect("Connect", str, SPP_UUID);
    }

    @SimpleFunction(description = "Connect to the Bluetooth device with the specified address and UUID. Returns true if the connection was successful.")
    public boolean ConnectWithUUID(String str, String str2) {
        return connect("ConnectWithUUID", str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean connect(final String str, final String str2, final String str3) throws IOException {
        if (SUtil.requestPermissionsForConnecting(this.form, this, str, new PermissionResultHandler() { // from class: com.google.appinventor.components.runtime.BluetoothClient.1
            @Override // com.google.appinventor.components.runtime.PermissionResultHandler
            public void HandlePermissionResponse(String str4, boolean z) throws IOException {
                BluetoothClient.this.connect(str, str2, str3);
            }
        })) {
            return false;
        }
        BluetoothAdapter bluetoothAdapter = this.adapter;
        if (bluetoothAdapter == null) {
            this.form.dispatchErrorOccurredEvent(this, str, ErrorMessages.ERROR_BLUETOOTH_NOT_AVAILABLE, new Object[0]);
            return false;
        }
        if (!bluetoothAdapter.isEnabled()) {
            this.form.dispatchErrorOccurredEvent(this, str, ErrorMessages.ERROR_BLUETOOTH_NOT_ENABLED, new Object[0]);
            return false;
        }
        int iIndexOf = str2.indexOf(" ");
        if (iIndexOf != -1) {
            str2 = str2.substring(0, iIndexOf);
        }
        if (!BluetoothAdapter.checkBluetoothAddress(str2)) {
            this.form.dispatchErrorOccurredEvent(this, str, ErrorMessages.ERROR_BLUETOOTH_INVALID_ADDRESS, new Object[0]);
            return false;
        }
        BluetoothDevice remoteDevice = this.adapter.getRemoteDevice(str2);
        if (remoteDevice.getBondState() != 12) {
            this.form.dispatchErrorOccurredEvent(this, str, ErrorMessages.ERROR_BLUETOOTH_NOT_PAIRED_DEVICE, new Object[0]);
            return false;
        }
        if (!isDeviceClassAcceptable(remoteDevice)) {
            this.form.dispatchErrorOccurredEvent(this, str, ErrorMessages.ERROR_BLUETOOTH_NOT_REQUIRED_CLASS_OF_DEVICE, new Object[0]);
            return false;
        }
        try {
            UUID uuidFromString = UUID.fromString(str3);
            Disconnect();
            try {
                connect(remoteDevice, uuidFromString);
                return true;
            } catch (IOException unused) {
                Disconnect();
                this.form.dispatchErrorOccurredEvent(this, str, ErrorMessages.ERROR_BLUETOOTH_UNABLE_TO_CONNECT, new Object[0]);
                return false;
            }
        } catch (IllegalArgumentException unused2) {
            this.form.dispatchErrorOccurredEvent(this, str, ErrorMessages.ERROR_BLUETOOTH_INVALID_UUID, str3);
            return false;
        }
    }

    private void connect(BluetoothDevice bluetoothDevice, UUID uuid) throws IOException {
        BluetoothSocket bluetoothSocketCreateInsecureRfcommSocketToServiceRecord = !this.secure ? bluetoothDevice.createInsecureRfcommSocketToServiceRecord(uuid) : bluetoothDevice.createRfcommSocketToServiceRecord(uuid);
        bluetoothSocketCreateInsecureRfcommSocketToServiceRecord.connect();
        setConnection(bluetoothSocketCreateInsecureRfcommSocketToServiceRecord);
        Log.i(this.logTag, _COROUTINE.a.k("Connected to Bluetooth device ", bluetoothDevice.getAddress(), " ", bluetoothDevice.getName(), "."));
    }

    private void startBluetoothDataPolling() {
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.dataPollService = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleWithFixedDelay(new Runnable() { // from class: com.google.appinventor.components.runtime.BluetoothClient.2
            @Override // java.lang.Runnable
            public void run() {
                String dataValue = BluetoothClient.this.getDataValue((String) null);
                if (dataValue.equals("")) {
                    return;
                }
                BluetoothClient.this.notifyDataObservers((String) null, (Object) dataValue);
            }
        }, 0L, this.pollingRate, TimeUnit.MILLISECONDS);
    }

    @Override // com.google.appinventor.components.runtime.ObservableDataSource
    public synchronized void addDataObserver(DataSourceChangeListener dataSourceChangeListener) {
        try {
            if (this.dataPollService == null) {
                startBluetoothDataPolling();
            }
            this.dataSourceObservers.add(dataSourceChangeListener);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.appinventor.components.runtime.ObservableDataSource
    public synchronized void removeDataObserver(DataSourceChangeListener dataSourceChangeListener) {
        this.dataSourceObservers.remove(dataSourceChangeListener);
        if (this.dataSourceObservers.isEmpty()) {
            this.dataPollService.shutdown();
            this.dataPollService = null;
        }
    }

    @Override // com.google.appinventor.components.runtime.ObservableDataSource
    public void notifyDataObservers(String str, Object obj) {
        Iterator<DataSourceChangeListener> it = this.dataSourceObservers.iterator();
        while (it.hasNext()) {
            it.next().onReceiveValue(this, str, obj);
        }
    }

    @Override // com.google.appinventor.components.runtime.DataSource
    public String getDataValue(String str) {
        if (IsConnected() && BytesAvailableToReceive() > 0) {
            return ReceiveText(-1);
        }
        return "";
    }
}
