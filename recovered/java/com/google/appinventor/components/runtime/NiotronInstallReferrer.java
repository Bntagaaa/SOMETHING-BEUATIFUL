package com.google.appinventor.components.runtime;

import android.os.RemoteException;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;

@SimpleObject
@UsesPermissions(permissionNames = "com.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE")
@DesignerComponent(category = ComponentCategory.EXPERIMENTAL, description = "Component for install referrer", iconName = "images/niotronInstallReferrer.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "installreferrer.jar, installreferrer.aar")
/* loaded from: classes.dex */
public final class NiotronInstallReferrer extends AndroidNonvisibleComponent {
    InstallReferrerClient referrerClient;

    public NiotronInstallReferrer(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.referrerClient = InstallReferrerClient.newBuilder(componentContainer.$context()).build();
    }

    @SimpleFunction(description = "Starts the connection with google play")
    public void StartConnection() {
        this.referrerClient.startConnection(new InstallReferrerStateListener() { // from class: com.google.appinventor.components.runtime.NiotronInstallReferrer.1
            public void onInstallReferrerSetupFinished(int i) {
                if (i != 0) {
                    if (i == 1) {
                        NiotronInstallReferrer.this.ErrorOccurred("Service unavailable");
                        return;
                    } else {
                        if (i != 2) {
                            return;
                        }
                        NiotronInstallReferrer.this.ErrorOccurred("Feature not supported");
                        return;
                    }
                }
                try {
                    ReferrerDetails installReferrer = NiotronInstallReferrer.this.referrerClient.getInstallReferrer();
                    NiotronInstallReferrer.this.ServiceConnected(installReferrer.getInstallReferrer(), installReferrer.getReferrerClickTimestampSeconds(), installReferrer.getInstallBeginTimestampSeconds(), installReferrer.getGooglePlayInstantParam(), installReferrer.getInstallVersion());
                } catch (RemoteException e) {
                    NiotronInstallReferrer.this.ErrorOccurred(e.getMessage());
                    e.printStackTrace();
                }
            }

            public void onInstallReferrerServiceDisconnected() {
                NiotronInstallReferrer.this.ServiceDisconnected();
            }
        });
    }

    @SimpleFunction(description = "Disconnect the referrer connection")
    public void Disconnect() {
        this.referrerClient.endConnection();
    }

    @SimpleEvent(description = "Referer connection disconnected")
    public void ServiceDisconnected() {
        EventDispatcher.dispatchEvent(this, "ServiceDisconnected", new Object[0]);
    }

    @SimpleEvent(description = "Error happened in referrer")
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }

    @SimpleEvent(description = "Connected with referrer")
    public void ServiceConnected(String str, long j, long j2, boolean z, String str2) {
        EventDispatcher.dispatchEvent(this, "ServiceConnected", str, Long.valueOf(j), Long.valueOf(j2), Boolean.valueOf(z), str2);
    }
}
