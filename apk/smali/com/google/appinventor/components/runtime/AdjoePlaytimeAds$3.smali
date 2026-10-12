.class Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/adjoe/sdk/AdjoePayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->DoPayout()V
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

    .line 181
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$3;->this$0:Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayoutError(Lio/adjoe/sdk/AdjoePayoutError;)V
    .locals 1

    .line 199
    invoke-virtual {p1}, Lio/adjoe/sdk/AdjoePayoutError;->getReason()I

    move-result p1

    if-nez p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$3;->this$0:Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;

    const-string v0, "Unknown"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->PayoutError(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x190

    if-ne p1, v0, :cond_1

    .line 203
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$3;->this$0:Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;

    const-string v0, "Not enough coins"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->PayoutError(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 205
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$3;->this$0:Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;

    const-string v0, "TOS not accepted"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->PayoutError(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onPayoutExecuted(I)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$3;->this$0:Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->PayoutExecuted(I)V

    return-void
.end method
