.class public final Lcom/google/zxing/client/android/camera/CameraManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/zxing/client/android/camera/c;

.field public c:Landroid/hardware/Camera;

.field public d:Lcom/google/zxing/client/android/camera/a;

.field public e:Landroid/graphics/Rect;

.field public f:Landroid/graphics/Rect;

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public final k:Lcom/google/zxing/client/android/camera/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->a:Landroid/content/Context;

    .line 63
    new-instance v0, Lcom/google/zxing/client/android/camera/c;

    invoke-direct {v0, p1}, Lcom/google/zxing/client/android/camera/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->b:Lcom/google/zxing/client/android/camera/c;

    .line 64
    new-instance p1, Lcom/google/zxing/client/android/camera/d;

    invoke-direct {p1, v0}, Lcom/google/zxing/client/android/camera/d;-><init>(Lcom/google/zxing/client/android/camera/c;)V

    iput-object p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->k:Lcom/google/zxing/client/android/camera/d;

    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 9

    .line 290
    invoke-virtual {p0}, Lcom/google/zxing/client/android/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    move-object v1, v0

    .line 295
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 296
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v0
.end method

.method public declared-synchronized closeDriver()V
    .locals 1

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->c:Landroid/hardware/Camera;

    .line 131
    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->e:Landroid/graphics/Rect;

    .line 132
    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->f:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 134
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getFramingRect()Landroid/graphics/Rect;
    .locals 6

    const-string v0, "Calculated framing rect: "

    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->e:Landroid/graphics/Rect;

    if-nez v1, :cond_4

    .line 203
    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->c:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 204
    monitor-exit p0

    return-object v2

    .line 206
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->b:Lcom/google/zxing/client/android/camera/c;

    .line 136
    iget-object v1, v1, Lcom/google/zxing/client/android/camera/c;->b:Landroid/graphics/Point;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 209
    monitor-exit p0

    return-object v2

    .line 211
    :cond_1
    :try_start_2
    iget v2, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v3, v2, 0x3

    div-int/lit8 v3, v3, 0x4

    const/16 v4, 0xf0

    if-ge v3, v4, :cond_2

    const/16 v3, 0xf0

    .line 215
    :cond_2
    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int/lit8 v5, v1, 0x3

    div-int/lit8 v5, v5, 0x4

    if-ge v5, v4, :cond_3

    goto :goto_0

    :cond_3
    move v4, v5

    :goto_0
    sub-int/2addr v2, v3

    .line 219
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v4

    .line 220
    div-int/lit8 v1, v1, 0x2

    .line 221
    new-instance v5, Landroid/graphics/Rect;

    add-int/2addr v3, v2

    add-int/2addr v4, v1

    invoke-direct {v5, v2, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/google/zxing/client/android/camera/CameraManager;->e:Landroid/graphics/Rect;

    .line 222
    const-string v1, "CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 224
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->e:Landroid/graphics/Rect;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 6

    monitor-enter p0

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->f:Landroid/graphics/Rect;

    if-nez v0, :cond_3

    .line 233
    invoke-virtual {p0}, Lcom/google/zxing/client/android/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 235
    monitor-exit p0

    return-object v1

    .line 237
    :cond_0
    :try_start_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 238
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->b:Lcom/google/zxing/client/android/camera/c;

    .line 132
    iget-object v3, v0, Lcom/google/zxing/client/android/camera/c;->c:Landroid/graphics/Point;

    .line 136
    iget-object v0, v0, Lcom/google/zxing/client/android/camera/c;->b:Landroid/graphics/Point;

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 244
    :cond_1
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Point;->x:I

    mul-int v1, v1, v4

    iget v5, v0, Landroid/graphics/Point;->x:I

    div-int/2addr v1, v5

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 245
    iget v1, v2, Landroid/graphics/Rect;->right:I

    mul-int v1, v1, v4

    div-int/2addr v1, v5

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 246
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    mul-int v1, v1, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int/2addr v1, v0

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 247
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    mul-int v1, v1, v3

    div-int/2addr v1, v0

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 248
    iput-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->f:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 242
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    .line 250
    :cond_3
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->f:Landroid/graphics/Rect;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized isOpen()Z
    .locals 1

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->c:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized openDriver(Landroid/view/SurfaceHolder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Resetting to saved camera params: "

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->c:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 76
    new-instance v1, Lcom/google/zxing/client/android/camera/open/OpenCameraManager;

    invoke-direct {v1}, Lcom/google/zxing/client/android/camera/open/OpenCameraManager;-><init>()V

    invoke-virtual {v1}, Lcom/google/zxing/client/android/common/PlatformSupportManager;->build()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;

    invoke-interface {v1}, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->open()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    iput-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->c:Landroid/hardware/Camera;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 78
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 82
    :cond_1
    :goto_0
    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 84
    iget-boolean p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->g:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_2

    .line 85
    iput-boolean v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->g:Z

    .line 86
    iget-object p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->b:Lcom/google/zxing/client/android/camera/c;

    invoke-virtual {p1, v1}, Lcom/google/zxing/client/android/camera/c;->c(Landroid/hardware/Camera;)V

    .line 87
    iget p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->i:I

    if-lez p1, :cond_2

    iget v4, p0, Lcom/google/zxing/client/android/camera/CameraManager;->j:I

    if-lez v4, :cond_2

    .line 88
    invoke-virtual {p0, p1, v4}, Lcom/google/zxing/client/android/camera/CameraManager;->setManualFramingRect(II)V

    .line 89
    iput v3, p0, Lcom/google/zxing/client/android/camera/CameraManager;->i:I

    .line 90
    iput v3, p0, Lcom/google/zxing/client/android/camera/CameraManager;->j:I

    .line 94
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/google/zxing/client/android/camera/CameraManager;->b:Lcom/google/zxing/client/android/camera/c;

    invoke-virtual {v4, v3, v1}, Lcom/google/zxing/client/android/camera/c;->d(ZLandroid/hardware/Camera;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 100
    :catch_0
    :try_start_2
    const-string v3, "CameraManager"

    const-string v4, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v3, "CameraManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 104
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    :try_start_3
    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 108
    iget-object p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->b:Lcom/google/zxing/client/android/camera/c;

    invoke-virtual {p1, v2, v1}, Lcom/google/zxing/client/android/camera/c;->d(ZLandroid/hardware/Camera;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 111
    :catch_1
    :try_start_4
    const-string p1, "CameraManager"

    const-string v0, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 116
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public declared-synchronized requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 2

    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 188
    iget-boolean v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->h:Z

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->k:Lcom/google/zxing/client/android/camera/d;

    .line 38
    iput-object p1, v1, Lcom/google/zxing/client/android/camera/d;->b:Landroid/os/Handler;

    .line 39
    iput p2, v1, Lcom/google/zxing/client/android/camera/d;->c:I

    .line 190
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 192
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setManualFramingRect(II)V
    .locals 4

    const-string v0, "Calculated manual framing rect: "

    monitor-enter p0

    .line 261
    :try_start_0
    iget-boolean v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->g:Z

    if-eqz v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->b:Lcom/google/zxing/client/android/camera/c;

    .line 136
    iget-object v1, v1, Lcom/google/zxing/client/android/camera/c;->b:Landroid/graphics/Point;

    .line 263
    iget v2, v1, Landroid/graphics/Point;->x:I

    if-le p1, v2, :cond_0

    move p1, v2

    .line 266
    :cond_0
    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le p2, v1, :cond_1

    move p2, v1

    :cond_1
    sub-int/2addr v2, p1

    .line 269
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, p2

    .line 270
    div-int/lit8 v1, v1, 0x2

    .line 271
    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr p1, v2

    add-int/2addr p2, v1

    invoke-direct {v3, v2, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/google/zxing/client/android/camera/CameraManager;->e:Landroid/graphics/Rect;

    .line 272
    const-string p1, "CameraManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 273
    iput-object p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->f:Landroid/graphics/Rect;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 275
    :cond_2
    iput p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->i:I

    .line 276
    iput p2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setTorch(Z)V
    .locals 2

    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->d:Lcom/google/zxing/client/android/camera/a;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/a;->b()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 171
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->c:Landroid/hardware/Camera;

    .line 140
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 141
    invoke-static {v1, p1}, Lcom/google/zxing/client/android/camera/c;->a(Landroid/hardware/Camera$Parameters;Z)V

    .line 142
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 172
    iget-object p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->d:Lcom/google/zxing/client/android/camera/a;

    if-eqz p1, :cond_1

    .line 173
    invoke-virtual {p1}, Lcom/google/zxing/client/android/camera/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized startPreview()V
    .locals 3

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 141
    iget-boolean v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->h:Z

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->h:Z

    .line 144
    new-instance v0, Lcom/google/zxing/client/android/camera/a;

    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->c:Landroid/hardware/Camera;

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/android/camera/a;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->d:Lcom/google/zxing/client/android/camera/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 146
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized stopPreview()V
    .locals 3

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->d:Lcom/google/zxing/client/android/camera/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/a;->b()V

    .line 154
    iput-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->d:Lcom/google/zxing/client/android/camera/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 156
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->h:Z

    if-eqz v2, :cond_1

    .line 157
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 158
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->k:Lcom/google/zxing/client/android/camera/d;

    .line 38
    iput-object v1, v0, Lcom/google/zxing/client/android/camera/d;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 39
    iput v1, v0, Lcom/google/zxing/client/android/camera/d;->c:I

    .line 159
    iput-boolean v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
