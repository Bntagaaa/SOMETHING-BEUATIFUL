package com.google.appinventor.components.runtime;

import android.content.Context;
import com.google.android.gms.ads.AdInspectorError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.OnAdInspectorClosedListener;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
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

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, com.google.android.gms.permission.AD_ID")
@DesignerComponent(androidMinSdk = 21, category = ComponentCategory.MONETIZATION, description = "Sdk Support for Admob. Required for Using any Admob Component. SDK Version: 21.4.0", iconName = "images/admob.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "play-services-ads.aar, play-services-ads.jar, browser.aar, browser.jar, play-services-ads-base.aar, play-services-ads-base.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-basement.aar, play-services-basement.jar, play-services-base.jar, play-services-base.aar, play-services-ads-lite.aar, play-services-ads-lite.jar, play-services-measurement-sdk-api.aar, play-services-measurement-sdk-api.jar, play-services-measurement-base.aar, play-services-measurement-base.jar, work-runtime.aar, work-runtime.jar, user-messaging-platform.aar, user-messaging-platform.jar, play-services-tasks.jar, play-services-tasks.aar, play-services-appset.jar, play-services-appset.aar")
/* loaded from: classes.dex */
public final class AdmobMobileAds extends AndroidNonvisibleComponent {
    private Context context;
    private boolean directedForChildren;
    private int targetAge;

    public AdmobMobileAds(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.targetAge = 0;
        this.directedForChildren = false;
        this.context = componentContainer.$context();
    }

    @SimpleProperty(category = PropertyCategory.PRIVACY, description = "Users Age")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void TargetAge(int i) {
        this.targetAge = i;
        RequestConfiguration requestConfiguration = MobileAds.getRequestConfiguration();
        if (i > 0 && i < 7) {
            requestConfiguration.toBuilder().setMaxAdContentRating("G").build();
        } else if (i >= 7 && i < 12) {
            requestConfiguration.toBuilder().setMaxAdContentRating("PG").build();
        } else if (i >= 12 && i < 18) {
            requestConfiguration.toBuilder().setMaxAdContentRating("T").build();
        } else if (i >= 18) {
            requestConfiguration.toBuilder().setMaxAdContentRating("MA").build();
        }
        MobileAds.setRequestConfiguration(requestConfiguration);
    }

    @SimpleProperty(description = "Users Targeted Age")
    public int TargetAge() {
        return this.targetAge;
    }

    @SimpleProperty(category = PropertyCategory.PUBLISHING, description = "Targeting for Children")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void DirectedForChildren(boolean z) {
        this.directedForChildren = z;
        RequestConfiguration requestConfiguration = MobileAds.getRequestConfiguration();
        if (z) {
            requestConfiguration.toBuilder().setTagForChildDirectedTreatment(1).build();
        } else {
            requestConfiguration.toBuilder().setTagForChildDirectedTreatment(0).build();
        }
        MobileAds.setRequestConfiguration(requestConfiguration);
    }

    @SimpleProperty(description = "Targeting for Children")
    public boolean DirectedForChildren() {
        return this.directedForChildren;
    }

    @SimpleFunction(description = "Initialize Mobile Ads SDK for Admob. This function should be called in Screen Initialize. 'disableMediationAdapter' can be true of false depending on if you want to use mediation adapter.")
    public void InitializeMobileAds(boolean z) {
        if (z) {
            MobileAds.disableMediationAdapterInitialization(this.context);
        }
        MobileAds.initialize(this.context, new OnInitializationCompleteListener() { // from class: com.google.appinventor.components.runtime.AdmobMobileAds.1
            public void onInitializationComplete(InitializationStatus initializationStatus) {
                AdmobMobileAds.this.SdkInitialized();
            }
        });
    }

    @SimpleFunction(description = "Get the Initialization Status of Any Ad Adapter in Admob")
    public String GetInitializationStatus(String str) {
        if (((AdapterStatus) MobileAds.getInitializationStatus().getAdapterStatusMap().get(str)).getInitializationState() != AdapterStatus.State.READY) {
            return "Not Ready";
        }
        return "Ready";
    }

    @SimpleFunction(description = "Open Ad Inspector. Ad inspector is an in-app overlay that enables authorized devices to perform real-time analysis of test ad requests directly within a mobile app")
    public void OpenAdInspector() {
        MobileAds.openAdInspector(this.context, new OnAdInspectorClosedListener() { // from class: com.google.appinventor.components.runtime.AdmobMobileAds.2
            public void onAdInspectorClosed(AdInspectorError adInspectorError) {
                AdmobMobileAds.this.AdInspectorClosed();
            }
        });
    }

    @SimpleFunction(description = "Open Debug Menu for an Ad Unit")
    public void OpenDebugMenu(String str) {
        MobileAds.openDebugMenu(this.context, str);
    }

    @SimpleEvent(description = "SDK Initialized")
    public void SdkInitialized() {
        EventDispatcher.dispatchEvent(this, "SdkInitialized", new Object[0]);
    }

    @SimpleEvent(description = "Ad Inspector Closed")
    public void AdInspectorClosed() {
        EventDispatcher.dispatchEvent(this, "AdInspectorClosed", new Object[0]);
    }
}
