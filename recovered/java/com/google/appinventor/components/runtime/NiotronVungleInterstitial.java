package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.vungle.ads.AdConfig;
import com.vungle.ads.BaseAd;
import com.vungle.ads.BaseAdListener;
import com.vungle.ads.InterstitialAd;
import com.vungle.ads.VungleError;
import org.jetbrains.annotations.NotNull;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Vungle interstitial ads component. <br> SDK Version: 6.12.0", iconName = "images/niotronVungleInterstitial.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronVungleInterstitial extends AndroidNonvisibleComponent {
    private Activity activity;
    private boolean backButtonImmediatelyEnabled;
    private Context context;
    private InterstitialAd interstitialAd;

    public NiotronVungleInterstitial(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.backButtonImmediatelyEnabled = false;
        Activity activity$context = componentContainer.$context();
        this.context = activity$context;
        this.activity = activity$context;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Sets whether the Android back button will be immediately enabled during the video ad, or will be inactive until the on screen close button appears")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void EnableBackButtonImmediately(boolean z) {
        this.backButtonImmediatelyEnabled = z;
    }

    @SimpleProperty(description = "Sets whether the Android back button will be immediately enabled during the video ad, or will be inactive until the on screen close button appears")
    public boolean EnableBackButtonImmediately() {
        return this.backButtonImmediatelyEnabled;
    }

    @SimpleFunction
    public void LoadAd(String str) {
        AdConfig adConfig = new AdConfig();
        adConfig.setBackButtonImmediatelyEnabled(this.backButtonImmediatelyEnabled);
        InterstitialAd interstitialAd = new InterstitialAd(this.context, str, adConfig);
        this.interstitialAd = interstitialAd;
        interstitialAd.setAdListener(new BaseAdListener() { // from class: com.google.appinventor.components.runtime.NiotronVungleInterstitial.1
            public void onAdLoaded(@NotNull BaseAd baseAd) {
                NiotronVungleInterstitial.this.AdLoaded(baseAd.getPlacementId());
            }

            public void onAdStart(@NotNull BaseAd baseAd) {
                NiotronVungleInterstitial.this.AdStarted(baseAd.getPlacementId());
            }

            public void onAdImpression(@NotNull BaseAd baseAd) {
                NiotronVungleInterstitial.this.AdViewed(baseAd.getPlacementId());
            }

            public void onAdEnd(@NotNull BaseAd baseAd) {
                NiotronVungleInterstitial.this.AdEnded(baseAd.getPlacementId());
            }

            public void onAdClicked(@NotNull BaseAd baseAd) {
                NiotronVungleInterstitial.this.AdClicked(baseAd.getPlacementId());
            }

            public void onAdLeftApplication(@NotNull BaseAd baseAd) {
                NiotronVungleInterstitial.this.AdLeftApplication(baseAd.getPlacementId());
            }

            public void onAdFailedToLoad(@NotNull BaseAd baseAd, @NotNull VungleError vungleError) {
                NiotronVungleInterstitial.this.AdFailedToLoad(baseAd.getPlacementId(), vungleError.getLocalizedMessage());
            }

            public void onAdFailedToPlay(@NotNull BaseAd baseAd, @NotNull VungleError vungleError) {
                NiotronVungleInterstitial.this.AdFailedToPlay(baseAd.getPlacementId(), vungleError.getLocalizedMessage());
            }
        });
    }

    @SimpleFunction
    public void PlayAd() {
        InterstitialAd interstitialAd = this.interstitialAd;
        if (interstitialAd == null || !interstitialAd.canPlayAd().booleanValue()) {
            return;
        }
        this.interstitialAd.play(this.context);
    }

    @SimpleEvent
    public void AdLeftApplication(String str) {
        EventDispatcher.dispatchEvent(this, "AdLeftApplication", str);
    }

    @SimpleEvent
    public void AdClicked(String str) {
        EventDispatcher.dispatchEvent(this, "AdClicked", str);
    }

    @SimpleEvent
    public void AdRewarded(String str) {
        EventDispatcher.dispatchEvent(this, "AdRewarded", str);
    }

    @SimpleEvent
    public void AdViewed(String str) {
        EventDispatcher.dispatchEvent(this, "AdViewed", str);
    }

    @SimpleEvent
    public void AdFailedToLoad(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", str, str2);
    }

    @SimpleEvent
    public void AdFailedToPlay(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "AdFailedToPlay", str, str2);
    }

    @SimpleEvent
    public void AdLoaded(String str) {
        EventDispatcher.dispatchEvent(this, "AdLoaded", str);
    }

    @SimpleEvent
    public void AdStarted(String str) {
        EventDispatcher.dispatchEvent(this, "AdStarted", str);
    }

    @SimpleEvent
    public void AdEnded(String str) {
        EventDispatcher.dispatchEvent(this, "AdEnded", str);
    }
}
