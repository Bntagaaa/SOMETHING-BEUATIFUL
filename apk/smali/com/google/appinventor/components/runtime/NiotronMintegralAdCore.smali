.class public final Lcom/google/appinventor/components/runtime/NiotronMintegralAdCore;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A new component "
    iconName = "images/niotronMintegralAdCore.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "mbridge_mbjscommon.aar,mbridge_same.aar,mbridge_mbjscommon.jar,mbridge_same.jar"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field appId:Ljava/lang/String;

.field appKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 39
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralAdCore;->appId:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralAdCore;->appKey:Ljava/lang/String;

    .line 40
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralAdCore;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public AppId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the app id"
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralAdCore;->appId:Ljava/lang/String;

    return-void
.end method

.method public AppKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the app key"
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralAdCore;->appKey:Ljava/lang/String;

    return-void
.end method

.method public InitSDK()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initialize the SDK"
    .end annotation

    .line 45
    invoke-static {}, Lcom/mbridge/msdk/out/MBridgeSDKFactory;->getMBridgeSDK()Lcom/mbridge/msdk/system/a;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralAdCore;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralAdCore;->appKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/MBridgeSDK;->getMBConfigurationMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralAdCore;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/google/appinventor/components/runtime/NiotronMintegralAdCore$1;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/NiotronMintegralAdCore$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronMintegralAdCore;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/mbridge/msdk/MBridgeSDK;->init(Ljava/util/Map;Landroid/content/Context;Lcom/mbridge/msdk/out/SDKInitStatusListener;)V

    return-void
.end method

.method public SDKFailedToInitialize(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "SDK failed to initialized"
    .end annotation

    .line 67
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
        description = "SDK initialized"
    .end annotation

    const/4 v0, 0x0

    .line 62
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SDKInitialized"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
