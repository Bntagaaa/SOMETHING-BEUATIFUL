package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.view.View;
import android.widget.FrameLayout;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.ads.MaxAdView;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ApplovinBannerSize;
import com.google.appinventor.components.common.ComponentCategory;

@UsesPermissions(permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, com.google.android.gms.permission.AD_ID, android.permission.ACCESS_WIFI_STATE, com.applovin.array.apphub.permission.BIND_APPHUB_SERVICE")
@DesignerComponent(androidMinSdk = 16, category = ComponentCategory.MONETIZATION, description = "Banner Ad is a Small Rectangle Ad either on the top or bottom of the screen. It is a perfect Ad Type for beginners to earn money without disturbing the users. <br> SDK Version: 11.9.0", iconName = "images/appLovinBanner.png", nonVisible = false, version = 3)
@SimpleObject
/* loaded from: classes.dex */
public final class AppLovinBanner extends AndroidViewComponent {
    private AppLovinSdk appLovinSdk;
    private FrameLayout bannerContainer;
    private Activity context;

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

    public AppLovinBanner(ComponentContainer componentContainer) {
        super(componentContainer);
        this.context = componentContainer.$context();
        this.bannerContainer = new FrameLayout(this.context);
        componentContainer.$add(this);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.bannerContainer;
    }

    @SimpleFunction(description = "Load Max Banner Ad")
    public void LoadBannerAd(String str, @Options(ApplovinBannerSize.class) Object obj) {
        MaxAdFormat actualAdSize2 = getActualAdSize2(obj);
        if (actualAdSize2 instanceof MaxAdFormat) {
            View maxAdView = new MaxAdView(str, actualAdSize2, this.context);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, px(actualAdSize2.getSize().getHeight()));
            this.bannerContainer.removeAllViews();
            this.bannerContainer.addView(maxAdView, 0, layoutParams);
            maxAdView.setBackgroundColor(-1);
            maxAdView.setListener(new MaxAdViewAdListener() { // from class: com.google.appinventor.components.runtime.AppLovinBanner.1
                public void onAdExpanded(MaxAd maxAd) {
                    AppLovinBanner.this.AdOpened();
                }

                public void onAdCollapsed(MaxAd maxAd) {
                    AppLovinBanner.this.AdClosed();
                }

                public void onAdLoaded(MaxAd maxAd) {
                    AppLovinBanner.this.AdLoaded();
                }

                public void onAdDisplayed(MaxAd maxAd) {
                    AppLovinBanner.this.AdDisplayed();
                }

                public void onAdHidden(MaxAd maxAd) {
                    AppLovinBanner.this.AdHidden();
                }

                public void onAdClicked(MaxAd maxAd) {
                    AppLovinBanner.this.AdClicked();
                }

                public void onAdLoadFailed(String str2, MaxError maxError) {
                    AppLovinBanner.this.AdFailedToLoad(maxError.getCode());
                }

                public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
                    AppLovinBanner.this.AdFailedToDisplay(maxError.getMessage());
                }
            });
            maxAdView.loadAd();
            return;
        }
        AdFailedToDisplay("Wrong AdSize");
    }

    private AppLovinAdSize getActualAdSize(Object obj) {
        try {
            if (obj instanceof AppLovinAdSize) {
                return (AppLovinAdSize) obj;
            }
            if (obj.toString().equalsIgnoreCase(ApplovinBannerSize.StandardBanner.toString())) {
                return AppLovinAdSize.BANNER;
            }
            if (obj.toString().equalsIgnoreCase(ApplovinBannerSize.LeaderBanner.toString())) {
                return AppLovinAdSize.LEADER;
            }
            if (obj.toString().equalsIgnoreCase(ApplovinBannerSize.MRECBanner.toString())) {
                return AppLovinAdSize.MREC;
            }
            AdFailedToDisplay("Wrong AdSize, Loading \"Banner\" size as default");
            return AppLovinAdSize.BANNER;
        } catch (Exception unused) {
            AdFailedToDisplay("Wrong AdSize, Loading \"Banner\" size as default");
            return AppLovinAdSize.BANNER;
        }
    }

    private MaxAdFormat getActualAdSize2(Object obj) {
        try {
            if (obj.toString().equalsIgnoreCase(ApplovinBannerSize.StandardBanner.toString())) {
                return MaxAdFormat.BANNER;
            }
            if (obj.toString().equalsIgnoreCase(ApplovinBannerSize.LeaderBanner.toString())) {
                return MaxAdFormat.LEADER;
            }
            if (obj.toString().equalsIgnoreCase(ApplovinBannerSize.MRECBanner.toString())) {
                return MaxAdFormat.MREC;
            }
            AdFailedToDisplay("Wrong AdSize, Loading \"Banner\" size as default");
            return MaxAdFormat.BANNER;
        } catch (Exception unused) {
            AdFailedToDisplay("Wrong AdSize, Loading \"Banner\" size as default");
            return MaxAdFormat.BANNER;
        }
    }

    @SimpleEvent(description = "Ad Loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad Failed to Load")
    public void AdFailedToLoad(int i) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", Integer.valueOf(i));
    }

    @SimpleEvent(description = "Ad Displayed")
    public void AdDisplayed() {
        EventDispatcher.dispatchEvent(this, "AdDisplayed", new Object[0]);
    }

    @SimpleEvent(description = "Ad Hidden")
    public void AdHidden() {
        EventDispatcher.dispatchEvent(this, "AdHidden", new Object[0]);
    }

    @SimpleEvent(description = "Ad Clicked")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @SimpleEvent(description = "Ad Opened Full Screen")
    public void AdOpened() {
        EventDispatcher.dispatchEvent(this, "AdOpened", new Object[0]);
    }

    @SimpleEvent(description = "Ad Closed Full Screen")
    public void AdClosed() {
        EventDispatcher.dispatchEvent(this, "AdClosed", new Object[0]);
    }

    @SimpleEvent(description = "Ad Left Application due to users Click")
    public void AdLeftApplication() {
        EventDispatcher.dispatchEvent(this, "AdLeftApplication", new Object[0]);
    }

    @SimpleEvent(description = "Ad Failed to Display")
    public void AdFailedToDisplay(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToDisplay", str);
    }
}
