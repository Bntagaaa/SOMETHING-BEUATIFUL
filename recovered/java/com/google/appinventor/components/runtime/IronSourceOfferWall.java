package com.google.appinventor.components.runtime;

import android.app.Activity;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.ironsource.adapters.supersonicads.SupersonicConfig;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.integration.IntegrationHelper;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, com.google.android.gms.permission.AD_ID")
@DesignerComponent(androidMinSdk = 14, category = ComponentCategory.INTERNAL, description = "The OfferWall is an opt-in ad unit that rewards users for completing an action. Users are presented with offers by leading brands such as filling out surveys or signing up for a service. <br> SDK Version: 7.3.0.1", iconName = "images/ironSourceOfferWall.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "ironsource-mediationsdk.aar, ironsource-mediationsdk.jar, ironsource-adqualitysdk.aar, ironsource-adqualitysdk.jar,  play-services-appset.aar, play-services-appset.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-base.aar, play-services-base.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, annotation.jar")
/* loaded from: classes.dex */
public final class IronSourceOfferWall extends AndroidNonvisibleComponent implements OnResumeListener, OnPauseListener {
    private Activity activity;
    private String appKey;
    private boolean offerWallAvailable;

    @SimpleFunction(description = "Get the total Amount of Users Credits. OfferWall Credited Event will be called")
    public void GetUserTotalCredits() {
    }

    @SimpleFunction(description = "Show OfferWall")
    public void ShowOfferWall() {
    }

    @SimpleFunction(description = "Show OfferWall with a placement Name")
    public void ShowOfferWallWithPlacement(String str) {
    }

    public IronSourceOfferWall(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.offerWallAvailable = false;
        this.activity = componentContainer.$context();
        SupersonicConfig.getConfigObj().setClientSideCallbacks(true);
    }

    @Override // com.google.appinventor.components.runtime.OnPauseListener
    public void onPause() {
        IronSource.onPause(this.activity);
    }

    @Override // com.google.appinventor.components.runtime.OnResumeListener
    public void onResume() {
        IronSource.onResume(this.activity);
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "IronSource OfferWall AppKey")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void AppKey(String str) {
        this.appKey = str;
    }

    @SimpleProperty(description = "Ironsource AppKey")
    public String AppKey() {
        return this.appKey;
    }

    @SimpleFunction(description = "Check if OfferWall is Available")
    public boolean IsOfferWallAvailable() {
        return this.offerWallAvailable;
    }

    @SimpleFunction(description = "Only to Validate if the Integration was Successful")
    public void ValidateIntegration() {
        IntegrationHelper.validateIntegration(this.activity);
    }

    @SimpleEvent(description = "Ad Availability Changed")
    public void OfferWallAvailabilityChanged(boolean z) {
        EventDispatcher.dispatchEvent(this, "OfferWallAvailabilityChanged", Boolean.valueOf(z));
    }

    @SimpleEvent(description = "Ad Failed To Display")
    public void OfferWallFailedToDisplay(String str) {
        EventDispatcher.dispatchEvent(this, "OfferWallFailedToDisplay", str);
    }

    @SimpleEvent(description = "Ad Opened")
    public void OfferWallOpened() {
        EventDispatcher.dispatchEvent(this, "OfferWallOpened", new Object[0]);
    }

    @SimpleEvent(description = "Ad Closed")
    public void OfferWallClosed() {
        EventDispatcher.dispatchEvent(this, "OfferWallClosed", new Object[0]);
    }

    @SimpleEvent(description = "Event Called When User has Completed some offer. Important! If totalled is true, credited amount will be the same as total amount.")
    public void OfferWallCredited(int i, int i2, boolean z) {
        EventDispatcher.dispatchEvent(this, "OfferWallCredited", Integer.valueOf(i), Integer.valueOf(i2), Boolean.valueOf(z));
    }

    @SimpleEvent(description = "Failed to credit to the user due to some reason")
    public void OfferWallFailedToCredit(String str) {
        EventDispatcher.dispatchEvent(this, "OfferWallFailedToCredit", str);
    }
}
