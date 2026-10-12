.class public final Lcom/google/appinventor/components/runtime/StartAppInterstitial;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Interstitial Ads are full page ads, displayed before or after a certain content page or action, such as upon entering a stage, between stages, while waiting for an action, upon exiting the application and more. <br> SDK Version: 4.10.12"
    iconName = "images/startAppInterstitial.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private interstitialAd:Lcom/startapp/sdk/adsbase/StartAppAd;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 37
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 38
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppInterstitial;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Clicked by the User"
    .end annotation

    const/4 v0, 0x0

    .line 134
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClicked"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdDisplayed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Displayed"
    .end annotation

    const/4 v0, 0x0

    .line 124
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdDisplayed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToDisplay(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Failed To Display"
    .end annotation

    .line 129
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
        description = "Ad Failed to Load"
    .end annotation

    .line 114
    const-string v0, "AdFailedToLoad"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdHidden()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Hidden"
    .end annotation

    const/4 v0, 0x0

    .line 119
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdHidden"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Loaded"
    .end annotation

    const/4 v0, 0x0

    .line 109
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public BackPressed()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Call this Function to Show an Ad When User Press the Back Button"
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppInterstitial;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/sdk/adsbase/StartAppAd;->onBackPressed(Landroid/content/Context;)V

    return-void
.end method

.method public CloseAd()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Close the Ad Manually"
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppInterstitial;->interstitialAd:Lcom/startapp/sdk/adsbase/StartAppAd;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/StartAppAd;->close()V

    :cond_0
    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Some Error Occurred"
    .end annotation

    .line 139
    const-string v0, "ErrorOccurred"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public IsSdkInitialized()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check if the StartApp SDK Is Initialized"
    .end annotation

    .line 43
    sget-boolean v0, Lcom/google/appinventor/components/runtime/StartAppCore;->SdkInitialized:Z

    return v0
.end method

.method public LoadAd()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load a Interstitial Ad"
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/StartAppInterstitial;->IsSdkInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Lcom/startapp/sdk/adsbase/StartAppAd;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/StartAppInterstitial;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/startapp/sdk/adsbase/StartAppAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppInterstitial;->interstitialAd:Lcom/startapp/sdk/adsbase/StartAppAd;

    .line 55
    sget-object v1, Lcom/startapp/sdk/adsbase/StartAppAd$AdMode;->VIDEO:Lcom/startapp/sdk/adsbase/StartAppAd$AdMode;

    new-instance v2, Lcom/google/appinventor/components/runtime/StartAppInterstitial$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/StartAppInterstitial$1;-><init>(Lcom/google/appinventor/components/runtime/StartAppInterstitial;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapp/sdk/adsbase/StartAppAd;->loadAd(Lcom/startapp/sdk/adsbase/StartAppAd$AdMode;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)V

    return-void

    .line 67
    :cond_0
    const-string v0, "SDK Not Yet Loaded"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/StartAppInterstitial;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public ShowAd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the Loaded Interstitial Ad"
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppInterstitial;->interstitialAd:Lcom/startapp/sdk/adsbase/StartAppAd;

    if-eqz v0, :cond_0

    .line 74
    new-instance v1, Lcom/google/appinventor/components/runtime/StartAppInterstitial$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/StartAppInterstitial$2;-><init>(Lcom/google/appinventor/components/runtime/StartAppInterstitial;)V

    invoke-virtual {v0, v1}, Lcom/startapp/sdk/adsbase/StartAppAd;->showAd(Lcom/startapp/sdk/adsbase/adlisteners/AdDisplayListener;)Z

    return-void

    .line 96
    :cond_0
    const-string v0, "Ad Not Loaded"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/StartAppInterstitial;->AdFailedToDisplay(Ljava/lang/String;)V

    return-void
.end method
