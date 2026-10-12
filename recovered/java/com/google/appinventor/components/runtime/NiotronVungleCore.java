package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.vungle.ads.InitializationListener;
import com.vungle.ads.VungleAds;
import com.vungle.ads.VungleError;
import org.jetbrains.annotations.NotNull;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, android.permission.ACCESS_WIFI_STATE")
@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Core component for vungle ads components, this component must be used to use any vungle ads component. <br> SDK Version: 6.12.0", iconName = "images/niotronVungleCore.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "vungle-ads.aar, vungle-ads.jar, okhttp.jar, okio-jvm.jar, kotlinx-serialization-json-jvm.jar, kotlinx-serialization-core-jvm.jar, protobuf-javalite.jar")
/* loaded from: classes.dex */
public final class NiotronVungleCore extends AndroidNonvisibleComponent {
    private Activity activity;
    private String appId;
    private Context context;

    public NiotronVungleCore(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.appId = "";
        Activity activity$context = componentContainer.$context();
        this.context = activity$context;
        this.activity = activity$context;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Your Vungle Ads App Id")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void AppId(String str) {
        this.appId = str;
    }

    @SimpleFunction
    public void InitializeSDK() {
        VungleAds.init(this.context, this.appId, new InitializationListener() { // from class: com.google.appinventor.components.runtime.NiotronVungleCore.1
            public void onSuccess() {
                NiotronVungleCore.this.SDKInitialized();
            }

            public void onError(@NotNull VungleError vungleError) {
                NiotronVungleCore.this.SDKFailedToInitialize(vungleError.getLocalizedMessage());
            }
        });
    }

    @SimpleFunction
    public boolean IsInitialized() {
        return VungleAds.isInitialized();
    }

    @SimpleEvent
    public void SDKInitialized() {
        EventDispatcher.dispatchEvent(this, "SDKInitialized", new Object[0]);
    }

    @SimpleEvent
    public void SDKFailedToInitialize(String str) {
        EventDispatcher.dispatchEvent(this, "SDKFailedToInitialize", str);
    }
}
