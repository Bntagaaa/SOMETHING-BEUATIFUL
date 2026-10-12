package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;

@DesignerComponent(category = ComponentCategory.EXTRAS, description = "", iconName = "images/keyguardmanager.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public class NiotronKeyguardManager extends AndroidNonvisibleComponent implements ActivityResultListener {
    private Activity activity;
    private ComponentContainer container;
    private Context context;
    private KeyguardManager keyguardManager;
    private int reqcode;

    public NiotronKeyguardManager(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.reqcode = 0;
        this.container = componentContainer;
        Activity activity$context = componentContainer.$context();
        this.context = activity$context;
        this.activity = activity$context;
        this.keyguardManager = (KeyguardManager) activity$context.getSystemService("keyguard");
    }

    @SimpleEvent(description = "Verification succeed")
    public void VerificationSuccess() {
        EventDispatcher.dispatchEvent(this, "VerificationSuccess", new Object[0]);
    }

    @SimpleEvent(description = "Verification failed")
    public void VerificationFailed() {
        EventDispatcher.dispatchEvent(this, "VerificationFailed", new Object[0]);
    }

    @SimpleEvent(description = "Error occurred")
    public void ErrorOccured(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccured", str);
    }

    @SimpleFunction(description = "Show the ock screen")
    public void ShowLockScreen(String str, String str2) {
        Intent intentCreateConfirmDeviceCredentialIntent = this.keyguardManager.createConfirmDeviceCredentialIntent(str, str2);
        int iRegisterForActivityResult = this.form.registerForActivityResult(this);
        this.reqcode = iRegisterForActivityResult;
        try {
            this.activity.startActivityForResult(intentCreateConfirmDeviceCredentialIntent, iRegisterForActivityResult);
        } catch (ActivityNotFoundException e) {
            ErrorOccured(e.toString());
        }
    }

    @SimpleFunction(description = "Returns if application is keyguard secured")
    public boolean IsKeyguardSecure() {
        return this.keyguardManager.isKeyguardSecure();
    }

    @SimpleFunction(description = "Returns if device secured")
    public boolean IsDeviceSecure() {
        if (Build.VERSION.SDK_INT >= 23) {
            return this.keyguardManager.isDeviceSecure();
        }
        ErrorOccured("SDK Level Not Suppored");
        return false;
    }

    @SimpleFunction(description = "Returns if keyguard is locked")
    public boolean IsKeyguardLocked() {
        return this.keyguardManager.isKeyguardLocked();
    }

    @SimpleFunction(description = "Returns if device is locked")
    public boolean IsDeviceLocked() {
        if (Build.VERSION.SDK_INT >= 22) {
            return this.keyguardManager.isDeviceLocked();
        }
        ErrorOccured("SDK Level Not Suppored");
        return false;
    }

    @Override // com.google.appinventor.components.runtime.ActivityResultListener
    public void resultReturned(int i, int i2, Intent intent) {
        if (i != this.reqcode) {
            if (i2 == 0) {
                VerificationFailed();
            }
        } else if (i2 == -1) {
            VerificationSuccess();
        } else {
            VerificationFailed();
        }
    }
}
