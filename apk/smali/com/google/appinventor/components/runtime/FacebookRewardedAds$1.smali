.class Lcom/google/appinventor/components/runtime/FacebookRewardedAds$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/RewardedVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FacebookRewardedAds;->LoadAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FacebookRewardedAds;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/FacebookRewardedAds;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookRewardedAds$1;->this$0:Lcom/google/appinventor/components/runtime/FacebookRewardedAds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookRewardedAds$1;->this$0:Lcom/google/appinventor/components/runtime/FacebookRewardedAds;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FacebookRewardedAds;->AdClicked()V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 94
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookRewardedAds$1;->this$0:Lcom/google/appinventor/components/runtime/FacebookRewardedAds;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FacebookRewardedAds;->AdLoaded()V

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookRewardedAds$1;->this$0:Lcom/google/appinventor/components/runtime/FacebookRewardedAds;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/FacebookRewardedAds;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookRewardedAds$1;->this$0:Lcom/google/appinventor/components/runtime/FacebookRewardedAds;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FacebookRewardedAds;->AdImpression()V

    return-void
.end method

.method public onRewardedVideoClosed()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FacebookRewardedAds$1;->this$0:Lcom/google/appinventor/components/runtime/FacebookRewardedAds;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/FacebookRewardedAds;->AdClosed()V

    return-void
.end method

.method public onRewardedVideoCompleted()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FacebookRewardedAds$1;->this$0:Lcom/google/appinventor/components/runtime/FacebookRewardedAds;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/FacebookRewardedAds;->AdCompleted()V

    return-void
.end method
