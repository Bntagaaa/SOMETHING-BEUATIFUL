.class public final Lcom/google/appinventor/components/runtime/StartAppOfferWall;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Standard 2D full screen Offer Wall or a 3D Offer Wall. <br> SDK Version: 4.10.12"
    iconName = "images/startAppOfferWall.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private offerWallAd:Lcom/startapp/sdk/adsbase/StartAppAd;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 36
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 37
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppOfferWall;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Clicked by the User"
    .end annotation

    const/4 v0, 0x0

    .line 128
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

    .line 118
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

    .line 123
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

    .line 108
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

    .line 113
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

    .line 103
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CloseAd()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Close the Ad Manually"
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppOfferWall;->offerWallAd:Lcom/startapp/sdk/adsbase/StartAppAd;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/StartAppAd;->close()V

    :cond_0
    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Some Error Occurred"
    .end annotation

    .line 133
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

    .line 42
    sget-boolean v0, Lcom/google/appinventor/components/runtime/StartAppCore;->SdkInitialized:Z

    return v0
.end method

.method public LoadAd()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load an OfferWall Ad"
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/StartAppOfferWall;->IsSdkInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Lcom/startapp/sdk/adsbase/StartAppAd;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/StartAppOfferWall;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/startapp/sdk/adsbase/StartAppAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppOfferWall;->offerWallAd:Lcom/startapp/sdk/adsbase/StartAppAd;

    .line 49
    sget-object v1, Lcom/startapp/sdk/adsbase/StartAppAd$AdMode;->OFFERWALL:Lcom/startapp/sdk/adsbase/StartAppAd$AdMode;

    new-instance v2, Lcom/google/appinventor/components/runtime/StartAppOfferWall$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/StartAppOfferWall$1;-><init>(Lcom/google/appinventor/components/runtime/StartAppOfferWall;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapp/sdk/adsbase/StartAppAd;->loadAd(Lcom/startapp/sdk/adsbase/StartAppAd$AdMode;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)V

    return-void

    .line 61
    :cond_0
    const-string v0, "SDK Not Yet Loaded"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/StartAppOfferWall;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public ShowAd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the Loaded OfferWall Ad"
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppOfferWall;->offerWallAd:Lcom/startapp/sdk/adsbase/StartAppAd;

    if-eqz v0, :cond_0

    .line 68
    new-instance v1, Lcom/google/appinventor/components/runtime/StartAppOfferWall$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/StartAppOfferWall$2;-><init>(Lcom/google/appinventor/components/runtime/StartAppOfferWall;)V

    invoke-virtual {v0, v1}, Lcom/startapp/sdk/adsbase/StartAppAd;->showAd(Lcom/startapp/sdk/adsbase/adlisteners/AdDisplayListener;)Z

    return-void

    .line 90
    :cond_0
    const-string v0, "Ad Not Loaded"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/StartAppOfferWall;->AdFailedToDisplay(Ljava/lang/String;)V

    return-void
.end method
