package com.google.appinventor.components.runtime;

import android.app.Activity;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAd;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAdLoadCallback;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Interstitial Ad Provided By Google Ad Manager", iconName = "images/niotronAdManagerInterstitial.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronAdManagerInterstitial extends AndroidNonvisibleComponent {
    private Activity activity;
    private AdManagerInterstitialAd mInterstitialAd;
    private boolean testMode;

    public NiotronAdManagerInterstitial(ComponentContainer componentContainer) {
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

    @SimpleFunction(description = "Check if Interstitial Ad is loaded")
    public boolean IsAdLoaded() {
        return this.mInterstitialAd != null;
    }

    @SimpleFunction(description = "Load an Interstitial Ad")
    public void LoadAd(String str) {
        AdManagerAdRequest adManagerAdRequestBuild = new AdManagerAdRequest.Builder().build();
        Activity activity = this.activity;
        if (this.testMode) {
            str = "/6499/example/interstitial";
        }
        AdManagerInterstitialAd.load(activity, str, adManagerAdRequestBuild, new AdManagerInterstitialAdLoadCallback() { // from class: com.google.appinventor.components.runtime.NiotronAdManagerInterstitial.1
            public void onAdLoaded(@NonNull AdManagerInterstitialAd adManagerInterstitialAd) {
                NiotronAdManagerInterstitial.this.mInterstitialAd = adManagerInterstitialAd;
                NiotronAdManagerInterstitial.this.mInterstitialAd.setFullScreenContentCallback(new FullScreenContentCallback() { // from class: com.google.appinventor.components.runtime.NiotronAdManagerInterstitial.1.1
                    public void onAdFailedToShowFullScreenContent(@NonNull AdError adError) {
                        NiotronAdManagerInterstitial.this.AdFailedToDisplay(adError.getMessage());
                    }

                    public void onAdShowedFullScreenContent() {
                        NiotronAdManagerInterstitial.this.AdDisplayed();
                    }

                    public void onAdDismissedFullScreenContent() {
                        super.onAdDismissedFullScreenContent();
                    }

                    public void onAdImpression() {
                        NiotronAdManagerInterstitial.this.AdImpression();
                    }
                });
                NiotronAdManagerInterstitial.this.AdLoaded();
            }

            public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
                NiotronAdManagerInterstitial.this.AdFailedToLoad(loadAdError.getMessage());
            }
        });
    }

    @SimpleFunction(description = "Show Interstitial Ad. Call Only After Loading, TIP: Place the Block Inside AdLoaded Event.")
    public void ShowAd() {
        AdManagerInterstitialAd adManagerInterstitialAd = this.mInterstitialAd;
        if (adManagerInterstitialAd != null) {
            adManagerInterstitialAd.show(this.activity);
        } else {
            AdFailedToDisplay("Ad Not Loaded");
        }
    }

    @SimpleEvent(description = "Ad Loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad Failed to Load")
    public void AdFailedToLoad(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", str);
    }

    @SimpleEvent(description = "Ad Displayed")
    public void AdDisplayed() {
        EventDispatcher.dispatchEvent(this, "AdDisplayed", new Object[0]);
    }

    @SimpleEvent(description = "Ad Failed to Display")
    public void AdFailedToDisplay(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToDisplay", str);
    }

    @SimpleEvent(description = "Ad Impression. Called when an Impression is counted.")
    public void AdImpression() {
        EventDispatcher.dispatchEvent(this, "AdImpression", new Object[0]);
    }
}
