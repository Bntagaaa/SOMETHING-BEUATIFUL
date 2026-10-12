package com.google.appinventor.components.runtime;

import android.app.Activity;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
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

@DesignerComponent(androidMinSdk = 16, category = ComponentCategory.MONETIZATION, description = "Admob Interstital Ads are full-screen ads that cover the interface of their host app. When an app shows an interstitial ad, the user has the choice to either tap on the ad and continue to its destination or close it and return to the app.", iconName = "images/admob.png", nonVisible = true, version = 2)
@SimpleObject
/* loaded from: classes.dex */
public final class AdmobInterstitial extends AndroidNonvisibleComponent {
    private Activity activity;
    private InterstitialAd mInterstitialAd;
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

    public AdmobInterstitial(ComponentContainer componentContainer) {
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

    @SimpleFunction(description = "Displays the ad instantly after loading")
    public void LoadAndShowAd(String str) {
        AdRequest adRequestBuild = new AdRequest.Builder().build();
        Activity activity = this.activity;
        if (this.testMode) {
            str = "ca-app-pub-3940256099942544/1033173712";
        }
        InterstitialAd.load(activity, str, adRequestBuild, new InterstitialAdLoadCallback() { // from class: com.google.appinventor.components.runtime.AdmobInterstitial.1
            public void onAdLoaded(@NonNull InterstitialAd interstitialAd) {
                AdmobInterstitial.this.mInterstitialAd = interstitialAd;
                AdmobInterstitial.this.mInterstitialAd.setFullScreenContentCallback(new FullScreenContentCallback() { // from class: com.google.appinventor.components.runtime.AdmobInterstitial.1.1
                    public void onAdFailedToShowFullScreenContent(@NonNull @NotNull AdError adError) {
                        AdmobInterstitial.this.AdFailedToDisplay(adError.getMessage());
                    }

                    public void onAdShowedFullScreenContent() {
                        AdmobInterstitial.this.AdDisplayed();
                    }

                    public void onAdDismissedFullScreenContent() {
                        super.onAdDismissedFullScreenContent();
                    }

                    public void onAdImpression() {
                        AdmobInterstitial.this.AdImpression();
                    }
                });
                AdmobInterstitial.this.AdLoaded();
                AdmobInterstitial.this.ShowAd();
            }

            public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
                AdmobInterstitial.this.AdFailedToLoad(loadAdError.getMessage());
            }
        });
    }

    @SimpleFunction(description = "Load an Interstitial Ad")
    public void LoadAd(String str) {
        AdRequest adRequestBuild = new AdRequest.Builder().build();
        Activity activity = this.activity;
        if (this.testMode) {
            str = "ca-app-pub-3940256099942544/1033173712";
        }
        InterstitialAd.load(activity, str, adRequestBuild, new InterstitialAdLoadCallback() { // from class: com.google.appinventor.components.runtime.AdmobInterstitial.2
            public void onAdLoaded(@NonNull InterstitialAd interstitialAd) {
                AdmobInterstitial.this.mInterstitialAd = interstitialAd;
                AdmobInterstitial.this.mInterstitialAd.setFullScreenContentCallback(new FullScreenContentCallback() { // from class: com.google.appinventor.components.runtime.AdmobInterstitial.2.1
                    public void onAdFailedToShowFullScreenContent(@NonNull @NotNull AdError adError) {
                        AdmobInterstitial.this.AdFailedToDisplay(adError.getMessage());
                    }

                    public void onAdShowedFullScreenContent() {
                        AdmobInterstitial.this.AdDisplayed();
                    }

                    public void onAdDismissedFullScreenContent() {
                        super.onAdDismissedFullScreenContent();
                    }

                    public void onAdImpression() {
                        AdmobInterstitial.this.AdImpression();
                    }
                });
                AdmobInterstitial.this.AdLoaded();
            }

            public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
                AdmobInterstitial.this.AdFailedToLoad(loadAdError.getMessage());
            }
        });
    }

    @SimpleFunction(description = "Show Interstial Ad. Call Only After Loading, TIP: Place the Block Inside AdLoaded Event.")
    public void ShowAd() {
        InterstitialAd interstitialAd = this.mInterstitialAd;
        if (interstitialAd != null) {
            interstitialAd.show(this.activity);
        } else {
            AdFailedToDisplay("Ad Not Loaded");
        }
    }

    @SimpleEvent(description = "Ad Closed")
    @Deprecated
    public void AdClosed() {
        EventDispatcher.dispatchEvent(this, "AdClosed", new Object[0]);
    }

    @SimpleEvent(description = "Ad Left Application")
    @Deprecated
    public void AdLeftApplication() {
        EventDispatcher.dispatchEvent(this, "AdLeftApplication", new Object[0]);
    }

    @SimpleEvent(description = "Ad Opened")
    @Deprecated
    public void AdOpened() {
        EventDispatcher.dispatchEvent(this, "AdOpened", new Object[0]);
    }

    @SimpleEvent(description = "Ad Clicked")
    @Deprecated
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
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
