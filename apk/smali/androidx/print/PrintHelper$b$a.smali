.class Landroidx/print/PrintHelper$b$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/print/PrintHelper$b;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Boolean;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/CancellationSignal;

.field public final synthetic b:Landroid/print/PrintAttributes;

.field public final synthetic c:Landroid/print/PrintAttributes;

.field public final synthetic d:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

.field public final synthetic e:Landroidx/print/PrintHelper$b;


# direct methods
.method public constructor <init>(Landroidx/print/PrintHelper$b;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V
    .locals 0

    .line 424
    iput-object p1, p0, Landroidx/print/PrintHelper$b$a;->e:Landroidx/print/PrintHelper$b;

    iput-object p2, p0, Landroidx/print/PrintHelper$b$a;->a:Landroid/os/CancellationSignal;

    iput-object p3, p0, Landroidx/print/PrintHelper$b$a;->b:Landroid/print/PrintAttributes;

    iput-object p4, p0, Landroidx/print/PrintHelper$b$a;->c:Landroid/print/PrintAttributes;

    iput-object p5, p0, Landroidx/print/PrintHelper$b$a;->d:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1

    .line 441
    :try_start_0
    iget-object p1, p0, Landroidx/print/PrintHelper$b$a;->e:Landroidx/print/PrintHelper$b;

    iget-object v0, p1, Landroidx/print/PrintHelper$b;->h:Landroidx/print/PrintHelper;

    iget-object p1, p1, Landroidx/print/PrintHelper$b;->b:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroidx/print/PrintHelper;->c(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 424
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Landroidx/print/PrintHelper$b$a;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public onCancelled(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 494
    iget-object p1, p0, Landroidx/print/PrintHelper$b$a;->d:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {p1}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 495
    iget-object p1, p0, Landroidx/print/PrintHelper$b$a;->e:Landroidx/print/PrintHelper$b;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/print/PrintHelper$b;->f:Landroid/os/AsyncTask;

    return-void
.end method

.method public bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 424
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroidx/print/PrintHelper$b$a;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 10

    .line 450
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 454
    sget-boolean v1, Landroidx/print/PrintHelper;->g:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/print/PrintHelper$b$a;->e:Landroidx/print/PrintHelper$b;

    iget-object v1, v1, Landroidx/print/PrintHelper$b;->h:Landroidx/print/PrintHelper;

    iget v1, v1, Landroidx/print/PrintHelper;->f:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, p1

    goto :goto_2

    .line 458
    :cond_1
    :goto_0
    monitor-enter p0

    .line 459
    :try_start_0
    iget-object v1, p0, Landroidx/print/PrintHelper$b$a;->e:Landroidx/print/PrintHelper$b;

    iget-object v1, v1, Landroidx/print/PrintHelper$b;->e:Landroid/print/PrintAttributes;

    invoke-virtual {v1}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v1

    .line 460
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 463
    invoke-virtual {v1}, Landroid/print/PrintAttributes$MediaSize;->isPortrait()Z

    move-result v1

    .line 546
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eq v1, v2, :cond_0

    .line 464
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x42b40000    # 90.0f

    .line 466
    invoke-virtual {v8, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 468
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    move-object v3, p1

    .line 467
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 460
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :goto_2
    move-object p1, v3

    .line 474
    :goto_3
    iget-object v1, p0, Landroidx/print/PrintHelper$b$a;->e:Landroidx/print/PrintHelper$b;

    iput-object p1, v1, Landroidx/print/PrintHelper$b;->g:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 476
    new-instance p1, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v2, p0, Landroidx/print/PrintHelper$b$a;->e:Landroidx/print/PrintHelper$b;

    iget-object v2, v2, Landroidx/print/PrintHelper$b;->a:Ljava/lang/String;

    invoke-direct {p1, v2}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p1, v0}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object p1

    .line 478
    invoke-virtual {p1, v0}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object p1

    .line 479
    invoke-virtual {p1}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object p1

    .line 481
    iget-object v2, p0, Landroidx/print/PrintHelper$b$a;->b:Landroid/print/PrintAttributes;

    iget-object v3, p0, Landroidx/print/PrintHelper$b$a;->c:Landroid/print/PrintAttributes;

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v0, v2

    .line 483
    iget-object v2, p0, Landroidx/print/PrintHelper$b$a;->d:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v2, p1, v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    goto :goto_4

    .line 486
    :cond_3
    iget-object p1, p0, Landroidx/print/PrintHelper$b$a;->d:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {p1, v1}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFailed(Ljava/lang/CharSequence;)V

    .line 488
    :goto_4
    iget-object p1, p0, Landroidx/print/PrintHelper$b$a;->e:Landroidx/print/PrintHelper$b;

    iput-object v1, p1, Landroidx/print/PrintHelper$b;->f:Landroid/os/AsyncTask;

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 424
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroidx/print/PrintHelper$b$a;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .line 428
    new-instance v0, Landroidx/print/PrintHelper$b$a$a;

    invoke-direct {v0, p0}, Landroidx/print/PrintHelper$b$a$a;-><init>(Landroidx/print/PrintHelper$b$a;)V

    iget-object v1, p0, Landroidx/print/PrintHelper$b$a;->a:Landroid/os/CancellationSignal;

    invoke-virtual {v1, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-void
.end method
