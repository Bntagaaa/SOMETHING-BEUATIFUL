package com.google.appinventor.components.runtime;

import android.content.Context;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;
import com.startapp.sdk.adsbase.Ad;
import com.startapp.sdk.adsbase.StartAppAd;
import com.startapp.sdk.adsbase.VideoListener;
import com.startapp.sdk.adsbase.adlisteners.AdDisplayListener;
import com.startapp.sdk.adsbase.adlisteners.AdEventListener;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Rewarded Ads are interstitial video ads that provide a reward to the user in exchange for watching an entire video ad. The reward might be in-app goods, virtual currency or any premium content provided by the application. <br> SDK Version: 4.10.12", iconName = "images/startAppRewarded.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class StartAppRewarded extends AndroidNonvisibleComponent {
    private Context context;
    private StartAppAd rewardedAd;

    public StartAppRewarded(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.context = componentContainer.$context();
    }

    @SimpleFunction(description = "Check if the StartApp SDK Is Initialized")
    public boolean IsSdkInitialized() {
        return StartAppCore.SdkInitialized;
    }

    @SimpleFunction(description = "Load a Rewarded Ad")
    public void LoadAd() {
        if (IsSdkInitialized()) {
            StartAppAd startAppAd = new StartAppAd(this.context);
            this.rewardedAd = startAppAd;
            startAppAd.setVideoListener(new VideoListener() { // from class: com.google.appinventor.components.runtime.StartAppRewarded.1
                public void onVideoCompleted() {
                    StartAppRewarded.this.AdCompleted();
                }
            });
            this.rewardedAd.loadAd(StartAppAd.AdMode.REWARDED_VIDEO, new AdEventListener() { // from class: com.google.appinventor.components.runtime.StartAppRewarded.2
                public void onReceiveAd(Ad ad) {
                    StartAppRewarded.this.AdLoaded();
                }

                public void onFailedToReceiveAd(Ad ad) {
                    StartAppRewarded.this.AdFailedToLoad(ad.getErrorMessage());
                }
            });
            return;
        }
        ErrorOccurred("SDK Not Yet Loaded");
    }

    @SimpleFunction(description = "Show the Loaded Rewarded Ad")
    public void ShowAd() {
        StartAppAd startAppAd = this.rewardedAd;
        if (startAppAd != null) {
            startAppAd.showAd(new AdDisplayListener() { // from class: com.google.appinventor.components.runtime.StartAppRewarded.3
                public void adHidden(Ad ad) {
                    StartAppRewarded.this.AdHidden();
                }

                public void adDisplayed(Ad ad) {
                    StartAppRewarded.this.AdDisplayed();
                }

                public void adClicked(Ad ad) {
                    StartAppRewarded.this.AdClicked();
                }

                public void adNotDisplayed(Ad ad) {
                    StartAppRewarded.this.AdFailedToDisplay(ad.getErrorMessage());
                }
            });
        } else {
            AdFailedToDisplay("Ad Not Loaded");
        }
    }

    @SimpleFunction(description = "Close the Ad Manually")
    public void CloseAd() {
        StartAppAd startAppAd = this.rewardedAd;
        if (startAppAd != null) {
            startAppAd.close();
        }
    }

    @SimpleEvent(description = "Ad Loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad Failed to Load")
    public void AdFailedToLoad(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", str);
    }

    @SimpleEvent(description = "Ad Hidden")
    public void AdHidden() {
        EventDispatcher.dispatchEvent(this, "AdHidden", new Object[0]);
    }

    @SimpleEvent(description = "Ad Displayed")
    public void AdDisplayed() {
        EventDispatcher.dispatchEvent(this, "AdDisplayed", new Object[0]);
    }

    @SimpleEvent(description = "Ad Failed To Display")
    public void AdFailedToDisplay(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToDisplay", str);
    }

    @SimpleEvent(description = "Ad Clicked by the User")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @SimpleEvent
    public void AdCompleted() {
        EventDispatcher.dispatchEvent(this, "AdCompleted", new Object[0]);
    }

    @SimpleEvent(description = "Some Error Occurred")
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }
}
