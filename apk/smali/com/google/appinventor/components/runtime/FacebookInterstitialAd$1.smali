.class Lcom/google/appinventor/components/runtime/FacebookInterstitialAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FacebookInterstitialAd;->LoadAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FacebookInterstitialAd;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/FacebookInterstitialAd;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookInterstitialAd$1;->this$0:Lcom/google/appinventor/components/runtime/FacebookInterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookInterstitialAd$1;->this$0:Lcom/google/appinventor/components/runtime/FacebookInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FacebookInterstitialAd;->AdClicked()V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookInterstitialAd$1;->this$0:Lcom/google/appinventor/components/runtime/FacebookInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FacebookInterstitialAd;->AdLoaded()V

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookInterstitialAd$1;->this$0:Lcom/google/appinventor/components/runtime/FacebookInterstitialAd;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/FacebookInterstitialAd;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookInterstitialAd$1;->this$0:Lcom/google/appinventor/components/runtime/FacebookInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FacebookInterstitialAd;->AdDismissed()V

    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookInterstitialAd$1;->this$0:Lcom/google/appinventor/components/runtime/FacebookInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FacebookInterstitialAd;->AdDisplayed()V

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookInterstitialAd$1;->this$0:Lcom/google/appinventor/components/runtime/FacebookInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FacebookInterstitialAd;->AdImpression()V

    return-void
.end method
