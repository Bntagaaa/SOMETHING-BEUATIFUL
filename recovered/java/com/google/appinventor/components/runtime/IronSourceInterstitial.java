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
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdInfo;
import com.ironsource.mediationsdk.integration.IntegrationHelper;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.sdk.LevelPlayInterstitialListener;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, com.google.android.gms.permission.AD_ID")
@DesignerComponent(androidMinSdk = 14, category = ComponentCategory.MONETIZATION, description = "The ironSource Interstitial is a full-screen ad unit, usually served at natural transition points during the app lifecycle. We support both static and video interstitials. <br> SDK Version: 7.3.0.1", iconName = "images/ironSourceInterstitial.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "ironsource-mediationsdk.aar, ironsource-mediationsdk.jar, ironsource-adqualitysdk.aar, ironsource-adqualitysdk.jar,  play-services-appset.aar, play-services-appset.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-base.aar, play-services-base.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, annotation.jar")
/* loaded from: classes.dex */
public final class IronSourceInterstitial extends AndroidNonvisibleComponent implements OnResumeListener, OnPauseListener {
    private Activity activity;
    private String appKey;

    public IronSourceInterstitial(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.activity = componentContainer.$context();
        IronSource.setLevelPlayInterstitialListener(new LevelPlayInterstitialListener() { // from class: com.google.appinventor.components.runtime.IronSourceInterstitial.1
            public void onAdReady(AdInfo adInfo) {
                IronSourceInterstitial.this.AdLoaded();
            }

            public void onAdLoadFailed(IronSourceError ironSourceError) {
                IronSourceInterstitial.this.AdFailedToLoad(ironSourceError.getErrorMessage());
            }

            public void onAdOpened(AdInfo adInfo) {
                IronSourceInterstitial.this.AdOpened();
            }

            public void onAdShowSucceeded(AdInfo adInfo) {
                IronSourceInterstitial.this.AdDisplayed();
            }

            public void onAdShowFailed(IronSourceError ironSourceError, AdInfo adInfo) {
                IronSourceInterstitial.this.AdFailedToDisplay(ironSourceError.getErrorMessage());
            }

            public void onAdClicked(AdInfo adInfo) {
                IronSourceInterstitial.this.AdClicked();
            }

            public void onAdClosed(AdInfo adInfo) {
                IronSourceInterstitial.this.AdClosed();
            }
        });
    }

    @Override // com.google.appinventor.components.runtime.OnPauseListener
    public void onPause() {
        IronSource.onPause(this.activity);
    }

    @Override // com.google.appinventor.components.runtime.OnResumeListener
    public void onResume() {
        IronSource.onResume(this.activity);
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "IronSource Interstitial AppKey")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void AppKey(String str) {
        this.appKey = str;
        IronSource.init(this.activity, str, new IronSource.AD_UNIT[]{IronSource.AD_UNIT.INTERSTITIAL});
    }

    @SimpleProperty(description = "Ironsource AppKey")
    public String AppKey() {
        return this.appKey;
    }

    @SimpleFunction(description = "Only to Validate if the Integration was Successful")
    public void ValidateIntegration() {
        IntegrationHelper.validateIntegration(this.activity);
    }

    @SimpleFunction(description = "Check if Interstitial Ad Is Loaded")
    public boolean IsAdLoaded() {
        return IronSource.isInterstitialReady();
    }

    @SimpleFunction(description = "Load an Interstitial Ad")
    public void LoadAd() {
        IronSource.loadInterstitial();
    }

    @SimpleFunction(description = "Show an Interstitial Ad")
    public void ShowAd() {
        IronSource.showInterstitial();
    }

    @SimpleFunction(description = "Show an Interstitial Ad with a placement name")
    public void ShowAdWithPlacement(String str) {
        IronSource.showInterstitial(str);
    }

    @SimpleEvent(description = "Ad Loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad Failed To Load")
    public void AdFailedToLoad(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", str);
    }

    @SimpleEvent(description = "Ad Displayed")
    public void AdDisplayed() {
        EventDispatcher.dispatchEvent(this, "AdDisplayed", new Object[0]);
    }

    @SimpleEvent(description = "Ad Failed To Display")
    public void AdFailedToDisplay(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToDisplay", str);
    }

    @SimpleEvent(description = "Ad Opened")
    public void AdOpened() {
        EventDispatcher.dispatchEvent(this, "AdOpened", new Object[0]);
    }

    @SimpleEvent(description = "Ad Closed")
    public void AdClosed() {
        EventDispatcher.dispatchEvent(this, "AdClosed", new Object[0]);
    }

    @SimpleEvent(description = "Ad Clicked")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }
}
