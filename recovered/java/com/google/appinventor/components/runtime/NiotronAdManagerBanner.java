package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.AdManagerAdSize;
import com.google.appinventor.components.common.AdmobAdSize;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Banner Ad Provided By Google Ad Manager", iconName = "images/niotronAdManagerBanner.png", nonVisible = false, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronAdManagerBanner extends AndroidViewComponent {
    private Activity activity;
    private FrameLayout bannerContainer;
    private boolean testMode;

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

    public NiotronAdManagerBanner(ComponentContainer componentContainer) {
        super(componentContainer);
        this.activity = componentContainer.$context();
        this.bannerContainer = new FrameLayout(this.activity);
        componentContainer.$add(this);
    }

    @SimpleProperty(description = "Test Ads")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void TestMode(boolean z) {
        this.testMode = z;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Test Ads")
    public boolean TestMode() {
        return this.testMode;
    }

    @SimpleFunction(description = "Load a Ad Manager Banner Ad")
    public void LoadBannerAd(String str, @Options(AdManagerAdSize.class) Object obj) {
        View adManagerAdView = new AdManagerAdView(this.activity);
        adManagerAdView.setAdSizes(new AdSize[]{getActualAdSize(obj)});
        if (this.testMode) {
            str = "/6499/example/banner";
        }
        adManagerAdView.setAdUnitId(str);
        this.bannerContainer.removeAllViews();
        this.bannerContainer.addView(adManagerAdView);
        adManagerAdView.setAdListener(new AdListener() { // from class: com.google.appinventor.components.runtime.NiotronAdManagerBanner.1
            public void onAdClosed() {
                NiotronAdManagerBanner.this.AdClosed();
            }

            public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
                NiotronAdManagerBanner.this.AdFailedToLoad(loadAdError.getMessage());
            }

            public void onAdOpened() {
                NiotronAdManagerBanner.this.AdOpened();
            }

            public void onAdLoaded() {
                NiotronAdManagerBanner.this.AdLoaded();
            }

            public void onAdClicked() {
                NiotronAdManagerBanner.this.AdClicked();
            }

            public void onAdImpression() {
                NiotronAdManagerBanner.this.AdImpression();
            }
        });
        adManagerAdView.loadAd(new AdManagerAdRequest.Builder().build());
    }

    @SimpleFunction(description = "AdSize for LoadBanner Ad Function")
    public Object CreateCustomAdSize(int i, int i2) {
        return new AdSize(i, i2);
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

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.bannerContainer;
    }
}
