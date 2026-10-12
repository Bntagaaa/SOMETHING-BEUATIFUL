package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesAssets;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;

@UsesAssets(fileNames = "audience_network.dex")
@UsesPermissions(permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, com.google.android.gms.permission.AD_ID")
@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "An interstitial is a full screen ad that appears at a natural transition point in your app. <br> SDK Version: 6.15.0", iconName = "images/facebookInterstitialAd.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "audience-network-sdk.aar, audience-network-sdk.jar, play-services-basement.aar, play-services-basement.jar, legacy-support-v4.aar, legacy-support-v4.jar, media.aar, media.jar, annotation.jar")
/* loaded from: classes.dex */
public final class FacebookInterstitialAd extends AndroidNonvisibleComponent implements OnDestroyListener {
    private Context context;
    private InterstitialAd interstitialAd;
    private boolean testMode;

    public FacebookInterstitialAd(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.testMode = false;
        Activity activity$context = componentContainer.$context();
        this.context = activity$context;
        AudienceNetworkAds.initialize(activity$context);
    }

    @Override // com.google.appinventor.components.runtime.OnDestroyListener
    public void onDestroy() {
        InterstitialAd interstitialAd = this.interstitialAd;
        if (interstitialAd != null) {
            interstitialAd.destroy();
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

    @SimpleFunction
    public void LoadAd(String str) {
        Context context = this.context;
        if (this.testMode) {
            str = _COROUTINE.a.i("PLAYABLE#", str);
        }
        this.interstitialAd = new InterstitialAd(context, str);
        InterstitialAdListener interstitialAdListener = new InterstitialAdListener() { // from class: com.google.appinventor.components.runtime.FacebookInterstitialAd.1
            public void onInterstitialDisplayed(Ad ad) {
                FacebookInterstitialAd.this.AdDisplayed();
            }

            public void onInterstitialDismissed(Ad ad) {
                FacebookInterstitialAd.this.AdDismissed();
            }

            public void onError(Ad ad, AdError adError) {
                FacebookInterstitialAd.this.AdFailedToLoad(adError.getErrorMessage());
            }

            public void onAdLoaded(Ad ad) {
                FacebookInterstitialAd.this.AdLoaded();
            }

            public void onAdClicked(Ad ad) {
                FacebookInterstitialAd.this.AdClicked();
            }

            public void onLoggingImpression(Ad ad) {
                FacebookInterstitialAd.this.AdImpression();
            }
        };
        InterstitialAd interstitialAd = this.interstitialAd;
        interstitialAd.loadAd(interstitialAd.buildLoadAdConfig().withAdListener(interstitialAdListener).build());
    }

    @SimpleFunction
    public void ShowAd() {
        InterstitialAd interstitialAd = this.interstitialAd;
        if (interstitialAd != null && interstitialAd.isAdLoaded()) {
            this.interstitialAd.show();
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

    @SimpleEvent(description = "Ad Displayed")
    public void AdDisplayed() {
        EventDispatcher.dispatchEvent(this, "AdDisplayed", new Object[0]);
    }

    @SimpleEvent(description = "Ad Failed to Display")
    public void FailedToDisplayAd(String str) {
        EventDispatcher.dispatchEvent(this, "FailedToDisplayAd", str);
    }

    @SimpleEvent(description = "Ad Clicked")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @SimpleEvent(description = "Ad Dismissed")
    public void AdDismissed() {
        EventDispatcher.dispatchEvent(this, "AdDismissed", new Object[0]);
    }

    @SimpleEvent(description = "Ad Impression Logged")
    public void AdImpression() {
        EventDispatcher.dispatchEvent(this, "AdImpression", new Object[0]);
    }
}
