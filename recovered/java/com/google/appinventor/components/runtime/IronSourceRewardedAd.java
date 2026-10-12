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
import com.ironsource.mediationsdk.model.Placement;
import com.ironsource.mediationsdk.sdk.LevelPlayRewardedVideoListener;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, com.google.android.gms.permission.AD_ID")
@DesignerComponent(androidMinSdk = 14, category = ComponentCategory.MONETIZATION, description = "The Rewarded Video is a user-initiated video that rewards users with in-app content in exchange for ad views. ironSource provides a buffer-free, HD video experience in a skippable format. This ad unit supports ad placements as well as capping and pacing. <br> SDK Version: 7.3.0.1", iconName = "images/ironSourceRewardedAd.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "ironsource-mediationsdk.aar, ironsource-mediationsdk.jar, ironsource-adqualitysdk.aar, ironsource-adqualitysdk.jar,  play-services-appset.aar, play-services-appset.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-base.aar, play-services-base.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, annotation.jar")
/* loaded from: classes.dex */
public final class IronSourceRewardedAd extends AndroidNonvisibleComponent implements OnResumeListener, OnPauseListener {
    private Activity activity;
    private String appKey;

    public IronSourceRewardedAd(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.activity = componentContainer.$context();
        IronSource.setLevelPlayRewardedVideoListener(new LevelPlayRewardedVideoListener() { // from class: com.google.appinventor.components.runtime.IronSourceRewardedAd.1
            public void onAdAvailable(AdInfo adInfo) {
                IronSourceRewardedAd.this.AdAvailabilityChanged(true);
            }

            public void onAdUnavailable() {
                IronSourceRewardedAd.this.AdAvailabilityChanged(false);
            }

            public void onAdOpened(AdInfo adInfo) {
                IronSourceRewardedAd.this.AdOpened();
            }

            public void onAdShowFailed(IronSourceError ironSourceError, AdInfo adInfo) {
                IronSourceRewardedAd.this.AdFailedToDisplay(ironSourceError.getErrorMessage());
            }

            public void onAdClicked(Placement placement, AdInfo adInfo) {
                IronSourceRewardedAd.this.AdClicked();
            }

            public void onAdRewarded(Placement placement, AdInfo adInfo) {
                if (placement != null) {
                    IronSourceRewardedAd.this.Rewarded(placement.getRewardName(), placement.getRewardAmount());
                }
            }

            public void onAdClosed(AdInfo adInfo) {
                IronSourceRewardedAd.this.AdClosed();
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

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "IronSource RewardedAd AppKey")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void AppKey(String str) {
        this.appKey = str;
        IronSource.init(this.activity, str, new IronSource.AD_UNIT[]{IronSource.AD_UNIT.REWARDED_VIDEO});
    }

    @SimpleProperty(description = "Ironsource AppKey")
    public String AppKey() {
        return this.appKey;
    }

    @SimpleFunction(description = "Only to Validate if the Integration was Successful")
    public void ValidateIntegration() {
        IntegrationHelper.validateIntegration(this.activity);
    }

    @SimpleFunction(description = "Check if RewardedVideo Ad Is Loaded")
    public boolean IsAdLoaded() {
        return IronSource.isRewardedVideoAvailable();
    }

    @SimpleFunction(description = "Show RewardedVideo Ad")
    public void ShowAd() {
        IronSource.showRewardedVideo();
    }

    @SimpleFunction(description = "Show RewardedVideo Ad with a placement name")
    public void ShowAdWithPlacement(String str) {
        IronSource.showRewardedVideo(str);
    }

    @SimpleEvent(description = "Ad Availability Changed")
    public void AdAvailabilityChanged(boolean z) {
        EventDispatcher.dispatchEvent(this, "AdAvailabilityChanged", Boolean.valueOf(z));
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

    @SimpleEvent(description = "Ad Finished Playing")
    public void AdEnded() {
        EventDispatcher.dispatchEvent(this, "AdEnded", new Object[0]);
    }

    @SimpleEvent(description = "Ad Rewarded")
    public void Rewarded(String str, int i) {
        EventDispatcher.dispatchEvent(this, "Rewarded", str, Integer.valueOf(i));
    }
}
