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
import com.startapp.sdk.ads.banner.Mrec;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "MRec is a 300X250 rectangular ad integrated within an app's layout. The ad will be refreshed automatically. <br> SDK Version: 4.10.12", iconName = "images/startAppMRecAds.png", nonVisible = false, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class StartAppMRecAds extends AndroidViewComponent {
    private Activity activity;
    private FrameLayout mRecContainer;
    private Mrec mrec;

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

    public StartAppMRecAds(ComponentContainer componentContainer) {
        super(componentContainer);
        this.activity = componentContainer.$context();
        this.mRecContainer = new FrameLayout(this.activity);
        componentContainer.$add(this);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.mRecContainer;
    }

    @SimpleFunction(description = "Check if the StartApp SDK Is Initialized")
    public boolean IsSdkInitialized() {
        return StartAppCore.SdkInitialized;
    }

    @SimpleFunction(description = "Load a MRec Ad")
    public void LoadAd() {
        if (IsSdkInitialized()) {
            this.mrec = new Mrec(this.activity, new BannerListener() { // from class: com.google.appinventor.components.runtime.StartAppMRecAds.1
                public void onReceiveAd(View view) {
                    StartAppMRecAds.this.AdLoaded();
                }

                public void onFailedToReceiveAd(View view) {
                    StartAppMRecAds.this.AdFailedToLoad();
                }

                public void onImpression(View view) {
                    StartAppMRecAds.this.AdImpression();
                }

                public void onClick(View view) {
                    StartAppMRecAds.this.AdClicked();
                }
            });
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            this.mRecContainer.removeAllViews();
            this.mRecContainer.addView((View) this.mrec, 0, (ViewGroup.LayoutParams) layoutParams);
            this.mrec.loadAd();
            return;
        }
        ErrorOccurred("SDK Not Yet Loaded");
    }

    @SimpleFunction(description = "Hides a Visible MRec Ad")
    public void HideAd() {
        Mrec mrec = this.mrec;
        if (mrec != null) {
            mrec.hideBanner();
        }
    }

    @SimpleFunction(description = "Shows a hidden MRec. Not need to call after loading")
    public void ShowAd() {
        Mrec mrec = this.mrec;
        if (mrec != null) {
            mrec.showBanner();
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
