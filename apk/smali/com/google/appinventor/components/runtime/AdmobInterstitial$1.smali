.class Lcom/google/appinventor/components/runtime/AdmobInterstitial$1;
.super Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AdmobInterstitial;->LoadAndShowAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AdmobInterstitial;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AdmobInterstitial;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/AdmobInterstitial;

    invoke-direct {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/LoadAdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/AdmobInterstitial;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/AdmobInterstitial;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/interstitial/InterstitialAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/AdmobInterstitial;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/AdmobInterstitial;->b(Lcom/google/appinventor/components/runtime/AdmobInterstitial;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    .line 84
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/AdmobInterstitial;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/AdmobInterstitial;->a(Lcom/google/appinventor/components/runtime/AdmobInterstitial;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/AdmobInterstitial$1$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/AdmobInterstitial$1$1;-><init>(Lcom/google/appinventor/components/runtime/AdmobInterstitial$1;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 105
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/AdmobInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AdmobInterstitial;->AdLoaded()V

    .line 106
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/AdmobInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AdmobInterstitial;->ShowAd()V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 79
    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AdmobInterstitial$1;->onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    return-void
.end method
