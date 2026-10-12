.class Lcom/google/appinventor/components/runtime/NiotronCameraView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/cameraview/CameraViewImpl$OnPictureTakenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronCameraView;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronCameraView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronCameraView;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken(Landroid/graphics/Bitmap;I)V
    .locals 7

    .line 70
    :try_start_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    neg-int p2, p2

    int-to-float p2, p2

    .line 71
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 73
    new-instance p2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronCameraView;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->savePath:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 74
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 75
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 76
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 77
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronCameraView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a(Lcom/google/appinventor/components/runtime/NiotronCameraView;)Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronCameraView$1$1;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronCameraView$1$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronCameraView$1;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 84
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronCameraView;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a(Lcom/google/appinventor/components/runtime/NiotronCameraView;)Landroid/app/Activity;

    move-result-object p2

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronCameraView$1$2;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/NiotronCameraView$1$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronCameraView$1;Ljava/lang/Exception;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
