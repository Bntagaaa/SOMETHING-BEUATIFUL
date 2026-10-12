package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import java.util.Date;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "App open ad view provided by Ad Manager", iconName = "images/niotronAdManagerAppOpen.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronAdManagerAppOpen extends AndroidNonvisibleComponent {
    private static final String LOG_TAG = "AppOpenAdManager";
    private static final String TEST_AD_UNIT_ID = "/6499/example/app-open";
    private AppOpenAd appOpenAd;
    private Context context;
    private boolean isLoadingAd;
    private boolean isShowingAd;
    private long loadTime;
    private boolean testMode;

    public NiotronAdManagerAppOpen(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.appOpenAd = null;
        this.isLoadingAd = false;
        this.isShowingAd = false;
        this.loadTime = 0L;
        this.context = componentContainer.$context();
    }

    @SimpleFunction(description = "Load ad")
    public void LoadAd(String str) {
        if (this.isLoadingAd || isAdAvailable()) {
            return;
        }
        this.isLoadingAd = true;
        AdRequest adRequestBuild = new AdRequest.Builder().build();
        Context context = this.context;
        if (this.testMode) {
            str = TEST_AD_UNIT_ID;
        }
        AppOpenAd.load(context, str, adRequestBuild, 1, new AppOpenAd.AppOpenAdLoadCallback() { // from class: com.google.appinventor.components.runtime.NiotronAdManagerAppOpen.1
            public void onAdLoaded(AppOpenAd appOpenAd) {
                Log.d(NiotronAdManagerAppOpen.LOG_TAG, "Ad was loaded.");
                NiotronAdManagerAppOpen.this.appOpenAd = appOpenAd;
                NiotronAdManagerAppOpen.this.isLoadingAd = false;
            }

            public void onAdFailedToLoad(LoadAdError loadAdError) {
                Log.d(NiotronAdManagerAppOpen.LOG_TAG, loadAdError.getMessage());
                NiotronAdManagerAppOpen.this.isLoadingAd = false;
            }
        });
    }

    @SimpleFunction(description = "Show the ad")
    public void ShowAd() {
        this.appOpenAd.setFullScreenContentCallback(new FullScreenContentCallback() { // from class: com.google.appinventor.components.runtime.NiotronAdManagerAppOpen.2
            public void onAdClicked() {
                super.onAdClicked();
                NiotronAdManagerAppOpen.this.AdClicked();
            }

            public void onAdDismissedFullScreenContent() {
                super.onAdDismissedFullScreenContent();
                NiotronAdManagerAppOpen.this.isShowingAd = false;
                NiotronAdManagerAppOpen.this.AdDismissedFullScreenContent();
            }

            public void onAdFailedToShowFullScreenContent(@NonNull AdError adError) {
                super.onAdFailedToShowFullScreenContent(adError);
                NiotronAdManagerAppOpen.this.isLoadingAd = false;
                NiotronAdManagerAppOpen.this.AdFailedToShowFullScreenContent(adError.getMessage());
            }

            public void onAdImpression() {
                super.onAdImpression();
                NiotronAdManagerAppOpen.this.AdImpression();
            }

            public void onAdShowedFullScreenContent() {
                super.onAdShowedFullScreenContent();
                NiotronAdManagerAppOpen.this.AdShowedFullScreenContent();
            }
        });
        this.isShowingAd = true;
        this.appOpenAd.show((Activity) this.context);
    }

    @SimpleProperty
    public void TestMode(boolean z) {
        this.testMode = z;
    }

    @SimpleFunction(description = "Returns if Ad is available")
    public boolean isAdAvailable() {
        return this.appOpenAd != null && wasLoadTimeLessThanNHoursAgo(4L);
    }

    @SimpleEvent(description = "Ad clicked triggers this event")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @SimpleEvent(description = "Dismissal of ad triggers this event")
    public void AdDismissedFullScreenContent() {
        EventDispatcher.dispatchEvent(this, "AdDismissedFullScreenContent", new Object[0]);
    }

    @SimpleEvent(description = "Failure of showing full screen content triggers this event")
    public void AdFailedToShowFullScreenContent(String str) {
        EventDispatcher.dispatchEvent(this, "FailedToShowFullScreenContent", str);
    }

    @SimpleEvent(description = "Ad impression triggers this event")
    public void AdImpression() {
        EventDispatcher.dispatchEvent(this, "AdImpression", new Object[0]);
    }

    @SimpleEvent(description = "Ad showed full screen content triggers this event")
    public void AdShowedFullScreenContent() {
        EventDispatcher.dispatchEvent(this, "AdShowedFullScreenContent", new Object[0]);
    }

    private boolean wasLoadTimeLessThanNHoursAgo(long j) {
        return new Date().getTime() - this.loadTime < j * 3600000;
    }
}
