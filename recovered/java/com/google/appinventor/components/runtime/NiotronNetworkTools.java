package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.TrafficStats;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;

@UsesPermissions(permissionNames = "android.permission.ACCESS_NETWORK_STATE, android.permission.ACCESS_WIFI_STATE")
@DesignerComponent(category = ComponentCategory.EXTRAS, description = "A new component ", iconName = "images/niotronNetworkTools.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronNetworkTools extends AndroidNonvisibleComponent implements OnResumeListener, OnPauseListener, OnDestroyListener {
    private Activity activity;
    private ComponentContainer container;
    private Context context;
    private BroadcastReceiver networkChangeReceiver;

    public NiotronNetworkTools(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.context = componentContainer.$context();
        this.activity = componentContainer.$context();
        this.networkChangeReceiver = new BroadcastReceiver() { // from class: com.google.appinventor.components.runtime.NiotronNetworkTools.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                    NiotronNetworkTools.this.NetworkConnected();
                } else {
                    NiotronNetworkTools.this.NetworkDisconnected();
                }
            }
        };
        registerReceiver();
        this.form.registerForOnPause(this);
        this.form.registerForOnResume(this);
    }

    private void registerReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.context.registerReceiver(this.networkChangeReceiver, intentFilter, 2);
    }

    @Override // com.google.appinventor.components.runtime.OnResumeListener
    public void onResume() {
        registerReceiver();
    }

    @Override // com.google.appinventor.components.runtime.OnPauseListener
    public void onPause() {
        if (isReceiverRegistered(this.context, this.networkChangeReceiver)) {
            this.context.unregisterReceiver(this.networkChangeReceiver);
        }
    }

    @Override // com.google.appinventor.components.runtime.OnDestroyListener
    public void onDestroy() {
        if (isReceiverRegistered(this.context, this.networkChangeReceiver)) {
            this.context.unregisterReceiver(this.networkChangeReceiver);
        }
    }

    private boolean isReceiverRegistered(Context context, BroadcastReceiver broadcastReceiver) {
        return context.registerReceiver(broadcastReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"), 2) != null;
    }

    @SimpleEvent(description = "Checks if network connected")
    public void NetworkConnected() {
        EventDispatcher.dispatchEvent(this, "NetworkConnected", new Object[0]);
    }

    @SimpleEvent(description = "Check if network disconnected")
    public void NetworkDisconnected() {
        EventDispatcher.dispatchEvent(this, "NetworkDisconnected", new Object[0]);
    }

    @SimpleFunction(description = "Returns if connected")
    public boolean IsConnected() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @SimpleFunction(description = "Checks if connected to internet")
    public void CheckIsConnectedToInternet() {
        new Thread() { // from class: com.google.appinventor.components.runtime.NiotronNetworkTools.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    final boolean z = Runtime.getRuntime().exec("ping -c 1 google.com").waitFor() == 0;
                    NiotronNetworkTools.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronNetworkTools.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronNetworkTools.this.ConnectedToInternetResult(z);
                        }
                    });
                } catch (Exception unused) {
                    NiotronNetworkTools.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronNetworkTools.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronNetworkTools.this.ConnectedToInternetResult(false);
                        }
                    });
                }
            }
        }.start();
    }

    @SimpleEvent(description = "Result of connected to internet")
    public void ConnectedToInternetResult(boolean z) {
        EventDispatcher.dispatchEvent(this, "ConnectedToInternetResult", Boolean.valueOf(z));
    }

    @SimpleFunction(description = "Return true if the device is connected via Wifi.")
    public boolean isWifiConnection() {
        boolean z = false;
        for (NetworkInfo networkInfo : ((ConnectivityManager) this.context.getSystemService("connectivity")).getAllNetworkInfo()) {
            if (networkInfo.getTypeName().equalsIgnoreCase("WIFI") && networkInfo.isConnected()) {
                z = true;
            }
        }
        return z;
    }

    @SimpleFunction(description = "Return true if the device is connected via Mobile/Personal network.")
    public boolean isMobileConnection() {
        boolean z = false;
        for (NetworkInfo networkInfo : ((ConnectivityManager) this.context.getSystemService("connectivity")).getAllNetworkInfo()) {
            if (networkInfo.getTypeName().equalsIgnoreCase("MOBILE") && networkInfo.isConnected()) {
                z = true;
            }
        }
        return z;
    }

    @SimpleFunction(description = "Return true if VPN turned ON, in device.")
    public boolean isVPNConnected() {
        return ((ConnectivityManager) this.context.getSystemService("connectivity")).getNetworkInfo(17).isConnectedOrConnecting();
    }

    @SimpleFunction(description = "Return true device is in roaming.")
    public boolean isInRoaming() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting() && activeNetworkInfo.isRoaming();
    }

    @SimpleFunction(description = "NTS = Network Traffic Statistics\nReturns the size of total downloaded data/packets in bytes of over all interfaces in current session. If oi/overall_Interface is set to false then it returns the size of total downloaded in bytes over the mobile interface only.")
    public int NTSDownloads(boolean z) {
        long mobileRxBytes;
        if (z) {
            mobileRxBytes = TrafficStats.getTotalRxBytes();
        } else {
            mobileRxBytes = TrafficStats.getMobileRxBytes();
        }
        return (int) mobileRxBytes;
    }

    @SimpleFunction(description = "NTS = Network Traffic Statistics\nReturns the size of total Uploaded data/packets in bytes of over all interfaces in current session. If oi/overall_Interface is set to false then it returns the size of total Uploaded in bytes over the mobile interface only.")
    public int NTSUploads(boolean z) {
        long mobileTxBytes;
        if (z) {
            mobileTxBytes = TrafficStats.getTotalTxBytes();
        } else {
            mobileTxBytes = TrafficStats.getMobileTxBytes();
        }
        return (int) mobileTxBytes;
    }
}
