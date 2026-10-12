package com.google.appinventor.components.runtime;

import android.app.Activity;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.mbridge.msdk.out.MBridgeSDKFactory;
import com.mbridge.msdk.out.SDKInitStatusListener;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "A new component ", iconName = "images/niotronMintegralAdCore.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "mbridge_mbjscommon.aar,mbridge_same.aar,mbridge_mbjscommon.jar,mbridge_same.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronMintegralAdCore extends AndroidNonvisibleComponent {
    private Activity activity;
    String appId;
    String appKey;

    public NiotronMintegralAdCore(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.appId = "";
        this.appKey = "";
        this.activity = componentContainer.$context();
    }

    @SimpleFunction(description = "Initialize the SDK")
    public void InitSDK() {
        com.mbridge.msdk.system.a mBridgeSDK = MBridgeSDKFactory.getMBridgeSDK();
        mBridgeSDK.init(mBridgeSDK.getMBConfigurationMap(this.appId, this.appKey), this.activity, new SDKInitStatusListener() { // from class: com.google.appinventor.components.runtime.NiotronMintegralAdCore.1
            public void onInitSuccess() {
                NiotronMintegralAdCore.this.SDKInitialized();
            }

            public void onInitFail(String str) {
                NiotronMintegralAdCore.this.SDKFailedToInitialize(str);
            }
        });
    }

    @SimpleEvent(description = "SDK initialized")
    public void SDKInitialized() {
        EventDispatcher.dispatchEvent(this, "SDKInitialized", new Object[0]);
    }

    @SimpleEvent(description = "SDK failed to initialized")
    public void SDKFailedToInitialize(String str) {
        EventDispatcher.dispatchEvent(this, "SDKFailedToInitialize", str);
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Sets the app id")
    @DesignerProperty
    public void AppId(String str) {
        this.appId = str;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Sets the app key")
    @DesignerProperty
    public void AppKey(String str) {
        this.appKey = str;
    }
}
