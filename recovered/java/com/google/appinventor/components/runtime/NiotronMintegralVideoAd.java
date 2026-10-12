package com.google.appinventor.components.runtime;

import android.app.Activity;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;

@DesignerComponent(category = ComponentCategory.INTERNAL, description = "A new component ", iconName = "images/mintegralVideoAd.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronMintegralVideoAd extends AndroidNonvisibleComponent {
    private Activity activity;
    private String adUnitId;
    private String placementId;

    @SimpleFunction(description = "Initializes the SDK")
    @Deprecated
    public void Initialize() {
    }

    @SimpleFunction(description = "Load video ad")
    @Deprecated
    public void LoadVideoAd() {
    }

    @SimpleFunction(description = "Show video ad")
    @Deprecated
    public void ShowVideoAd() {
    }

    public NiotronMintegralVideoAd(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.adUnitId = "";
        this.placementId = "";
        this.activity = componentContainer.$context();
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Sets ad unit id")
    @DesignerProperty
    @Deprecated
    public void AdUnitId(String str) {
        this.adUnitId = str;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Sets placement id")
    @DesignerProperty
    @Deprecated
    public void PlacementId(String str) {
        this.placementId = str;
    }

    @SimpleEvent(description = "Ad loaded")
    @Deprecated
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Video ad loaded")
    @Deprecated
    public void VideoLoaded() {
        EventDispatcher.dispatchEvent(this, "VideoLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad failed to load")
    @Deprecated
    public void AdFailedToLoad(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", str);
    }

    @SimpleEvent(description = "Ad failed to show")
    @Deprecated
    public void AdFailedToShow(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToShow", str);
    }

    @SimpleEvent(description = "Ad shown")
    @Deprecated
    public void AdShown() {
        EventDispatcher.dispatchEvent(this, "AdShown", new Object[0]);
    }

    @SimpleEvent(description = "Ad closed")
    @Deprecated
    public void AdClosed(boolean z) {
        EventDispatcher.dispatchEvent(this, "AdClosed", Boolean.valueOf(z));
    }

    @SimpleEvent(description = "Ad clicked")
    @Deprecated
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @SimpleEvent(description = "Video completed")
    @Deprecated
    public void VideoCompleted() {
        EventDispatcher.dispatchEvent(this, "VideoCompleted", new Object[0]);
    }

    @SimpleEvent(description = "Ad closed with reward")
    @Deprecated
    public void AdClosedWithReward() {
        EventDispatcher.dispatchEvent(this, "AdClosedWithReward", new Object[0]);
    }

    @SimpleEvent(description = "End card shown")
    @Deprecated
    public void EndCardShown() {
        EventDispatcher.dispatchEvent(this, "EndCardShown", new Object[0]);
    }
}
