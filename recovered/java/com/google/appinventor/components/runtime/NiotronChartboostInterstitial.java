package com.google.appinventor.components.runtime;

import com.chartboost.sdk.Mediation;
import com.chartboost.sdk.ads.Interstitial;
import com.chartboost.sdk.callbacks.InterstitialCallback;
import com.chartboost.sdk.events.CacheError;
import com.chartboost.sdk.events.CacheEvent;
import com.chartboost.sdk.events.ClickError;
import com.chartboost.sdk.events.ClickEvent;
import com.chartboost.sdk.events.DismissEvent;
import com.chartboost.sdk.events.ImpressionEvent;
import com.chartboost.sdk.events.ShowError;
import com.chartboost.sdk.events.ShowEvent;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Chartboost interstitial ads component. <br> SDK Version: 8.3.0", iconName = "images/niotronChartboostInterstitial.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronChartboostInterstitial extends AndroidNonvisibleComponent {
    private Interstitial interstitial;

    public NiotronChartboostInterstitial(ComponentContainer componentContainer) {
        super(componentContainer.$form());
    }

    @SimpleFunction(description = "Load interstitial")
    public void LoadInterstitial(String str) {
        Interstitial interstitial = new Interstitial(str, new InterstitialCallback() { // from class: com.google.appinventor.components.runtime.NiotronChartboostInterstitial.1
            public void onAdDismiss(@NotNull DismissEvent dismissEvent) {
                NiotronChartboostInterstitial.this.AdDismissed();
            }

            public void onAdLoaded(@NotNull CacheEvent cacheEvent, @Nullable CacheError cacheError) {
                NiotronChartboostInterstitial.this.AdLoaded();
            }

            public void onAdRequestedToShow(@NotNull ShowEvent showEvent) {
                NiotronChartboostInterstitial.this.AdRequestedToShow();
            }

            public void onAdShown(@NotNull ShowEvent showEvent, @Nullable ShowError showError) {
                NiotronChartboostInterstitial.this.AdDisplayed();
            }

            public void onAdClicked(@NotNull ClickEvent clickEvent, @Nullable ClickError clickError) {
                NiotronChartboostInterstitial.this.AdClicked();
            }

            public void onImpressionRecorded(@NotNull ImpressionEvent impressionEvent) {
                NiotronChartboostInterstitial.this.AdImpressionRecorded();
            }
        }, (Mediation) null);
        this.interstitial = interstitial;
        interstitial.cache();
    }

    @SimpleFunction(description = "Shows the loaded interstitial ad")
    public void ShowInterstitial(String str) {
        Interstitial interstitial = this.interstitial;
        if (interstitial != null && interstitial.isCached()) {
            this.interstitial.show();
        } else {
            AdFailedToShow("Interstitial not loaded");
        }
    }

    @SimpleEvent(description = "Event triggered when interstitial ad is dismissed")
    public void AdDismissed() {
        EventDispatcher.dispatchEvent(this, "AdDismissed", new Object[0]);
    }

    @SimpleEvent(description = "Event triggered when interstitial ad is loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Event triggered when interstitial ad is requested to show")
    public void AdRequestedToShow() {
        EventDispatcher.dispatchEvent(this, "AdRequestedToShow", new Object[0]);
    }

    @SimpleEvent(description = "Event triggered when interstitial ad is displayed")
    public void AdDisplayed() {
        EventDispatcher.dispatchEvent(this, "AdDisplayed", new Object[0]);
    }

    @SimpleEvent(description = "Event triggered when interstitial ad is clicked")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @SimpleEvent(description = "Event triggered when interstitial ad impression is recorded")
    public void AdImpressionRecorded() {
        EventDispatcher.dispatchEvent(this, "AdImpressionRecorded", new Object[0]);
    }

    @SimpleEvent(description = "Event triggered when interstitial ad failed to show")
    public void AdFailedToShow(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToShow", str);
    }
}
