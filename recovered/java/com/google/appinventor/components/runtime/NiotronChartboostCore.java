package com.google.appinventor.components.runtime;

import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.events.StartError;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Chartboost core component, this component is must required to use any chartboost ads component. <br> SDK Version: 8.3.0", iconName = "images/niotronChartboostCore.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "chartboost-sdk.aar, chartboost-sdk.jar, play-services-auth.aar, play-services-auth.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-appset.aar, play-services-appset.jar, exoplayer-core.aar, exoplayer-core.jar, play-services-auth-api-phone.aar, play-services-auth-api-phone.jar, play-services-auth-base.aar, play-services-auth-base.jar, play-services-fido.aar, play-services-fido.jar, play-services-base.aar, play-services-base.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, exoplayer-datasource.aar, exoplayer-datasource.jar, exoplayer-extractor.aar, exoplayer-extractor.jar, exoplayer-decoder.aar, exoplayer-decoder.jar, exoplayer-database.aar, exoplayer-database.jar, exoplayer-common.aar, exoplayer-common.jar, annotation.jar, failureaccess.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronChartboostCore extends AndroidNonvisibleComponent {
    public String appId;
    public String appSignature;

    public NiotronChartboostCore(ComponentContainer componentContainer) {
        super(componentContainer.$form());
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set app id")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXT)
    public void AppId(String str) {
        this.appId = str;
        InitializeSDK();
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set app signature")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXT)
    public void AppSignature(String str) {
        this.appSignature = str;
        InitializeSDK();
    }

    public void InitializeSDK() {
        if (this.appSignature == null || this.appId == null) {
            return;
        }
        try {
            Chartboost.startWithAppId(this.form.$context().getApplicationContext(), this.appId, this.appSignature, new a());
        } catch (Exception e) {
            InitializeFailed(e.toString());
        }
    }

    private /* synthetic */ void lambda$InitializeSDK$0(StartError startError) {
        if (startError != null) {
            InitializeFailed(startError.toString());
        } else {
            SDKInitialized();
        }
    }

    @SimpleEvent(description = "SDK initialized")
    public void SDKInitialized() {
        EventDispatcher.dispatchEvent(this, "SDKInitialized", new Object[0]);
    }

    @SimpleEvent(description = "Initialization failed")
    public void InitializeFailed(String str) {
        EventDispatcher.dispatchEvent(this, "InitializeFailed", str);
    }
}
