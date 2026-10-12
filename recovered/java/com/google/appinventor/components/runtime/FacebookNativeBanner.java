package com.google.appinventor.components.runtime;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.Toast;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.NativeAdListener;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.NativeBannerAd;
import com.facebook.ads.NativeBannerAdView;
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
import com.google.appinventor.components.common.FacebookNativeBannerSize;
import com.google.appinventor.components.common.PropertyTypeConstants;

@SimpleObject
@UsesAssets(fileNames = "audience_network.dex")
@UsesPermissions(permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, com.google.android.gms.permission.AD_ID")
@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "The Native Ad allows you to build a customized experience for the ads you show in your app. <br> SDK Version: 6.15.0", iconName = "images/facebookNativeBanner.png", nonVisible = false, version = 2)
@UsesLibraries(libraries = "audience-network-sdk.aar, audience-network-sdk.jar, play-services-basement.aar, play-services-basement.jar, legacy-support-v4.aar, legacy-support-v4.jar, media.aar, media.jar, annotation.jar")
/* loaded from: classes.dex */
public final class FacebookNativeBanner extends AndroidViewComponent {
    private Context context;
    private FrameLayout nativeAdContainer;
    private boolean testMode;

    public FacebookNativeBanner(ComponentContainer componentContainer) {
        super(componentContainer);
        this.testMode = false;
        this.context = componentContainer.$context();
        this.nativeAdContainer = new FrameLayout(this.context);
        componentContainer.$add(this);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.nativeAdContainer;
    }

    @SimpleProperty(description = "Test Mode")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void TestMode(boolean z) {
        this.testMode = z;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Test Mode")
    public boolean TestMode() {
        return this.testMode;
    }

    @SimpleFunction(description = "Loads native banner ad with given placement id, ad size and other params")
    public void LoadAd(String str, final String str2, final String str3, final String str4, final String str5, final String str6, @Options(FacebookNativeBannerSize.class) Object obj) {
        final NativeBannerAdView.Type actualAdSize = getActualAdSize(obj);
        Context context = this.context;
        if (this.testMode) {
            str = _COROUTINE.a.i("IMG_16_9_APP_INSTALL#", str);
        }
        final NativeBannerAd nativeBannerAd = new NativeBannerAd(context, str);
        nativeBannerAd.loadAd(nativeBannerAd.buildLoadAdConfig().withAdListener(new NativeAdListener() { // from class: com.google.appinventor.components.runtime.FacebookNativeBanner.1
            public void onMediaDownloaded(Ad ad) {
                FacebookNativeBanner.this.MediaDownloaded();
            }

            public void onError(Ad ad, AdError adError) {
                FacebookNativeBanner.this.ErrorOccurred(adError.getErrorMessage());
            }

            public void onAdLoaded(Ad ad) {
                try {
                    View viewRender = NativeBannerAdView.render(FacebookNativeBanner.this.context, nativeBannerAd, actualAdSize, new NativeAdViewAttributes().setBackgroundColor(Color.parseColor(str2)).setTitleTextColor(Color.parseColor(str3)).setDescriptionTextColor(Color.parseColor(str4)).setButtonColor(Color.parseColor(str5)).setButtonTextColor(Color.parseColor(str6)));
                    FacebookNativeBanner.this.nativeAdContainer.removeAllViews();
                    FacebookNativeBanner.this.nativeAdContainer.addView(viewRender, 0);
                } catch (Exception unused) {
                    Toast.makeText(FacebookNativeBanner.this.context, "Invalid hex value given in Load Ad Block", 0).show();
                }
            }

            public void onAdClicked(Ad ad) {
                FacebookNativeBanner.this.AdClicked();
            }

            public void onLoggingImpression(Ad ad) {
                FacebookNativeBanner.this.AdImpressionLogged();
            }
        }).build());
    }

    @SimpleProperty
    @Deprecated
    public Object AdSizeHeight50() {
        return NativeBannerAdView.Type.HEIGHT_50;
    }

    @SimpleProperty
    @Deprecated
    public Object AdSizeHeight100() {
        return NativeBannerAdView.Type.HEIGHT_100;
    }

    @SimpleProperty
    @Deprecated
    public Object AdSizeHeight120() {
        return NativeBannerAdView.Type.HEIGHT_120;
    }

    private NativeBannerAdView.Type getActualAdSize(Object obj) {
        try {
            if (obj instanceof NativeBannerAdView.Type) {
                return (NativeBannerAdView.Type) obj;
            }
            if (obj.toString().equalsIgnoreCase(FacebookNativeBannerSize.AdSizeHeight50.toString())) {
                return NativeBannerAdView.Type.HEIGHT_50;
            }
            if (obj.toString().equalsIgnoreCase(FacebookNativeBannerSize.AdSizeHeight100.toString())) {
                return NativeBannerAdView.Type.HEIGHT_100;
            }
            if (obj.toString().equalsIgnoreCase(FacebookNativeBannerSize.AdSizeHeight120.toString())) {
                return NativeBannerAdView.Type.HEIGHT_120;
            }
            ErrorOccurred("Wrong AdSize, Loading \"Banner\" size as default");
            return NativeBannerAdView.Type.HEIGHT_50;
        } catch (Exception unused) {
            ErrorOccurred("Wrong AdSize, Loading \"Banner\" size as default");
            return NativeBannerAdView.Type.HEIGHT_50;
        }
    }

    @SimpleEvent(description = "Media Downloaded")
    public void MediaDownloaded() {
        EventDispatcher.dispatchEvent(this, "MediaDownloaded", new Object[0]);
    }

    @SimpleEvent(description = "Some Error Occurred")
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }

    @SimpleEvent(description = "Ad was Clicked")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @SimpleEvent(description = "Ad Impression Logged")
    public void AdImpressionLogged() {
        EventDispatcher.dispatchEvent(this, "AdImpressionLogged", new Object[0]);
    }
}
