package com.google.appinventor.components.runtime;

import android.content.Context;
import android.view.View;
import com.chartboost.sdk.Mediation;
import com.chartboost.sdk.ads.Banner;
import com.chartboost.sdk.callbacks.BannerCallback;
import com.chartboost.sdk.events.CacheError;
import com.chartboost.sdk.events.CacheEvent;
import com.chartboost.sdk.events.ClickError;
import com.chartboost.sdk.events.ClickEvent;
import com.chartboost.sdk.events.ImpressionEvent;
import com.chartboost.sdk.events.ShowError;
import com.chartboost.sdk.events.ShowEvent;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ChartboostBannerSize;
import com.google.appinventor.components.common.ComponentCategory;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Chartboost ads banner component. <br> SDK Version: 8.3.0", iconName = "images/niotronChartboostBanner.png", nonVisible = false, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronChartboostBanner extends AndroidViewComponent {
    private Banner banner;
    private Context context;
    private android.widget.LinearLayout viewGroup;

    public NiotronChartboostBanner(ComponentContainer componentContainer) {
        super(componentContainer);
        this.context = componentContainer.$context();
        this.viewGroup = new android.widget.LinearLayout(this.context);
        componentContainer.$add(this);
    }

    @SimpleFunction(description = "Load ad")
    public void LoadBanner(String str, @Options(ChartboostBannerSize.class) int i) {
        Banner.BannerSize bannerSize;
        if (i == 1) {
            bannerSize = Banner.BannerSize.STANDARD;
        } else if (i == 2) {
            bannerSize = Banner.BannerSize.MEDIUM;
        } else {
            bannerSize = Banner.BannerSize.LEADERBOARD;
        }
        this.banner = new Banner(this.context, str, bannerSize, new BannerCallback() { // from class: com.google.appinventor.components.runtime.NiotronChartboostBanner.1
            public void onAdLoaded(@NotNull CacheEvent cacheEvent, @Nullable CacheError cacheError) {
                if (cacheError != null) {
                    NiotronChartboostBanner.this.AdFailedToLoad(cacheError.toString());
                } else {
                    NiotronChartboostBanner.this.AdLoaded();
                }
            }

            public void onAdRequestedToShow(@NotNull ShowEvent showEvent) {
                NiotronChartboostBanner.this.AdRequestedToShow();
            }

            public void onAdShown(@NotNull ShowEvent showEvent, @Nullable ShowError showError) {
                NiotronChartboostBanner.this.AdShown();
            }

            public void onAdClicked(@NotNull ClickEvent clickEvent, @Nullable ClickError clickError) {
                NiotronChartboostBanner.this.AdClicked();
            }

            public void onImpressionRecorded(@NotNull ImpressionEvent impressionEvent) {
                NiotronChartboostBanner.this.AdImpressionRecorded();
            }
        }, (Mediation) null);
        this.viewGroup.removeAllViews();
        this.viewGroup.addView(this.banner);
        this.banner.cache();
    }

    @SimpleFunction(description = "Show ad after it is loaded, make sure to load ad first")
    public void ShowBanner() {
        Banner banner = this.banner;
        if (banner != null) {
            banner.show();
        } else {
            AdFailedToDisplay("Ad not loaded");
        }
    }

    @SimpleEvent
    public void AdFailedToLoad(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", str);
    }

    @SimpleEvent
    public void AdFailedToDisplay(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToDisplay", str);
    }

    @SimpleEvent
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent
    public void AdRequestedToShow() {
        EventDispatcher.dispatchEvent(this, "AdRequestedToShow", new Object[0]);
    }

    @SimpleEvent
    public void AdImpressionRecorded() {
        EventDispatcher.dispatchEvent(this, "AdImpressionRecorded", new Object[0]);
    }

    @SimpleEvent(description = "Ad shown")
    public void AdShown() {
        EventDispatcher.dispatchEvent(this, "AdShown", new Object[0]);
    }

    @SimpleEvent(description = "Ad clicked")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.viewGroup;
    }
}
