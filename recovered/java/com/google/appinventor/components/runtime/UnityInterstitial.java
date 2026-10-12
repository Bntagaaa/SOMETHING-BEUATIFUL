package com.google.appinventor.components.runtime;

import android.app.Activity;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;
import com.unity3d.ads.IUnityAdsLoadListener;
import com.unity3d.ads.IUnityAdsShowListener;
import com.unity3d.ads.UnityAds;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Interstitial is a full-screen Ad <br> SDK Version: 4.7.1", iconName = "images/unityInterstitial.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class UnityInterstitial extends AndroidNonvisibleComponent {
    private Activity activity;
    private String placementId;

    public UnityInterstitial(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.placementId = "";
        this.activity = componentContainer.$context();
    }

    @SimpleFunction(description = "Load an Interstitial Ad")
    public void LoadAd(String str) {
        this.placementId = str;
        UnityAds.load(str, new IUnityAdsLoadListener() { // from class: com.google.appinventor.components.runtime.UnityInterstitial.1
            public void onUnityAdsAdLoaded(String str2) {
                UnityInterstitial.this.AdLoaded();
            }

            public void onUnityAdsFailedToLoad(String str2, UnityAds.UnityAdsLoadError unityAdsLoadError, String str3) {
                UnityInterstitial.this.AdFailedToLoad(unityAdsLoadError.toString());
            }
        });
    }

    @SimpleFunction(description = "Display an Interstitial Ad")
    public void ShowAd() {
        UnityAds.show(this.activity, this.placementId, new IUnityAdsShowListener() { // from class: com.google.appinventor.components.runtime.UnityInterstitial.2
            public void onUnityAdsShowFailure(String str, UnityAds.UnityAdsShowError unityAdsShowError, String str2) {
                UnityInterstitial.this.AdFailedToShow(unityAdsShowError.toString());
            }

            public void onUnityAdsShowStart(String str) {
                UnityInterstitial.this.AdStarted();
            }

            public void onUnityAdsShowClick(String str) {
                UnityInterstitial.this.AdClicked();
            }

            public void onUnityAdsShowComplete(String str, UnityAds.UnityAdsShowCompletionState unityAdsShowCompletionState) {
                UnityInterstitial.this.AdFinished();
            }
        });
    }

    @SimpleEvent(description = "Ad Loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad Clicked")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @SimpleEvent(description = "Ad Failed To Load")
    public void AdFailedToLoad(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", str);
    }

    @SimpleEvent(description = "Ad Started Playing")
    public void AdStarted() {
        EventDispatcher.dispatchEvent(this, "AdStarted", new Object[0]);
    }

    @SimpleEvent(description = "Ad Finished Playing")
    public void AdFinished() {
        EventDispatcher.dispatchEvent(this, "AdFinished", new Object[0]);
    }

    @SimpleEvent(description = "Ad Failed to Display")
    public void AdFailedToShow(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToShow", str);
    }
}
