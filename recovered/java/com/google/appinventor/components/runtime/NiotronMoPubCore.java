package com.google.appinventor.components.runtime;

import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.mopub.common.MoPub;
import com.mopub.common.SdkConfiguration;
import com.mopub.common.SdkInitializationListener;
import com.mopub.common.logging.MoPubLog;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "MoPub Core component, must be used when using any MoPub ad component", iconName = "images/niotronMobPubCore.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "mopub-sdk-util.aar, mopub-sdk-util.jar, mopub-sdk-banner.jar, mopub-sdk-banner.aar, mopub-sdk-fullscreen.jar, mopub-sdk-fullscreen.aar, mopub-sdk-base.jar, mopub-sdk-base.aar, gson.jar, mopub-sdk-networking.jar, mopub-sdk-networking.aar, kotlin-android-extensions-runtime.jar, kotlin-stdlib-common.jar, annotations.jar, kotlin-stdlib-jdk7.jar, legacy-support-v4.aar, legacy-support-v4.jar, mopub-volley.jar, omsdk-android.jar, omsdk-android.aar, mopub-sdk.jar, mopub-sdk.aar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-basement.aar, play-services-basement.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronMoPubCore extends AndroidNonvisibleComponent {
    private ComponentContainer componentContainer;

    public NiotronMoPubCore(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.componentContainer = componentContainer;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Sets ad unit id")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXT)
    public void AdUnitId(String str) {
        MoPub.initializeSdk(this.componentContainer.$context(), new SdkConfiguration.Builder(str).withLogLevel(MoPubLog.LogLevel.DEBUG).withLegitimateInterestAllowed(false).build(), new SdkInitializationListener() { // from class: com.google.appinventor.components.runtime.NiotronMoPubCore.1
            public void onInitializationFinished() {
                NiotronMoPubCore.this.SDKInitialized();
            }
        });
    }

    @SimpleEvent(description = "SDK initialized")
    public void SDKInitialized() {
        EventDispatcher.dispatchEvent(this, "SDKInitialized", new Object[0]);
    }
}
