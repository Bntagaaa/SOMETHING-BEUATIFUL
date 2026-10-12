package com.google.appinventor.components.runtime;

import android.app.Activity;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.ads.MaxInterstitialAd;
import com.applovin.sdk.AppLovinAd;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;

@UsesPermissions(permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, com.google.android.gms.permission.AD_ID, android.permission.ACCESS_WIFI_STATE, com.applovin.array.apphub.permission.BIND_APPHUB_SERVICE")
@DesignerComponent(androidMinSdk = 16, category = ComponentCategory.MONETIZATION, description = "Interstitial Ad is a Full Screen Ad That Covers the App's UI. It may be a static image or a video <br> SDK Version: 11.9.0", iconName = "images/appLovinInterstitialAd.png", nonVisible = true, version = 2)
@SimpleObject
/* loaded from: classes.dex */
public final class AppLovinInterstitialAd extends AndroidNonvisibleComponent {
    private Activity context;
    private MaxInterstitialAd interstitialAd;
    private AppLovinAd loadedAd;

    public AppLovinInterstitialAd(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.context = componentContainer.$context();
    }

    @SimpleFunction(description = "Load An Interstitial Ad By Max")
    public void LoadInterstitialAd(String str) {
        MaxInterstitialAd maxInterstitialAd = new MaxInterstitialAd(str, this.context);
        this.interstitialAd = maxInterstitialAd;
        maxInterstitialAd.setListener(new MaxAdListener() { // from class: com.google.appinventor.components.runtime.AppLovinInterstitialAd.1
            public void onAdLoaded(MaxAd maxAd) {
                AppLovinInterstitialAd.this.AdLoaded();
            }

            public void onAdDisplayed(MaxAd maxAd) {
                AppLovinInterstitialAd.this.AdDisplayed();
            }

            public void onAdHidden(MaxAd maxAd) {
                AppLovinInterstitialAd.this.AdHidden();
            }

            public void onAdClicked(MaxAd maxAd) {
                AppLovinInterstitialAd.this.AdClicked();
            }

            public void onAdLoadFailed(String str2, MaxError maxError) {
                AppLovinInterstitialAd.this.AdFailedToLoad(maxError.getCode());
            }

            public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
                AppLovinInterstitialAd.this.AdFailedToDisplay(maxError.getMessage());
            }
        });
        this.interstitialAd.loadAd();
    }

    @SimpleFunction(description = "Show An Interstitial Ad By Max")
    public void ShowInterstitialAd() {
        MaxInterstitialAd maxInterstitialAd = this.interstitialAd;
        if (maxInterstitialAd != null) {
            if (maxInterstitialAd.isReady()) {
                this.interstitialAd.showAd();
            } else {
                AdFailedToDisplay("Max Ad Not Loaded");
            }
        }
    }

    @SimpleEvent(description = "Sdk Initialized")
    public void SdkInitialized() {
        EventDispatcher.dispatchEvent(this, "SdkInitialized", new Object[0]);
    }

    @SimpleEvent(description = "Ad Loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad Failed to Load")
    public void AdFailedToLoad(int i) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", Integer.valueOf(i));
    }

    @SimpleEvent(description = "Ad Displayed")
    public void AdDisplayed() {
        EventDispatcher.dispatchEvent(this, "AdDisplayed", new Object[0]);
    }

    @SimpleEvent(description = "Ad Hidden")
    public void AdHidden() {
        EventDispatcher.dispatchEvent(this, "AdHidden", new Object[0]);
    }

    @SimpleEvent(description = "Ad Clicked")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @SimpleEvent(description = "Ad Failed To Display")
    public void AdFailedToDisplay(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToDisplay", str);
    }
}
