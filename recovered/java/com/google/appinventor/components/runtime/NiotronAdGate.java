package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import com.adgatemedia.sdk.classes.AdGateMedia;
import com.adgatemedia.sdk.model.Conversion;
import com.adgatemedia.sdk.network.OnConversionsReceived;
import com.adgatemedia.sdk.network.OnOfferWallLoadFailed;
import com.adgatemedia.sdk.network.OnOfferWallLoadSuccess;
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
import com.google.appinventor.components.runtime.util.YailDictionary;
import com.google.gson.JsonObject;
import java.util.HashMap;
import java.util.List;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, android.permission.WRITE_EXTERNAL_STORAGE, android.permission.READ_EXTERNAL_STORAGE")
@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "A new component ", iconName = "images/niotronAdGate.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "adgatemediasdk.jar, adgatemediasdk.aar, play-services-iid.aar, play-services-iid.jar,play-services-ads.aar, play-services-ads.jar, gson.jar, okio-jvm.jar, okhttp.jar, jsr305.jar, connectionclass.jar")
/* loaded from: classes.dex */
public final class NiotronAdGate extends AndroidNonvisibleComponent {
    AdGateMedia adGateMedia;
    Context context;
    HashMap subids;
    String userId;
    String wallCode;

    public NiotronAdGate(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.adGateMedia = AdGateMedia.getInstance();
        this.context = componentContainer.$context();
        this.subids = new HashMap();
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set the wallcode")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void WallCode(String str) {
        this.wallCode = str;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set user id")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void UserId(String str) {
        this.userId = str;
    }

    @SimpleProperty(description = "Set sub ids")
    public void SubId(YailDictionary yailDictionary) {
        this.subids = yailDictionary;
    }

    @SimpleFunction(description = "Loads the offerwall ad")
    public void LoadAd() {
        this.adGateMedia.loadOfferWall(this.context, this.wallCode, this.userId, this.subids, new OnOfferWallLoadSuccess() { // from class: com.google.appinventor.components.runtime.NiotronAdGate.1
            public void onOfferWallLoadSuccess() {
                NiotronAdGate.this.AdLoaded();
            }
        }, new OnOfferWallLoadFailed() { // from class: com.google.appinventor.components.runtime.NiotronAdGate.2
            public void onOfferWallLoadFailed(String str) {
                NiotronAdGate.this.AdLoadFailed(str);
            }
        });
    }

    @SimpleFunction(description = "Shows the offerwall ad")
    public void ShowAd() {
        this.adGateMedia.showOfferWall(this.context, new AdGateMedia.OnOfferWallClosed() { // from class: com.google.appinventor.components.runtime.NiotronAdGate.3
            public void onOfferWallClosed() {
                NiotronAdGate.this.AdClosed();
            }
        });
    }

    @SimpleFunction(description = "Gets the conversion")
    public void GetConversion() {
        this.adGateMedia.getConversions((Activity) this.context, this.wallCode, this.userId, this.subids, new OnConversionsReceived() { // from class: com.google.appinventor.components.runtime.NiotronAdGate.4
            public void onSuccess(List<Conversion> list) {
                for (Conversion conversion : list) {
                    JsonObject jsonObject = new JsonObject();
                    jsonObject.addProperty("Offer ID", Integer.valueOf(conversion.offerId));
                    jsonObject.addProperty("Offer Title", conversion.title);
                    jsonObject.addProperty("Transaction ID", conversion.txId);
                    jsonObject.addProperty("Points Earned", Double.valueOf(conversion.points));
                    jsonObject.addProperty("Payouts In Cents", Integer.valueOf(conversion.payout));
                    jsonObject.addProperty("Sub ID 2", conversion.subid2);
                    jsonObject.addProperty("Sub ID 3", conversion.subid3);
                    jsonObject.addProperty("Sub ID 4", conversion.subid4);
                    jsonObject.addProperty("Sub ID 5", conversion.subid5);
                    NiotronAdGate.this.GotConversionReport(jsonObject.toString());
                }
            }

            public void onError(String str) {
                NiotronAdGate.this.ErrorGettingConversionReport(str);
            }
        });
    }

    @SimpleEvent(description = "Ad loaded successfully")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad load failed")
    public void AdLoadFailed(String str) {
        EventDispatcher.dispatchEvent(this, "AdLoadFailed", str);
    }

    @SimpleEvent(description = "Ad closed")
    public void AdClosed() {
        EventDispatcher.dispatchEvent(this, "AdClosed", new Object[0]);
    }

    @SimpleEvent(description = "Got conversion report")
    public void GotConversionReport(String str) {
        EventDispatcher.dispatchEvent(this, "GotConversionReport", str);
    }

    @SimpleEvent(description = "Error getting conversion report")
    public void ErrorGettingConversionReport(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorGettingConversionReport", str);
    }
}
