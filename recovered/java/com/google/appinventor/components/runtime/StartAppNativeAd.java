package com.google.appinventor.components.runtime;

import android.content.Context;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.YailList;
import com.startapp.sdk.ads.nativead.NativeAdDetails;
import com.startapp.sdk.ads.nativead.NativeAdPreferences;
import com.startapp.sdk.ads.nativead.StartAppNativeAd;
import com.startapp.sdk.adsbase.Ad;
import com.startapp.sdk.adsbase.adlisteners.AdEventListener;
import java.util.List;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "A Native Ad is a raw representation of an ad without any pre-defined wrapping UI, which gives you the freedom to design and control the ad exactly as you want. Using Native Ads, you can design an ad experience that perfectly fits your application's scene, content and functionality. <br> SDK Version: 4.10.12", iconName = "images/startAppNativeAd.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class StartAppNativeAd extends AndroidNonvisibleComponent {
    private Context context;
    private com.startapp.sdk.ads.nativead.StartAppNativeAd nativeAd;

    public StartAppNativeAd(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.context = componentContainer.$context();
    }

    @SimpleFunction(description = "Check if the StartApp SDK Is Initialized")
    public boolean IsSdkInitialized() {
        return StartAppCore.SdkInitialized;
    }

    @SimpleFunction(description = "Load a Native Ad. numberOfAds is the number of ads to load, primary and secondary Image Sizes can be the following:0 – for image size 72px X 72px \n1 – for image size 100px X 100px \n2 – for image size 150px X 150px \n3 – for image size 340px X 340px \n4 – for image size 1200px X 628px \n5 – for image size 320px X 480px \n6 – for image size 480px X 320px. \nNote: Size 5-6 can't be used together with sizes 0-4. Also 0 - 3 are the allowed ad Sizes for Secondary Image Size")
    public void LoadAd(int i, int i2, int i3) {
        if (IsSdkInitialized()) {
            this.nativeAd = new com.startapp.sdk.ads.nativead.StartAppNativeAd(this.context);
            this.nativeAd.loadAd(new NativeAdPreferences().setAdsNumber(i).setPrimaryImageSize(i2).setSecondaryImageSize(i3), new AdEventListener() { // from class: com.google.appinventor.components.runtime.StartAppNativeAd.1
                public void onReceiveAd(Ad ad) {
                    StartAppNativeAd startAppNativeAd = StartAppNativeAd.this;
                    startAppNativeAd.AdLoaded(YailList.makeList((List) startAppNativeAd.nativeAd.getNativeAds()));
                }

                public void onFailedToReceiveAd(Ad ad) {
                    StartAppNativeAd.this.AdFailedToLoad(ad.getErrorMessage());
                }
            });
            return;
        }
        ErrorOccurred("SDK Not Yet Loaded");
    }

    @SimpleFunction(description = "Set a Container to listen for Interaction from the User")
    public void RegisterContainerForClick(Object obj, AndroidViewComponent androidViewComponent) {
        if (obj instanceof NativeAdDetails) {
            ((NativeAdDetails) obj).registerViewForInteraction(androidViewComponent.getView());
        } else {
            ErrorOccurred("RegisterContainerForClick requires a Native Ad as input");
        }
    }

    @SimpleFunction(description = "Returns the Ad Title")
    public String GetAdTitle(Object obj) {
        if (obj instanceof NativeAdDetails) {
            return ((NativeAdDetails) obj).getTitle();
        }
        ErrorOccurred("GetAdTitle requires a Native Ad as input");
        return "";
    }

    @SimpleFunction(description = "Returns the Ad Description")
    public String GetAdDescription(Object obj) {
        if (obj instanceof NativeAdDetails) {
            return ((NativeAdDetails) obj).getDescription();
        }
        ErrorOccurred("GetAdDescription requires a Native Ad as input");
        return "";
    }

    @SimpleFunction(description = "Returns the Ad Rating in PlayStore")
    public String GetAdRating(Object obj) {
        if (obj instanceof NativeAdDetails) {
            return String.valueOf(((NativeAdDetails) obj).getRating());
        }
        ErrorOccurred("GetAdRating requires a Native Ad as input");
        return "";
    }

    @SimpleFunction(description = "Returns the Ad Image Url")
    public String GetAdImageUrl(Object obj) {
        if (obj instanceof NativeAdDetails) {
            return ((NativeAdDetails) obj).getImageUrl();
        }
        ErrorOccurred("GetAdImageUrl requires a Native Ad as input");
        return "";
    }

    @SimpleFunction(description = "Returns the Ad Secondary Image Url")
    public String GetAdSecondaryImageUrl(Object obj) {
        if (obj instanceof NativeAdDetails) {
            return ((NativeAdDetails) obj).getSecondaryImageUrl();
        }
        ErrorOccurred("GetAdSecondaryImageUrl requires a Native Ad as input");
        return "";
    }

    @SimpleFunction(description = "Returns the Ad Install in the Store")
    public String GetAdInstalls(Object obj) {
        if (obj instanceof NativeAdDetails) {
            return ((NativeAdDetails) obj).getInstalls();
        }
        ErrorOccurred("GetAdInstalls requires a Native Ad as input");
        return "";
    }

    @SimpleFunction(description = "Returns the Ad Category")
    public String GetAdCategory(Object obj) {
        if (obj instanceof NativeAdDetails) {
            return ((NativeAdDetails) obj).getCategory();
        }
        ErrorOccurred("GetAdCategory requires a Native Ad as input");
        return "";
    }

    /* renamed from: com.google.appinventor.components.runtime.StartAppNativeAd$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$startapp$sdk$ads$nativead$StartAppNativeAd$CampaignAction;

        static {
            int[] iArr = new int[StartAppNativeAd.CampaignAction.values().length];
            $SwitchMap$com$startapp$sdk$ads$nativead$StartAppNativeAd$CampaignAction = iArr;
            try {
                iArr[StartAppNativeAd.CampaignAction.LAUNCH_APP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$startapp$sdk$ads$nativead$StartAppNativeAd$CampaignAction[StartAppNativeAd.CampaignAction.OPEN_MARKET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @SimpleFunction(description = "Returns the Ad Campaign Type, if it will open the app or the store")
    public String GetAdCampaignActionType(Object obj) {
        if (obj instanceof NativeAdDetails) {
            int i = AnonymousClass2.$SwitchMap$com$startapp$sdk$ads$nativead$StartAppNativeAd$CampaignAction[((NativeAdDetails) obj).getCampaignAction().ordinal()];
            if (i == 1) {
                return "App";
            }
            if (i == 2) {
                return "Market";
            }
            return "Unknown";
        }
        ErrorOccurred("GetAdCampaignActionType requires a Native Ad as input");
        return "";
    }

    @SimpleEvent(description = "Ad Loaded")
    public void AdLoaded(YailList yailList) {
        EventDispatcher.dispatchEvent(this, "AdLoaded", yailList);
    }

    @SimpleEvent(description = "Ad Failed To Loaded")
    public void AdFailedToLoad(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", str);
    }

    @SimpleEvent(description = "Ad Error Occurred")
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }
}
