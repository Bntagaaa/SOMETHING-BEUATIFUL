package com.google.appinventor.components.runtime;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.facebook.ads.NativeAdViewAttributes;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.mopub.nativeads.AdapterHelper;
import com.mopub.nativeads.FacebookTemplateRenderer;
import com.mopub.nativeads.MoPubNative;
import com.mopub.nativeads.MoPubStaticNativeAdRenderer;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import com.mopub.nativeads.ViewBinder;
import com.mopub.template.MopubNativeView;
import me.aemo.specialkeyboard.addon.KeyboardChangeListener;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Mopub native ad component to show native ads", iconName = "images/niotronMoPubNative.png", nonVisible = false, version = 1)
@UsesLibraries(libraries = "mopub-sdk-native-static.jar, mopub-sdk-native-static.aar, mopub-sdk-native-video.jar, mopub-sdk-native-video.aar, mopub-sdk-native-template.aar, mopub-sdk-native-template.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronMoPubNative extends AndroidViewComponent {
    private Context context;
    private MoPubNative moPubNative;
    private android.widget.LinearLayout view;

    public NiotronMoPubNative(ComponentContainer componentContainer) {
        super(componentContainer);
        this.view = new android.widget.LinearLayout(componentContainer.$context());
        this.context = componentContainer.$context();
        componentContainer.$add(this);
        Height(KeyboardChangeListener.MIN_KEYBOARD_HEIGHT);
        Width(-2);
    }

    @SimpleFunction(description = "Note : Custom Color is only supported for facebook ads and it won't work for mopub ads")
    public void LoadAd(String str, String str2, String str3, String str4, String str5, String str6) throws ClassNotFoundException {
        this.moPubNative = new MoPubNative(this.context, str, new MoPubNative.MoPubNativeNetworkListener() { // from class: com.google.appinventor.components.runtime.NiotronMoPubNative.1
            public void onNativeLoad(NativeAd nativeAd) {
                NiotronMoPubNative.this.AdLoaded();
                nativeAd.setMoPubNativeEventListener(new NativeAd.MoPubNativeEventListener() { // from class: com.google.appinventor.components.runtime.NiotronMoPubNative.1.1
                    public void onImpression(View view) {
                        NiotronMoPubNative.this.GotImpression();
                    }

                    public void onClick(View view) {
                        NiotronMoPubNative.this.Clicked();
                    }
                });
                NiotronMoPubNative.this.view.addView(new AdapterHelper(NiotronMoPubNative.this.context, 0, 3).getAdView((View) null, (ViewGroup) null, nativeAd, new ViewBinder.Builder(0).build()));
            }

            public void onNativeFail(NativeErrorCode nativeErrorCode) {
                NiotronMoPubNative.this.AdFailedToLoad(nativeErrorCode.toString());
            }
        });
        try {
            MopubNativeView mopubNativeView = new MopubNativeView();
            try {
                Class.forName("com.mopub.nativeads.FacebookTemplateRenderer");
                this.moPubNative.registerAdRenderer(new FacebookTemplateRenderer(new NativeAdViewAttributes().setBackgroundColor(Color.parseColor(str2)).setTitleTextColor(Color.parseColor(str3)).setDescriptionTextColor(Color.parseColor(str4)).setButtonColor(Color.parseColor(str5)).setButtonTextColor(Color.parseColor(str6))));
            } catch (ClassNotFoundException unused) {
            }
            this.moPubNative.registerAdRenderer(new MoPubStaticNativeAdRenderer(mopubNativeView.getViewBinder()));
            this.moPubNative.makeRequest();
        } catch (Exception unused2) {
            Toast.makeText(this.context, "Invalid hex value given in Load Ad Block", 0).show();
        }
    }

    @SimpleEvent(description = "Impression counted")
    public void GotImpression() {
        EventDispatcher.dispatchEvent(this, "GotImpression", new Object[0]);
    }

    @SimpleEvent(description = "Ad clicked")
    public void Clicked() {
        EventDispatcher.dispatchEvent(this, "Clicked", new Object[0]);
    }

    @SimpleEvent(description = "Ad loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad failed to load")
    public void AdFailedToLoad(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", str);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.view;
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(description = "Set height")
    public void Height(int i) {
        if (i == -1) {
            i = KeyboardChangeListener.MIN_KEYBOARD_HEIGHT;
        }
        super.Height(i);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(description = "Sets the width")
    public void Width(int i) {
        if (i == -1) {
            i = -2;
        }
        super.Width(i);
    }
}
