.class public final Lcom/google/zxing/client/android/AppInvCaptureActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public a:Lcom/google/zxing/client/android/camera/CameraManager;

.field public b:Lcom/google/zxing/client/android/CaptureActivityHandler;

.field public c:Lcom/google/zxing/client/android/ViewfinderView;

.field public d:Lcom/google/zxing/Result;

.field public e:Z

.field public f:Z

.field public g:Lcom/google/zxing/client/android/f;

.field public h:Ljava/util/EnumSet;

.field public i:Ljava/lang/String;

.field public j:Landroid/widget/LinearLayout;

.field public k:Landroid/widget/FrameLayout;

.field public l:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 92
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    sget-object v3, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    .line 93
    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/SurfaceHolder;)V
    .locals 6

    .line 513
    const-string v0, "Camera Framework Bug"

    const-string v1, "Scanner"

    const-string v2, "AppInvCaptureActivity"

    const-string v3, "initCamera() was called"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 517
    iget-object v3, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->a:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v3}, Lcom/google/zxing/client/android/camera/CameraManager;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 518
    const-string p1, "initCamera() while already open -- late SurfaceView callback?"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 522
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->a:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v3, p1}, Lcom/google/zxing/client/android/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    .line 524
    iget-object p1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->b:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-nez p1, :cond_1

    .line 525
    new-instance p1, Lcom/google/zxing/client/android/CaptureActivityHandler;

    iget-object v3, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->h:Ljava/util/EnumSet;

    iget-object v4, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->a:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-direct {p1, p0, v3, v4, v5}, Lcom/google/zxing/client/android/CaptureActivityHandler;-><init>(Lcom/google/zxing/client/android/AppInvCaptureActivity;Ljava/util/EnumSet;Ljava/lang/String;Lcom/google/zxing/client/android/camera/CameraManager;)V

    iput-object p1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->b:Lcom/google/zxing/client/android/CaptureActivityHandler;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 534
    :goto_0
    const-string v3, "Unexpected error initializing camera"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 541
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 542
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 545
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    .line 529
    :goto_1
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 541
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 542
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 545
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    :goto_2
    return-void

    .line 515
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No SurfaceHolder provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public drawViewfinder()V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->c:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/ViewfinderView;->drawViewfinder()V

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->b:Lcom/google/zxing/client/android/CaptureActivityHandler;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 307
    iput-object v1, v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->d:Lcom/google/zxing/Result;

    .line 308
    invoke-static/range {p0 .. p1}, Lcom/google/zxing/client/android/result/ResultHandlerFactory;->makeResultHandler(Landroid/app/Activity;Lcom/google/zxing/Result;)Lcom/google/zxing/client/android/result/ResultHandler;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x3

    if-eqz v6, :cond_4

    .line 339
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 340
    array-length v9, v8

    if-lez v9, :cond_4

    .line 341
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 342
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const v9, -0x3f663400

    .line 343
    invoke-virtual {v15, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    array-length v9, v8

    const/4 v11, 0x2

    if-ne v9, v11, :cond_1

    const/high16 v9, 0x40800000    # 4.0f

    .line 345
    invoke-virtual {v15, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 346
    aget-object v9, v8, v4

    aget-object v8, v8, v5

    .line 363
    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 347
    :cond_1
    array-length v9, v8

    const/4 v12, 0x4

    if-ne v9, v12, :cond_3

    .line 348
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v9

    sget-object v12, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-eq v9, v12, :cond_2

    .line 349
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v9

    sget-object v12, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-ne v9, v12, :cond_3

    .line 351
    :cond_2
    aget-object v9, v8, v4

    aget-object v12, v8, v5

    const/4 v13, 0x2

    .line 363
    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    const/4 v14, 0x2

    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    move v14, v12

    move v12, v9

    const/4 v9, 0x2

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 352
    aget-object v9, v8, v9

    aget-object v8, v8, v7

    .line 363
    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    const/high16 v9, 0x41200000    # 10.0f

    .line 354
    invoke-virtual {v15, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 355
    array-length v9, v8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_4

    aget-object v12, v8, v11

    .line 356
    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    invoke-virtual {v10, v13, v12, v15}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 315
    :cond_4
    :goto_2
    iget-object v8, v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->g:Lcom/google/zxing/client/android/f;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eqz v8, :cond_6

    if-eq v8, v5, :cond_6

    if-eq v8, v7, :cond_5

    goto/16 :goto_5

    :cond_5
    if-eqz v6, :cond_10

    .line 322
    const-string v1, " (bulk scan)"

    .line 323
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-wide/16 v1, 0x3e8

    .line 325
    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->restartPreviewAfterDelay(J)V

    return-void

    :cond_6
    if-eqz v2, :cond_7

    .line 445
    iget-object v6, v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->c:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v6, v2}, Lcom/google/zxing/client/android/ViewfinderView;->drawResultBitmap(Landroid/graphics/Bitmap;)V

    .line 449
    :cond_7
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-wide/16 v6, 0x5dc

    if-nez v2, :cond_8

    goto :goto_3

    .line 452
    :cond_8
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v8, "RESULT_DISPLAY_DURATION_MS"

    invoke-virtual {v2, v8, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 456
    :goto_3
    iget-boolean v2, v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->f:Z

    if-eqz v2, :cond_9

    invoke-virtual {v3}, Lcom/google/zxing/client/android/result/ResultHandler;->areContentsSecure()Z

    move-result v2

    if-nez v2, :cond_9

    .line 457
    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/ClipboardManager;

    .line 458
    invoke-virtual {v3}, Lcom/google/zxing/client/android/result/ResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 460
    invoke-virtual {v2, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 464
    :cond_9
    iget-object v2, v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->g:Lcom/google/zxing/client/android/f;

    sget-object v3, Lcom/google/zxing/client/android/f;->a:Lcom/google/zxing/client/android/f;

    if-ne v2, v3, :cond_10

    .line 468
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x80000

    .line 469
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 470
    invoke-virtual {v1}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "SCAN_RESULT"

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "SCAN_RESULT_FORMAT"

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v3

    if-eqz v3, :cond_a

    .line 473
    array-length v8, v3

    if-lez v8, :cond_a

    .line 474
    const-string v8, "SCAN_RESULT_BYTES"

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 476
    :cond_a
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 478
    sget-object v3, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 480
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 479
    const-string v8, "SCAN_RESULT_UPC_EAN_EXTENSION"

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    :cond_b
    sget-object v3, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_c

    .line 484
    const-string v8, "SCAN_RESULT_ORIENTATION"

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 486
    :cond_c
    sget-object v3, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 488
    const-string v8, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    :cond_d
    sget-object v3, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    if-eqz v1, :cond_e

    .line 493
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 494
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SCAN_RESULT_BYTE_SEGMENTS_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    add-int/2addr v4, v5

    goto :goto_4

    .line 504
    :cond_e
    iget-object v1, v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->b:Lcom/google/zxing/client/android/CaptureActivityHandler;

    const/4 v3, 0x6

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v4, v6, v2

    if-lez v4, :cond_f

    .line 506
    iget-object v2, v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->b:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v2, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 508
    :cond_f
    iget-object v2, v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->b:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_10
    :goto_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    .line 133
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 134
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->j:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 136
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->k:Landroid/widget/FrameLayout;

    .line 137
    iget-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->j:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object p1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 141
    iget-object p1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 142
    iget-object p1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 144
    iput-boolean v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->e:Z

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x50

    if-eq p1, v0, :cond_2

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->a:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p1, v1}, Lcom/google/zxing/client/android/camera/CameraManager;->setTorch(Z)V

    return v2

    .line 257
    :cond_1
    iget-object p1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->a:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p1, v2}, Lcom/google/zxing/client/android/camera/CameraManager;->setTorch(Z)V

    :cond_2
    return v2

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->g:Lcom/google/zxing/client/android/f;

    sget-object v3, Lcom/google/zxing/client/android/f;->a:Lcom/google/zxing/client/android/f;

    if-ne v0, v3, :cond_4

    .line 239
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 240
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v2

    .line 243
    :cond_4
    sget-object v1, Lcom/google/zxing/client/android/f;->c:Lcom/google/zxing/client/android/f;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/google/zxing/client/android/f;->b:Lcom/google/zxing/client/android/f;

    if-ne v0, v1, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->d:Lcom/google/zxing/Result;

    if-eqz v0, :cond_6

    const-wide/16 p1, 0x0

    .line 244
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->restartPreviewAfterDelay(J)V

    return v2

    .line 260
    :cond_6
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->b:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->quitSynchronously()V

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->b:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->a:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->closeDriver()V

    .line 221
    iget-boolean v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->e:Z

    if-nez v0, :cond_1

    .line 222
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->l:Landroid/view/SurfaceView;

    .line 223
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 224
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 226
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 7

    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 155
    new-instance v0, Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/client/android/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->a:Lcom/google/zxing/client/android/camera/CameraManager;

    .line 157
    new-instance v0, Lcom/google/zxing/client/android/ViewfinderView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/zxing/client/android/ViewfinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->c:Lcom/google/zxing/client/android/ViewfinderView;

    .line 158
    iget-object v2, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->a:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0, v2}, Lcom/google/zxing/client/android/ViewfinderView;->setCameraManager(Lcom/google/zxing/client/android/camera/CameraManager;)V

    .line 159
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->k:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->c:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 161
    iput-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->b:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 162
    iput-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->d:Lcom/google/zxing/Result;

    .line 164
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->l:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->l:Landroid/view/SurfaceView;

    .line 166
    iget-object v2, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->l:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 169
    iget-boolean v2, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->e:Z

    if-eqz v2, :cond_1

    .line 172
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->a(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 175
    :cond_1
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v2, 0x3

    .line 176
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->l:Landroid/view/SurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x1

    .line 183
    iput-boolean v3, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->f:Z

    .line 185
    sget-object v3, Lcom/google/zxing/client/android/f;->c:Lcom/google/zxing/client/android/f;

    iput-object v3, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->g:Lcom/google/zxing/client/android/f;

    .line 186
    iput-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->h:Ljava/util/EnumSet;

    .line 187
    iput-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->i:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 191
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 194
    const-string v4, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 197
    sget-object v3, Lcom/google/zxing/client/android/f;->a:Lcom/google/zxing/client/android/f;

    iput-object v3, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->g:Lcom/google/zxing/client/android/f;

    .line 198
    sget-object v3, Lcom/google/zxing/client/android/b;->a:Ljava/util/regex/Pattern;

    .line 55
    const-string v3, "SCAN_FORMATS"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 57
    sget-object v4, Lcom/google/zxing/client/android/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v1

    .line 59
    :goto_1
    const-string v4, "SCAN_MODE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_4

    .line 73
    const-class v5, Lcom/google/zxing/BarcodeFormat;

    invoke-static {v5}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    .line 75
    :try_start_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 76
    invoke-static {v6}, Lcom/google/zxing/BarcodeFormat;->valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_3

    :cond_3
    move-object v1, v5

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz v4, :cond_8

    .line 84
    const-string v3, "PRODUCT_MODE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 85
    sget-object v1, Lcom/google/zxing/client/android/b;->b:Ljava/util/EnumSet;

    goto :goto_4

    .line 87
    :cond_5
    const-string v3, "QR_CODE_MODE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 88
    sget-object v1, Lcom/google/zxing/client/android/b;->d:Ljava/util/EnumSet;

    goto :goto_4

    .line 90
    :cond_6
    const-string v3, "DATA_MATRIX_MODE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 91
    sget-object v1, Lcom/google/zxing/client/android/b;->e:Ljava/util/EnumSet;

    goto :goto_4

    .line 93
    :cond_7
    const-string v3, "ONE_D_MODE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 94
    sget-object v1, Lcom/google/zxing/client/android/b;->c:Ljava/util/EnumSet;

    .line 198
    :cond_8
    :goto_4
    iput-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->h:Ljava/util/EnumSet;

    .line 200
    const-string v1, "SCAN_WIDTH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "SCAN_HEIGHT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 201
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 202
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-lez v1, :cond_9

    if-lez v2, :cond_9

    .line 204
    iget-object v3, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->a:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v3, v1, v2}, Lcom/google/zxing/client/android/camera/CameraManager;->setManualFramingRect(II)V

    .line 209
    :cond_9
    const-string v1, "CHARACTER_SET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->i:Ljava/lang/String;

    :cond_a
    return-void
.end method

.method public restartPreviewAfterDelay(J)V
    .locals 2

    .line 549
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->b:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 550
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    if-nez p1, :cond_0

    .line 282
    const-string v0, "AppInvCaptureActivity"

    const-string v1, "*** WARNING *** surfaceCreated() gave us a null surface!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    iget-boolean v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->e:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 285
    iput-boolean v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->e:Z

    .line 286
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->a(Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 292
    iput-boolean p1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->e:Z

    return-void
.end method
