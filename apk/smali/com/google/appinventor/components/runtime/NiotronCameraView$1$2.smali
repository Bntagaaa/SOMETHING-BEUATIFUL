.class Lcom/google/appinventor/components/runtime/NiotronCameraView$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronCameraView$1;->onPictureTaken(Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/NiotronCameraView$1;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronCameraView$1;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView$1$2;->this$1:Lcom/google/appinventor/components/runtime/NiotronCameraView$1;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView$1$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView$1$2;->this$1:Lcom/google/appinventor/components/runtime/NiotronCameraView$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronCameraView$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronCameraView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView$1$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronCameraView;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method
