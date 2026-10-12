.class Lcom/google/appinventor/components/runtime/NiotronFirestore$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronFirestore;->deleteCollection(Lcom/google/firebase/firestore/CollectionReference;ILjava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronFirestore;

.field final synthetic val$batchSize:I

.field final synthetic val$collection:Lcom/google/firebase/firestore/CollectionReference;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;Lcom/google/firebase/firestore/CollectionReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 540
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore$18;->this$0:Lcom/google/appinventor/components/runtime/NiotronFirestore;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore$18;->val$collection:Lcom/google/firebase/firestore/CollectionReference;

    iput p3, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore$18;->val$batchSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 540
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$18;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 543
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore$18;->val$collection:Lcom/google/firebase/firestore/CollectionReference;

    invoke-static {}, Lcom/google/firebase/firestore/FieldPath;->documentId()Lcom/google/firebase/firestore/FieldPath;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/CollectionReference;->orderBy(Lcom/google/firebase/firestore/FieldPath;)Lcom/google/firebase/firestore/Query;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore$18;->val$batchSize:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/firestore/Query;->limit(J)Lcom/google/firebase/firestore/Query;

    move-result-object v1

    .line 544
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore$18;->this$0:Lcom/google/appinventor/components/runtime/NiotronFirestore;

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a(Lcom/google/appinventor/components/runtime/NiotronFirestore;Lcom/google/firebase/firestore/Query;)Ljava/util/List;

    move-result-object v1

    .line 545
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore$18;->val$batchSize:I

    if-lt v2, v3, :cond_0

    .line 546
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/DocumentSnapshot;

    .line 547
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore$18;->val$collection:Lcom/google/firebase/firestore/CollectionReference;

    invoke-static {}, Lcom/google/firebase/firestore/FieldPath;->documentId()Lcom/google/firebase/firestore/FieldPath;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/CollectionReference;->orderBy(Lcom/google/firebase/firestore/FieldPath;)Lcom/google/firebase/firestore/Query;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/Query;->startAfter([Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore$18;->val$batchSize:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/firestore/Query;->limit(J)Lcom/google/firebase/firestore/Query;

    move-result-object v1

    .line 549
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore$18;->this$0:Lcom/google/appinventor/components/runtime/NiotronFirestore;

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a(Lcom/google/appinventor/components/runtime/NiotronFirestore;Lcom/google/firebase/firestore/Query;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
