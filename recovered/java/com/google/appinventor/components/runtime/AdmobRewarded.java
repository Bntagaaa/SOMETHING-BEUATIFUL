package com.google.appinventor.components.runtime;

import android.app.Activity;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import org.jetbrains.annotations.NotNull;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Rewarded ads are ads that users have the option of interacting with in exchange for in-app rewards.", iconName = "images/admob.png", nonVisible = true, version = 2)
@SimpleObject
/* loaded from: classes.dex */
public final class AdmobRewarded extends AndroidNonvisibleComponent {
    private Activity activity;
    private RewardedAd mRewardedAd;
    private boolean testMode;

    @SimpleProperty(category = PropertyCategory.PRIVACY, description = "User Consent for GDPR")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    @Deprecated
    public void Consent(boolean z) {
    }

    @SimpleProperty(description = "User Consent for GDPR")
    @Deprecated
    public boolean Consent() {
        return false;
    }

    public AdmobRewarded(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.activity = componentContainer.$context();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Test Ads")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void TestMode(boolean z) {
        this.testMode = z;
    }

    @SimpleProperty(description = "Test Ads")
    public boolean TestMode() {
        return this.testMode;
    }

    @SimpleFunction(description = "Check if Rewarded Ad is Loaded")
    public boolean IsAdLoaded() {
        return this.mRewardedAd != null;
    }

    @SimpleFunction(description = "Load a Rewarded Ad")
    public void LoadAd(String str) {
        AdRequest adRequestBuild = new AdRequest.Builder().build();
        Activity activity = this.activity;
        if (this.testMode) {
            str = "ca-app-pub-3940256099942544/5224354917";
        }
        RewardedAd.load(activity, str, adRequestBuild, new RewardedAdLoadCallback() { // from class: com.google.appinventor.components.runtime.AdmobRewarded.1
            public void onAdLoaded(@NonNull @NotNull RewardedAd rewardedAd) {
                AdmobRewarded.this.mRewardedAd = rewardedAd;
                AdmobRewarded.this.mRewardedAd.setFullScreenContentCallback(new FullScreenContentCallback() { // from class: com.google.appinventor.components.runtime.AdmobRewarded.1.1
                    public void onAdFailedToShowFullScreenContent(@NonNull @NotNull AdError adError) {
                        AdmobRewarded.this.AdFailedToDisplay(adError.getMessage());
                    }

                    public void onAdShowedFullScreenContent() {
                        AdmobRewarded.this.AdDisplayed();
                    }

                    public void onAdDismissedFullScreenContent() {
                        AdmobRewarded.this.AdDismissed();
                    }

                    public void onAdImpression() {
                        AdmobRewarded.this.AdImpression();
                    }
                });
                AdmobRewarded.this.AdLoaded();
            }

            public void onAdFailedToLoad(@NonNull @NotNull LoadAdError loadAdError) {
                AdmobRewarded.this.AdFailedToLoad(loadAdError.getMessage());
            }
        });
    }

    @SimpleFunction(description = "Show a Rewarded Ad After Loading")
    public void ShowAd() {
        RewardedAd rewardedAd = this.mRewardedAd;
        if (rewardedAd != null) {
            rewardedAd.show(this.activity, new OnUserEarnedRewardListener() { // from class: com.google.appinventor.components.runtime.AdmobRewarded.2
                public void onUserEarnedReward(@NonNull @NotNull RewardItem rewardItem) {
                    AdmobRewarded.this.AdOnReward(rewardItem.getType(), rewardItem.getAmount());
                }
            });
        } else {
            AdFailedToDisplay("Ad Not Loaded");
        }
    }

    @SimpleFunction(description = "Load and Show Rewarded Ad automatically without using the ShowAd Block")
    public void LoadAndShowAd(String str) {
        AdRequest adRequestBuild = new AdRequest.Builder().build();
        Activity activity = this.activity;
        if (this.testMode) {
            str = "ca-app-pub-3940256099942544/5224354917";
        }
        RewardedAd.load(activity, str, adRequestBuild, new RewardedAdLoadCallback() { // from class: com.google.appinventor.components.runtime.AdmobRewarded.3
            public void onAdLoaded(@NonNull @NotNull RewardedAd rewardedAd) {
                AdmobRewarded.this.mRewardedAd = rewardedAd;
                AdmobRewarded.this.mRewardedAd.setFullScreenContentCallback(new FullScreenContentCallback() { // from class: com.google.appinventor.components.runtime.AdmobRewarded.3.1
                    public void onAdFailedToShowFullScreenContent(@NonNull @NotNull AdError adError) {
                        AdmobRewarded.this.AdFailedToDisplay(adError.getMessage());
                    }

                    public void onAdShowedFullScreenContent() {
                        AdmobRewarded.this.AdDisplayed();
                    }

                    public void onAdDismissedFullScreenContent() {
                        AdmobRewarded.this.AdDismissed();
                    }

                    public void onAdImpression() {
                        AdmobRewarded.this.AdImpression();
                    }
                });
                AdmobRewarded.this.AdLoaded();
                AdmobRewarded.this.ShowAd();
            }

            public void onAdFailedToLoad(@NonNull @NotNull LoadAdError loadAdError) {
                AdmobRewarded.this.AdFailedToLoad(loadAdError.getMessage());
            }
        });
    }

    @SimpleEvent(description = "Rewarded Ad was closed by the User")
    @Deprecated
    public void AdClosed() {
        EventDispatcher.dispatchEvent(this, "AdClosed", new Object[0]);
    }

    @SimpleEvent(description = "Ad Loaded. Use Show Ad Block Inside this Event")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Failed to Load Ad. Check Error Message for info")
    public void AdFailedToLoad(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", str);
    }

    @SimpleEvent(description = "Rewarded Ad Rewarded Some Item for the user")
    public void AdOnReward(String str, int i) {
        EventDispatcher.dispatchEvent(this, "AdOnReward", str, Integer.valueOf(i));
    }

    @SimpleEvent(description = "Rewarded AD Was Opened")
    public void AdOpened() {
        EventDispatcher.dispatchEvent(this, "AdOpened", new Object[0]);
    }

    @SimpleEvent(description = "Rewarded Ad was Dismissed")
    public void AdDismissed() {
        EventDispatcher.dispatchEvent(this, "AdDismissed", new Object[0]);
    }

    @SimpleEvent(description = "Rewarded Ad Impression")
    public void AdImpression() {
        EventDispatcher.dispatchEvent(this, "AdImpression", new Object[0]);
    }

    @SimpleEvent(description = "Rewarded Ad was Displayed")
    public void AdDisplayed() {
        EventDispatcher.dispatchEvent(this, "AdDisplayed", new Object[0]);
    }

    @SimpleEvent(description = "Rewarded Ad Failed to display. Check Error Message for info")
    public void AdFailedToDisplay(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToDisplay", str);
    }
}
