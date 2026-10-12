.class public final Lcom/google/appinventor/components/runtime/NiotronVungleCore;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Core component for vungle ads components, this component must be used to use any vungle ads component. <br> SDK Version: 6.12.0"
    iconName = "images/niotronVungleCore.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "vungle-ads.aar, vungle-ads.jar, okhttp.jar, okio-jvm.jar, kotlinx-serialization-json-jvm.jar, kotlinx-serialization-core-jvm.jar, protobuf-javalite.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, android.permission.ACCESS_WIFI_STATE"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private appId:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 37
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleCore;->appId:Ljava/lang/String;

    .line 38
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVungleCore;->context:Landroid/content/Context;

    .line 39
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVungleCore;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public AppId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Your Vungle Ads App Id"
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVungleCore;->appId:Ljava/lang/String;

    return-void
.end method

.method public InitializeSDK()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleCore;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronVungleCore;->appId:Ljava/lang/String;

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronVungleCore$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/NiotronVungleCore$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronVungleCore;)V

    invoke-static {v0, v1, v2}, Lcom/vungle/ads/VungleAds;->init(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/InitializationListener;)V

    return-void
.end method

.method public IsInitialized()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 65
    invoke-static {}, Lcom/vungle/ads/VungleAds;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public SDKFailedToInitialize(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 74
    const-string v0, "SDKFailedToInitialize"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SDKInitialized()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 70
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SDKInitialized"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
