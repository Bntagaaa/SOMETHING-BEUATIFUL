.class Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/database/Transaction$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->RemoveFirst(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

.field final synthetic val$removedValue:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 750
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$20;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$20;->val$removedValue:Ljava/util/concurrent/atomic/AtomicReference;

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

    .line 754
    invoke-virtual {p1}, Lcom/google/firebase/database/MutableData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 757
    invoke-static {}, Lcom/google/firebase/database/Transaction;->abort()Lcom/google/firebase/database/Transaction$Result;

    move-result-object p1

    return-object p1

    .line 760
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$20;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->a(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 763
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v1, :cond_1

    .line 764
    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_0

    .line 765
    :cond_1
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 766
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    .line 771
    :goto_0
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 772
    invoke-static {}, Lcom/google/firebase/database/Transaction;->abort()Lcom/google/firebase/database/Transaction$Result;

    move-result-object p1

    return-object p1

    .line 776
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$20;->val$removedValue:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 779
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    new-array v1, v1, [Ljava/lang/Object;

    .line 780
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {v4, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 781
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    .line 783
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$20;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->c(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/MutableData;->setValue(Ljava/lang/Object;)V

    .line 784
    invoke-static {p1}, Lcom/google/firebase/database/Transaction;->success(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/Transaction$Result;

    move-result-object p1

    return-object p1

    .line 768
    :cond_3
    invoke-static {}, Lcom/google/firebase/database/Transaction;->abort()Lcom/google/firebase/database/Transaction$Result;

    move-result-object p1

    return-object p1
.end method

.method public onComplete(Lcom/google/firebase/database/DatabaseError;ZLcom/google/firebase/database/DataSnapshot;)V
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 791
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$20;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$20;->val$removedValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->FirstRemoved(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 793
    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 794
    :cond_1
    const-string p1, "The list was empty or transaction failed"

    .line 795
    :goto_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$20;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    const-string p3, "RemoveFirst"

    invoke-virtual {p2, p3, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
