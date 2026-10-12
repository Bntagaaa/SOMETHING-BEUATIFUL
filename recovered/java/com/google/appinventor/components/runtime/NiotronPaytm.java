package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
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
import com.paytm.pgsdk.PaytmClientCertificate;
import com.paytm.pgsdk.PaytmOrder;
import com.paytm.pgsdk.PaytmPGService;
import com.paytm.pgsdk.PaytmPaymentTransactionCallback;
import java.util.HashMap;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, android.permission.WRITE_EXTERNAL_STORAGE, android.permission.READ_EXTERNAL_STORAGE")
@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Paytm Payment Component <br> SDK Version: 2.0.0", iconName = "images/niotronPaytm.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "paytm.aar, paytm.jar, gson.jar, okhttp.jar, okio-jvm.jar")
/* loaded from: classes.dex */
public final class NiotronPaytm extends AndroidNonvisibleComponent {
    private Activity activity;
    private String callbackUrl;
    private Context context;
    private String merchantId;
    private boolean sendResponseToServer;
    private boolean showHeader;
    private boolean testMode;

    public NiotronPaytm(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.callbackUrl = "https://pguat.paytm.com/paytmchecksum/paytmCallback.jsp";
        this.showHeader = false;
        this.sendResponseToServer = false;
        this.testMode = false;
        this.context = this.form.$context();
        this.activity = this.form.$context();
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Paytm Merchant Id")
    @DesignerProperty(defaultValue = "")
    public void MerchantId(String str) {
        this.merchantId = str;
    }

    @SimpleProperty(description = "Paytm Merchant Id")
    public String MerchantId() {
        return this.merchantId;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Paytm Callback Url")
    @DesignerProperty(defaultValue = "https://pguat.paytm.com/paytmchecksum/paytmCallback.jsp")
    public void CallbackUrl(String str) {
        this.callbackUrl = str;
    }

    @SimpleProperty(description = "Paytm Merchant Id")
    public String CallbackUrl() {
        return this.callbackUrl;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Show Paytm Header")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ShowHeader(boolean z) {
        this.showHeader = z;
    }

    @SimpleProperty(description = "Show Paytm Header")
    public boolean ShowHeader() {
        return this.showHeader;
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, description = "Send Response to PG Server")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void SendResponseToServer(boolean z) {
        this.sendResponseToServer = z;
    }

    @SimpleProperty(description = "Send Response to PG Server")
    public boolean SendResponseToServer() {
        return this.sendResponseToServer;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Test Mode for Paytm")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void TestMode(boolean z) {
        this.testMode = z;
    }

    @SimpleProperty(description = "Test Mode for Paytm")
    public boolean TestMode() {
        return this.testMode;
    }

    @SimpleFunction(description = "Starts the payment")
    public void StartPayment(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        PaytmPGService productionService;
        if (this.testMode) {
            productionService = PaytmPGService.getStagingService("");
        } else {
            productionService = PaytmPGService.getProductionService();
        }
        HashMap map = new HashMap();
        map.put("MID", this.merchantId);
        map.put("ORDER_ID", str);
        map.put("CUST_ID", str2);
        map.put("CHANNEL_ID", str3);
        map.put("TXN_AMOUNT", str4);
        map.put("WEBSITE", str5);
        map.put("CALLBACK_URL", this.callbackUrl);
        map.put("CHECKSUMHASH", str6);
        map.put("INDUSTRY_TYPE_ID", str7);
        productionService.initialize(new PaytmOrder(map), (PaytmClientCertificate) null);
        productionService.startPaymentTransaction(this.context, this.showHeader, this.sendResponseToServer, new PaytmPaymentTransactionCallback() { // from class: com.google.appinventor.components.runtime.NiotronPaytm.1
            public void onTransactionResponse(Bundle bundle) {
                NiotronPaytm.this.TransactionResponse(bundle.toString(), bundle.getString("STATUS"));
            }

            public void networkNotAvailable() {
                NiotronPaytm.this.NetworkNotAvailable();
            }

            public void clientAuthenticationFailed(String str8) {
                NiotronPaytm.this.ClientAuthenticationFailed();
            }

            public void someUIErrorOccurred(String str8) {
                NiotronPaytm.this.ErrorOccurred(str8);
            }

            public void onErrorLoadingWebPage(int i, String str8, String str9) {
                NiotronPaytm.this.ErrorLoadingWebPage(i, str8, str9);
            }

            public void onBackPressedCancelTransaction() {
                NiotronPaytm.this.TransactionCancelled();
            }

            public void onTransactionCancel(String str8, Bundle bundle) {
                NiotronPaytm.this.TransactionCancelled();
            }
        });
    }

    @SimpleEvent(description = "Transaction Response Received")
    public void TransactionResponse(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "TransactionResponse", str, str2);
    }

    @SimpleEvent(description = "Network Not Available")
    public void NetworkNotAvailable() {
        EventDispatcher.dispatchEvent(this, "NetworkNotAvailable", new Object[0]);
    }

    @SimpleEvent(description = "Some Error Occurred")
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }

    @SimpleEvent(description = "Client Authentication Failed")
    public void ClientAuthenticationFailed() {
        EventDispatcher.dispatchEvent(this, "ClientAuthenticationFailed", new Object[0]);
    }

    @SimpleEvent(description = "Client Authentication Failed")
    public void ErrorLoadingWebPage(int i, String str, String str2) {
        EventDispatcher.dispatchEvent(this, "ErrorLoadingWebPage", Integer.valueOf(i), str, str2);
    }

    @SimpleEvent(description = "Transaction Cancelled")
    public void TransactionCancelled() {
        EventDispatcher.dispatchEvent(this, "TransactionCancelled", new Object[0]);
    }
}
