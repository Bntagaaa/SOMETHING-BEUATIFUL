package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.IronSourceBannerSize;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.ironsource.mediationsdk.ISBannerSize;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.IronSourceBannerLayout;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdInfo;
import com.ironsource.mediationsdk.integration.IntegrationHelper;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.sdk.LevelPlayBannerListener;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, com.google.android.gms.permission.AD_ID")
@DesignerComponent(androidMinSdk = 14, category = ComponentCategory.MONETIZATION, description = "The Banner is a rectangular, system-initiated ad that can be either static or animated, and is served in a designated area around your live app content. This ad unit supports ad placements as well as capping and pacing. <br> SDK Version: 7.3.0.1", iconName = "images/ironSourceBanner.png", nonVisible = false, version = 1)
@UsesLibraries(libraries = "ironsource-mediationsdk.aar, ironsource-mediationsdk.jar, ironsource-adqualitysdk.aar, ironsource-adqualitysdk.jar,  play-services-appset.aar, play-services-appset.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-base.aar, play-services-base.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, annotation.jar")
/* loaded from: classes.dex */
public final class IronSourceBanner extends AndroidViewComponent implements OnResumeListener, OnPauseListener, OnDestroyListener {
    private Activity activity;
    private String appKey;
    private IronSourceBannerLayout banner;
    private FrameLayout bannerContainer;
    private int bannerSize;

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

    public IronSourceBanner(ComponentContainer componentContainer) {
        super(componentContainer);
        this.bannerSize = -1;
        this.activity = componentContainer.$context();
        this.bannerContainer = new FrameLayout(this.activity);
        componentContainer.$add(this);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.bannerContainer;
    }

    @Override // com.google.appinventor.components.runtime.OnPauseListener
    public void onPause() {
        DestroyBannerAd();
    }

    @Override // com.google.appinventor.components.runtime.OnResumeListener
    public void onResume() {
        int i = this.bannerSize;
        if (i != -1) {
            LoadAd(Integer.valueOf(i));
        }
    }

    @Override // com.google.appinventor.components.runtime.OnDestroyListener
    public void onDestroy() {
        DestroyBannerAd();
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "IronSource Banner AppKey")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void AppKey(String str) {
        this.appKey = str;
        IronSource.init(this.activity, str, new IronSource.AD_UNIT[]{IronSource.AD_UNIT.BANNER});
    }

    @SimpleProperty(description = "Ironsource AppKey")
    public String AppKey() {
        return this.appKey;
    }

    @SimpleFunction(description = "Only to Validate if the Integration was Successful")
    public void ValidateIntegration() {
        IntegrationHelper.validateIntegration(this.activity);
    }

    @SimpleProperty(description = "Standard Banner Size. Use when loading ads")
    @Deprecated
    public Object StandardBanner() {
        return ISBannerSize.BANNER;
    }

    @SimpleProperty(description = "Large Banner Size. Use when loading ads")
    @Deprecated
    public Object LargeBanner() {
        return ISBannerSize.LARGE;
    }

    @SimpleProperty(description = "Rectangle Banner Size. Use when loading ads")
    @Deprecated
    public Object RectangleBanner() {
        return ISBannerSize.RECTANGLE;
    }

    @SimpleProperty(description = "Smart Banner Size. Use when loading ads")
    @Deprecated
    public Object SmartBanner() {
        return ISBannerSize.SMART;
    }

    @SimpleFunction(description = "Custom Banner Size. width and height in dp. Use when loading ads")
    public Object CreateCustomBanner(int i, int i2) {
        return new ISBannerSize(i, i2);
    }

    @SimpleFunction(description = "Load a Banner Ad")
    public void LoadAd(@Options(IronSourceBannerSize.class) Object obj) {
        ISBannerSize actualAdSize = getActualAdSize(obj);
        if (actualAdSize instanceof ISBannerSize) {
            this.banner = IronSource.createBanner(this.activity, actualAdSize);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            this.bannerContainer.removeAllViews();
            this.bannerContainer.addView((View) this.banner, 0, (ViewGroup.LayoutParams) layoutParams);
            this.banner.setLevelPlayBannerListener(new LevelPlayBannerListener() { // from class: com.google.appinventor.components.runtime.IronSourceBanner.1
                public void onAdLoaded(AdInfo adInfo) {
                    IronSourceBanner.this.AdLoaded();
                }

                public void onAdLoadFailed(IronSourceError ironSourceError) {
                    IronSourceBanner.this.AdFailedToLoad(ironSourceError.getErrorMessage());
                }

                public void onAdClicked(AdInfo adInfo) {
                    IronSourceBanner.this.AdClicked();
                }

                public void onAdLeftApplication(AdInfo adInfo) {
                    IronSourceBanner.this.AdOpened();
                }

                public void onAdScreenPresented(AdInfo adInfo) {
                    IronSourceBanner.this.AdDisplayed();
                }

                public void onAdScreenDismissed(AdInfo adInfo) {
                    IronSourceBanner.this.AdClosed();
                }
            });
            IronSource.loadBanner(this.banner);
            return;
        }
        AdFailedToLoad("Wrong Banner Size");
    }

    @SimpleFunction(description = "Load a Banner Ad with a Placement Name")
    public void LoadAdWithPlacement(String str, @Options(IronSourceBannerSize.class) Object obj) {
        ISBannerSize actualAdSize = getActualAdSize(obj);
        if (actualAdSize instanceof ISBannerSize) {
            this.banner = IronSource.createBanner(this.activity, actualAdSize);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            this.bannerContainer.removeAllViews();
            this.bannerContainer.addView((View) this.banner, 0, (ViewGroup.LayoutParams) layoutParams);
            this.banner.setLevelPlayBannerListener(new LevelPlayBannerListener() { // from class: com.google.appinventor.components.runtime.IronSourceBanner.2
                public void onAdLoaded(AdInfo adInfo) {
                    IronSourceBanner.this.AdLoaded();
                }

                public void onAdLoadFailed(IronSourceError ironSourceError) {
                    IronSourceBanner.this.AdFailedToLoad(ironSourceError.getErrorMessage());
                }

                public void onAdClicked(AdInfo adInfo) {
                    IronSourceBanner.this.AdClicked();
                }

                public void onAdLeftApplication(AdInfo adInfo) {
                    IronSourceBanner.this.AdOpened();
                }

                public void onAdScreenPresented(AdInfo adInfo) {
                    IronSourceBanner.this.AdDisplayed();
                }

                public void onAdScreenDismissed(AdInfo adInfo) {
                    IronSourceBanner.this.AdClosed();
                }
            });
            IronSource.loadBanner(this.banner, str);
            return;
        }
        AdFailedToLoad("Wrong Banner Size");
    }

    private ISBannerSize getActualAdSize(Object obj) {
        try {
            if (obj instanceof ISBannerSize) {
                return (ISBannerSize) obj;
            }
            if (obj.toString().equalsIgnoreCase(IronSourceBannerSize.StandardBanner.toString())) {
                this.bannerSize = IronSourceBannerSize.valueOf(obj.toString()).toUnderlyingValue().intValue();
                return ISBannerSize.BANNER;
            }
            if (obj.toString().equalsIgnoreCase(IronSourceBannerSize.LargeBanner.toString())) {
                this.bannerSize = IronSourceBannerSize.valueOf(obj.toString()).toUnderlyingValue().intValue();
                return ISBannerSize.LARGE;
            }
            if (obj.toString().equalsIgnoreCase(IronSourceBannerSize.RectangleBanner.toString())) {
                this.bannerSize = IronSourceBannerSize.valueOf(obj.toString()).toUnderlyingValue().intValue();
                return ISBannerSize.RECTANGLE;
            }
            if (obj.toString().equalsIgnoreCase(IronSourceBannerSize.SmartBanner.toString())) {
                this.bannerSize = IronSourceBannerSize.valueOf(obj.toString()).toUnderlyingValue().intValue();
                return ISBannerSize.SMART;
            }
            AdFailedToLoad("Wrong AdSize, Loading \"Banner\" size as default");
            return ISBannerSize.BANNER;
        } catch (Exception unused) {
            AdFailedToLoad("Wrong AdSize, Loading \"Banner\" size as default");
            return ISBannerSize.BANNER;
        }
    }

    @SimpleFunction(description = "Destroys the banner ad, its necessary to make it working in other screens as well")
    public void DestroyBannerAd() {
        IronSource.destroyBanner(this.banner);
        this.bannerContainer.removeAllViews();
    }

    @SimpleEvent(description = "Ad Loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad Failed To Load")
    public void AdFailedToLoad(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", str);
    }

    @SimpleEvent(description = "Ad Displayed")
    public void AdDisplayed() {
        EventDispatcher.dispatchEvent(this, "AdDisplayed", new Object[0]);
    }

    @SimpleEvent(description = "Ad Opened")
    public void AdOpened() {
        EventDispatcher.dispatchEvent(this, "AdOpened", new Object[0]);
    }

    @SimpleEvent(description = "Ad Closed")
    public void AdClosed() {
        EventDispatcher.dispatchEvent(this, "AdClosed", new Object[0]);
    }

    @SimpleEvent(description = "Ad Clicked")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }
}
