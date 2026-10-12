.class Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/database/Transaction$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->RunTransactionConditional(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

.field final synthetic val$expectedValue:Ljava/lang/Object;

.field final synthetic val$newValue:Ljava/lang/Object;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 571
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$17;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$17;->val$expectedValue:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$17;->val$newValue:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$17;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doTransaction(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/Transaction$Result;
    .locals 3
    .param p1    # Lcom/google/firebase/database/MutableData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$17;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    invoke-virtual {p1}, Lcom/google/firebase/database/MutableData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->a(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 578
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$17;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$17;->val$expectedValue:Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->e(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$17;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$17;->val$newValue:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->c(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/MutableData;->setValue(Ljava/lang/Object;)V

    .line 580
    invoke-static {p1}, Lcom/google/firebase/database/Transaction;->success(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/Transaction$Result;

    move-result-object p1

    return-object p1

    .line 583
    :cond_0
    invoke-static {}, Lcom/google/firebase/database/Transaction;->abort()Lcom/google/firebase/database/Transaction$Result;

    move-result-object p1

    return-object p1
.end method

.method public onComplete(Lcom/google/firebase/database/DatabaseError;ZLcom/google/firebase/database/DataSnapshot;)V
    .locals 0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 591
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$17;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    invoke-virtual {p3}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->a(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 592
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$17;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$17;->val$tag:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->TransactionSuccessful(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 594
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$17;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$17;->val$tag:Ljava/lang/String;

    const-string p3, "Current value did not match expected value"

    invoke-virtual {p1, p2, p3}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->TransactionAborted(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 597
    :cond_1
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$17;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$17;->val$tag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->TransactionFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
