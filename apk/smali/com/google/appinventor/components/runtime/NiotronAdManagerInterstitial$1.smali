.class Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial$1;
.super Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;->LoadAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;

    invoke-direct {p0}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/LoadAdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;->b(Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)V

    .line 60
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;->a(Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;)Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial$1$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial$1$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial$1;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 82
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;->AdLoaded()V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    check-cast p1, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial$1;->onAdLoaded(Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)V

    return-void
.end method
