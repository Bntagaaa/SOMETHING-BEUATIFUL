package com.google.appinventor.components.runtime;

import android.view.View;
import androidx.annotation.NonNull;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.MobPubBannerSize;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubView;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Component for MoPub Banner Video Ads", iconName = "images/niotronMobPubBanner.png", nonVisible = false, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronMoPubBanner extends AndroidViewComponent implements MoPubView.BannerAdListener {
    private final MoPubView bannerView;

    public NiotronMoPubBanner(ComponentContainer componentContainer) {
        super(componentContainer);
        MoPubView moPubView = new MoPubView(componentContainer.$context());
        this.bannerView = moPubView;
        moPubView.setBannerAdListener(this);
        componentContainer.$add(this);
    }

    @SimpleFunction(description = "Load banner ad")
    public void LoadAd() {
        this.bannerView.loadAd();
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set Ad Unit Id")
    @DesignerProperty
    public void AdUnitId(String str) {
        this.bannerView.setAdUnitId(str);
    }

    @SimpleProperty(description = "Ad size")
    public void AdSize(@Options(MobPubBannerSize.class) int i) {
        this.bannerView.setAdSize(MoPubView.MoPubAdSize.valueOf(i));
    }

    @SimpleEvent(description = "Ad loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad failed")
    public void AdFailed(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailed", str);
    }

    @SimpleEvent(description = "Ad clicked")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @SimpleEvent(description = "Ad expanded")
    public void AdExpanded() {
        EventDispatcher.dispatchEvent(this, "AdExpanded", new Object[0]);
    }

    @SimpleEvent(description = "Ad collapsed")
    public void AdCollapsed() {
        EventDispatcher.dispatchEvent(this, "AdCollapsed", new Object[0]);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.bannerView;
    }

    public void onBannerLoaded(@NonNull MoPubView moPubView) {
        AdLoaded();
    }

    public void onBannerFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
        String string;
        int intCode = moPubErrorCode.getIntCode();
        if (intCode == 0) {
            string = "Success";
        } else if (intCode == 1) {
            string = "Adapter not found";
        } else if (intCode == 2) {
            string = "Request Timeout";
        } else if (intCode == 3) {
            string = "Invalid Data";
        } else if (intCode == 10000) {
            string = "Unspecified";
        } else {
            string = moPubErrorCode.toString();
        }
        AdFailed(string);
    }

    public void onBannerClicked(MoPubView moPubView) {
        AdClicked();
    }

    public void onBannerExpanded(MoPubView moPubView) {
        AdExpanded();
    }

    public void onBannerCollapsed(MoPubView moPubView) {
        AdCollapsed();
    }
}
