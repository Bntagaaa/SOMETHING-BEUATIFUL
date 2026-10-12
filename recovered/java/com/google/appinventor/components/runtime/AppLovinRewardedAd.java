package com.google.appinventor.components.runtime;

import android.app.Activity;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.mediation.ads.MaxRewardedAd;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;

@UsesPermissions(permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, com.google.android.gms.permission.AD_ID, android.permission.ACCESS_WIFI_STATE, com.applovin.array.apphub.permission.BIND_APPHUB_SERVICE")
@DesignerComponent(androidMinSdk = 16, category = ComponentCategory.MONETIZATION, description = "Rewarded Ad Covers the entire Screen and makes the user watch an ad in return for a reward.User can skip out of the ad or watch it completely to earn a reward. <br> SDK Version: 11.9.0", iconName = "images/appLovinRewardedAd.png", nonVisible = true, version = 2)
@SimpleObject
/* loaded from: classes.dex */
public final class AppLovinRewardedAd extends AndroidNonvisibleComponent {
    private Activity context;
    private MaxRewardedAd maxRewardedAd;

    public AppLovinRewardedAd(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.context = componentContainer.$context();
    }

    @SimpleFunction(description = "Check if the Max Rewarded Ad Is Loaded")
    public boolean IsAdLoaded() {
        MaxRewardedAd maxRewardedAd = this.maxRewardedAd;
        if (maxRewardedAd == null) {
            return false;
        }
        return maxRewardedAd.isReady();
    }

    @SimpleFunction(description = "Load An Rewarded Ad By Max")
    public void LoadRewardedAd(String str) {
        MaxRewardedAd maxRewardedAd = MaxRewardedAd.getInstance(str, this.context);
        this.maxRewardedAd = maxRewardedAd;
        maxRewardedAd.setListener(new MaxRewardedAdListener() { // from class: com.google.appinventor.components.runtime.AppLovinRewardedAd.1
            public void onUserRewarded(MaxAd maxAd, MaxReward maxReward) {
                AppLovinRewardedAd.this.Rewarded(String.valueOf(maxReward.getAmount()));
            }

            public void onAdLoaded(MaxAd maxAd) {
                AppLovinRewardedAd.this.AdLoaded();
            }

            public void onAdDisplayed(MaxAd maxAd) {
                AppLovinRewardedAd.this.AdDisplayed();
            }

            public void onAdHidden(MaxAd maxAd) {
                AppLovinRewardedAd.this.AdHidden();
            }

            public void onAdClicked(MaxAd maxAd) {
                AppLovinRewardedAd.this.AdClicked();
            }

            public void onAdLoadFailed(String str2, MaxError maxError) {
                AppLovinRewardedAd.this.AdFailedToLoad(maxError.getCode());
            }

            public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
                AppLovinRewardedAd.this.AdFailedToDisplay(maxError.getMessage());
            }
        });
        this.maxRewardedAd.loadAd();
    }

    @SimpleFunction(description = "Show An Rewarded Ad By Max")
    public void ShowRewardedAd() {
        MaxRewardedAd maxRewardedAd = this.maxRewardedAd;
        if (maxRewardedAd != null) {
            if (maxRewardedAd.isReady()) {
                this.maxRewardedAd.showAd();
            } else {
                AdFailedToDisplay("Max Ad Not Loaded");
            }
        }
    }

    @SimpleEvent(description = "Sdk Initialized")
    public void SdkInitialized() {
        EventDispatcher.dispatchEvent(this, "SdkInitialized", new Object[0]);
    }

    @SimpleEvent
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @SimpleEvent(description = "Ad Loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad Failed To Load")
    public void AdFailedToLoad(int i) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", Integer.valueOf(i));
    }

    @SimpleEvent(description = "Ad Dislayed")
    public void AdDisplayed() {
        EventDispatcher.dispatchEvent(this, "AdDisplayed", new Object[0]);
    }

    @SimpleEvent(description = "Ad Failed To Display")
    public void AdFailedToDisplay(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToDisplay", str);
    }

    @SimpleEvent(description = "Ad Hidden")
    public void AdHidden() {
        EventDispatcher.dispatchEvent(this, "AdHidden", new Object[0]);
    }

    @SimpleEvent(description = "Ad Rewarded")
    public void Rewarded(String str) {
        EventDispatcher.dispatchEvent(this, "Rewarded", str);
    }
}
