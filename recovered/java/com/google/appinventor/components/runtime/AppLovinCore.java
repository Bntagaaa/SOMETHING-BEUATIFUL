package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.net.Uri;
import com.applovin.sdk.AppLovinPrivacySettings;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinSdkInitializationConfiguration;
import com.applovin.sdk.AppLovinSdkSettings;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Core Component Required for AppLovin MAX Components. Only Required in Screen1", iconName = "images/appLovinCore.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "applovin-sdk.aar, applovin-sdk.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-appset.aar, play-services-appset.jar, play-services-base.aar, play-services-base.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, annotation.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class AppLovinCore extends AndroidNonvisibleComponent {
    private Activity context;
    private String privacyPolicyUrl;
    private String sdkKey;
    private boolean termsAndPrivacyPolicyFlow;
    private String termsOfServiceUrl;
    private String userId;

    public AppLovinCore(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.sdkKey = "";
        this.userId = "";
        this.termsAndPrivacyPolicyFlow = false;
        this.privacyPolicyUrl = "";
        this.termsOfServiceUrl = "";
        this.context = componentContainer.$context();
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set the SDK Key for AppLovin MAX")
    @DesignerProperty
    public void SDKKey(String str) {
        this.sdkKey = str;
    }

    @SimpleProperty(description = "Get the SDK Key for AppLovin MAX")
    public String SDKKey() {
        return this.sdkKey;
    }

    @SimpleProperty(category = PropertyCategory.ADVANCED, description = "Set the User ID for AppLovin MAX to track individual users. Optional.")
    @DesignerProperty
    public void UserId(String str) {
        this.userId = str;
    }

    @SimpleProperty(description = "Get the User ID for AppLovin MAX")
    public String UserId() {
        return this.userId;
    }

    @SimpleProperty(category = PropertyCategory.PRIVACY, description = "Enable or Disable TermsAndPrivacyPolicy Flow")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void TermsAndPrivacyPolicyFlow(boolean z) {
        this.termsAndPrivacyPolicyFlow = z;
    }

    @SimpleProperty(description = "Get the TermsAndPrivacyPolicy Flow boolean")
    public boolean TermsAndPrivacyPolicyFlow() {
        return this.termsAndPrivacyPolicyFlow;
    }

    @SimpleProperty(category = PropertyCategory.PRIVACY, description = "Set the Privacy Policy URL for AppLovin MAX. Optional.")
    @DesignerProperty
    public void PrivacyPolicyUrl(String str) {
        this.privacyPolicyUrl = str;
    }

    @SimpleProperty(description = "Get the Privacy Policy URL for AppLovin MAX")
    public String PrivacyPolicyUrl() {
        return this.privacyPolicyUrl;
    }

    @SimpleProperty(category = PropertyCategory.PRIVACY, description = "Set whether the application has user consent ")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void UserConsent(boolean z) {
        AppLovinPrivacySettings.setHasUserConsent(z, this.context);
    }

    @SimpleProperty(description = "Get whether the application has user consent")
    public boolean UserConsent() {
        return AppLovinPrivacySettings.hasUserConsent(this.context);
    }

    @SimpleProperty(category = PropertyCategory.PRIVACY, description = "Set whether the user has opted out of the sale of their personal information")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void DoNotSell(boolean z) {
        AppLovinPrivacySettings.setDoNotSell(z, this.context);
    }

    @SimpleProperty(description = "Get whether the user has opted out of the sale of their personal information")
    public boolean DoNotSell() {
        return AppLovinPrivacySettings.isDoNotSell(this.context);
    }

    @SimpleFunction(description = "Initialize the AppLovin SDK. Required to use AppLovin MAX Components.")
    public void InitializeSDK() {
        AppLovinSdkInitializationConfiguration appLovinSdkInitializationConfigurationBuild = AppLovinSdkInitializationConfiguration.builder(this.sdkKey, this.context).setMediationProvider("max").build();
        AppLovinSdkSettings settings = AppLovinSdk.getInstance(this.context).getSettings();
        if (!this.userId.isEmpty()) {
            settings.setUserIdentifier(this.userId);
        }
        if (!this.privacyPolicyUrl.isEmpty()) {
            settings.getTermsAndPrivacyPolicyFlowSettings().setPrivacyPolicyUri(Uri.parse(this.privacyPolicyUrl));
        }
        if (!this.termsOfServiceUrl.isEmpty()) {
            settings.getTermsAndPrivacyPolicyFlowSettings().setTermsOfServiceUri(Uri.parse(this.termsOfServiceUrl));
        }
        AppLovinSdk.getInstance(this.context).initialize(appLovinSdkInitializationConfigurationBuild, new AppLovinSdk.SdkInitializationListener() { // from class: com.google.appinventor.components.runtime.AppLovinCore.1
            public void onSdkInitialized(AppLovinSdkConfiguration appLovinSdkConfiguration) {
                AppLovinCore.this.SDKInitialized();
            }
        });
    }

    @SimpleEvent(description = "Event triggered when the AppLovin SDK is initialized")
    public void SDKInitialized() {
        EventDispatcher.dispatchEvent(this, "SDKInitialized", new Object[0]);
    }
}
