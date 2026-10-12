.class Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/mediation/MaxAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->LoadInterstitialAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$1;->this$0:Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$1;->this$0:Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->AdClicked()V

    return-void
.end method

.method public onAdDisplayFailed(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxError;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$1;->this$0:Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;

    invoke-interface {p2}, Lcom/applovin/mediation/MaxError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->AdFailedToDisplay(Ljava/lang/String;)V

    return-void
.end method

.method public onAdDisplayed(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$1;->this$0:Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->AdDisplayed()V

    return-void
.end method

.method public onAdHidden(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$1;->this$0:Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->AdHidden()V

    return-void
.end method

.method public onAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$1;->this$0:Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;

    invoke-interface {p2}, Lcom/applovin/mediation/MaxError;->getCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->AdFailedToLoad(I)V

    return-void
.end method

.method public onAdLoaded(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$1;->this$0:Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->AdLoaded()V

    return-void
.end method
