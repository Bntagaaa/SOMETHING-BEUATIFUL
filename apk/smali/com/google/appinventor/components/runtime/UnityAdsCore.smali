.class public final Lcom/google/appinventor/components/runtime/UnityAdsCore;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsInitializationListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Core Component for using UnityAds Components. Required only in Screen1"
    iconName = "images/unityAdsCore.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "unity-ads.aar, unity-ads.jar, okhttp.jar, activity-ktx.aar, activity-ktx.jar, webkit.aar, webkit.jar, work-runtime-ktx.aar, work-runtime-ktx.jar, work-runtime.aar, work-runtime.jar, play-services-cronet.aar, play-services-cronet.jar, play-services-base.aar, play-services-base.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, savedstate-ktx.aar, savedstate-ktx.jar, lifecycle-viewmodel-ktx.aar, lifecycle-viewmodel-ktx.jar, lifecycle-runtime-ktx.jar, datastore.aar, datastore.jar, datastore-core.jar, okio-jvm.jar, protobuf-kotlin-lite.jar, room-runtime.aar, room-runtime.jar, sqlite-framework.aar, sqlite-framework.jar, sqlite.aar, sqlite.jar, annotation.jar, protobuf-javalite.jar, cronet-api.aar, cronet-api.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.ACCESS_NETWORK_STATE, android.permission.INTERNET, com.google.android.gms.permission.AD_ID, android.permission.ACCESS_ADSERVICES_TOPICS, android.permission.ACCESS_ADSERVICES_ATTRIBUTION"
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private gameId:Ljava/lang/String;

.field private testMode:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 44
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/UnityAdsCore;->gameId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/UnityAdsCore;->testMode:Z

    .line 45
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/UnityAdsCore;->context:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public GameId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the Game ID"
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/UnityAdsCore;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public GameId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the Game ID from Unity Dashboard"
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/UnityAdsCore;->gameId:Ljava/lang/String;

    return-void
.end method

.method public InitializationComplete()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Initialization Complete"
    .end annotation

    const/4 v0, 0x0

    .line 91
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InitializationComplete"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InitializationFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Initialization Failed"
    .end annotation

    .line 96
    const-string v0, "InitializationFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InitializeSDK()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initialize the SDK. Must be called before using any ad components"
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/UnityAdsCore;->gameId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "Game ID is empty"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/UnityAdsCore;->InitializationFailed(Ljava/lang/String;)V

    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/UnityAdsCore;->context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/UnityAdsCore;->gameId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/UnityAdsCore;->testMode:Z

    invoke-static {v0, v1, v2, p0}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/content/Context;Ljava/lang/String;ZLcom/unity3d/ads/IUnityAdsInitializationListener;)V

    return-void
.end method

.method public TestMode(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set testMode to true to see test ads"
    .end annotation

    .line 81
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/UnityAdsCore;->testMode:Z

    return-void
.end method

.method public TestMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get testMode"
    .end annotation

    .line 86
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/UnityAdsCore;->testMode:Z

    return v0
.end method

.method public onInitializationComplete()V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/UnityAdsCore;->InitializationComplete()V

    return-void
.end method

.method public onInitializationFailed(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/UnityAdsCore;->InitializationFailed(Ljava/lang/String;)V

    return-void
.end method
