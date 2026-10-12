package com.google.appinventor.components.runtime;

import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.mopub.common.MediationSettings;
import com.mopub.common.MoPubReward;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubRewardedAdListener;
import com.mopub.mobileads.MoPubRewardedAds;
import java.util.Set;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Component for MoPub Rewarded Video Ads", iconName = "images/niotronMobPubRewarded.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "media.jar, media.aar, media2-common.jar, media2-common.aar, media2-player.aar, media2-player.jar, media2-session.jar, media2-session.aar, media2-widget.jar, media2-widget.aar, palette.jar, media2-exoplayer.jar, concurrent-futures.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronMoPubRewarded extends AndroidNonvisibleComponent implements MoPubRewardedAdListener {
    public NiotronMoPubRewarded(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        MoPubRewardedAds.setRewardedAdListener(this);
    }

    @SimpleFunction(description = "Load ad")
    public void LoadAd(String str) {
        MoPubRewardedAds.loadRewardedAd(str, new MediationSettings[0]);
    }

    @SimpleFunction(description = "Shows the ad")
    public void ShowAd(String str) {
        MoPubRewardedAds.showRewardedAd(str);
    }

    @SimpleEvent(description = "Ad loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad load failed")
    public void AdLoadFailed(String str) {
        EventDispatcher.dispatchEvent(this, "AdLoadFailed", str);
    }

    @SimpleEvent(description = "Ad started")
    public void AdStarted() {
        EventDispatcher.dispatchEvent(this, "AdStarted", new Object[0]);
    }

    @SimpleEvent(description = "Ad playback error")
    public void AdPlaybackError(String str) {
        EventDispatcher.dispatchEvent(this, "AdPlaybackError", str);
    }

    @SimpleEvent(description = "Ad clicked")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @SimpleEvent(description = "Ad clicked")
    public void AdClosed() {
        EventDispatcher.dispatchEvent(this, "AdClosed", new Object[0]);
    }

    @SimpleEvent(description = "Ad completed")
    public void AdCompleted(int i, String str, boolean z) {
        EventDispatcher.dispatchEvent(this, "AdCompleted", Integer.valueOf(i), str, Boolean.valueOf(z));
    }

    public void onRewardedAdClicked(String str) {
        AdClicked();
    }

    public void onRewardedAdClosed(String str) {
        AdClosed();
    }

    public void onRewardedAdCompleted(Set<String> set, MoPubReward moPubReward) {
        AdCompleted(moPubReward.getAmount(), moPubReward.getLabel(), moPubReward.isSuccessful());
    }

    public void onRewardedAdLoadFailure(String str, MoPubErrorCode moPubErrorCode) {
        AdLoadFailed(moPubErrorCode.toString());
    }

    public void onRewardedAdLoadSuccess(String str) {
        AdLoaded();
    }

    public void onRewardedAdShowError(String str, MoPubErrorCode moPubErrorCode) {
        AdPlaybackError(moPubErrorCode.toString());
    }

    public void onRewardedAdStarted(String str) {
        AdStarted();
    }
}
