package com.google.appinventor.components.runtime;

import com.chartboost.sdk.Mediation;
import com.chartboost.sdk.ads.Rewarded;
import com.chartboost.sdk.callbacks.RewardedCallback;
import com.chartboost.sdk.events.CacheError;
import com.chartboost.sdk.events.CacheEvent;
import com.chartboost.sdk.events.ClickError;
import com.chartboost.sdk.events.ClickEvent;
import com.chartboost.sdk.events.DismissEvent;
import com.chartboost.sdk.events.ImpressionEvent;
import com.chartboost.sdk.events.RewardEvent;
import com.chartboost.sdk.events.ShowError;
import com.chartboost.sdk.events.ShowEvent;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Chartboost rewarded ads component. <br> SDK Version: 8.3.0", iconName = "images/niotronChartboostRewarded.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronChartboostRewarded extends AndroidNonvisibleComponent {
    Rewarded rewarded;

    public NiotronChartboostRewarded(ComponentContainer componentContainer) {
        super(componentContainer.$form());
    }

    @SimpleFunction(description = "Load rewarded ad")
    public void LoadRewarded(String str) {
        this.rewarded = new Rewarded(str, new RewardedCallback() { // from class: com.google.appinventor.components.runtime.NiotronChartboostRewarded.1
            public void onRewardEarned(@NotNull RewardEvent rewardEvent) {
                NiotronChartboostRewarded.this.AdRewarded(rewardEvent.getReward());
            }

            public void onAdDismiss(@NotNull DismissEvent dismissEvent) {
                NiotronChartboostRewarded.this.AdDismissed();
            }

            public void onAdLoaded(@NotNull CacheEvent cacheEvent, @Nullable CacheError cacheError) {
                NiotronChartboostRewarded.this.AdLoaded();
            }

            public void onAdRequestedToShow(@NotNull ShowEvent showEvent) {
                NiotronChartboostRewarded.this.AdRequestedToShow();
            }

            public void onAdShown(@NotNull ShowEvent showEvent, @Nullable ShowError showError) {
                NiotronChartboostRewarded.this.AdDisplayed();
            }

            public void onAdClicked(@NotNull ClickEvent clickEvent, @Nullable ClickError clickError) {
                NiotronChartboostRewarded.this.AdClicked();
            }

            public void onImpressionRecorded(@NotNull ImpressionEvent impressionEvent) {
                NiotronChartboostRewarded.this.AdImpressionRecorded();
            }
        }, (Mediation) null);
    }

    @SimpleFunction(description = "Show rewarded ad")
    public void ShowRewarded(String str) {
        Rewarded rewarded = this.rewarded;
        if (rewarded != null && rewarded.isCached()) {
            this.rewarded.show();
        } else {
            AdFailedToShow("Rewarded not loaded");
        }
    }

    @SimpleEvent(description = "Event triggered when the user gets the reward from the ad")
    public void AdRewarded(int i) {
        EventDispatcher.dispatchEvent(this, "AdRewarded", Integer.valueOf(i));
    }

    @SimpleEvent(description = "Event triggered when rewarded ad is dismissed")
    public void AdDismissed() {
        EventDispatcher.dispatchEvent(this, "AdDismissed", new Object[0]);
    }

    @SimpleEvent(description = "Event triggered when rewarded ad is loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Event triggered when rewarded ad is requested to show")
    public void AdRequestedToShow() {
        EventDispatcher.dispatchEvent(this, "AdRequestedToShow", new Object[0]);
    }

    @SimpleEvent(description = "Event triggered when rewarded ad is displayed")
    public void AdDisplayed() {
        EventDispatcher.dispatchEvent(this, "AdDisplayed", new Object[0]);
    }

    @SimpleEvent(description = "Event triggered when rewarded ad is clicked")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @SimpleEvent(description = "Event triggered when rewarded ad is failed to show")
    public void AdFailedToShow(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToShow", str);
    }

    @SimpleEvent(description = "Event triggered when rewarded ad impression is recorded")
    public void AdImpressionRecorded() {
        EventDispatcher.dispatchEvent(this, "AdImpressionRecorded", new Object[0]);
    }
}
