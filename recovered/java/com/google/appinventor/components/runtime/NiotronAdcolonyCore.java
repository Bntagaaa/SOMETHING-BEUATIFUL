package com.google.appinventor.components.runtime;

import android.app.Activity;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.YailList;

@SimpleObject
@Deprecated
@UsesPermissions({"android.permission.VIBRATE"})
@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Core component for adcolony ads <br> SDK Version: 4.8.0", iconName = "images/niotronAdcolonyCore.png", nonVisible = true, version = 1)
/* loaded from: classes.dex */
public final class NiotronAdcolonyCore extends AndroidNonvisibleComponent {
    Activity activity;

    @SimpleFunction(description = "Initializes the sdk")
    public void InitSDK(String str, YailList yailList) {
    }

    public NiotronAdcolonyCore(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.activity = componentContainer.$context();
    }

    @SimpleEvent(description = "Got reward")
    public void GotReward(String str, int i) {
        EventDispatcher.dispatchEvent(this, "GotReward", str, Integer.valueOf(i));
    }
}
