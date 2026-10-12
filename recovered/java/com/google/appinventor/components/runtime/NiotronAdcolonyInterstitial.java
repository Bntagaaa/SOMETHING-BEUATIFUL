package com.google.appinventor.components.runtime;

import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Interstitial ad component for adcolony ads. <br> SDK Version: 4.8.0", iconName = "images/niotronAdcolonyInterstitial.png", nonVisible = true, version = 1)
@SimpleObject
@Deprecated
/* loaded from: classes.dex */
public final class NiotronAdcolonyInterstitial extends AndroidNonvisibleComponent {
    @SimpleFunction(description = "Load ad")
    public void LoadAd(String str) {
    }

    @SimpleFunction(description = "Shows the ad")
    public void ShowAd() {
    }

    public NiotronAdcolonyInterstitial(ComponentContainer componentContainer) {
        super(componentContainer.$form());
    }

    @SimpleEvent(description = "Request filled")
    public void RequestFilled() {
        EventDispatcher.dispatchEvent(this, "RequestFilled", new Object[0]);
    }

    @SimpleEvent(description = "Request not filed")
    public void RequestNotFilled(String str) {
        EventDispatcher.dispatchEvent(this, "RequestNotFilled", str);
    }

    @SimpleEvent(description = "Ad opened")
    public void Opened() {
        EventDispatcher.dispatchEvent(this, "Opened", new Object[0]);
    }

    @SimpleEvent(description = "Ad closed")
    public void Closed() {
        EventDispatcher.dispatchEvent(this, "Closed", new Object[0]);
    }

    @SimpleEvent(description = "Ad clicked")
    public void Clicked() {
        EventDispatcher.dispatchEvent(this, "Clicked", new Object[0]);
    }

    @SimpleEvent(description = "Ad left application")
    public void LeftApplication() {
        EventDispatcher.dispatchEvent(this, "LeftApplication", new Object[0]);
    }

    @SimpleEvent(description = "Ad expiring")
    public void Expiring() {
        EventDispatcher.dispatchEvent(this, "Expiring", new Object[0]);
    }
}
