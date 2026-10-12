package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.RewardedVideoAdListener;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesAssets;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;

@SimpleObject
@UsesAssets(fileNames = "audience_network.dex")
@UsesPermissions(permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, com.google.android.gms.permission.AD_ID")
@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Rewarded video ads are a full screen experience where users opt-in to view a video ad in exchange for something of value, such as virtual currency, in-app items, exclusive content, and more. The ad experience is 15-30 second non-skippable and contains an end card with a call to action. Upon completion of the full video, you will receive a callback to grant the suggested reward to the user. <br> SDK Version: 6.15.0", iconName = "images/facebookRewardedAds.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "audience-network-sdk.aar, audience-network-sdk.jar, play-services-basement.aar, play-services-basement.jar, legacy-support-v4.aar, legacy-support-v4.jar, media.aar, media.jar, annotation.jar")
/* loaded from: classes.dex */
public final class FacebookRewardedAds extends AndroidNonvisibleComponent implements OnDestroyListener {
    private Context context;
    private RewardedVideoAd rewardedVideoAd;
    private boolean testMode;

    public FacebookRewardedAds(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.testMode = false;
        Activity activity$context = componentContainer.$context();
        this.context = activity$context;
        AudienceNetworkAds.initialize(activity$context);
    }

    @Override // com.google.appinventor.components.runtime.OnDestroyListener
    public void onDestroy() {
        RewardedVideoAd rewardedVideoAd = this.rewardedVideoAd;
        if (rewardedVideoAd != null) {
            rewardedVideoAd.destroy();
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Test Mode")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void TestMode(boolean z) {
        this.testMode = z;
    }

    @SimpleProperty(description = "Test Mode")
    public boolean TestMode() {
        return this.testMode;
    }

    @SimpleFunction(description = "Loads ad with given placement id")
    public void LoadAd(String str) {
        Context context = this.context;
        if (this.testMode) {
            str = _COROUTINE.a.i("PLAYABLE#", str);
        }
        this.rewardedVideoAd = new RewardedVideoAd(context, str);
        RewardedVideoAdListener rewardedVideoAdListener = new RewardedVideoAdListener() { // from class: com.google.appinventor.components.runtime.FacebookRewardedAds.1
            public void onRewardedVideoCompleted() {
                FacebookRewardedAds.this.AdCompleted();
            }

            public void onLoggingImpression(Ad ad) {
                FacebookRewardedAds.this.AdImpression();
            }

            public void onRewardedVideoClosed() {
                FacebookRewardedAds.this.AdClosed();
            }

            public void onError(Ad ad, AdError adError) {
                FacebookRewardedAds.this.AdFailedToLoad(adError.getErrorMessage());
            }

            public void onAdLoaded(Ad ad) {
                FacebookRewardedAds.this.AdLoaded();
            }

            public void onAdClicked(Ad ad) {
                FacebookRewardedAds.this.AdClicked();
            }
        };
        RewardedVideoAd rewardedVideoAd = this.rewardedVideoAd;
        rewardedVideoAd.loadAd(rewardedVideoAd.buildLoadAdConfig().withAdListener(rewardedVideoAdListener).build());
    }

    @SimpleFunction(description = "Shows the loaded ad")
    public void ShowAd() {
        RewardedVideoAd rewardedVideoAd = this.rewardedVideoAd;
        if (rewardedVideoAd != null && rewardedVideoAd.isAdLoaded()) {
            this.rewardedVideoAd.show();
        } else {
            FailedToDisplayAd("Ad Not Loaded");
        }
    }

    @SimpleEvent(description = "Ad Loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad Failed To Load")
    public void AdFailedToLoad(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", str);
    }

    @SimpleEvent(description = "Ad Completed")
    public void AdCompleted() {
        EventDispatcher.dispatchEvent(this, "AdCompleted", new Object[0]);
    }

    @SimpleEvent(description = "Ad Failed to Display")
    public void FailedToDisplayAd(String str) {
        EventDispatcher.dispatchEvent(this, "FailedToDisplayAd", str);
    }

    @SimpleEvent(description = "Ad Clicked")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @SimpleEvent(description = "Ad Closed")
    public void AdClosed() {
        EventDispatcher.dispatchEvent(this, "AdClosed", new Object[0]);
    }

    @SimpleEvent(description = "Ad Impression Logged")
    public void AdImpression() {
        EventDispatcher.dispatchEvent(this, "AdImpression", new Object[0]);
    }
}
