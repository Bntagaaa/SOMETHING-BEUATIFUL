.class Lcom/google/appinventor/components/runtime/IronSourceInterstitial$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/IronSourceInterstitial;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/IronSourceInterstitial;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/IronSourceInterstitial;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/IronSourceInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/IronSourceInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/IronSourceInterstitial;->AdClicked()V

    return-void
.end method

.method public onAdClosed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/IronSourceInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/IronSourceInterstitial;->AdClosed()V

    return-void
.end method

.method public onAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/IronSourceInterstitial;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/IronSourceInterstitial;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onAdOpened(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/IronSourceInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/IronSourceInterstitial;->AdOpened()V

    return-void
.end method

.method public onAdReady(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/IronSourceInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/IronSourceInterstitial;->AdLoaded()V

    return-void
.end method

.method public onAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 0

    .line 69
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/IronSourceInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/IronSourceInterstitial;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/appinventor/components/runtime/IronSourceInterstitial;->AdFailedToDisplay(Ljava/lang/String;)V

    return-void
.end method

.method public onAdShowSucceeded(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/IronSourceInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/IronSourceInterstitial;->AdDisplayed()V

    return-void
.end method
