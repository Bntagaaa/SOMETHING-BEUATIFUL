package com.google.appinventor.components.runtime;

import android.content.Context;
import android.view.View;
import com.appnext.banners.BannerAdRequest;
import com.appnext.banners.BannerListener;
import com.appnext.banners.BannerSize;
import com.appnext.banners.BannerView;
import com.appnext.core.AppnextAdCreativeType;
import com.appnext.core.AppnextError;
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
import com.google.appinventor.components.common.AppnextBannerSize;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.GET_TASKS,android.permission.PACKAGE_USAGE_STATS,android.permission.RECEIVE_BOOT_COMPLETED")
@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Banner Ad Of Appnext", iconName = "images/niotronAppnextBanner.png", nonVisible = false, version = 1)
@UsesLibraries(libraries = "appnext-banners.aar, appnext-banners.jar, appnext-core.aar, appnext-core.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, work-runtime.aar, work-runtime.jar, play-services-basement.aar, play-services-basement.jar, glide.aar, glide.jar, room-runtime.aar, room-runtime.jar, sqlite-framework.aar, sqlite-framework.jar, sqlite.aar, sqlite.jar, gifdecoder.aar, gifdecoder.jar, exifinterface.aar, exifinterface.jar, annotation.jar, disklrucache.jar, glide-annotations.jar")
/* loaded from: classes.dex */
public final class NiotronAppnextBanner extends AndroidViewComponent {
    private String adUnitId;
    private boolean autoPlay;
    private BannerView banner;
    private BannerAdRequest bannerRequest;
    private Context context;
    private boolean mute;

    public NiotronAppnextBanner(ComponentContainer componentContainer) {
        super(componentContainer);
        this.adUnitId = "";
        this.autoPlay = false;
        this.mute = false;
        this.context = componentContainer.$context();
        this.banner = new BannerView(this.context);
        this.bannerRequest = new BannerAdRequest();
        componentContainer.$add(this);
    }

    @SimpleFunction(description = "Load The Banner")
    public void LoadAd(@Options(AppnextBannerSize.class) int i) {
        if (i == 1) {
            this.banner.setBannerSize(BannerSize.BANNER);
        } else if (i == 2) {
            this.banner.setBannerSize(BannerSize.LARGE_BANNER);
        } else if (i == 3) {
            this.banner.setBannerSize(BannerSize.MEDIUM_RECTANGLE);
        }
        this.banner.setBannerListener(new BannerListener() { // from class: com.google.appinventor.components.runtime.NiotronAppnextBanner.1
            public void onError(AppnextError appnextError) {
                NiotronAppnextBanner.this.AdErrorOccurred(appnextError.getErrorMessage());
            }

            public void onAdLoaded(String str, AppnextAdCreativeType appnextAdCreativeType) {
                NiotronAppnextBanner.this.AdLoaded();
            }

            public void adImpression() {
                NiotronAppnextBanner.this.AdImpression();
            }

            public void onAdClicked() {
                NiotronAppnextBanner.this.AdClicked();
            }
        });
        this.banner.loadAd(this.bannerRequest);
    }

    @SimpleProperty
    public String AdUnitID() {
        return this.adUnitId;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Remember That Ad Unit Id Can Only Be Set Once")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void AdUnitID(String str) {
        this.adUnitId = str;
        this.banner.setPlacementId(str);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set Auto Play")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void AutoPlay(boolean z) {
        this.autoPlay = z;
        this.bannerRequest.setAutoPlay(z);
    }

    @SimpleProperty(description = "Get Auto Play")
    public boolean AutoPlay() {
        return this.autoPlay;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set Mute")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Mute(boolean z) {
        this.mute = z;
        this.bannerRequest.setMute(z);
    }

    @SimpleProperty(description = "Get Mute")
    public boolean Mute() {
        return this.mute;
    }

    @SimpleEvent(description = "Ad loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad clicked")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @SimpleEvent(description = "Ad impression counted")
    public void AdImpression() {
        EventDispatcher.dispatchEvent(this, "AdImpression", new Object[0]);
    }

    @SimpleEvent(description = "Ad error occurred")
    public void AdErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "AdErrorOccurred", str);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.banner;
    }
}
