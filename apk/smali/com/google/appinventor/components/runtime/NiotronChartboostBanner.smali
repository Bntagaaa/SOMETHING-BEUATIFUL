.class public final Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Chartboost ads banner component. <br> SDK Version: 8.3.0"
    iconName = "images/niotronChartboostBanner.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private banner:Lcom/chartboost/sdk/ads/Banner;

.field private context:Landroid/content/Context;

.field private viewGroup:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 35
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 36
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->context:Landroid/content/Context;

    .line 37
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->viewGroup:Landroid/widget/LinearLayout;

    .line 38
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

    .line 126
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClicked"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToDisplay(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 102
    const-string v0, "AdFailedToDisplay"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToLoad(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 97
    const-string v0, "AdFailedToLoad"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdImpressionRecorded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 116
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdImpressionRecorded"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 106
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdRequestedToShow()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 111
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdRequestedToShow"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdShown()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad shown"
    .end annotation

    const/4 v0, 0x0

    .line 121
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdShown"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LoadBanner(Ljava/lang/String;I)V
    .locals 6
    .param p2    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ChartboostBannerSize;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load ad"
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 45
    sget-object p2, Lcom/chartboost/sdk/ads/Banner$BannerSize;->STANDARD:Lcom/chartboost/sdk/ads/Banner$BannerSize;

    :goto_0
    move-object v3, p2

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 47
    sget-object p2, Lcom/chartboost/sdk/ads/Banner$BannerSize;->MEDIUM:Lcom/chartboost/sdk/ads/Banner$BannerSize;

    goto :goto_0

    .line 49
    :cond_1
    sget-object p2, Lcom/chartboost/sdk/ads/Banner$BannerSize;->LEADERBOARD:Lcom/chartboost/sdk/ads/Banner$BannerSize;

    goto :goto_0

    .line 51
    :goto_1
    new-instance v0, Lcom/chartboost/sdk/ads/Banner;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->context:Landroid/content/Context;

    new-instance v4, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner$1;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;)V

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/ads/Banner;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/chartboost/sdk/ads/Banner$BannerSize;Lcom/chartboost/sdk/callbacks/BannerCallback;Lcom/chartboost/sdk/Mediation;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->banner:Lcom/chartboost/sdk/ads/Banner;

    .line 81
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->viewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 82
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->viewGroup:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->banner:Lcom/chartboost/sdk/ads/Banner;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->banner:Lcom/chartboost/sdk/ads/Banner;

    invoke-virtual {p1}, Lcom/chartboost/sdk/ads/Banner;->cache()V

    return-void
.end method

.method public ShowBanner()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show ad after it is loaded, make sure to load ad first"
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->banner:Lcom/chartboost/sdk/ads/Banner;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/chartboost/sdk/ads/Banner;->show()V

    return-void

    .line 91
    :cond_0
    const-string v0, "Ad not loaded"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->AdFailedToDisplay(Ljava/lang/String;)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->viewGroup:Landroid/widget/LinearLayout;

    return-object v0
.end method
