package com.google.appinventor.components.runtime;

import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;

@SimpleObject
@Deprecated
@UsesPermissions(permissionNames = "com.google.android.gms.permission.AD_ID, android.permission.ACCESS_NETWORK_STATE, android.permission.INTERNET, android.permission.FOREGROUND_SERVICE, android.permission.READ_EXTERNAL_STORAGE, android.permission.WRITE_EXTERNAL_STORAGE, android.permission.VIBRATE, android.permission.PACKAGE_USAGE_STATS, android.permission.GET_TASKS")
@DesignerComponent(category = ComponentCategory.INTERNAL, description = "Okspin helps you gamify your apps, using offerwalls, games etc", iconName = "images/niotronOkSpin.png", nonVisible = true, version = 1)
/* loaded from: classes.dex */
public final class NiotronOkSpin extends AndroidNonvisibleComponent {
    private void addListeners() {
    }

    @SimpleFunction(description = "Set user id for identification")
    @Deprecated
    public void InitializeSDK(String str) {
    }

    @SimpleFunction(description = "Returns if GSpace ads is ready")
    @Deprecated
    public boolean IsGSpaceReady(String str) {
        return true;
    }

    @SimpleFunction(description = "Returns if interactive ads is ready")
    @Deprecated
    public boolean IsInteractiveReady(String str) {
        return true;
    }

    @SimpleFunction(description = "Open GSpace ads")
    @Deprecated
    public void OpenGSpace(String str) {
    }

    @SimpleFunction(description = "Open interactive ads")
    @Deprecated
    public void OpenInteractive(String str) {
    }

    @SimpleProperty(description = "Set user id for identification")
    @Deprecated
    public void SetUserId(String str) {
    }

    public NiotronOkSpin(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        addListeners();
    }

    @SimpleEvent(description = "When interactive ads closes")
    @Deprecated
    public void InteractiveClose(String str) {
        EventDispatcher.dispatchEvent(this, "InteractiveClose", str);
    }

    @SimpleEvent(description = "When user interacts with the ads")
    @Deprecated
    public void UserInteraction(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "UserInteraction", str, str2);
    }

    @SimpleEvent(description = "When user closes the GSpace ads")
    @Deprecated
    public void GSpaceClose(String str) {
        EventDispatcher.dispatchEvent(this, "GSpaceClose", str);
    }

    @SimpleEvent(description = "When GSpace ad opening failed")
    @Deprecated
    public void GSpaceOpenFailed(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "GSpaceOpenFailed", str, str2);
    }

    @SimpleEvent(description = "When user opens GSpace ads")
    @Deprecated
    public void GSpaceOpen(String str) {
        EventDispatcher.dispatchEvent(this, "GSpaceOpen", str);
    }

    @SimpleEvent(description = "When offerwall ads closes")
    @Deprecated
    public void OfferWallClose(String str) {
        EventDispatcher.dispatchEvent(this, "OfferWallClose", str);
    }

    @SimpleEvent(description = "When opening offerwall ads opening failed")
    @Deprecated
    public void OfferWallOpenFailed(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "OfferWallOpenFailed", str, str2);
    }

    @SimpleEvent(description = "When user opens offerwall ads")
    @Deprecated
    public void OfferWallOpen(String str) {
        EventDispatcher.dispatchEvent(this, "OfferWallOpen", str);
    }

    @SimpleEvent(description = "When user interactive ads opening failed")
    @Deprecated
    public void InteractiveOpenFailed(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "InteractiveOpenFailed", str, str2);
    }

    @SimpleEvent(description = "When user opens interactive ads")
    @Deprecated
    public void InteractiveOpen(String str) {
        EventDispatcher.dispatchEvent(this, "InteractiveOpen", str);
    }

    @SimpleEvent(description = "When initialization fails")
    @Deprecated
    public void InitFailure(String str) {
        EventDispatcher.dispatchEvent(this, "InitFailure", str);
    }

    @SimpleEvent(description = "When initialization is complete")
    @Deprecated
    public void InitSuccess() {
        EventDispatcher.dispatchEvent(this, "InitSuccess", new Object[0]);
    }
}
