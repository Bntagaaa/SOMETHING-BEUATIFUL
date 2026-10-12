package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.AdcolonyBannerSize;
import com.google.appinventor.components.common.ComponentCategory;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Banner ad component for adcolony ads. <br> SDK Version: 4.8.0", iconName = "images/niotronAdcolonyBanner.png", nonVisible = false, version = 1)
@SimpleObject
@Deprecated
/* loaded from: classes.dex */
public final class NiotronAdcolonyBanner extends AndroidViewComponent {
    private Activity activity;
    private android.widget.LinearLayout adContainer;
    private ComponentContainer container;
    private Context context;

    @SimpleFunction(description = "Loads the banner ad")
    public void LoadBannerAd(String str, @Options(AdcolonyBannerSize.class) int i) {
    }

    public NiotronAdcolonyBanner(ComponentContainer componentContainer) {
        super(componentContainer);
        this.container = componentContainer;
        this.context = componentContainer.$context();
        this.activity = componentContainer.$context();
        this.adContainer = new android.widget.LinearLayout(componentContainer.$context());
        componentContainer.$add(this);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.adContainer;
    }

    @SimpleEvent(description = "Request filled")
    public void RequestFilled() {
        EventDispatcher.dispatchEvent(this, "RequestFilled", new Object[0]);
    }

    @SimpleEvent(description = "Request not filled")
    public void RequestNotFilled() {
        EventDispatcher.dispatchEvent(this, "RequestNotFilled", new Object[0]);
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
}
