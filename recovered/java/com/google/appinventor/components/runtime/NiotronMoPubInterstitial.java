package com.google.appinventor.components.runtime;

import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Component for MoPub Interstitial Video Ads", iconName = "images/niotronMobPubInterstitial.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "media.jar, media.aar, media2-common.jar, media2-common.aar, media2-player.aar, media2-player.jar, media2-session.jar, media2-session.aar, media2-widget.jar, media2-widget.aar, palette.jar, media2-exoplayer.jar, concurrent-futures.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronMoPubInterstitial extends AndroidNonvisibleComponent implements MoPubInterstitial.InterstitialAdListener {
    private ComponentContainer componentContainer;
    private MoPubInterstitial mInterstitial;

    public NiotronMoPubInterstitial(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.componentContainer = componentContainer;
    }

    @SimpleFunction(description = "Load ad")
    public void LoadAd(String str) {
        MoPubInterstitial moPubInterstitial = new MoPubInterstitial(this.componentContainer.$context(), str);
        this.mInterstitial = moPubInterstitial;
        moPubInterstitial.setInterstitialAdListener(this);
        this.mInterstitial.load();
    }

    @SimpleFunction(description = "Show ad")
    public void ShowAd() {
        this.mInterstitial.show();
    }

    @SimpleEvent(description = "Ad loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad failed")
    public void AdFailed(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailed", str);
    }

    @SimpleEvent(description = "Ad shown")
    public void AdShown() {
        EventDispatcher.dispatchEvent(this, "AdShown", new Object[0]);
    }

    @SimpleEvent(description = "Ad clicked")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @SimpleEvent(description = "Ad dismissed")
    public void AdDismissed() {
        EventDispatcher.dispatchEvent(this, "AdDismissed", new Object[0]);
    }

    public void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
        AdLoaded();
    }

    public void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
        String string;
        int intCode = moPubErrorCode.getIntCode();
        if (intCode == 0) {
            string = "Success";
        } else if (intCode == 1) {
            string = "Adapter not found";
        } else if (intCode == 2) {
            string = "Request Timeout";
        } else if (intCode == 3) {
            string = "Invalid Data";
        } else if (intCode == 10000) {
            string = "Unspecified";
        } else {
            string = moPubErrorCode.toString();
        }
        AdFailed(string);
    }

    public void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
        AdShown();
    }

    public void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
        AdClicked();
    }

    public void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
        AdDismissed();
    }
}
