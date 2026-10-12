.class Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/adjoe/sdk/AdjoeRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->RequestRewards()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$4;->this$0:Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserReceivesReward(Lio/adjoe/sdk/AdjoeRewardResponse;)V
    .locals 3

    .line 225
    invoke-virtual {p1}, Lio/adjoe/sdk/AdjoeRewardResponse;->getReward()I

    move-result v0

    .line 228
    invoke-virtual {p1}, Lio/adjoe/sdk/AdjoeRewardResponse;->getAvailablePayoutCoins()I

    move-result v1

    .line 231
    invoke-virtual {p1}, Lio/adjoe/sdk/AdjoeRewardResponse;->getAlreadySpentCoins()I

    move-result p1

    .line 232
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$4;->this$0:Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->UserReceivesReward(III)V

    return-void
.end method

.method public onUserReceivesRewardError(Lio/adjoe/sdk/AdjoeRewardResponseError;)V
    .locals 1

    .line 240
    invoke-virtual {p1}, Lio/adjoe/sdk/AdjoeRewardResponseError;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p1}, Lio/adjoe/sdk/AdjoeRewardResponseError;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
