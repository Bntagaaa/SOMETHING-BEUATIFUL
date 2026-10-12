.class Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/database/Transaction$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->RunTransactionAppend(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 616
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$18;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$18;->val$value:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$18;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doTransaction(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/Transaction$Result;
    .locals 5
    .param p1    # Lcom/google/firebase/database/MutableData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 620
    invoke-virtual {p1}, Lcom/google/firebase/database/MutableData;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 625
    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    goto :goto_0

    .line 626
    :cond_0
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 627
    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    goto :goto_0

    .line 630
    :cond_1
    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 631
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    .line 635
    :goto_0
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    add-int/2addr v3, v1

    new-array v1, v3, [Ljava/lang/Object;

    .line 636
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    invoke-static {v3, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 637
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$18;->val$value:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 639
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    .line 640
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$18;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->c(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/MutableData;->setValue(Ljava/lang/Object;)V

    .line 642
    invoke-static {p1}, Lcom/google/firebase/database/Transaction;->success(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/Transaction$Result;

    move-result-object p1

    return-object p1
.end method

.method public onComplete(Lcom/google/firebase/database/DatabaseError;ZLcom/google/firebase/database/DataSnapshot;)V
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 648
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$18;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    invoke-virtual {p3}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->a(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 649
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$18;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$18;->val$tag:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->TransactionSuccessful(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 651
    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "Transaction not committed"

    .line 652
    :goto_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$18;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$18;->val$tag:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->TransactionFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
