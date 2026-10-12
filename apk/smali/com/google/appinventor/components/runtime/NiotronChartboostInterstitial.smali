.class public final Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Chartboost interstitial ads component. <br> SDK Version: 8.3.0"
    iconName = "images/niotronChartboostInterstitial.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private interstitial:Lcom/chartboost/sdk/ads/Interstitial;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 31
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    return-void
.end method


# virtual methods
.method public AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when interstitial ad is clicked"
    .end annotation

    const/4 v0, 0x0

    .line 101
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClicked"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdDismissed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when interstitial ad is dismissed"
    .end annotation

    const/4 v0, 0x0

    .line 81
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdDismissed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdDisplayed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when interstitial ad is displayed"
    .end annotation

    const/4 v0, 0x0

    .line 96
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdDisplayed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToShow(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when interstitial ad failed to show"
    .end annotation

    .line 111
    const-string v0, "AdFailedToShow"

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
        description = "Event triggered when interstitial ad impression is recorded"
    .end annotation

    const/4 v0, 0x0

    .line 106
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdImpressionRecorded"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when interstitial ad is loaded"
    .end annotation

    const/4 v0, 0x0

    .line 86
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdRequestedToShow()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when interstitial ad is requested to show"
    .end annotation

    const/4 v0, 0x0

    .line 91
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdRequestedToShow"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LoadInterstitial(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load interstitial"
    .end annotation

    .line 36
    new-instance v0, Lcom/chartboost/sdk/ads/Interstitial;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial;)V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/chartboost/sdk/ads/Interstitial;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/callbacks/InterstitialCallback;Lcom/chartboost/sdk/Mediation;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial;->interstitial:Lcom/chartboost/sdk/ads/Interstitial;

    .line 67
    invoke-virtual {v0}, Lcom/chartboost/sdk/ads/Interstitial;->cache()V

    return-void
.end method

.method public ShowInterstitial(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows the loaded interstitial ad"
    .end annotation

    .line 72
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial;->interstitial:Lcom/chartboost/sdk/ads/Interstitial;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/chartboost/sdk/ads/Interstitial;->isCached()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial;->interstitial:Lcom/chartboost/sdk/ads/Interstitial;

    invoke-virtual {p1}, Lcom/chartboost/sdk/ads/Interstitial;->show()V

    return-void

    .line 75
    :cond_0
    const-string p1, "Interstitial not loaded"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial;->AdFailedToShow(Ljava/lang/String;)V

    return-void
.end method
