.class Lcom/google/appinventor/components/runtime/NiotronFirestore$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronFirestore;->AddDocument(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/firebase/firestore/DocumentReference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronFirestore;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore$8;->this$0:Lcom/google/appinventor/components/runtime/NiotronFirestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/firebase/firestore/DocumentReference;)V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore$8;->this$0:Lcom/google/appinventor/components/runtime/NiotronFirestore;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentReference;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DocumentSnapshot written with ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnSuccess(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentReference;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Niotron Firestore"

    .line 0
    invoke-static {v3, p1, v0}, L_COROUTINE/a;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 262
    check-cast p1, Lcom/google/firebase/firestore/DocumentReference;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore$8;->onSuccess(Lcom/google/firebase/firestore/DocumentReference;)V

    return-void
.end method
