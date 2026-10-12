.class Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/database/Transaction$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->RunTransactionIncrement(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

.field final synthetic val$incrementBy:Ljava/lang/Object;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 526
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$16;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$16;->val$incrementBy:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$16;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doTransaction(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/Transaction$Result;
    .locals 4
    .param p1    # Lcom/google/firebase/database/MutableData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 530
    invoke-virtual {p1}, Lcom/google/firebase/database/MutableData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$16;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$16;->val$incrementBy:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->d(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/MutableData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 537
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$16;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->d(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;)D

    move-result-wide v0

    .line 538
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$16;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$16;->val$incrementBy:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->d(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;)D

    move-result-wide v2

    add-double/2addr v2, v0

    .line 539
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/MutableData;->setValue(Ljava/lang/Object;)V

    .line 542
    :goto_0
    invoke-static {p1}, Lcom/google/firebase/database/Transaction;->success(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/Transaction$Result;

    move-result-object p1

    return-object p1
.end method

.method public onComplete(Lcom/google/firebase/database/DatabaseError;ZLcom/google/firebase/database/DataSnapshot;)V
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 548
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$16;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    invoke-virtual {p3}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->a(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 549
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$16;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$16;->val$tag:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->TransactionSuccessful(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 551
    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "Transaction not committed"

    .line 552
    :goto_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$16;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$16;->val$tag:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->TransactionFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
