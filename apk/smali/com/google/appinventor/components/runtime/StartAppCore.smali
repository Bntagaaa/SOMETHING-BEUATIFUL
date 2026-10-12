.class public final Lcom/google/appinventor/components/runtime/StartAppCore;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "StartAppSdk Core. Required for All StartApp Ads. <br> SDK Version: 4.10.12"
    iconName = "images/startAppCore.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "startapp-inapp-sdk.aar, startapp-inapp-sdk.jar, annotation.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, android.permission.ACCESS_WIFI_STATE, android.permission.ACCESS_NETWORK_STATE, android.permission.RECEIVE_BOOT_COMPLETED, com.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE, com.google.android.gms.permission.AD_ID"
.end annotation


# static fields
.field static SdkInitialized:Z = false


# instance fields
.field private appId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private returnAds:Ljava/lang/Boolean;

.field private splashAds:Ljava/lang/Boolean;

.field private userConsent:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 40
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppCore;->appId:Ljava/lang/String;

    .line 28
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppCore;->returnAds:Ljava/lang/Boolean;

    .line 29
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppCore;->splashAds:Ljava/lang/Boolean;

    .line 30
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppCore;->userConsent:Ljava/lang/Boolean;

    .line 41
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppCore;->context:Landroid/content/Context;

    return-void
.end method

.method private InitializedSdk()V
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppCore;->appId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/StartAppCore;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/StartAppCore;->returnAds:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/startapp/sdk/adsbase/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 48
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppCore;->context:Landroid/content/Context;

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/StartAppCore;->userConsent:Ljava/lang/Boolean;

    .line 51
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 48
    const-string v4, "pas"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/startapp/sdk/adsbase/StartAppSDK;->setUserConsent(Landroid/content/Context;Ljava/lang/String;JZ)V

    .line 53
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppCore;->splashAds:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-static {}, Lcom/startapp/sdk/adsbase/StartAppAd;->disableSplash()V

    :cond_0
    const/4 v0, 0x1

    .line 57
    sput-boolean v0, Lcom/google/appinventor/components/runtime/StartAppCore;->SdkInitialized:Z

    .line 58
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/StartAppCore;->SDKInitialized()V

    return-void
.end method


# virtual methods
.method public AppId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns AppId"
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppCore;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public AppId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "StartApp AppId"
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppCore;->appId:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/StartAppCore;->InitializedSdk()V

    return-void
.end method

.method public ReturnAds(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If An Ad has to be shown when a user returns to the app"
    .end annotation

    .line 76
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppCore;->returnAds:Ljava/lang/Boolean;

    .line 77
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/StartAppCore;->InitializedSdk()V

    return-void
.end method

.method public ReturnAds()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns If ReturnAds are enabled"
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppCore;->returnAds:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public SDKInitialized()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers When the SDK is Initialized"
    .end annotation

    const/4 v0, 0x0

    .line 111
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SDKInitialized"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SplashAds(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Splash Ads are high paying ads that is shown when user opens the app"
    .end annotation

    .line 88
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppCore;->splashAds:Ljava/lang/Boolean;

    .line 89
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/StartAppCore;->InitializedSdk()V

    return-void
.end method

.method public SplashAds()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns If SplashAd is enabled"
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppCore;->splashAds:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public UserConsent(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->PRIVACY:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "User Consent to Show Personalized Ads"
    .end annotation

    .line 100
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppCore;->userConsent:Ljava/lang/Boolean;

    .line 101
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/StartAppCore;->InitializedSdk()V

    return-void
.end method

.method public UserConsent()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns User Consent"
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppCore;->userConsent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
