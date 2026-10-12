package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.LoadAdError;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.AdmobAdSize;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import org.jetbrains.annotations.NotNull;

@DesignerComponent(androidMinSdk = 16, category = ComponentCategory.MONETIZATION, description = "Banner ads occupy a spot within an app's layout, either at the top or bottom of the device screen. They stay on screen while users are interacting with the app, and can refresh automatically after a certain period of time.If you're new to mobile advertising, they're a great place to start.", iconName = "images/admob.png", nonVisible = false, version = 3)
@SimpleObject
/* loaded from: classes.dex */
public final class AdmobBannerAd extends AndroidViewComponent {
    private Activity activity;
    private FrameLayout bannerContainer;
    private boolean testMode;

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "User Consent for GDPR")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    @Deprecated
    public void Consent(boolean z) {
    }

    @SimpleProperty(description = "User Consent for GDPR")
    @Deprecated
    public boolean Consent() {
        return false;
    }

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

    public AdmobBannerAd(ComponentContainer componentContainer) {
        super(componentContainer);
        this.activity = componentContainer.$context();
        this.bannerContainer = new FrameLayout(this.activity);
        componentContainer.$add(this);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.bannerContainer;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Test Ads")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void TestMode(boolean z) {
        this.testMode = z;
    }

    @SimpleProperty(description = "Test Ads")
    public boolean TestMode() {
        return this.testMode;
    }

    @SimpleProperty(description = "AdSize for LoadBanner Ad Function")
    @Deprecated
    public Object AdSizeBanner() {
        return AdSize.BANNER;
    }

    @SimpleProperty(description = "AdSize for LoadBanner Ad Function")
    @Deprecated
    public Object AdSizeLargeBanner() {
        return AdSize.LARGE_BANNER;
    }

    @SimpleProperty(description = "AdSize for LoadBanner Ad Function")
    @Deprecated
    public Object AdSizeMediumRectangle() {
        return AdSize.MEDIUM_RECTANGLE;
    }

    @SimpleProperty(description = "AdSize for LoadBanner Ad Function")
    @Deprecated
    public Object AdSizeFullBanner() {
        return AdSize.FULL_BANNER;
    }

    @SimpleProperty(description = "AdSize for LoadBanner Ad Function")
    @Deprecated
    public Object AdSizeLeaderBoard() {
        return AdSize.LEADERBOARD;
    }

    @SimpleProperty(description = "AdSize for LoadBanner Ad Function")
    @Deprecated
    public Object AdSizeSmartBanner() {
        return AdSize.SMART_BANNER;
    }

    @SimpleFunction(description = "AdSize for LoadBanner Ad Function")
    public Object CreateCustomAdSize(int i, int i2) {
        return new AdSize(i, i2);
    }

    @SimpleFunction(description = "Load a Admob Banner Ad")
    public void LoadBannerAd(String str, @Options(AdmobAdSize.class) Object obj) {
        AdSize actualAdSize = getActualAdSize(obj);
        View adView = new AdView(this.activity);
        adView.setAdSize(actualAdSize);
        if (this.testMode) {
            str = "ca-app-pub-3940256099942544/6300978111";
        }
        adView.setAdUnitId(str);
        this.bannerContainer.removeAllViews();
        this.bannerContainer.addView(adView);
        adView.setAdListener(new AdListener() { // from class: com.google.appinventor.components.runtime.AdmobBannerAd.1
            public void onAdClosed() {
                AdmobBannerAd.this.AdClosed();
            }

            public void onAdFailedToLoad(@NonNull @NotNull LoadAdError loadAdError) {
                AdmobBannerAd.this.AdFailedToLoad(loadAdError.getMessage());
            }

            public void onAdOpened() {
                AdmobBannerAd.this.AdOpened();
            }

            public void onAdLoaded() {
                AdmobBannerAd.this.AdLoaded();
            }

            public void onAdClicked() {
                AdmobBannerAd.this.AdClicked();
            }

            public void onAdImpression() {
                AdmobBannerAd.this.AdImpression();
            }
        });
        adView.loadAd(new AdRequest.Builder().build());
    }

    private AdSize getActualAdSize(Object obj) {
        try {
            if (obj instanceof AdSize) {
                return (AdSize) obj;
            }
            AdmobAdSize admobAdSize = (AdmobAdSize) obj;
            if (String.valueOf(admobAdSize.toUnderlyingValue()).equalsIgnoreCase(String.valueOf(AdmobAdSize.Banner.toUnderlyingValue()))) {
                return AdSize.BANNER;
            }
            if (String.valueOf(admobAdSize.toUnderlyingValue()).equalsIgnoreCase(String.valueOf(AdmobAdSize.LargeBanner.toUnderlyingValue()))) {
                return AdSize.LARGE_BANNER;
            }
            if (String.valueOf(admobAdSize.toUnderlyingValue()).equalsIgnoreCase(String.valueOf(AdmobAdSize.MediumRectangle.toUnderlyingValue()))) {
                return AdSize.MEDIUM_RECTANGLE;
            }
            if (String.valueOf(admobAdSize.toUnderlyingValue()).equalsIgnoreCase(String.valueOf(AdmobAdSize.FullBanner.toUnderlyingValue()))) {
                return AdSize.FULL_BANNER;
            }
            if (String.valueOf(admobAdSize.toUnderlyingValue()).equalsIgnoreCase(String.valueOf(AdmobAdSize.LeaderBoard.toUnderlyingValue()))) {
                return AdSize.LEADERBOARD;
            }
            AdFailedToLoad("Wrong AdSize, Loading \"Banner\" size as default");
            return AdSize.BANNER;
        } catch (Exception unused) {
            AdFailedToLoad("Wrong AdSize, Loading \"Banner\" size as default");
            return AdSize.BANNER;
        }
    }

    @SimpleEvent(description = "Banner Ad Loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Banner Ad Failed To Load")
    public void AdFailedToLoad(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", str);
    }

    @SimpleEvent(description = "Banner Ad Closed")
    public void AdClosed() {
        EventDispatcher.dispatchEvent(this, "AdClosed", new Object[0]);
    }

    @SimpleEvent(description = "Banner Ad Opened")
    public void AdOpened() {
        EventDispatcher.dispatchEvent(this, "AdOpened", new Object[0]);
    }

    @SimpleEvent(description = "Banner Ad Clicked")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @SimpleEvent(description = "Banner Ad Impression Logged")
    public void AdImpression() {
        EventDispatcher.dispatchEvent(this, "AdImpression", new Object[0]);
    }

    @SimpleEvent(description = "Banner Ad Left Application. Probaby User Clicked and Opened it")
    @Deprecated
    public void AdLeftApplication() {
        EventDispatcher.dispatchEvent(this, "AdLeftApplication", new Object[0]);
    }
}
