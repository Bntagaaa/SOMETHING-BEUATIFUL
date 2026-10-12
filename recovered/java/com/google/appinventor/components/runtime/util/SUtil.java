package com.google.appinventor.components.runtime.util;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.os.Build;
import com.google.appinventor.components.runtime.BluetoothClient;
import com.google.appinventor.components.runtime.BluetoothServer;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.PermissionResultHandler;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class SUtil {
    public static boolean requestPermissionsForScanning(Form form, BluetoothClient bluetoothClient, String str, PermissionResultHandler permissionResultHandler) {
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 31) {
            arrayList.add("android.permission.BLUETOOTH_SCAN");
        } else {
            arrayList.add("android.permission.BLUETOOTH");
            arrayList.add("android.permission.BLUETOOTH_ADMIN");
        }
        if (!bluetoothClient.NoLocationNeeded() && form.doesAppDeclarePermission("android.permission.ACCESS_FINE_LOCATION")) {
            arrayList.add("android.permission.ACCESS_FINE_LOCATION");
        }
        return performRequest(form, bluetoothClient, str, arrayList, permissionResultHandler);
    }

    public static boolean requestPermissionsForConnecting(Form form, BluetoothClient bluetoothClient, String str, PermissionResultHandler permissionResultHandler) {
        return requestPermissionsForS("android.permission.BLUETOOTH_CONNECT", form, bluetoothClient, str, permissionResultHandler);
    }

    public static boolean requestPermissionsForAdvertising(Form form, BluetoothServer bluetoothServer, String str, PermissionResultHandler permissionResultHandler) {
        return requestPermissionsForS("android.permission.BLUETOOTH_ADVERTISE", form, bluetoothServer, str, permissionResultHandler);
    }

    public static boolean requestPermissionsForS(String str, Form form, Component component, String str2, PermissionResultHandler permissionResultHandler) {
        return requestPermissionsForS(new String[]{str}, form, component, str2, permissionResultHandler);
    }

    public static boolean requestPermissionsForS(String[] strArr, Form form, Component component, String str, PermissionResultHandler permissionResultHandler) {
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 31) {
            Collections.addAll(arrayList, strArr);
        } else {
            arrayList.add("android.permission.BLUETOOTH");
            arrayList.add("android.permission.BLUETOOTH_ADMIN");
        }
        return performRequest(form, component, str, arrayList, permissionResultHandler);
    }

    public static BluetoothAdapter getAdapter(Context context) {
        if (Build.VERSION.SDK_INT >= 31) {
            return ((BluetoothManager) context.getSystemService("bluetooth")).getAdapter();
        }
        return BluetoothAdapter.getDefaultAdapter();
    }

    private static boolean performRequest(Form form, Component component, String str, final List<String> list, final PermissionResultHandler permissionResultHandler) {
        boolean z;
        Iterator<String> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = true;
                break;
            }
            if (form.isDeniedPermission(it.next())) {
                z = false;
                break;
            }
        }
        if (!z) {
            form.askPermission(new BulkPermissionRequest(component, str, (String[]) list.toArray(new String[0])) { // from class: com.google.appinventor.components.runtime.util.SUtil.1
                @Override // com.google.appinventor.components.runtime.util.BulkPermissionRequest
                public void onGranted() {
                    permissionResultHandler.HandlePermissionResponse((String) list.get(0), true);
                }
            });
        }
        return !z;
    }
}
