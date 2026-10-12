package com.google.appinventor.components.runtime;

import android.content.Context;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;
import com.startapp.sdk.adsbase.Ad;
import com.startapp.sdk.adsbase.StartAppAd;
import com.startapp.sdk.adsbase.adlisteners.AdDisplayListener;
import com.startapp.sdk.adsbase.adlisteners.AdEventListener;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Interstitial Ads are full page ads, displayed before or after a certain content page or action, such as upon entering a stage, between stages, while waiting for an action, upon exiting the application and more. <br> SDK Version: 4.10.12", iconName = "images/startAppInterstitial.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class StartAppInterstitial extends AndroidNonvisibleComponent {
    private Context context;
    private StartAppAd interstitialAd;

    public StartAppInterstitial(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.context = componentContainer.$context();
    }

    @SimpleFunction(description = "Check if the StartApp SDK Is Initialized")
    public boolean IsSdkInitialized() {
        return StartAppCore.SdkInitialized;
    }

    @SimpleFunction(description = "Call this Function to Show an Ad When User Press the Back Button")
    public void BackPressed() {
        StartAppAd.onBackPressed(this.context);
    }

    @SimpleFunction(description = "Load a Interstitial Ad")
    public void LoadAd() {
        if (IsSdkInitialized()) {
            StartAppAd startAppAd = new StartAppAd(this.context);
            this.interstitialAd = startAppAd;
            startAppAd.loadAd(StartAppAd.AdMode.VIDEO, new AdEventListener() { // from class: com.google.appinventor.components.runtime.StartAppInterstitial.1
                public void onReceiveAd(Ad ad) {
                    StartAppInterstitial.this.AdLoaded();
                }

                public void onFailedToReceiveAd(Ad ad) {
                    StartAppInterstitial.this.AdFailedToLoad(ad.getErrorMessage());
                }
            });
            return;
        }
        ErrorOccurred("SDK Not Yet Loaded");
    }

    @SimpleFunction(description = "Show the Loaded Interstitial Ad")
    public void ShowAd() {
        StartAppAd startAppAd = this.interstitialAd;
        if (startAppAd != null) {
            startAppAd.showAd(new AdDisplayListener() { // from class: com.google.appinventor.components.runtime.StartAppInterstitial.2
                public void adHidden(Ad ad) {
                    StartAppInterstitial.this.AdHidden();
                }

                public void adDisplayed(Ad ad) {
                    StartAppInterstitial.this.AdDisplayed();
                }

                public void adClicked(Ad ad) {
                    StartAppInterstitial.this.AdClicked();
                }

                public void adNotDisplayed(Ad ad) {
                    StartAppInterstitial.this.AdFailedToDisplay(ad.getErrorMessage());
                }
            });
        } else {
            AdFailedToDisplay("Ad Not Loaded");
        }
    }

    @SimpleFunction(description = "Close the Ad Manually")
    public void CloseAd() {
        StartAppAd startAppAd = this.interstitialAd;
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

    @SimpleEvent(description = "Some Error Occurred")
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }
}
