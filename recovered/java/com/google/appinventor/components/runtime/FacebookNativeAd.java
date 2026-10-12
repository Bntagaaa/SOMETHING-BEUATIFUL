package com.google.appinventor.components.runtime;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.Toast;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdListener;
import com.facebook.ads.NativeAdView;
import com.facebook.ads.NativeAdViewAttributes;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesAssets;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;

@SimpleObject
@UsesAssets(fileNames = "audience_network.dex")
@UsesPermissions(permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, com.google.android.gms.permission.AD_ID")
@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "The Native Ad allows you to build a customized experience for the ads you show in your app. <br> SDK Version: 6.15.0", iconName = "images/facebookNativeAd.png", nonVisible = false, version = 1)
@UsesLibraries(libraries = "audience-network-sdk.aar, audience-network-sdk.jar, play-services-basement.aar, play-services-basement.jar, legacy-support-v4.aar, legacy-support-v4.jar, media.aar, media.jar, annotation.jar")
/* loaded from: classes.dex */
public final class FacebookNativeAd extends AndroidViewComponent {
    private Context context;
    private FrameLayout nativeAdContainer;
    private boolean testMode;

    public FacebookNativeAd(ComponentContainer componentContainer) {
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

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Test Mode")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void TestMode(boolean z) {
        this.testMode = z;
    }

    @SimpleProperty(description = "Test Mode")
    public boolean TestMode() {
        return this.testMode;
    }

    @SimpleFunction(description = "Loads a native ad with given parameters")
    public void LoadAd(String str, final String str2, final String str3, final String str4, final String str5, final String str6) {
        Context context = this.context;
        if (this.testMode) {
            str = _COROUTINE.a.i("IMG_16_9_APP_INSTALL#", str);
        }
        final NativeAd nativeAd = new NativeAd(context, str);
        nativeAd.loadAd(nativeAd.buildLoadAdConfig().withAdListener(new NativeAdListener() { // from class: com.google.appinventor.components.runtime.FacebookNativeAd.1
            public void onMediaDownloaded(Ad ad) {
                FacebookNativeAd.this.MediaDownloaded();
            }

            public void onError(Ad ad, AdError adError) {
                FacebookNativeAd.this.ErrorOccurred(adError.getErrorMessage());
            }

            public void onAdLoaded(Ad ad) {
                try {
                    View viewRender = NativeAdView.render(FacebookNativeAd.this.context, nativeAd, new NativeAdViewAttributes().setBackgroundColor(Color.parseColor(str2)).setTitleTextColor(Color.parseColor(str3)).setDescriptionTextColor(Color.parseColor(str4)).setButtonColor(Color.parseColor(str5)).setButtonTextColor(Color.parseColor(str6)));
                    FacebookNativeAd.this.nativeAdContainer.removeAllViews();
                    FacebookNativeAd.this.nativeAdContainer.addView(viewRender, 0, new FrameLayout.LayoutParams(-1, -1));
                } catch (Exception unused) {
                    Toast.makeText(FacebookNativeAd.this.context, "Invalid hex value given in Load Ad Block", 0).show();
                }
            }

            public void onAdClicked(Ad ad) {
                FacebookNativeAd.this.AdClicked();
            }

            public void onLoggingImpression(Ad ad) {
                FacebookNativeAd.this.AdImpressionLogged();
            }
        }).build());
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
