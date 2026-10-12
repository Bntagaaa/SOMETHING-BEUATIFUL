package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.AdmobAppOpenOrientation;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Admob App Open component for app monetization", iconName = "images/niotronAdmobAppOpen.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronAdmobAppOpen extends AndroidNonvisibleComponent {
    private static final String LOG_TAG = "AppOpenManager";
    private static final String TEST_AD_UNIT_ID = "ca-app-pub-3940256099942544/9257395921";
    private String adUnitId;
    private AppOpenAd appOpenAd;
    private Context context;
    private boolean portrait;
    private boolean test;

    public NiotronAdmobAppOpen(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.appOpenAd = null;
        this.adUnitId = "";
        this.portrait = true;
        this.context = componentContainer.$context();
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS)
    @DesignerProperty
    public void AdUnitId(String str) {
        if (str != "") {
            this.adUnitId = str;
        } else {
            this.test = true;
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void TestMode(boolean z) {
        this.test = z;
    }

    @SimpleProperty
    public void Orientation(@Options(AdmobAppOpenOrientation.class) int i) {
        if (i == 0) {
            this.portrait = true;
        } else if (i == 1) {
            this.portrait = false;
        }
    }

    @SimpleFunction
    public void LoadAd() {
        AppOpenAd.load(this.context, this.test ? TEST_AD_UNIT_ID : this.adUnitId, getAdRequest(), this.portrait ? 1 : 2, new AppOpenAd.AppOpenAdLoadCallback() { // from class: com.google.appinventor.components.runtime.NiotronAdmobAppOpen.1
            public void onAdLoaded(@NonNull AppOpenAd appOpenAd) {
                super.onAdLoaded(NiotronAdmobAppOpen.this.appOpenAd);
                NiotronAdmobAppOpen.this.appOpenAd = appOpenAd;
                NiotronAdmobAppOpen.this.AdLoaded();
            }

            public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
                super.onAdFailedToLoad(loadAdError);
                NiotronAdmobAppOpen.this.AdFailedToLoad(loadAdError.getMessage());
            }
        });
    }

    @SimpleFunction
    public void ShowAd() {
        this.appOpenAd.setFullScreenContentCallback(new FullScreenContentCallback() { // from class: com.google.appinventor.components.runtime.NiotronAdmobAppOpen.2
            public void onAdFailedToShowFullScreenContent(@NonNull AdError adError) {
                super.onAdFailedToShowFullScreenContent(adError);
                NiotronAdmobAppOpen.this.AdFailedToShowFullScreenContent(adError.getMessage());
            }

            public void onAdShowedFullScreenContent() {
                super.onAdShowedFullScreenContent();
                NiotronAdmobAppOpen.this.AdShowedFullScreenContent();
            }

            public void onAdDismissedFullScreenContent() {
                super.onAdDismissedFullScreenContent();
                NiotronAdmobAppOpen.this.AdDismissedFullScreenContent();
            }

            public void onAdImpression() {
                super.onAdImpression();
                NiotronAdmobAppOpen.this.AdImpression();
            }

            public void onAdClicked() {
                super.onAdClicked();
                NiotronAdmobAppOpen.this.AdClicked();
            }
        });
        this.appOpenAd.show((Activity) this.context);
    }

    @SimpleEvent
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent
    public void AdFailedToLoad(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", str);
    }

    @SimpleEvent
    public void AdFailedToShowFullScreenContent(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToShowFullScreenContent", str);
    }

    @SimpleEvent
    public void AdShowedFullScreenContent() {
        EventDispatcher.dispatchEvent(this, "AdShowedFullScreenContent", new Object[0]);
    }

    @SimpleEvent
    public void AdDismissedFullScreenContent() {
        EventDispatcher.dispatchEvent(this, "AdDismissedFullScreenContent", new Object[0]);
    }

    @SimpleEvent
    public void AdImpression() {
        EventDispatcher.dispatchEvent(this, "AdImpression", new Object[0]);
    }

    @SimpleEvent
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    private AdRequest getAdRequest() {
        return new AdRequest.Builder().build();
    }
}
