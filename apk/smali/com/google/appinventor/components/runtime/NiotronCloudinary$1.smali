.class Lcom/google/appinventor/components/runtime/NiotronCloudinary$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloudinary/android/callback/UploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronCloudinary;->UploadFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronCloudinary;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronCloudinary;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCloudinary$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronCloudinary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Lcom/cloudinary/android/callback/ErrorInfo;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCloudinary$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronCloudinary;

    invoke-virtual {p2}, Lcom/cloudinary/android/callback/ErrorInfo;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronCloudinary;->UploadFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(Ljava/lang/String;JJ)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCloudinary$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronCloudinary;

    div-long/2addr p2, p4

    const-wide/16 p4, 0x64

    mul-long p2, p2, p4

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/NiotronCloudinary;->UploadProgress(Ljava/lang/String;J)V

    return-void
.end method

.method public onReschedule(Ljava/lang/String;Lcom/cloudinary/android/callback/ErrorInfo;)V
    .locals 0

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 97
    const-string v0, "public_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCloudinary$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronCloudinary;

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronCloudinary;->UploadComplete(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
