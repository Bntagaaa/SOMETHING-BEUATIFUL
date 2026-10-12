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
import com.startapp.sdk.ads.banner.BannerListener;
import com.startapp.sdk.ads.banner.Cover;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Cover is a 1200X628 rectangular ad integrated within an app's layout. The ad will be refreshed automatically. <br> SDK Version: 4.10.12", iconName = "images/startAppCoverAds.png", nonVisible = false, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class StartAppCoverAds extends AndroidViewComponent {
    private Activity activity;
    private Cover cover;
    private FrameLayout coverContainer;

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

    public StartAppCoverAds(ComponentContainer componentContainer) {
        super(componentContainer);
        this.activity = componentContainer.$context();
        this.coverContainer = new FrameLayout(this.activity);
        componentContainer.$add(this);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.coverContainer;
    }

    @SimpleFunction(description = "Check if the StartApp SDK Is Initialized")
    public boolean IsSdkInitialized() {
        return StartAppCore.SdkInitialized;
    }

    @SimpleFunction(description = "Load a Cover Ad")
    public void LoadAd() {
        if (IsSdkInitialized()) {
            this.cover = new Cover(this.activity, new BannerListener() { // from class: com.google.appinventor.components.runtime.StartAppCoverAds.1
                public void onReceiveAd(View view) {
                    StartAppCoverAds.this.AdLoaded();
                }

                public void onFailedToReceiveAd(View view) {
                    StartAppCoverAds.this.AdFailedToLoad();
                }

                public void onImpression(View view) {
                    StartAppCoverAds.this.AdImpression();
                }

                public void onClick(View view) {
                    StartAppCoverAds.this.AdClicked();
                }
            });
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            this.coverContainer.removeAllViews();
            this.coverContainer.addView((View) this.cover, 0, (ViewGroup.LayoutParams) layoutParams);
            this.cover.loadAd();
            return;
        }
        ErrorOccurred("SDK Not Yet Loaded");
    }

    @SimpleFunction(description = "Hides a Visible Cover Ad")
    public void HideAd() {
        Cover cover = this.cover;
        if (cover != null) {
            cover.hideBanner();
        }
    }

    @SimpleFunction(description = "Shows a hidden Cover. Not need to call after loading")
    public void ShowAd() {
        Cover cover = this.cover;
        if (cover != null) {
            cover.showBanner();
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
