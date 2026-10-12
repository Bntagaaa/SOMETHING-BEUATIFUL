package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.view.View;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.mbridge.msdk.out.BannerAdListener;
import com.mbridge.msdk.out.BannerSize;
import com.mbridge.msdk.out.MBBannerView;
import com.mbridge.msdk.out.MBridgeIds;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "A new component ", iconName = "images/niotronMintegralBannerAd.png", nonVisible = false, version = 1)
@UsesLibraries(libraries = "mbridge_mbbanner.aar,mbridge_videocommon.aar,mbridge_mbbanner.jar,mbridge_videocommon.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronMintegralBannerAd extends AndroidViewComponent {
    private Activity activity;
    private String adUnitId;
    private String placementId;
    private MBBannerView view;

    public NiotronMintegralBannerAd(ComponentContainer componentContainer) {
        super(componentContainer);
        this.adUnitId = "";
        this.placementId = "";
        this.activity = componentContainer.$context();
        this.view = new MBBannerView(this.activity);
        componentContainer.$add(this);
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Sets ad unit id")
    @DesignerProperty
    public void AdUnitId(String str) {
        this.adUnitId = str;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Placement id")
    @DesignerProperty
    public void PlacementId(String str) {
        this.placementId = str;
    }

    @SimpleFunction(description = "Load banner ad")
    public void LoadBannerAd(Object obj, int i, boolean z) {
        this.view.init((BannerSize) obj, this.placementId, this.adUnitId);
        this.view.setAllowShowCloseBtn(z);
        this.view.setRefreshTime(i);
        this.view.setBannerAdListener(new BannerAdListener() { // from class: com.google.appinventor.components.runtime.NiotronMintegralBannerAd.1
            public void onLoadFailed(MBridgeIds mBridgeIds, String str) {
                NiotronMintegralBannerAd.this.AdFailedToLoad(str);
            }

            public void onLoadSuccessed(MBridgeIds mBridgeIds) {
                NiotronMintegralBannerAd.this.AdLoaded();
            }

            public void onClick(MBridgeIds mBridgeIds) {
                NiotronMintegralBannerAd.this.AdClicked();
            }

            public void onLeaveApp(MBridgeIds mBridgeIds) {
                NiotronMintegralBannerAd.this.BannerAdLeaveApp();
            }

            public void showFullScreen(MBridgeIds mBridgeIds) {
                NiotronMintegralBannerAd.this.AdFullScreenShown();
            }

            public void closeFullScreen(MBridgeIds mBridgeIds) {
                NiotronMintegralBannerAd.this.AdFullScreenClosed();
            }

            public void onLogImpression(MBridgeIds mBridgeIds) {
                NiotronMintegralBannerAd.this.AdImpressionLogged();
            }

            public void onCloseBanner(MBridgeIds mBridgeIds) {
                NiotronMintegralBannerAd.this.BannerAdClosed();
            }
        });
        this.view.load();
    }

    @SimpleFunction(description = "Create BannerSize from height,width,sizeType(1-5)")
    public Object CreateBannerSize(int i, int i2, int i3) {
        return new BannerSize(i3, i2, i);
    }

    @SimpleEvent(description = "Ad failed to load")
    public void AdFailedToLoad(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", str);
    }

    @SimpleEvent(description = "Ad loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad clicked")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @SimpleEvent(description = "Banner ad left app")
    public void BannerAdLeaveApp() {
        EventDispatcher.dispatchEvent(this, "BannerAdLeaveApp", new Object[0]);
    }

    @SimpleEvent(description = "Shown full screen ad")
    public void AdFullScreenShown() {
        EventDispatcher.dispatchEvent(this, "AdFullScreenShown", new Object[0]);
    }

    @SimpleEvent(description = "Full screen ad closed")
    public void AdFullScreenClosed() {
        EventDispatcher.dispatchEvent(this, "AdFullScreenClosed", new Object[0]);
    }

    @SimpleEvent(description = "Ad impression logged")
    public void AdImpressionLogged() {
        EventDispatcher.dispatchEvent(this, "AdImpressionLogged", new Object[0]);
    }

    @SimpleEvent(description = "Banner ad closed")
    public void BannerAdClosed() {
        EventDispatcher.dispatchEvent(this, "BannerAdClosed", new Object[0]);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.view;
    }
}
