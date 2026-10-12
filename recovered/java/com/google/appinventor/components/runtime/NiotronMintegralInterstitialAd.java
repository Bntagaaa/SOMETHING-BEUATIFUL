package com.google.appinventor.components.runtime;

import android.app.Activity;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.mbridge.msdk.newinterstitial.out.MBNewInterstitialHandler;
import com.mbridge.msdk.newinterstitial.out.NewInterstitialListener;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.RewardInfo;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "A new component", iconName = "images/niotronMintegralInterstitialAd.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "mbridge_newinterstitial.aar,mbridge_newinterstitial.jar,mbridge_videocommon.aar,mbridge_videojs.aar,mbridge_playercommon.aar,mbridge_reward.aar,mbridge_videocommon.jar,mbridge_videojs.jar,mbridge_playercommon.jar,mbridge_reward.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronMintegralInterstitialAd extends AndroidNonvisibleComponent {
    private Activity activity;
    private String adUnitId;
    private MBNewInterstitialHandler mInterstitialHandler;
    private String placementId;

    public NiotronMintegralInterstitialAd(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.adUnitId = "";
        this.placementId = "";
        this.activity = componentContainer.$context();
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Sets ad unit id")
    @DesignerProperty
    public void AdUnitId(String str) {
        this.adUnitId = str;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Sets placement id")
    @DesignerProperty
    public void PlacementId(String str) {
        this.placementId = str;
    }

    @SimpleFunction(description = "Initialized SDK")
    public void Initialize() {
        MBNewInterstitialHandler mBNewInterstitialHandler = new MBNewInterstitialHandler(this.activity, this.placementId, this.adUnitId);
        this.mInterstitialHandler = mBNewInterstitialHandler;
        mBNewInterstitialHandler.setInterstitialVideoListener(new NewInterstitialListener() { // from class: com.google.appinventor.components.runtime.NiotronMintegralInterstitialAd.1
            public void onResourceLoadSuccess(MBridgeIds mBridgeIds) {
            }

            public void onLoadCampaignSuccess(MBridgeIds mBridgeIds) {
                NiotronMintegralInterstitialAd.this.AdLoaded();
            }

            public void onResourceLoadFail(MBridgeIds mBridgeIds, String str) {
                NiotronMintegralInterstitialAd.this.AdFailedToLoad(str);
            }

            public void onShowFail(MBridgeIds mBridgeIds, String str) {
                NiotronMintegralInterstitialAd.this.AdFailedToShow(str);
            }

            public void onAdShow(MBridgeIds mBridgeIds) {
                NiotronMintegralInterstitialAd.this.AdShown();
            }

            public void onAdClose(MBridgeIds mBridgeIds, RewardInfo rewardInfo) {
                NiotronMintegralInterstitialAd.this.AdClosed(rewardInfo.isCompleteView());
            }

            public void onAdClicked(MBridgeIds mBridgeIds) {
                NiotronMintegralInterstitialAd.this.AdClicked();
            }

            public void onVideoComplete(MBridgeIds mBridgeIds) {
                NiotronMintegralInterstitialAd.this.VideoCompleted();
            }

            public void onAdCloseWithNIReward(MBridgeIds mBridgeIds, RewardInfo rewardInfo) {
                NiotronMintegralInterstitialAd.this.AdClosedWithReward();
            }

            public void onEndcardShow(MBridgeIds mBridgeIds) {
                NiotronMintegralInterstitialAd.this.EndCardShown();
            }
        });
    }

    @SimpleFunction(description = "Load interstitial ad")
    public void LoadInterstitialAd() {
        this.mInterstitialHandler.load();
    }

    @SimpleFunction(description = "Show interstitial ad")
    public void ShowInterstitialAd() {
        this.mInterstitialHandler.show();
    }

    @SimpleFunction(description = "Is ad ready for showing")
    public boolean IsAdReady() {
        return this.mInterstitialHandler.isReady();
    }

    @SimpleEvent(description = "Ad loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Video ad loaded")
    public void VideoLoaded() {
        EventDispatcher.dispatchEvent(this, "VideoLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad failed to load")
    public void AdFailedToLoad(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", str);
    }

    @SimpleEvent(description = "Ad failed to show")
    public void AdFailedToShow(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToShow", str);
    }

    @SimpleEvent(description = "Ad shown")
    public void AdShown() {
        EventDispatcher.dispatchEvent(this, "AdShown", new Object[0]);
    }

    @SimpleEvent(description = "Ad closed")
    public void AdClosed(boolean z) {
        EventDispatcher.dispatchEvent(this, "AdClosed", Boolean.valueOf(z));
    }

    @SimpleEvent(description = "Ad clicked")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @SimpleEvent(description = "Video completed")
    public void VideoCompleted() {
        EventDispatcher.dispatchEvent(this, "VideoCompleted", new Object[0]);
    }

    @SimpleEvent(description = "Ad closed with reward")
    public void AdClosedWithReward() {
        EventDispatcher.dispatchEvent(this, "AdClosedWithReward", new Object[0]);
    }

    @SimpleEvent(description = "End card shown")
    public void EndCardShown() {
        EventDispatcher.dispatchEvent(this, "EndCardShown", new Object[0]);
    }
}
