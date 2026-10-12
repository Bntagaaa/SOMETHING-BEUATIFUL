.class Lcom/google/appinventor/components/runtime/NiotronFirestore$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronFirestore;->RegisterListener(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/firestore/EventListener<",
        "Lcom/google/firebase/firestore/QuerySnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronFirestore;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore$14;->this$0:Lcom/google/appinventor/components/runtime/NiotronFirestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 2
    .param p1    # Lcom/google/firebase/firestore/QuerySnapshot;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/firestore/FirebaseFirestoreException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 387
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore$14;->this$0:Lcom/google/appinventor/components/runtime/NiotronFirestore;

    invoke-virtual {p2}, Lcom/google/firebase/firestore/FirebaseFirestoreException;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "listen:error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void

    .line 391
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocumentChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/firestore/DocumentChange;

    .line 392
    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronFirestore$19;->$SwitchMap$com$google$firebase$firestore$DocumentChange$Type:[I

    invoke-virtual {p2}, Lcom/google/firebase/firestore/DocumentChange;->getType()Lcom/google/firebase/firestore/DocumentChange$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/DocumentChange$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore$14;->this$0:Lcom/google/appinventor/components/runtime/NiotronFirestore;

    invoke-virtual {p2}, Lcom/google/firebase/firestore/DocumentChange;->getDocument()Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/firestore/QueryDocumentSnapshot;->getData()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->makeDictionary(Ljava/util/Map;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnListenerRemoved(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V

    goto :goto_0

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore$14;->this$0:Lcom/google/appinventor/components/runtime/NiotronFirestore;

    invoke-virtual {p2}, Lcom/google/firebase/firestore/DocumentChange;->getDocument()Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/firestore/QueryDocumentSnapshot;->getData()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->makeDictionary(Ljava/util/Map;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnListenerModified(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V

    goto :goto_0

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore$14;->this$0:Lcom/google/appinventor/components/runtime/NiotronFirestore;

    invoke-virtual {p2}, Lcom/google/firebase/firestore/DocumentChange;->getDocument()Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/firestore/QueryDocumentSnapshot;->getData()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->makeDictionary(Ljava/util/Map;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnListenerAdded(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/firestore/FirebaseFirestoreException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 383
    check-cast p1, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronFirestore$14;->onEvent(Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method
