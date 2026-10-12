package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.startapp.sdk.ads.banner.Banner;
import com.startapp.sdk.ads.banner.BannerListener;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "StartApp Banner Ad. <br> SDK Version: 4.10.12", iconName = "images/startAppBannerAd.png", nonVisible = false, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class StartAppBannerAd extends AndroidViewComponent {
    private Activity activity;
    private Banner bannerAd;
    private FrameLayout bannerContainer;

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(userVisible = false)
    public int Height() {
        return 0;
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(userVisible = false)
    public void Height(int i) {
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(userVisible = false)
    public void HeightPercent(int i) {
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(userVisible = false)
    public int Width() {
        return 0;
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(userVisible = false)
    public void Width(int i) {
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(userVisible = false)
    public void WidthPercent(int i) {
    }

    public StartAppBannerAd(ComponentContainer componentContainer) {
        super(componentContainer);
        this.activity = componentContainer.$context();
        this.bannerContainer = new FrameLayout(this.activity);
        componentContainer.$add(this);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.bannerContainer;
    }

    @SimpleFunction(description = "Check if the StartApp SDK Is Initialized")
    public boolean IsSdkInitialized() {
        return StartAppCore.SdkInitialized;
    }

    @SimpleFunction(description = "Load a Banner Ad")
    public void LoadAd() {
        if (IsSdkInitialized()) {
            this.bannerAd = new Banner(this.activity, new BannerListener() { // from class: com.google.appinventor.components.runtime.StartAppBannerAd.1
                public void onReceiveAd(View view) {
                    StartAppBannerAd.this.AdLoaded();
                }

                public void onFailedToReceiveAd(View view) {
                    StartAppBannerAd.this.AdFailedToLoad();
                }

                public void onImpression(View view) {
                    StartAppBannerAd.this.AdImpression();
                }

                public void onClick(View view) {
                    StartAppBannerAd.this.AdClicked();
                }
            });
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            this.bannerContainer.removeAllViews();
            this.bannerContainer.addView((View) this.bannerAd, 0, (ViewGroup.LayoutParams) layoutParams);
            this.bannerAd.loadAd();
            return;
        }
        ErrorOccurred("SDK Not Yet Loaded");
    }

    @SimpleFunction(description = "Hides a Visible Banner Ad")
    public void HideAd() {
        Banner banner = this.bannerAd;
        if (banner != null) {
            banner.hideBanner();
        } else {
            ErrorOccurred("No Banner Ad to Hide");
        }
    }

    @SimpleFunction(description = "Shows a hidden BannerAd. Not need to call after loading")
    public void ShowAd() {
        Banner banner = this.bannerAd;
        if (banner != null) {
            banner.showBanner();
        } else {
            ErrorOccurred("No Banner Ad to Show");
        }
    }

    @SimpleEvent(description = "Ad Loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad FailedToLoad")
    public void AdFailedToLoad() {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", new Object[0]);
    }

    @SimpleEvent(description = "Ad Impression")
    public void AdImpression() {
        EventDispatcher.dispatchEvent(this, "AdImpression", new Object[0]);
    }

    @SimpleEvent(description = "Ad Clicked by the User")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @SimpleEvent(description = "Some Error Occurred")
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }
}
