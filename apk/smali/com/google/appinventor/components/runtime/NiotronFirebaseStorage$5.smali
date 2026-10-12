.class Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/storage/OnPausedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->UploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/storage/OnPausedListener<",
        "Lcom/google/firebase/storage/UploadTask$TaskSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$5;->this$0:Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaused(Lcom/google/firebase/storage/UploadTask$TaskSnapshot;)V
    .locals 1

    .line 129
    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Upload is paused"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$5;->this$0:Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->UploadPaused()V

    return-void
.end method

.method public bridge synthetic onPaused(Ljava/lang/Object;)V
    .locals 0

    .line 126
    check-cast p1, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$5;->onPaused(Lcom/google/firebase/storage/UploadTask$TaskSnapshot;)V

    return-void
.end method
