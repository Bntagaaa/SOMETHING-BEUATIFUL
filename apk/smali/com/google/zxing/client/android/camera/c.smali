.class final Lcom/google/zxing/client/android/camera/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/graphics/Point;

.field public c:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/zxing/client/android/camera/c;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object p1

    const-string v0, "torch"

    const-string v1, "on"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/zxing/client/android/camera/c;->b(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object p1

    const-string v0, "off"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/zxing/client/android/camera/c;->b(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 161
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static varargs b(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Supported values: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfiguration"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    .line 268
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 269
    invoke-interface {p0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 275
    :goto_1
    const-string p0, "Settable value: "

    .line 0
    invoke-static {p0, v3, v1}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public final c(Landroid/hardware/Camera;)V
    .locals 19

    move-object/from16 v0, p0

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 65
    iget-object v2, v0, Lcom/google/zxing/client/android/camera/c;->a:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 66
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 67
    invoke-static {}, Lcom/google/zxing/client/android/camera/SdkLevel;->getLevel()I

    move-result v3

    const/16 v4, 0xd

    const-string v5, "CameraConfiguration"

    if-ge v3, v4, :cond_1

    .line 68
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 69
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 73
    const-string v4, "Display reports portrait orientation; assuming this is incorrect"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, v3

    move v3, v2

    move/from16 v2, v18

    .line 78
    :cond_0
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, v0, Lcom/google/zxing/client/android/camera/c;->b:Landroid/graphics/Point;

    goto :goto_0

    .line 80
    :cond_1
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, v0, Lcom/google/zxing/client/android/camera/c;->b:Landroid/graphics/Point;

    .line 81
    invoke-static {v2, v3}, Lcom/google/zxing/client/android/camera/HoneycombMR2Util;->getSize(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 83
    :goto_0
    iget-object v2, v0, Lcom/google/zxing/client/android/camera/c;->b:Landroid/graphics/Point;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Screen resolution: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v2, v0, Lcom/google/zxing/client/android/camera/c;->b:Landroid/graphics/Point;

    .line 177
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    .line 178
    const-string v4, "Parameters contained no preview size!"

    if-nez v3, :cond_3

    .line 179
    const-string v2, "Device returned no supported preview sizes; using default"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 184
    new-instance v2, Landroid/graphics/Point;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v2, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    goto/16 :goto_5

    .line 182
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 189
    new-instance v3, Lcom/google/zxing/client/android/camera/b;

    .line 189
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 189
    invoke-static {v6, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v3, 0x4

    .line 204
    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 207
    iget v9, v8, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v9, 0x78

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v8, v8, Landroid/hardware/Camera$Size;->height:I

    .line 208
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 210
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Supported preview sizes: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_5
    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-double v7, v3

    iget v3, v2, Landroid/graphics/Point;->y:I

    int-to-double v9, v3

    div-double/2addr v7, v9

    .line 216
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 217
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_c

    .line 218
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .line 219
    iget v11, v9, Landroid/hardware/Camera$Size;->width:I

    .line 220
    iget v9, v9, Landroid/hardware/Camera$Size;->height:I

    mul-int v12, v11, v9

    const v13, 0x25800

    if-ge v12, v13, :cond_6

    .line 222
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_6
    if-ge v11, v9, :cond_7

    const/4 v10, 0x1

    :cond_7
    if-eqz v10, :cond_8

    move v12, v9

    goto :goto_3

    :cond_8
    move v12, v11

    :goto_3
    if-eqz v10, :cond_9

    move v10, v11

    goto :goto_4

    :cond_9
    move v10, v9

    :goto_4
    int-to-double v13, v12

    move-wide v15, v7

    int-to-double v7, v10

    div-double/2addr v13, v7

    sub-double/2addr v13, v15

    .line 230
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v13, 0x3fc3333333333333L    # 0.15

    cmpl-double v17, v7, v13

    if-lez v17, :cond_b

    .line 232
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_a
    move-wide v7, v15

    goto :goto_2

    .line 236
    :cond_b
    iget v7, v2, Landroid/graphics/Point;->x:I

    if-ne v12, v7, :cond_a

    iget v7, v2, Landroid/graphics/Point;->y:I

    if-ne v10, v7, :cond_a

    .line 237
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v11, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Found preview size exactly matching screen size: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 246
    :cond_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 247
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 248
    new-instance v2, Landroid/graphics/Point;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v2, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Using largest suitable preview size: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 254
    :cond_d
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 258
    new-instance v2, Landroid/graphics/Point;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v2, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "No suitable preview sizes, using default: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_5
    iput-object v2, v0, Lcom/google/zxing/client/android/camera/c;->c:Landroid/graphics/Point;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Camera resolution: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 256
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final d(ZLandroid/hardware/Camera;)V
    .locals 6

    .line 89
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 91
    const-string v1, "CameraConfiguration"

    if-nez v0, :cond_0

    .line 92
    const-string p1, "Device error: no camera parameters are available. Proceeding without configuration."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 96
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Initial camera parameters: "

    .line 0
    invoke-static {v3, v2, v1}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 99
    const-string v2, "In camera config safe mode -- most settings will not be honored"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    .line 147
    invoke-static {v0, v2}, Lcom/google/zxing/client/android/camera/c;->a(Landroid/hardware/Camera$Parameters;Z)V

    .line 106
    const-string v2, "auto"

    if-eqz p1, :cond_2

    .line 107
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    check-cast v3, Ljava/util/List;

    invoke-static {v3, v2}, Lcom/google/zxing/client/android/camera/c;->b(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    const-string v4, "continuous-picture"

    const-string v5, "continuous-video"

    filled-new-array {v4, v5, v2}, [Ljava/lang/String;

    move-result-object v2

    check-cast v3, Ljava/util/List;

    invoke-static {v3, v2}, Lcom/google/zxing/client/android/camera/c;->b(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-nez p1, :cond_3

    if-nez v2, :cond_3

    .line 118
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object p1

    const-string v2, "macro"

    const-string v3, "edof"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    check-cast p1, Ljava/util/List;

    invoke-static {p1, v2}, Lcom/google/zxing/client/android/camera/c;->b(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_4

    .line 123
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 126
    :cond_4
    iget-object p1, p0, Lcom/google/zxing/client/android/camera/c;->c:Landroid/graphics/Point;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting Camera Preview Size to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object p1, p0, Lcom/google/zxing/client/android/camera/c;->c:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 128
    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method
