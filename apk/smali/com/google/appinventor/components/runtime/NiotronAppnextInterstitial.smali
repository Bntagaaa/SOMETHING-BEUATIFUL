.class public final Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Interstitial Ad Of Appnext"
    iconName = "images/niotronAppnextInterstitial.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "appnext-banners.aar, appnext-banners.jar, appnext-core.aar, appnext-core.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, work-runtime.aar, work-runtime.jar, play-services-basement.aar, play-services-basement.jar, glide.aar, glide.jar, room-runtime.aar, room-runtime.jar, sqlite-framework.aar, sqlite-framework.jar, sqlite.aar, sqlite.jar, gifdecoder.aar, gifdecoder.jar, exifinterface.aar, exifinterface.jar, annotation.jar, disklrucache.jar, glide-annotations.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.GET_TASKS,android.permission.PACKAGE_USAGE_STATS,android.permission.RECEIVE_BOOT_COMPLETED"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private adUnitId:Ljava/lang/String;

.field private autoPlay:Z

.field private context:Landroid/content/Context;

.field private interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

.field private mute:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 38
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->adUnitId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->autoPlay:Z

    .line 35
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->mute:Z

    .line 39
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->context:Landroid/content/Context;

    .line 40
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad clicked"
    .end annotation

    const/4 v0, 0x0

    .line 65
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClicked"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad closed"
    .end annotation

    const/4 v0, 0x0

    .line 55
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClosed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdErrorOccurred(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Error Occurred in ad"
    .end annotation

    .line 75
    const-string v0, "AdErrorOccurred"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad loaded"
    .end annotation

    const/4 v0, 0x0

    .line 60
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdOpened()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad opened"
    .end annotation

    const/4 v0, 0x0

    .line 70
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdOpened"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdUnitID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Ad Unit Id"
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->adUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public AdUnitID(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Remember That Ad Unit Id Can Only Be Set Once"
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->adUnitId:Ljava/lang/String;

    .line 111
    new-instance v0, Lcom/appnext/ads/interstitial/Interstitial;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/appnext/ads/interstitial/Interstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    .line 112
    new-instance p1, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;)V

    invoke-virtual {v0, p1}, Lcom/appnext/ads/interstitial/Interstitial;->setOnAdLoadedCallback(Lcom/appnext/core/callbacks/OnAdLoaded;)V

    .line 118
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;)V

    invoke-virtual {p1, v0}, Lcom/appnext/ads/interstitial/Interstitial;->setOnAdOpenedCallback(Lcom/appnext/core/callbacks/OnAdOpened;)V

    .line 123
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$3;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;)V

    invoke-virtual {p1, v0}, Lcom/appnext/ads/interstitial/Interstitial;->setOnAdClickedCallback(Lcom/appnext/core/callbacks/OnAdClicked;)V

    .line 128
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$4;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$4;-><init>(Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;)V

    invoke-virtual {p1, v0}, Lcom/appnext/ads/interstitial/Interstitial;->setOnAdClosedCallback(Lcom/appnext/core/callbacks/OnAdClosed;)V

    .line 133
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$5;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$5;-><init>(Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;)V

    invoke-virtual {p1, v0}, Lcom/appnext/ads/interstitial/Interstitial;->setOnAdErrorCallback(Lcom/appnext/core/callbacks/OnAdError;)V

    return-void
.end method

.method public AutoPlay(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set Auto Play"
    .end annotation

    .line 81
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->autoPlay:Z

    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0, p1}, Lcom/appnext/ads/interstitial/Interstitial;->setAutoPlay(Z)V

    return-void
.end method

.method public AutoPlay()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get Auto Play"
    .end annotation

    .line 87
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->autoPlay:Z

    return v0
.end method

.method public IsAdLoaded()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Checks if ad os loaded"
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->isAdLoaded()Z

    move-result v0

    return v0
.end method

.method public LoadAd()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load ad"
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->loadAd()V

    :cond_0
    return-void
.end method

.method public Mute(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set Mute"
    .end annotation

    .line 93
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->mute:Z

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0, p1}, Lcom/appnext/ads/interstitial/Interstitial;->setMute(Z)V

    return-void
.end method

.method public Mute()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get Mute"
    .end annotation

    .line 99
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->mute:Z

    return v0
.end method

.method public ShowAd()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows the loaded ad"
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->showAd()V

    :cond_0
    return-void
.end method
