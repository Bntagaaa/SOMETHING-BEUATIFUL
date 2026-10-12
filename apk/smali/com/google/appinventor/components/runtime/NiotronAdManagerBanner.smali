.class public final Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Banner Ad Provided By Google Ad Manager"
    iconName = "images/niotronAdManagerBanner.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private bannerContainer:Landroid/widget/FrameLayout;

.field private testMode:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 35
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;->activity:Landroid/app/Activity;

    .line 36
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;->bannerContainer:Landroid/widget/FrameLayout;

    .line 37
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method private getActualAdSize(Ljava/lang/Object;)Lcom/google/android/gms/ads/AdSize;
    .locals 3

    .line 103
    const-string v0, "Wrong AdSize, Loading \"Banner\" size as default"

    :try_start_0
    instance-of v1, p1, Lcom/google/android/gms/ads/AdSize;

    if-eqz v1, :cond_0

    .line 104
    check-cast p1, Lcom/google/android/gms/ads/AdSize;

    return-object p1

    .line 106
    :cond_0
    check-cast p1, Lcom/google/appinventor/components/common/AdmobAdSize;

    .line 107
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/AdmobAdSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/AdmobAdSize;->Banner:Lcom/google/appinventor/components/common/AdmobAdSize;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/AdmobAdSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    return-object p1

    .line 109
    :cond_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/AdmobAdSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/AdmobAdSize;->LargeBanner:Lcom/google/appinventor/components/common/AdmobAdSize;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/AdmobAdSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    return-object p1

    .line 111
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/AdmobAdSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/AdmobAdSize;->MediumRectangle:Lcom/google/appinventor/components/common/AdmobAdSize;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/AdmobAdSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    return-object p1

    .line 113
    :cond_3
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/AdmobAdSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/AdmobAdSize;->FullBanner:Lcom/google/appinventor/components/common/AdmobAdSize;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/AdmobAdSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 114
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    return-object p1

    .line 115
    :cond_4
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/AdmobAdSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/google/appinventor/components/common/AdmobAdSize;->LeaderBoard:Lcom/google/appinventor/components/common/AdmobAdSize;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/AdmobAdSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 116
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    return-object p1

    .line 118
    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;->AdFailedToLoad(Ljava/lang/String;)V

    .line 119
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 123
    :catch_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;->AdFailedToLoad(Ljava/lang/String;)V

    .line 124
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    return-object p1
.end method


# virtual methods
.method public AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Banner Ad Clicked"
    .end annotation

    const/4 v0, 0x0

    .line 150
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClicked"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Banner Ad Closed"
    .end annotation

    const/4 v0, 0x0

    .line 140
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClosed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToLoad(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Banner Ad Failed To Load"
    .end annotation

    .line 135
    const-string v0, "AdFailedToLoad"

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
        description = "Banner Ad Impression Logged"
    .end annotation

    const/4 v0, 0x0

    .line 155
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdImpression"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLeftApplication()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Banner Ad Left Application. Probaby User Clicked and Opened it"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 161
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLeftApplication"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Banner Ad Loaded"
    .end annotation

    const/4 v0, 0x0

    .line 130
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdOpened()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Banner Ad Opened"
    .end annotation

    const/4 v0, 0x0

    .line 145
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdOpened"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CreateCustomAdSize(II)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "AdSize for LoadBanner Ad Function"
    .end annotation

    .line 97
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    return-object v0
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

.method public LoadBannerAd(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/AdManagerAdSize;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load a Ad Manager Banner Ad"
    .end annotation

    .line 53
    new-instance v0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;->getActualAdSize(Ljava/lang/Object;)Lcom/google/android/gms/ads/AdSize;

    move-result-object p2

    const/4 v1, 0x1

    .line 55
    new-array v1, v1, [Lcom/google/android/gms/ads/AdSize;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    .line 56
    iget-boolean p2, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;->testMode:Z

    if-eqz p2, :cond_0

    const-string p1, "/6499/example/banner"

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;->bannerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 58
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;->bannerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    new-instance p1, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 91
    new-instance p1, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->build()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object p1

    .line 92
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    return-void
.end method

.method public TestMode(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Test Ads"
    .end annotation

    .line 43
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;->testMode:Z

    return-void
.end method

.method public TestMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Test Ads"
    .end annotation

    .line 48
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;->testMode:Z

    return v0
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

    .line 198
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;->bannerContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method
