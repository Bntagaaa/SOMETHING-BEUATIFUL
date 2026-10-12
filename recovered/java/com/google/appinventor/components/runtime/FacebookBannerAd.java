package com.google.appinventor.components.runtime;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.facebook.ads.AudienceNetworkAds;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesAssets;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.FacebookBannerSize;
import com.google.appinventor.components.common.PropertyTypeConstants;

@SimpleObject
@UsesAssets(fileNames = "audience_network.dex")
@UsesPermissions(permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, com.google.android.gms.permission.AD_ID")
@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "A banner is a small bar ad that appears at the bottom or top of your content. Usually sized 320 x 50. <br> SDK Version: 6.15.0", iconName = "images/facebookBannerAd.png", nonVisible = false, version = 2)
@UsesLibraries(libraries = "audience-network-sdk.aar, audience-network-sdk.jar, play-services-basement.aar, play-services-basement.jar, legacy-support-v4.aar, legacy-support-v4.jar, media.aar, media.jar, annotation.jar")
/* loaded from: classes.dex */
public final class FacebookBannerAd extends AndroidViewComponent implements OnDestroyListener {
    private AdView adView;
    private FrameLayout bannerContainer;
    private Context context;
    private boolean testMode;

    public FacebookBannerAd(ComponentContainer componentContainer) {
        super(componentContainer);
        this.testMode = false;
        this.context = componentContainer.$context();
        this.bannerContainer = new FrameLayout(this.context);
        componentContainer.$add(this);
        AudienceNetworkAds.initialize(this.context);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.bannerContainer;
    }

    @Override // com.google.appinventor.components.runtime.OnDestroyListener
    public void onDestroy() {
        AdView adView = this.adView;
        if (adView != null) {
            adView.destroy();
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Test Mode")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void TestMode(boolean z) {
        this.testMode = z;
    }

    @SimpleProperty(description = "Test Mode")
    public boolean TestMode() {
        return this.testMode;
    }

    @SimpleProperty(description = "Banner Ad Size")
    @Deprecated
    public Object StandardBanner() {
        return AdSize.BANNER_HEIGHT_50;
    }

    @SimpleProperty(description = "Banner Ad Size")
    @Deprecated
    public Object LargeBanner() {
        return AdSize.BANNER_HEIGHT_90;
    }

    @SimpleProperty(description = "Banner Ad Size")
    @Deprecated
    public Object MediumBanner() {
        return AdSize.RECTANGLE_HEIGHT_250;
    }

    @SimpleFunction(description = "Loads a banner ad with given placement id and ad size")
    public void LoadBannerAd(String str, @Options(FacebookBannerSize.class) Object obj) {
        AdSize actualAdSize = getActualAdSize(obj);
        if (!(actualAdSize instanceof AdSize)) {
            AdFailedToDisplay("Wrong AdSize");
            return;
        }
        Context context = this.context;
        if (this.testMode) {
            str = _COROUTINE.a.i("IMG_16_9_APP_INSTALL#", str);
        }
        this.adView = new AdView(context, str, actualAdSize);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        this.bannerContainer.removeAllViews();
        this.bannerContainer.addView((View) this.adView, 0, (ViewGroup.LayoutParams) layoutParams);
        AdListener adListener = new AdListener() { // from class: com.google.appinventor.components.runtime.FacebookBannerAd.1
            public void onError(Ad ad, AdError adError) {
                FacebookBannerAd.this.AdFailedToLoad(adError.getErrorMessage());
            }

            public void onAdLoaded(Ad ad) {
                FacebookBannerAd.this.AdLoaded();
            }

            public void onAdClicked(Ad ad) {
                FacebookBannerAd.this.AdClicked();
            }

            public void onLoggingImpression(Ad ad) {
                FacebookBannerAd.this.AdImpression();
            }
        };
        AdView adView = this.adView;
        adView.loadAd(adView.buildLoadAdConfig().withAdListener(adListener).build());
    }

    private AdSize getActualAdSize(Object obj) {
        try {
            if (obj instanceof AdSize) {
                return (AdSize) obj;
            }
            if (obj.toString().equalsIgnoreCase(FacebookBannerSize.StandardBanner.toString())) {
                return AdSize.BANNER_HEIGHT_50;
            }
            if (obj.toString().equalsIgnoreCase(FacebookBannerSize.MediumBanner.toString())) {
                return AdSize.BANNER_HEIGHT_90;
            }
            if (obj.toString().equalsIgnoreCase(FacebookBannerSize.LargeBanner.toString())) {
                return AdSize.RECTANGLE_HEIGHT_250;
            }
            AdFailedToDisplay("Wrong AdSize, Loading \"Banner\" size as default");
            return AdSize.BANNER_HEIGHT_50;
        } catch (Exception unused) {
            AdFailedToDisplay("Wrong AdSize, Loading \"Banner\" size as default");
            return AdSize.BANNER_HEIGHT_50;
        }
    }

    @SimpleEvent(description = "Ad Loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad Failed to Load")
    public void AdFailedToLoad(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", str);
    }

    @SimpleEvent(description = "Ad Clicked by the User")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @SimpleEvent(description = "Ad Impression Logged")
    public void AdImpression() {
        EventDispatcher.dispatchEvent(this, "AdImpression", new Object[0]);
    }

    @SimpleEvent(description = "Ad Failed to Display")
    public void AdFailedToDisplay(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToDisplay", str);
    }
}
