.class public final Lcom/google/appinventor/components/runtime/AppsFlyer;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "AppsFlyer Ads is a mobile marketing and attribution platform that helps businesses optimize ad campaigns across multiple channels. It offers advanced targeting, fraud protection, and real-time analytics, enabling precise audience targeting and deep insights into user behavior. By integrating with various marketing tools, AppsFlyer Ads enhances ad performance and maximizes ROI."
    iconName = "images/appsFlyerAds.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "adrevenue.aar, adrevenue.jar, af-android-sdk.aar, af-android-sdk.jar, installreferrer.aar, installreferrer.jar, lvl.aar, lvl.jar, firebase-messaging.aar, firebase-messaging.jar, firebase-datatransport.aar, firebase-datatransport.jar, transport-backend-cct.aar, transport-backend-cct.jar, transport-runtime.aar, transport-runtime.jar, firebase-encoders-json.aar, firebase-encoders-json.jar, firebase-encoders-proto.jar, firebase-encoders.jar, firebase-installations.aar, firebase-installations.jar, firebase-common.aar, firebase-common.jar, firebase-components.aar, firebase-components.jar, firebase-installations-interop.aar, firebase-installations-interop.jar, transport-api.aar, transport-api.jar, play-services-base.aar, play-services-base.jar, play-services-stats.aar, play-services-stats.jar, firebase-measurement-connector.aar, firebase-measurement-connector.jar, firebase-iid-interop.aar, firebase-iid-interop.jar, play-services-cloud-messaging.aar, play-services-cloud-messaging.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, annotation.jar, firebase-annotations.jar, javax.inject.jar"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field devKey:Ljava/lang/String;

.field private hasConsentForAdsPersonalization:Z

.field private hasConsentForDataUsage:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 56
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 57
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppsFlyer;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public AnonymizeUser()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = " Anonymize a user\'s installs, events, and sessions."
    .end annotation

    .line 206
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->anonymizeUser(Z)V

    return-void
.end method

.method public ConsentForAdsPersonalization(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gives consent for data usage"
    .end annotation

    .line 81
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AppsFlyer;->hasConsentForAdsPersonalization:Z

    return-void
.end method

.method public ConsentForDataUsage(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gives consent for data usage"
    .end annotation

    .line 75
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AppsFlyer;->hasConsentForDataUsage:Z

    return-void
.end method

.method public ConversionDataFail(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event when conversion data fails"
    .end annotation

    .line 211
    const-string v0, "ConversionDataFail"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ConversionDataSuccess(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event for conversion data success"
    .end annotation

    .line 216
    const-string v0, "ConversionDataSuccess"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DebugLog(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Enables debug mode"
    .end annotation

    .line 69
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsflyer/AppsFlyerLib;->setDebugLog(Z)V

    return-void
.end method

.method public DevKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Dev key for appsflyer ads"
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppsFlyer;->devKey:Ljava/lang/String;

    return-void
.end method

.method public FailedLoggingError(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when event logging fails"
    .end annotation

    .line 236
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "FailedLoggingError"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InitializeSDK()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initialize the SDK"
    .end annotation

    .line 87
    :try_start_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppsFlyer;->devKey:Ljava/lang/String;

    new-instance v2, Lcom/google/appinventor/components/runtime/AppsFlyer$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/AppsFlyer$1;-><init>(Lcom/google/appinventor/components/runtime/AppsFlyer;)V

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/AppsFlyer;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;

    .line 116
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppsFlyer;->hasConsentForDataUsage:Z

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/AppsFlyer;->hasConsentForAdsPersonalization:Z

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerConsent;->forGDPRUser(ZZ)Lcom/appsflyer/AppsFlyerConsent;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appsflyer/AppsFlyerLib;->setConsentData(Lcom/appsflyer/AppsFlyerConsent;)V

    .line 119
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppsFlyer;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AppsFlyer;->devKey:Ljava/lang/String;

    new-instance v3, Lcom/google/appinventor/components/runtime/AppsFlyer$2;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/AppsFlyer$2;-><init>(Lcom/google/appinventor/components/runtime/AppsFlyer;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 131
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppsFlyer;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public LaunchFailed(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event for launch failed"
    .end annotation

    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "LaunchFailed"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LaunchSuccess()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event for launch success"
    .end annotation

    const/4 v0, 0x0

    .line 226
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LaunchSuccess"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LogAdRevenue(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Record ad revenue"
    .end annotation

    .line 164
    const-string v0, "admob"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    sget-object p2, Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;->googleadmob:Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;

    goto/16 :goto_0

    .line 166
    :cond_0
    const-string v0, "admost"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    sget-object p2, Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;->Admost:Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;

    goto/16 :goto_0

    .line 168
    :cond_1
    const-string v0, "applovinmax"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    sget-object p2, Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;->applovinmax:Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;

    goto :goto_0

    .line 170
    :cond_2
    const-string v0, "appodeal"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    sget-object p2, Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;->appodeal:Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;

    goto :goto_0

    .line 172
    :cond_3
    const-string v0, "chartboost"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    sget-object p2, Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;->chartboost:Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;

    goto :goto_0

    .line 174
    :cond_4
    const-string v0, "fyber"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 175
    sget-object p2, Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;->fyber:Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;

    goto :goto_0

    .line 176
    :cond_5
    const-string v0, "ironsource"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 177
    sget-object p2, Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;->ironsource:Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;

    goto :goto_0

    .line 178
    :cond_6
    const-string v0, "topon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 179
    sget-object p2, Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;->Topon:Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;

    goto :goto_0

    .line 180
    :cond_7
    const-string v0, "tradplus"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 181
    sget-object p2, Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;->Tradplus:Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;

    goto :goto_0

    .line 182
    :cond_8
    const-string v0, "unity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 183
    sget-object p2, Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;->Unity:Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;

    goto :goto_0

    .line 184
    :cond_9
    const-string v0, "yandex"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 185
    sget-object p2, Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;->Yandex:Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;

    goto :goto_0

    .line 187
    :cond_a
    sget-object p2, Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;->customMediation:Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;

    .line 190
    :goto_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 193
    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    .line 194
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const/4 p4, 0x0

    .line 190
    invoke-static {p1, p2, v0, p3, p4}, Lcom/appsflyer/adrevenue/AppsFlyerAdRevenue;->logAdRevenue(Ljava/lang/String;Lcom/appsflyer/adrevenue/adnetworks/generic/MediationNetwork;Ljava/util/Currency;Ljava/lang/Double;Ljava/util/Map;)V

    return-void
.end method

.method public LogEvent(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Log events related to app context"
    .end annotation

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 139
    invoke-virtual {p2}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 140
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 141
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 147
    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppsFlyer;->context:Landroid/content/Context;

    new-instance v2, Lcom/google/appinventor/components/runtime/AppsFlyer$3;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/AppsFlyer$3;-><init>(Lcom/google/appinventor/components/runtime/AppsFlyer;)V

    invoke-virtual {p2, v1, p1, v0, v2}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    return-void
.end method

.method public LoggedEvent()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when event logged successfully"
    .end annotation

    const/4 v0, 0x0

    .line 231
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LoggedEvent"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Stop()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stops collecting logs"
    .end annotation

    .line 201
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AppsFlyer;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->stop(ZLandroid/content/Context;)V

    return-void
.end method
