.class Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;->LoadAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/LoadAdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/rewarded/RewardedAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;->b(Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    .line 59
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;->a(Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;)Lcom/google/android/gms/ads/rewarded/RewardedAd;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 81
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;->AdLoaded()V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1;->onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    return-void
.end method
