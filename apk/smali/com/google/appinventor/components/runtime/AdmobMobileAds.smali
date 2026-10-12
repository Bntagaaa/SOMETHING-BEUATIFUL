.class public final Lcom/google/appinventor/components/runtime/AdmobMobileAds;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0x15
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Sdk Support for Admob. Required for Using any Admob Component. SDK Version: 21.4.0"
    iconName = "images/admob.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "play-services-ads.aar, play-services-ads.jar, browser.aar, browser.jar, play-services-ads-base.aar, play-services-ads-base.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-basement.aar, play-services-basement.jar, play-services-base.jar, play-services-base.aar, play-services-ads-lite.aar, play-services-ads-lite.jar, play-services-measurement-sdk-api.aar, play-services-measurement-sdk-api.jar, play-services-measurement-base.aar, play-services-measurement-base.jar, work-runtime.aar, work-runtime.jar, user-messaging-platform.aar, user-messaging-platform.jar, play-services-tasks.jar, play-services-tasks.aar, play-services-appset.jar, play-services-appset.aar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, com.google.android.gms.permission.AD_ID"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private directedForChildren:Z

.field private targetAge:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 47
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/google/appinventor/components/runtime/AdmobMobileAds;->targetAge:I

    .line 39
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdmobMobileAds;->directedForChildren:Z

    .line 49
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobMobileAds;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public AdInspectorClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Inspector Closed"
    .end annotation

    const/4 v0, 0x0

    .line 155
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdInspectorClosed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DirectedForChildren(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->PUBLISHING:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Targeting for Children"
    .end annotation

    .line 85
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdmobMobileAds;->directedForChildren:Z

    .line 86
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 90
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    .line 98
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    return-void
.end method

.method public DirectedForChildren()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Targeting for Children"
    .end annotation

    .line 103
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdmobMobileAds;->directedForChildren:Z

    return v0
.end method

.method public GetInitializationStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Initialization Status of Any Ad Adapter in Admob"
    .end annotation

    .line 123
    const-string v0, "Not Ready"

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getInitializationStatus()Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/ads/initialization/InitializationStatus;->getAdapterStatusMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/initialization/AdapterStatus;

    invoke-interface {p1}, Lcom/google/android/gms/ads/initialization/AdapterStatus;->getInitializationState()Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/ads/initialization/AdapterStatus$State;->READY:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    if-ne p1, v1, :cond_0

    .line 124
    const-string p1, "Ready"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    return-object v0
.end method

.method public InitializeMobileAds(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initialize Mobile Ads SDK for Admob. This function should be called in Screen Initialize. \'disableMediationAdapter\' can be true of false depending on if you want to use mediation adapter."
    .end annotation

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobMobileAds;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/ads/MobileAds;->disableMediationAdapterInitialization(Landroid/content/Context;)V

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobMobileAds;->context:Landroid/content/Context;

    new-instance v0, Lcom/google/appinventor/components/runtime/AdmobMobileAds$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/AdmobMobileAds$1;-><init>(Lcom/google/appinventor/components/runtime/AdmobMobileAds;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    return-void
.end method

.method public OpenAdInspector()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Open Ad Inspector. Ad inspector is an in-app overlay that enables authorized devices to perform real-time analysis of test ad requests directly within a mobile app"
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobMobileAds;->context:Landroid/content/Context;

    new-instance v1, Lcom/google/appinventor/components/runtime/AdmobMobileAds$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/AdmobMobileAds$2;-><init>(Lcom/google/appinventor/components/runtime/AdmobMobileAds;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/MobileAds;->openAdInspector(Landroid/content/Context;Lcom/google/android/gms/ads/OnAdInspectorClosedListener;)V

    return-void
.end method

.method public OpenDebugMenu(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Open Debug Menu for an Ad Unit"
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobMobileAds;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/MobileAds;->openDebugMenu(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public SdkInitialized()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "SDK Initialized"
    .end annotation

    const/4 v0, 0x0

    .line 150
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SdkInitialized"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TargetAge()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Users Targeted Age"
    .end annotation

    .line 79
    iget v0, p0, Lcom/google/appinventor/components/runtime/AdmobMobileAds;->targetAge:I

    return v0
.end method

.method public TargetAge(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->PRIVACY:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Users Age"
    .end annotation

    .line 55
    iput p1, p0, Lcom/google/appinventor/components/runtime/AdmobMobileAds;->targetAge:I

    .line 56
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    const/4 v1, 0x7

    if-lez p1, :cond_0

    if-ge p1, v1, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    const-string v1, "G"

    .line 59
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setMaxAdContentRating(Ljava/lang/String;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    if-lt p1, v1, :cond_1

    if-ge p1, v2, :cond_1

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    const-string v1, "PG"

    .line 63
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setMaxAdContentRating(Ljava/lang/String;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    goto :goto_0

    :cond_1
    const/16 v1, 0x12

    if-lt p1, v2, :cond_2

    if-ge p1, v1, :cond_2

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    const-string v1, "T"

    .line 67
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setMaxAdContentRating(Ljava/lang/String;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    goto :goto_0

    :cond_2
    if-lt p1, v1, :cond_3

    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    const-string v1, "MA"

    .line 71
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setMaxAdContentRating(Ljava/lang/String;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    .line 74
    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    return-void
.end method
