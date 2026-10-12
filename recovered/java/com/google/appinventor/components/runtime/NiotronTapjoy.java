package com.google.appinventor.components.runtime;

import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.tapjoy.TJActionRequest;
import com.tapjoy.TJConnectListener;
import com.tapjoy.TJError;
import com.tapjoy.TJGetCurrencyBalanceListener;
import com.tapjoy.TJPlacement;
import com.tapjoy.TJPlacementListener;
import com.tapjoy.Tapjoy;
import java.util.Hashtable;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Tapjoy component for monetization", iconName = "images/niotronTapjoy.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "tapjoy.jar, tapjoy.aar, play-services-ads-identifier.aar, play-services-ads-identifier.jar,        play-services-basement.aar, play-services-basement.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronTapjoy extends AndroidNonvisibleComponent implements TJPlacementListener {
    private ComponentContainer container;

    public void onPurchaseRequest(TJPlacement tJPlacement, TJActionRequest tJActionRequest, String str) {
    }

    public void onRewardRequest(TJPlacement tJPlacement, TJActionRequest tJActionRequest, String str, int i) {
    }

    public NiotronTapjoy(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.container = componentContainer;
    }

    @SimpleFunction
    public void ConnectSDK(String str) {
        Hashtable hashtable = new Hashtable();
        hashtable.put("TJC_OPTION_ENABLE_LOGGING", "true");
        Tapjoy.connect(this.container.$context(), str, hashtable, new TJConnectListener() { // from class: com.google.appinventor.components.runtime.NiotronTapjoy.1
            public void onConnectSuccess() {
                NiotronTapjoy.this.ConnectSuccess();
                Tapjoy.setActivity(NiotronTapjoy.this.container.$context());
            }

            public void onConnectFailure() {
                NiotronTapjoy.this.ConnectFail();
            }
        });
    }

    @SimpleFunction
    public void LoadPlacement(String str) {
        new TJPlacement(this.container.$context(), str, this).requestContent();
    }

    @SimpleFunction
    public void ShowPlacement(Object obj) {
        ((TJPlacement) obj).showContent();
    }

    @SimpleFunction
    public void GetCurrency() {
        Tapjoy.getCurrencyBalance(new TJGetCurrencyBalanceListener() { // from class: com.google.appinventor.components.runtime.NiotronTapjoy.2
            public void onGetCurrencyBalanceResponse(String str, int i) {
                NiotronTapjoy.this.GotCurrencyBalance(str, i);
            }

            public void onGetCurrencyBalanceResponseFailure(String str) {
                NiotronTapjoy.this.CurrencyResponseFailure(str);
            }
        });
    }

    @SimpleEvent
    public void ConnectSuccess() {
        EventDispatcher.dispatchEvent(this, "ConnectSuccess", new Object[0]);
    }

    @SimpleEvent
    public void ConnectFail() {
        EventDispatcher.dispatchEvent(this, "ConnectFail", new Object[0]);
    }

    @SimpleEvent
    public void RequestSuccess(Object obj) {
        EventDispatcher.dispatchEvent(this, "RequestSuccess", obj);
    }

    @SimpleEvent
    public void RequestFailure(Object obj, String str) {
        EventDispatcher.dispatchEvent(this, "RequestFailure", obj, str);
    }

    @SimpleEvent
    public void ContentReady(Object obj) {
        EventDispatcher.dispatchEvent(this, "ContentReady", obj);
    }

    @SimpleEvent
    public void ContentShow(Object obj) {
        EventDispatcher.dispatchEvent(this, "ContentShow", obj);
    }

    @SimpleEvent
    public void ContentDismiss(Object obj) {
        EventDispatcher.dispatchEvent(this, "ContentDismiss", obj);
    }

    @SimpleEvent
    public void Click(Object obj) {
        EventDispatcher.dispatchEvent(this, "Click", obj);
    }

    @SimpleEvent
    public void CurrencyResponseFailure(String str) {
        EventDispatcher.dispatchEvent(this, "CurrencyResponseFailure", str);
    }

    @SimpleEvent
    public void GotCurrencyBalance(String str, int i) {
        EventDispatcher.dispatchEvent(this, "GotCurrencyBalance", str, Integer.valueOf(i));
    }

    public void onRequestSuccess(TJPlacement tJPlacement) {
        RequestSuccess(tJPlacement);
    }

    public void onRequestFailure(TJPlacement tJPlacement, TJError tJError) {
        RequestFailure(tJPlacement, tJError.message);
    }

    public void onContentReady(TJPlacement tJPlacement) {
        ContentReady(tJPlacement);
    }

    public void onContentShow(TJPlacement tJPlacement) {
        ContentShow(tJPlacement);
    }

    public void onContentDismiss(TJPlacement tJPlacement) {
        ContentDismiss(tJPlacement);
    }

    public void onClick(TJPlacement tJPlacement) {
        Click(tJPlacement);
    }
}
