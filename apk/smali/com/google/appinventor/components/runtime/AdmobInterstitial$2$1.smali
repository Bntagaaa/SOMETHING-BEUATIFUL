.class Lcom/google/appinventor/components/runtime/AdmobInterstitial$2$1;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AdmobInterstitial$2;->onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/AdmobInterstitial$2;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AdmobInterstitial$2;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobInterstitial$2$1;->this$1:Lcom/google/appinventor/components/runtime/AdmobInterstitial$2;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .locals 0

    .line 138
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdDismissedFullScreenContent()V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 128
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobInterstitial$2$1;->this$1:Lcom/google/appinventor/components/runtime/AdmobInterstitial$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/AdmobInterstitial$2;->this$0:Lcom/google/appinventor/components/runtime/AdmobInterstitial;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/AdmobInterstitial;->AdFailedToDisplay(Ljava/lang/String;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobInterstitial$2$1;->this$1:Lcom/google/appinventor/components/runtime/AdmobInterstitial$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/AdmobInterstitial$2;->this$0:Lcom/google/appinventor/components/runtime/AdmobInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdmobInterstitial;->AdImpression()V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobInterstitial$2$1;->this$1:Lcom/google/appinventor/components/runtime/AdmobInterstitial$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/AdmobInterstitial$2;->this$0:Lcom/google/appinventor/components/runtime/AdmobInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdmobInterstitial;->AdDisplayed()V

    return-void
.end method
