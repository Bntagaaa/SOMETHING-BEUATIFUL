.class public final Lcom/google/appinventor/components/runtime/NiotronMoPubCore;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "MoPub Core component, must be used when using any MoPub ad component"
    iconName = "images/niotronMobPubCore.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "mopub-sdk-util.aar, mopub-sdk-util.jar, mopub-sdk-banner.jar, mopub-sdk-banner.aar, mopub-sdk-fullscreen.jar, mopub-sdk-fullscreen.aar, mopub-sdk-base.jar, mopub-sdk-base.aar, gson.jar, mopub-sdk-networking.jar, mopub-sdk-networking.aar, kotlin-android-extensions-runtime.jar, kotlin-stdlib-common.jar, annotations.jar, kotlin-stdlib-jdk7.jar, legacy-support-v4.aar, legacy-support-v4.jar, mopub-volley.jar, omsdk-android.jar, omsdk-android.aar, mopub-sdk.jar, mopub-sdk.aar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-basement.aar, play-services-basement.jar"
.end annotation


# instance fields
.field private componentContainer:Lcom/google/appinventor/components/runtime/ComponentContainer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 41
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 42
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMoPubCore;->componentContainer:Lcom/google/appinventor/components/runtime/ComponentContainer;

    return-void
.end method


# virtual methods
.method public AdUnitId(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "text"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets ad unit id"
    .end annotation

    .line 48
    new-instance v0, Lcom/mopub/common/SdkConfiguration$Builder;

    invoke-direct {v0, p1}, Lcom/mopub/common/SdkConfiguration$Builder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    .line 49
    invoke-virtual {v0, p1}, Lcom/mopub/common/SdkConfiguration$Builder;->withLogLevel(Lcom/mopub/common/logging/MoPubLog$LogLevel;)Lcom/mopub/common/SdkConfiguration$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1, v0}, Lcom/mopub/common/SdkConfiguration$Builder;->withLegitimateInterestAllowed(Z)Lcom/mopub/common/SdkConfiguration$Builder;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/mopub/common/SdkConfiguration$Builder;->build()Lcom/mopub/common/SdkConfiguration;

    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMoPubCore;->componentContainer:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronMoPubCore$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronMoPubCore$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronMoPubCore;)V

    invoke-static {v0, p1, v1}, Lcom/mopub/common/MoPub;->initializeSdk(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V

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
