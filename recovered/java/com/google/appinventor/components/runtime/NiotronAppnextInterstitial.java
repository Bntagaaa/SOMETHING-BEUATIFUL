package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import com.appnext.ads.interstitial.Interstitial;
import com.appnext.core.AppnextAdCreativeType;
import com.appnext.core.callbacks.OnAdClicked;
import com.appnext.core.callbacks.OnAdClosed;
import com.appnext.core.callbacks.OnAdError;
import com.appnext.core.callbacks.OnAdLoaded;
import com.appnext.core.callbacks.OnAdOpened;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.GET_TASKS,android.permission.PACKAGE_USAGE_STATS,android.permission.RECEIVE_BOOT_COMPLETED")
@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Interstitial Ad Of Appnext", iconName = "images/niotronAppnextInterstitial.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "appnext-banners.aar, appnext-banners.jar, appnext-core.aar, appnext-core.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, work-runtime.aar, work-runtime.jar, play-services-basement.aar, play-services-basement.jar, glide.aar, glide.jar, room-runtime.aar, room-runtime.jar, sqlite-framework.aar, sqlite-framework.jar, sqlite.aar, sqlite.jar, gifdecoder.aar, gifdecoder.jar, exifinterface.aar, exifinterface.jar, annotation.jar, disklrucache.jar, glide-annotations.jar")
/* loaded from: classes.dex */
public final class NiotronAppnextInterstitial extends AndroidNonvisibleComponent {
    private Activity activity;
    private String adUnitId;
    private boolean autoPlay;
    private Context context;
    private Interstitial interstitialAd;
    private boolean mute;

    public NiotronAppnextInterstitial(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.adUnitId = "";
        this.autoPlay = false;
        this.mute = false;
        this.context = componentContainer.$context();
        this.activity = componentContainer.$context();
    }

    @SimpleFunction(description = "Load ad")
    public void LoadAd() {
        Interstitial interstitial = this.interstitialAd;
        if (interstitial != null) {
            interstitial.loadAd();
        }
    }

    @SimpleFunction(description = "Shows the loaded ad")
    public void ShowAd() {
        Interstitial interstitial = this.interstitialAd;
        if (interstitial != null) {
            interstitial.showAd();
        }
    }

    @SimpleEvent(description = "Ad closed")
    public void AdClosed() {
        EventDispatcher.dispatchEvent(this, "AdClosed", new Object[0]);
    }

    @SimpleEvent(description = "Ad loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad clicked")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @SimpleEvent(description = "Ad opened")
    public void AdOpened() {
        EventDispatcher.dispatchEvent(this, "AdOpened", new Object[0]);
    }

    @SimpleEvent(description = "Error Occurred in ad")
    public void AdErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "AdErrorOccurred", str);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set Auto Play")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void AutoPlay(boolean z) {
        this.autoPlay = z;
        this.interstitialAd.setAutoPlay(z);
    }

    @SimpleProperty(description = "Get Auto Play")
    public boolean AutoPlay() {
        return this.autoPlay;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set Mute")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Mute(boolean z) {
        this.mute = z;
        this.interstitialAd.setMute(z);
    }

    @SimpleProperty(description = "Get Mute")
    public boolean Mute() {
        return this.mute;
    }

    @SimpleProperty(description = "Ad Unit Id")
    public String AdUnitID() {
        return this.adUnitId;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Remember That Ad Unit Id Can Only Be Set Once")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void AdUnitID(String str) {
        this.adUnitId = str;
        Interstitial interstitial = new Interstitial(this.activity, str);
        this.interstitialAd = interstitial;
        interstitial.setOnAdLoadedCallback(new OnAdLoaded() { // from class: com.google.appinventor.components.runtime.NiotronAppnextInterstitial.1
            public void adLoaded(String str2, AppnextAdCreativeType appnextAdCreativeType) {
                NiotronAppnextInterstitial.this.AdLoaded();
            }
        });
        this.interstitialAd.setOnAdOpenedCallback(new OnAdOpened() { // from class: com.google.appinventor.components.runtime.NiotronAppnextInterstitial.2
            public void adOpened() {
                NiotronAppnextInterstitial.this.AdOpened();
            }
        });
        this.interstitialAd.setOnAdClickedCallback(new OnAdClicked() { // from class: com.google.appinventor.components.runtime.NiotronAppnextInterstitial.3
            public void adClicked() {
                NiotronAppnextInterstitial.this.AdClicked();
            }
        });
        this.interstitialAd.setOnAdClosedCallback(new OnAdClosed() { // from class: com.google.appinventor.components.runtime.NiotronAppnextInterstitial.4
            public void onAdClosed() {
                NiotronAppnextInterstitial.this.AdClosed();
            }
        });
        this.interstitialAd.setOnAdErrorCallback(new OnAdError() { // from class: com.google.appinventor.components.runtime.NiotronAppnextInterstitial.5
            public void adError(String str2) {
                NiotronAppnextInterstitial.this.AdErrorOccurred(str2);
            }
        });
    }

    @SimpleFunction(description = "Checks if ad os loaded")
    public boolean IsAdLoaded() {
        return this.interstitialAd.isAdLoaded();
    }
}
