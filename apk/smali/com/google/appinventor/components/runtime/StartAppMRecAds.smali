.class public final Lcom/google/appinventor/components/runtime/StartAppMRecAds;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "MRec is a 300X250 rectangular ad integrated within an app\'s layout. The ad will be refreshed automatically. <br> SDK Version: 4.10.12"
    iconName = "images/startAppMRecAds.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private mRecContainer:Landroid/widget/FrameLayout;

.field private mrec:Lcom/startapp/sdk/ads/banner/Mrec;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 40
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 41
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppMRecAds;->activity:Landroid/app/Activity;

    .line 42
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/StartAppMRecAds;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppMRecAds;->mRecContainer:Landroid/widget/FrameLayout;

    .line 45
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method


# virtual methods
.method public AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Clicked by the User"
    .end annotation

    const/4 v0, 0x0

    .line 123
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClicked"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToLoad()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad FailedToLoad"
    .end annotation

    const/4 v0, 0x0

    .line 113
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdFailedToLoad"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdImpression()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Impression"
    .end annotation

    const/4 v0, 0x0

    .line 118
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdImpression"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Loaded"
    .end annotation

    const/4 v0, 0x0

    .line 108
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Some Error Occurred"
    .end annotation

    .line 128
    const-string v0, "ErrorOccurred"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Height()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public Height(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public HeightPercent(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public HideAd()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hides a Visible MRec Ad"
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppMRecAds;->mrec:Lcom/startapp/sdk/ads/banner/Mrec;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/startapp/sdk/ads/banner/Mrec;->hideBanner()V

    :cond_0
    return-void
.end method

.method public IsSdkInitialized()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check if the StartApp SDK Is Initialized"
    .end annotation

    .line 55
    sget-boolean v0, Lcom/google/appinventor/components/runtime/StartAppCore;->SdkInitialized:Z

    return v0
.end method

.method public LoadAd()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load a MRec Ad"
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/StartAppMRecAds;->IsSdkInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Lcom/startapp/sdk/ads/banner/Mrec;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/StartAppMRecAds;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/appinventor/components/runtime/StartAppMRecAds$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/StartAppMRecAds$1;-><init>(Lcom/google/appinventor/components/runtime/StartAppMRecAds;)V

    invoke-direct {v0, v1, v2}, Lcom/startapp/sdk/ads/banner/Mrec;-><init>(Landroid/app/Activity;Lcom/startapp/sdk/ads/banner/BannerListener;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppMRecAds;->mrec:Lcom/startapp/sdk/ads/banner/Mrec;

    .line 83
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 84
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/StartAppMRecAds;->mRecContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 85
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/StartAppMRecAds;->mRecContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/StartAppMRecAds;->mrec:Lcom/startapp/sdk/ads/banner/Mrec;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppMRecAds;->mrec:Lcom/startapp/sdk/ads/banner/Mrec;

    invoke-virtual {v0}, Lcom/startapp/sdk/ads/banner/Mrec;->loadAd()V

    return-void

    .line 88
    :cond_0
    const-string v0, "SDK Not Yet Loaded"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/StartAppMRecAds;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public ShowAd()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a hidden MRec. Not need to call after loading"
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppMRecAds;->mrec:Lcom/startapp/sdk/ads/banner/Mrec;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/startapp/sdk/ads/banner/Mrec;->showBanner()V

    :cond_0
    return-void
.end method

.method public Width()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public Width(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public WidthPercent(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppMRecAds;->mRecContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method
