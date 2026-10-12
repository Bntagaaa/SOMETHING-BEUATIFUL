.class Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1$1;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1;->onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;->AdDismissed()V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;->AdFailedToDisplay(Ljava/lang/String;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;->AdImpression()V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;->AdDisplayed()V

    return-void
.end method
