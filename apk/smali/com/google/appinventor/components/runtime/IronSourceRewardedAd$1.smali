.class Lcom/google/appinventor/components/runtime/IronSourceRewardedAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd$1;->this$0:Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdAvailable(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 1

    .line 50
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd$1;->this$0:Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;->AdAvailabilityChanged(Z)V

    return-void
.end method

.method public onAdClicked(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd$1;->this$0:Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;->AdClicked()V

    return-void
.end method

.method public onAdClosed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd$1;->this$0:Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;->AdClosed()V

    return-void
.end method

.method public onAdOpened(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd$1;->this$0:Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;->AdOpened()V

    return-void
.end method

.method public onAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 76
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd$1;->this$0:Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardAmount()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;->Rewarded(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 0

    .line 65
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd$1;->this$0:Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;->AdFailedToDisplay(Ljava/lang/String;)V

    return-void
.end method

.method public onAdUnavailable()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd$1;->this$0:Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;->AdAvailabilityChanged(Z)V

    return-void
.end method
