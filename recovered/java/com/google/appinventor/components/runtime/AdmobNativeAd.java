package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.Toast;
import androidx.annotation.NonNull;
import com.google.android.ads.nativetemplates.NativeTemplateStyle;
import com.google.android.ads.nativetemplates.TemplateView;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.ComponentConstants;
import com.google.appinventor.components.common.NativeAdSize;
import com.google.appinventor.components.common.PropertyTypeConstants;

@DesignerComponent(androidMinSdk = 16, category = ComponentCategory.MONETIZATION, description = "Native Ad By Admob", iconName = "images/admobNativeAd.png", nonVisible = false, version = 1)
@UsesLibraries(libraries = "NativeTemplate.aar, NativeTemplate.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class AdmobNativeAd extends AndroidViewComponent {
    private Activity activity;
    private int adSize;
    private FrameLayout nativeContainer;
    private boolean testMode;

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(userVisible = false)
    public int Height() {
        return -1;
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
        return -2;
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(userVisible = false)
    public void Width(int i) {
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(userVisible = false)
    public void WidthPercent(int i) {
    }

    public AdmobNativeAd(ComponentContainer componentContainer) {
        super(componentContainer);
        this.adSize = 0;
        this.activity = componentContainer.$context();
        this.nativeContainer = new FrameLayout(this.activity);
        componentContainer.$add(this);
    }

    @SimpleFunction(description = "Loads ad with all the required parameter")
    public void LoadAd(String str, final String str2, final String str3, final String str4, final String str5, final String str6, final String str7) {
        new AdLoader.Builder(this.container.$context(), this.testMode ? "ca-app-pub-3940256099942544/2247696110" : str).forNativeAd(new NativeAd.OnNativeAdLoadedListener() { // from class: com.google.appinventor.components.runtime.AdmobNativeAd.2
            public void onNativeAdLoaded(NativeAd nativeAd) {
                try {
                    NativeTemplateStyle nativeTemplateStyleBuild = new NativeTemplateStyle.Builder().withMainBackgroundColor(new ColorDrawable(Color.parseColor(str2))).withPrimaryTextTypefaceColor(Color.parseColor(str3)).withSecondaryTextTypefaceColor(Color.parseColor(str4)).withTertiaryTextTypefaceColor(Color.parseColor(str5)).withCallToActionBackgroundColor(new ColorDrawable(Color.parseColor(str6))).withCallToActionTypefaceColor(Color.parseColor(str7)).build();
                    AdmobNativeAd.this.nativeContainer.setBackgroundColor(Color.parseColor(str2));
                    View templateView = new TemplateView(AdmobNativeAd.this.container.$context(), AdmobNativeAd.this.adSize == 0 ? "medium_template" : "small_template");
                    templateView.setLayoutParams(new FrameLayout.LayoutParams(-1, AdmobNativeAd.this.adSize == 0 ? -2 : AdmobNativeAd.this.dp(ComponentConstants.TEXTBOX_PREFERRED_WIDTH)));
                    AdmobNativeAd.this.nativeContainer.removeAllViews();
                    AdmobNativeAd.this.nativeContainer.addView(templateView);
                    templateView.setStyles(nativeTemplateStyleBuild);
                    templateView.setNativeAd(nativeAd);
                    AdmobNativeAd.this.AdLoaded();
                } catch (Exception unused) {
                    Toast.makeText(AdmobNativeAd.this.activity, "Invalid hex value given in Load Ad Block", 0).show();
                }
            }
        }).withAdListener(new AdListener() { // from class: com.google.appinventor.components.runtime.AdmobNativeAd.1
            public void onAdClosed() {
                super.onAdClosed();
                AdmobNativeAd.this.AdClosed();
            }

            public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
                super.onAdFailedToLoad(loadAdError);
                AdmobNativeAd.this.AdFailedToLoad(loadAdError.getMessage());
            }

            public void onAdOpened() {
                super.onAdOpened();
                AdmobNativeAd.this.AdOpened();
            }

            public void onAdClicked() {
                super.onAdClicked();
                AdmobNativeAd.this.AdClicked();
            }

            public void onAdImpression() {
                super.onAdImpression();
                AdmobNativeAd.this.AdImpression();
            }
        }).build().loadAd(new AdRequest.Builder().build());
    }

    @SimpleProperty(description = "Ad size")
    public void AdSize(@Options(NativeAdSize.class) int i) {
        this.adSize = i;
    }

    @SimpleEvent(description = "Ad got loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad got closed")
    public void AdClosed() {
        EventDispatcher.dispatchEvent(this, "AdClosed", new Object[0]);
    }

    @SimpleEvent(description = "Ad opened")
    public void AdOpened() {
        EventDispatcher.dispatchEvent(this, "AdOpened", new Object[0]);
    }

    @SimpleEvent(description = "Impression counted")
    public void AdImpression() {
        EventDispatcher.dispatchEvent(this, "AdImpression", new Object[0]);
    }

    @SimpleEvent(description = "Ad failed to load")
    public void AdFailedToLoad(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", str);
    }

    @SimpleEvent(description = "Ad got clicked on")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.nativeContainer;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Test Ads")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void TestMode(boolean z) {
        this.testMode = z;
    }

    @SimpleProperty(description = "Test Ads")
    public boolean TestMode() {
        return this.testMode;
    }
}
