package com.google.appinventor.components.runtime;

import android.content.Context;
import android.widget.Toast;
import com.appsflyer.AppsFlyerConsent;
import com.appsflyer.AppsFlyerConversionListener;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.adrevenue.AppsFlyerAdRevenue;
import com.appsflyer.adrevenue.adnetworks.generic.MediationNetwork;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.YailDictionary;
import java.util.Currency;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.jetbrains.annotations.NotNull;

@DesignerComponent(category = ComponentCategory.EXPERIMENTAL, description = "AppsFlyer Ads is a mobile marketing and attribution platform that helps businesses optimize ad campaigns across multiple channels. It offers advanced targeting, fraud protection, and real-time analytics, enabling precise audience targeting and deep insights into user behavior. By integrating with various marketing tools, AppsFlyer Ads enhances ad performance and maximizes ROI.", iconName = "images/appsFlyerAds.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "adrevenue.aar, adrevenue.jar, af-android-sdk.aar, af-android-sdk.jar, installreferrer.aar, installreferrer.jar, lvl.aar, lvl.jar, firebase-messaging.aar, firebase-messaging.jar, firebase-datatransport.aar, firebase-datatransport.jar, transport-backend-cct.aar, transport-backend-cct.jar, transport-runtime.aar, transport-runtime.jar, firebase-encoders-json.aar, firebase-encoders-json.jar, firebase-encoders-proto.jar, firebase-encoders.jar, firebase-installations.aar, firebase-installations.jar, firebase-common.aar, firebase-common.jar, firebase-components.aar, firebase-components.jar, firebase-installations-interop.aar, firebase-installations-interop.jar, transport-api.aar, transport-api.jar, play-services-base.aar, play-services-base.jar, play-services-stats.aar, play-services-stats.jar, firebase-measurement-connector.aar, firebase-measurement-connector.jar, firebase-iid-interop.aar, firebase-iid-interop.jar, play-services-cloud-messaging.aar, play-services-cloud-messaging.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, annotation.jar, firebase-annotations.jar, javax.inject.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class AppsFlyer extends AndroidNonvisibleComponent {
    Context context;
    String devKey;
    private boolean hasConsentForAdsPersonalization;
    private boolean hasConsentForDataUsage;

    public AppsFlyer(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.context = componentContainer.$context();
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, description = "Dev key for appsflyer ads")
    @DesignerProperty
    public void DevKey(String str) {
        this.devKey = str;
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, description = "Enables debug mode")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void DebugLog(boolean z) {
        AppsFlyerLib.getInstance().setDebugLog(z);
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, description = "Gives consent for data usage")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ConsentForDataUsage(boolean z) {
        this.hasConsentForDataUsage = z;
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, description = "Gives consent for data usage")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ConsentForAdsPersonalization(boolean z) {
        this.hasConsentForAdsPersonalization = z;
    }

    @SimpleFunction(description = "Initialize the SDK")
    public void InitializeSDK() {
        try {
            AppsFlyerLib.getInstance().init(this.devKey, new AppsFlyerConversionListener() { // from class: com.google.appinventor.components.runtime.AppsFlyer.1
                public void onAppOpenAttribution(java.util.Map<String, String> map) {
                }

                public void onAttributionFailure(String str) {
                }

                public void onConversionDataSuccess(java.util.Map<String, Object> map) {
                    YailDictionary yailDictionary = new YailDictionary();
                    for (Map.Entry<String, Object> entry : map.entrySet()) {
                        yailDictionary.put(entry.getKey(), entry.getValue().toString());
                    }
                    AppsFlyer.this.ConversionDataSuccess(yailDictionary);
                }

                public void onConversionDataFail(String str) {
                    AppsFlyer.this.ConversionDataFail(str);
                }
            }, this.context);
            AppsFlyerLib.getInstance().setConsentData(AppsFlyerConsent.forGDPRUser(this.hasConsentForDataUsage, this.hasConsentForAdsPersonalization));
            AppsFlyerLib.getInstance().start(this.context, this.devKey, new AppsFlyerRequestListener() { // from class: com.google.appinventor.components.runtime.AppsFlyer.2
                public void onSuccess() {
                    AppsFlyer.this.LaunchSuccess();
                }

                public void onError(int i, String str) {
                    AppsFlyer.this.LaunchFailed(i, str);
                }
            });
        } catch (Exception e) {
            Toast.makeText(this.context, e.toString(), 1).show();
        }
    }

    @SimpleFunction(description = "Log events related to app context")
    public void LogEvent(String str, YailDictionary yailDictionary) {
        HashMap map = new HashMap();
        for (Object obj : yailDictionary.keySet()) {
            if (obj instanceof String) {
                map.put((String) obj, yailDictionary.get(obj));
            } else {
                map.put(obj.toString(), yailDictionary.get(obj));
            }
        }
        AppsFlyerLib.getInstance().logEvent(this.context, str, map, new AppsFlyerRequestListener() { // from class: com.google.appinventor.components.runtime.AppsFlyer.3
            public void onSuccess() {
                AppsFlyer.this.LoggedEvent();
            }

            public void onError(int i, @NotNull String str2) {
                AppsFlyer.this.FailedLoggingError(i, str2);
            }
        });
    }

    @SimpleFunction(description = "Record ad revenue")
    public void LogAdRevenue(String str, String str2, double d) {
        MediationNetwork mediationNetwork;
        if (str2.equals("admob")) {
            mediationNetwork = MediationNetwork.googleadmob;
        } else if (str2.equals("admost")) {
            mediationNetwork = MediationNetwork.Admost;
        } else if (str2.equals("applovinmax")) {
            mediationNetwork = MediationNetwork.applovinmax;
        } else if (str2.equals("appodeal")) {
            mediationNetwork = MediationNetwork.appodeal;
        } else if (str2.equals("chartboost")) {
            mediationNetwork = MediationNetwork.chartboost;
        } else if (str2.equals("fyber")) {
            mediationNetwork = MediationNetwork.fyber;
        } else if (str2.equals("ironsource")) {
            mediationNetwork = MediationNetwork.ironsource;
        } else if (str2.equals("topon")) {
            mediationNetwork = MediationNetwork.Topon;
        } else if (str2.equals("tradplus")) {
            mediationNetwork = MediationNetwork.Tradplus;
        } else if (str2.equals("unity")) {
            mediationNetwork = MediationNetwork.Unity;
        } else if (str2.equals("yandex")) {
            mediationNetwork = MediationNetwork.Yandex;
        } else {
            mediationNetwork = MediationNetwork.customMediation;
        }
        AppsFlyerAdRevenue.logAdRevenue(str, mediationNetwork, Currency.getInstance(Locale.US), Double.valueOf(d), (java.util.Map) null);
    }

    @SimpleFunction(description = "Stops collecting logs")
    public void Stop() {
        AppsFlyerLib.getInstance().stop(true, this.context);
    }

    @SimpleFunction(description = " Anonymize a user's installs, events, and sessions.")
    public void AnonymizeUser() {
        AppsFlyerLib.getInstance().anonymizeUser(true);
    }

    @SimpleEvent(description = "Event when conversion data fails")
    public void ConversionDataFail(String str) {
        EventDispatcher.dispatchEvent(this, "ConversionDataFail", str);
    }

    @SimpleEvent(description = "Event for conversion data success")
    public void ConversionDataSuccess(YailDictionary yailDictionary) {
        EventDispatcher.dispatchEvent(this, "ConversionDataSuccess", yailDictionary);
    }

    @SimpleEvent(description = "Event for launch failed")
    public void LaunchFailed(int i, String str) {
        EventDispatcher.dispatchEvent(this, "LaunchFailed", Integer.valueOf(i), str);
    }

    @SimpleEvent(description = "Event for launch success")
    public void LaunchSuccess() {
        EventDispatcher.dispatchEvent(this, "LaunchSuccess", new Object[0]);
    }

    @SimpleEvent(description = "Event triggered when event logged successfully")
    public void LoggedEvent() {
        EventDispatcher.dispatchEvent(this, "LoggedEvent", new Object[0]);
    }

    @SimpleEvent(description = "Event triggered when event logging fails")
    public void FailedLoggingError(int i, String str) {
        EventDispatcher.dispatchEvent(this, "FailedLoggingError", Integer.valueOf(i), str);
    }
}
