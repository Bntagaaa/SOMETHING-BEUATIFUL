package com.google.appinventor.components.runtime;

import android.content.Context;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.startapp.sdk.adsbase.StartAppAd;
import com.startapp.sdk.adsbase.StartAppSDK;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.INTERNET, android.permission.ACCESS_WIFI_STATE, android.permission.ACCESS_NETWORK_STATE, android.permission.RECEIVE_BOOT_COMPLETED, com.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE, com.google.android.gms.permission.AD_ID")
@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "StartAppSdk Core. Required for All StartApp Ads. <br> SDK Version: 4.10.12", iconName = "images/startAppCore.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "startapp-inapp-sdk.aar, startapp-inapp-sdk.jar, annotation.jar")
/* loaded from: classes.dex */
public final class StartAppCore extends AndroidNonvisibleComponent {
    static boolean SdkInitialized = false;
    private String appId;
    private Context context;
    private Boolean returnAds;
    private Boolean splashAds;
    private Boolean userConsent;

    public StartAppCore(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.appId = null;
        Boolean bool = Boolean.FALSE;
        this.returnAds = bool;
        this.splashAds = bool;
        this.userConsent = bool;
        this.context = componentContainer.$context();
    }

    private void InitializedSdk() {
        String str = this.appId;
        if (str != null) {
            StartAppSDK.init(this.context, str, this.returnAds.booleanValue());
            StartAppSDK.setUserConsent(this.context, "pas", System.currentTimeMillis(), this.userConsent.booleanValue());
            if (!this.splashAds.booleanValue()) {
                StartAppAd.disableSplash();
            }
        }
        SdkInitialized = true;
        SDKInitialized();
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "StartApp AppId")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void AppId(String str) {
        this.appId = str;
        InitializedSdk();
    }

    @SimpleProperty(description = "Returns AppId")
    public String AppId() {
        return this.appId;
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, description = "If An Ad has to be shown when a user returns to the app")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ReturnAds(boolean z) {
        this.returnAds = Boolean.valueOf(z);
        InitializedSdk();
    }

    @SimpleProperty(description = "Returns If ReturnAds are enabled")
    public boolean ReturnAds() {
        return this.returnAds.booleanValue();
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, description = "Splash Ads are high paying ads that is shown when user opens the app")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void SplashAds(boolean z) {
        this.splashAds = Boolean.valueOf(z);
        InitializedSdk();
    }

    @SimpleProperty(description = "Returns If SplashAd is enabled")
    public boolean SplashAds() {
        return this.splashAds.booleanValue();
    }

    @SimpleProperty(category = PropertyCategory.PRIVACY, description = "User Consent to Show Personalized Ads")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void UserConsent(boolean z) {
        this.userConsent = Boolean.valueOf(z);
        InitializedSdk();
    }

    @SimpleProperty(description = "Returns User Consent")
    public boolean UserConsent() {
        return this.userConsent.booleanValue();
    }

    @SimpleEvent(description = "Triggers When the SDK is Initialized")
    public void SDKInitialized() {
        EventDispatcher.dispatchEvent(this, "SDKInitialized", new Object[0]);
    }
}
