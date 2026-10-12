.class final Lcom/google/zxing/client/android/c;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/zxing/client/android/AppInvCaptureActivity;

.field public final b:Lcom/google/zxing/MultiFormatReader;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/google/zxing/client/android/AppInvCaptureActivity;Ljava/util/EnumMap;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/google/zxing/client/android/c;->c:Z

    .line 46
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/client/android/c;->b:Lcom/google/zxing/MultiFormatReader;

    .line 47
    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 48
    iput-object p1, p0, Lcom/google/zxing/client/android/c;->a:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 53
    iget-boolean v0, p0, Lcom/google/zxing/client/android/c;->c:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 56
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/google/zxing/client/android/c;->c:Z

    .line 62
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    return-void

    .line 58
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 76
    iget-object v2, p0, Lcom/google/zxing/client/android/c;->b:Lcom/google/zxing/MultiFormatReader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 125
    iget-object v5, p0, Lcom/google/zxing/client/android/c;->a:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    iget-object v6, v5, Lcom/google/zxing/client/android/AppInvCaptureActivity;->a:Lcom/google/zxing/client/android/camera/CameraManager;

    .line 78
    invoke-virtual {v6, v0, v1, p1}, Lcom/google/zxing/client/android/camera/CameraManager;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 80
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v1, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v1, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 82
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 87
    throw p1

    .line 86
    :catch_0
    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    :cond_3
    const/4 v0, 0x0

    .line 90
    :goto_0
    invoke-virtual {v5}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v0, :cond_4

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found barcode in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "c"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    const/4 v2, 0x3

    .line 96
    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 97
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 98
    invoke-virtual {p1}, Lcom/google/zxing/PlanarYUVLuminanceSource;->renderCroppedGreyscaleBitmap()[I

    move-result-object v3

    .line 112
    invoke-virtual {p1}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v5

    .line 113
    invoke-virtual {p1}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v9

    .line 114
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v9, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move v8, v5

    .line 115
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 99
    const-string p1, "barcode_bitmap"

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    const/4 p1, 0x2

    .line 105
    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    :goto_1
    return-void
.end method
