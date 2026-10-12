package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.nativeAds.MaxNativeAdListener;
import com.applovin.mediation.nativeAds.MaxNativeAdLoader;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;

@UsesPermissions(permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, com.google.android.gms.permission.AD_ID, android.permission.ACCESS_WIFI_STATE, com.applovin.array.apphub.permission.BIND_APPHUB_SERVICE")
@DesignerComponent(androidMinSdk = 16, category = ComponentCategory.MONETIZATION, description = "Native ads let you monetize your app in a way that’s consistent with its existing design. <br> SDK Version: 11.9.0", iconName = "images/appLovinBanner.png", nonVisible = false, version = 3)
@SimpleObject
/* loaded from: classes.dex */
public final class AppLovinNative extends AndroidViewComponent {
    private Activity context;
    private MaxAd nativeAd;
    private MaxNativeAdLoader nativeAdLoader;
    private FrameLayout nativeContainer;

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

    public AppLovinNative(ComponentContainer componentContainer) {
        super(componentContainer);
        this.context = componentContainer.$context();
        this.nativeContainer = new FrameLayout(this.context);
        componentContainer.$add(this);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.nativeContainer;
    }

    @SimpleFunction(description = "Load a Native Ad")
    public void LoadNativeAd(String str) {
        MaxNativeAdLoader maxNativeAdLoader = new MaxNativeAdLoader(str, this.context);
        this.nativeAdLoader = maxNativeAdLoader;
        maxNativeAdLoader.setNativeAdListener(new MaxNativeAdListener() { // from class: com.google.appinventor.components.runtime.AppLovinNative.1
            public void onNativeAdLoaded(MaxNativeAdView maxNativeAdView, MaxAd maxAd) {
                if (AppLovinNative.this.nativeAd != null) {
                    AppLovinNative.this.nativeAdLoader.destroy(AppLovinNative.this.nativeAd);
                }
                AppLovinNative.this.nativeAd = maxAd;
                AppLovinNative.this.nativeContainer.removeAllViews();
                AppLovinNative.this.nativeContainer.addView((View) maxNativeAdView, (ViewGroup.LayoutParams) new FrameLayout.LayoutParams(-1, -2));
                AppLovinNative.this.AdLoaded();
            }

            public void onNativeAdLoadFailed(String str2, MaxError maxError) {
                AppLovinNative.this.AdFailedToLoad(maxError.getCode());
            }

            public void onNativeAdClicked(MaxAd maxAd) {
                AppLovinNative.this.AdClicked();
            }
        });
        this.nativeAdLoader.loadAd();
    }

    @SimpleEvent(description = "Sdk Initialized")
    public void SdkInitialized() {
        EventDispatcher.dispatchEvent(this, "SdkInitialized", new Object[0]);
    }

    @SimpleEvent(description = "Ad Loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad Failed to Load")
    public void AdFailedToLoad(int i) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", Integer.valueOf(i));
    }

    @SimpleEvent(description = "Ad Clicked")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }
}
