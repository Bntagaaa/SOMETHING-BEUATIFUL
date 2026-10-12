package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.unity3d.services.banners.BannerErrorInfo;
import com.unity3d.services.banners.BannerView;
import com.unity3d.services.banners.UnityBannerSize;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Banner Ad is a rectangle ad placed usually at the top or bottom of the Screen. This ad is suited for beginner developers to monetize their apps. <br> SDK Version: 4.7.1", iconName = "images/unityBannerAd.png", nonVisible = false, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class UnityBannerAd extends AndroidViewComponent {
    private Activity activity;
    private FrameLayout bannerContainer;
    private BannerView bannerView;
    private Context context;

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

    public UnityBannerAd(ComponentContainer componentContainer) {
        super(componentContainer);
        this.context = componentContainer.$context();
        this.activity = componentContainer.$context();
        this.bannerContainer = new FrameLayout(this.activity);
        componentContainer.$add(this);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.bannerContainer;
    }

    @SimpleFunction(description = "Load a Banner Ad")
    public void LoadAd(String str) {
        this.bannerView = new BannerView(this.activity, str, UnityBannerSize.getDynamicSize(this.context));
        this.bannerView.setListener(new BannerView.IListener() { // from class: com.google.appinventor.components.runtime.UnityBannerAd.1
            public void onBannerLoaded(BannerView bannerView) {
                UnityBannerAd.this.AdLoaded();
            }

            public void onBannerShown(BannerView bannerView) {
                UnityBannerAd.this.AdShown();
            }

            public void onBannerClick(BannerView bannerView) {
                UnityBannerAd.this.AdClicked();
            }

            public void onBannerFailedToLoad(BannerView bannerView, BannerErrorInfo bannerErrorInfo) {
                UnityBannerAd.this.AdFailedToLoad(bannerErrorInfo.errorMessage);
            }

            public void onBannerLeftApplication(BannerView bannerView) {
                UnityBannerAd.this.AdLeftApplication();
            }
        });
        this.bannerView.load();
        this.bannerContainer.removeAllViews();
        this.bannerContainer.addView((View) this.bannerView, 0, (ViewGroup.LayoutParams) new FrameLayout.LayoutParams(-1, -1));
    }

    @SimpleFunction(description = "Destroy a banner ad thereby hiding it")
    public void DestroyAd() {
        this.bannerView.destroy();
    }

    @SimpleEvent(description = "Ad Loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad Failed To Load")
    public void AdFailedToLoad(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", str);
    }

    @SimpleEvent(description = "Ad Unloaded")
    @Deprecated
    public void AdUnLoaded() {
        EventDispatcher.dispatchEvent(this, "AdUnLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad Displayed to the User")
    public void AdShown() {
        EventDispatcher.dispatchEvent(this, "AdShown", new Object[0]);
    }

    @SimpleEvent(description = "Ad Clicked by the User")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @SimpleEvent(description = "Ad Left the application")
    public void AdLeftApplication() {
        EventDispatcher.dispatchEvent(this, "AdLeftApplication", new Object[0]);
    }

    @SimpleEvent(description = "Ad Hidden")
    @Deprecated
    public void AdHidden() {
        EventDispatcher.dispatchEvent(this, "AdHidden", new Object[0]);
    }
}
