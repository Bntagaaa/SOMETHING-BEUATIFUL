.class public final Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Banner Ad Of Appnext"
    iconName = "images/niotronAppnextBanner.png"
    nonVisible = false
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
.field private adUnitId:Ljava/lang/String;

.field private autoPlay:Z

.field private banner:Lcom/appnext/banners/BannerView;

.field private bannerRequest:Lcom/appnext/banners/BannerAdRequest;

.field private context:Landroid/content/Context;

.field private mute:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->adUnitId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->autoPlay:Z

    .line 33
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->mute:Z

    .line 39
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->context:Landroid/content/Context;

    .line 40
    new-instance v0, Lcom/appnext/banners/BannerView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/appnext/banners/BannerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->banner:Lcom/appnext/banners/BannerView;

    .line 41
    new-instance v0, Lcom/appnext/banners/BannerAdRequest;

    invoke-direct {v0}, Lcom/appnext/banners/BannerAdRequest;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->bannerRequest:Lcom/appnext/banners/BannerAdRequest;

    .line 42
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method


# virtual methods
.method public AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad clicked"
    .end annotation

    const/4 v0, 0x0

    .line 118
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClicked"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdErrorOccurred(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad error occurred"
    .end annotation

    .line 128
    const-string v0, "AdErrorOccurred"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdImpression()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad impression counted"
    .end annotation

    const/4 v0, 0x0

    .line 123
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdImpression"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad loaded"
    .end annotation

    const/4 v0, 0x0

    .line 113
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdUnitID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->adUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public AdUnitID(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Remember That Ad Unit Id Can Only Be Set Once"
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->adUnitId:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->banner:Lcom/appnext/banners/BannerView;

    invoke-virtual {v0, p1}, Lcom/appnext/banners/BannerView;->setPlacementId(Ljava/lang/String;)V

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

    .line 90
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->autoPlay:Z

    .line 91
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->bannerRequest:Lcom/appnext/banners/BannerAdRequest;

    invoke-virtual {v0, p1}, Lcom/appnext/banners/BannerAdRequest;->setAutoPlay(Z)Lcom/appnext/banners/BannerAdRequest;

    return-void
.end method

.method public AutoPlay()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get Auto Play"
    .end annotation

    .line 96
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->autoPlay:Z

    return v0
.end method

.method public LoadAd(I)V
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/AppnextBannerSize;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load The Banner"
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 48
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->banner:Lcom/appnext/banners/BannerView;

    sget-object v0, Lcom/appnext/banners/BannerSize;->BANNER:Lcom/appnext/banners/BannerSize;

    invoke-virtual {p1, v0}, Lcom/appnext/banners/BannerView;->setBannerSize(Lcom/appnext/banners/BannerSize;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 50
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->banner:Lcom/appnext/banners/BannerView;

    sget-object v0, Lcom/appnext/banners/BannerSize;->LARGE_BANNER:Lcom/appnext/banners/BannerSize;

    invoke-virtual {p1, v0}, Lcom/appnext/banners/BannerView;->setBannerSize(Lcom/appnext/banners/BannerSize;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 52
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->banner:Lcom/appnext/banners/BannerView;

    sget-object v0, Lcom/appnext/banners/BannerSize;->MEDIUM_RECTANGLE:Lcom/appnext/banners/BannerSize;

    invoke-virtual {p1, v0}, Lcom/appnext/banners/BannerView;->setBannerSize(Lcom/appnext/banners/BannerSize;)V

    .line 54
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->banner:Lcom/appnext/banners/BannerView;

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;)V

    invoke-virtual {p1, v0}, Lcom/appnext/banners/BannerView;->setBannerListener(Lcom/appnext/banners/BannerListener;)V

    .line 71
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->banner:Lcom/appnext/banners/BannerView;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->bannerRequest:Lcom/appnext/banners/BannerAdRequest;

    invoke-virtual {p1, v0}, Lcom/appnext/banners/BannerView;->loadAd(Lcom/appnext/banners/BannerAdRequest;)V

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

    .line 102
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->mute:Z

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->bannerRequest:Lcom/appnext/banners/BannerAdRequest;

    invoke-virtual {v0, p1}, Lcom/appnext/banners/BannerAdRequest;->setMute(Z)Lcom/appnext/banners/BannerAdRequest;

    return-void
.end method

.method public Mute()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get Mute"
    .end annotation

    .line 108
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->mute:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->banner:Lcom/appnext/banners/BannerView;

    return-object v0
.end method
