.class Landroidx/print/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/CancellationSignal;

.field public final synthetic b:Landroid/print/PrintAttributes;

.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic d:Landroid/print/PrintAttributes;

.field public final synthetic e:I

.field public final synthetic f:Landroid/os/ParcelFileDescriptor;

.field public final synthetic g:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

.field public final synthetic h:Landroidx/print/PrintHelper;


# direct methods
.method public constructor <init>(Landroidx/print/PrintHelper;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/print/PrintAttributes;ILandroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 0

    .line 635
    iput-object p1, p0, Landroidx/print/a;->h:Landroidx/print/PrintHelper;

    iput-object p2, p0, Landroidx/print/a;->a:Landroid/os/CancellationSignal;

    iput-object p3, p0, Landroidx/print/a;->b:Landroid/print/PrintAttributes;

    iput-object p4, p0, Landroidx/print/a;->c:Landroid/graphics/Bitmap;

    iput-object p5, p0, Landroidx/print/a;->d:Landroid/print/PrintAttributes;

    iput p6, p0, Landroidx/print/a;->e:I

    iput-object p7, p0, Landroidx/print/a;->f:Landroid/os/ParcelFileDescriptor;

    iput-object p8, p0, Landroidx/print/a;->g:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 635
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/print/a;->doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;
    .locals 14

    .line 639
    iget-object p1, p0, Landroidx/print/a;->b:Landroid/print/PrintAttributes;

    iget-object v0, p0, Landroidx/print/a;->h:Landroidx/print/PrintHelper;

    iget-object v1, p0, Landroidx/print/a;->a:Landroid/os/CancellationSignal;

    iget-object v2, p0, Landroidx/print/a;->f:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Landroidx/print/a;->c:Landroid/graphics/Bitmap;

    :try_start_0
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    goto/16 :goto_6

    .line 643
    :cond_0
    new-instance v4, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v6, v0, Landroidx/print/PrintHelper;->a:Landroid/content/Context;

    invoke-direct {v4, v6, p1}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    .line 647
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result p1

    .line 646
    invoke-static {v3, p1}, Landroidx/print/PrintHelper;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 649
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_1

    goto/16 :goto_6

    :cond_1
    const/4 v6, 0x1

    .line 654
    :try_start_1
    invoke-virtual {v4, v6}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v7

    .line 657
    sget-boolean v8, Landroidx/print/PrintHelper;->h:Z

    if-eqz v8, :cond_2

    .line 658
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 662
    :cond_2
    new-instance v9, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v0, v0, Landroidx/print/PrintHelper;->a:Landroid/content/Context;

    iget-object v10, p0, Landroidx/print/a;->d:Landroid/print/PrintAttributes;

    invoke-direct {v9, v0, v10}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    .line 664
    invoke-virtual {v9, v6}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v0

    .line 665
    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 666
    invoke-virtual {v9, v0}, Landroid/graphics/pdf/PdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 667
    invoke-virtual {v9}, Landroid/graphics/pdf/PdfDocument;->close()V

    move-object v0, v6

    .line 672
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget v10, p0, Landroidx/print/a;->e:I

    .line 589
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 592
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v12

    int-to-float v6, v6

    div-float/2addr v12, v6

    const/4 v13, 0x2

    if-ne v10, v13, :cond_3

    .line 594
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v10

    int-to-float v13, v9

    div-float/2addr v10, v13

    invoke-static {v12, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    goto :goto_1

    .line 596
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v10

    int-to-float v13, v9

    div-float/2addr v10, v13

    invoke-static {v12, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 598
    :goto_1
    invoke-virtual {v11, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 601
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v12

    mul-float v6, v6, v10

    sub-float/2addr v12, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v12, v6

    .line 603
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v13

    int-to-float v9, v9

    mul-float v9, v9, v10

    sub-float/2addr v13, v9

    div-float/2addr v13, v6

    .line 605
    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-eqz v8, :cond_4

    goto :goto_2

    .line 679
    :cond_4
    iget v6, v0, Landroid/graphics/RectF;->left:F

    iget v8, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v11, v6, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 682
    invoke-virtual {v7}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 686
    :goto_2
    invoke-virtual {v7}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0, p1, v11, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 689
    invoke-virtual {v4, v7}, Landroid/graphics/pdf/PdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 691
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    .line 700
    :try_start_2
    invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_5

    .line 704
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_9

    :catch_0
    nop

    :cond_5
    :goto_3
    if-eq p1, v3, :cond_7

    .line 711
    :goto_4
    :try_start_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    .line 696
    :cond_6
    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    .line 697
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 696
    invoke-virtual {v4, v0}, Landroid/graphics/pdf/PdfDocument;->writeTo(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 700
    :try_start_6
    invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 704
    :try_start_7
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :catch_1
    nop

    :goto_5
    if-eq p1, v3, :cond_7

    goto :goto_4

    :cond_7
    :goto_6
    return-object v5

    .line 700
    :goto_7
    :try_start_8
    invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v2, :cond_8

    .line 704
    :try_start_9
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_8

    :catch_2
    nop

    :cond_8
    :goto_8
    if-eq p1, v3, :cond_9

    .line 711
    :try_start_a
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_9
    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 635
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidx/print/a;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Throwable;)V
    .locals 3

    .line 721
    iget-object v0, p0, Landroidx/print/a;->a:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    iget-object v1, p0, Landroidx/print/a;->g:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteCancelled()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 726
    new-array p1, p1, [Landroid/print/PageRange;

    sget-object v0, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    invoke-virtual {v1, p1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    return-void

    .line 730
    :cond_1
    const-string v0, "PrintHelper"

    const-string v2, "Error writing printed content"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 731
    invoke-virtual {v1, p1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    return-void
.end method
