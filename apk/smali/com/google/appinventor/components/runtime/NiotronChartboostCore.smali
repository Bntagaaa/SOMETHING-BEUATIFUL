.class public final Lcom/google/appinventor/components/runtime/NiotronChartboostCore;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Chartboost core component, this component is must required to use any chartboost ads component. <br> SDK Version: 8.3.0"
    iconName = "images/niotronChartboostCore.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "chartboost-sdk.aar, chartboost-sdk.jar, play-services-auth.aar, play-services-auth.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-appset.aar, play-services-appset.jar, exoplayer-core.aar, exoplayer-core.jar, play-services-auth-api-phone.aar, play-services-auth-api-phone.jar, play-services-auth-base.aar, play-services-auth-base.jar, play-services-fido.aar, play-services-fido.jar, play-services-base.aar, play-services-base.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, exoplayer-datasource.aar, exoplayer-datasource.jar, exoplayer-extractor.aar, exoplayer-extractor.jar, exoplayer-decoder.aar, exoplayer-decoder.jar, exoplayer-database.aar, exoplayer-database.jar, exoplayer-common.aar, exoplayer-common.jar, annotation.jar, failureaccess.jar"
.end annotation


# instance fields
.field public appId:Ljava/lang/String;

.field public appSignature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 34
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    return-void
.end method

.method private synthetic lambda$InitializeSDK$0(Lcom/chartboost/sdk/events/StartError;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/chartboost/sdk/events/StartError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->InitializeFailed(Ljava/lang/String;)V

    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->SDKInitialized()V

    return-void
.end method


# virtual methods
.method public AppId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "text"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set app id"
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->appId:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->InitializeSDK()V

    return-void
.end method

.method public AppSignature(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "text"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set app signature"
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->appSignature:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->InitializeSDK()V

    return-void
.end method

.method public InitializeFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Initialization failed"
    .end annotation

    .line 74
    const-string v0, "InitializeFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InitializeSDK()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->appSignature:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->appId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->appSignature:Ljava/lang/String;

    new-instance v3, Lcom/google/appinventor/components/runtime/a;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/callbacks/StartCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->InitializeFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public SDKInitialized()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "SDK initialized"
    .end annotation

    const/4 v0, 0x0

    .line 69
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SDKInitialized"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
