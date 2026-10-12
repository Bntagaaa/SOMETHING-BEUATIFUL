.class Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->GetDownloadURL(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$10;->this$0:Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/net/Uri;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$10;->this$0:Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->DownloadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 171
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$10;->onSuccess(Landroid/net/Uri;)V

    return-void
.end method
