.class final Lcom/google/appinventor/components/runtime/Canvas$CanvasView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CanvasView"
.end annotation


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private bitmap:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field private completeBitmap:Landroid/graphics/Bitmap;

.field private scaledBackgroundBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Canvas;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;Landroid/content/Context;)V
    .locals 1

    .line 425
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    .line 426
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x30

    .line 427
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v0, 0x20

    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 430
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->clearDrawingLayer()V

    return-void
.end method

.method private clearDrawingLayer()V
    .locals 3

    .line 643
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 644
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private createBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .line 438
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 439
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 440
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 441
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 442
    invoke-virtual {p0, v4, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 443
    invoke-virtual {p0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->createBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private drawTextAtAngle(Ljava/lang/String;IIF)V
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 662
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    neg-float p4, p4

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, p4, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 663
    iget-object p4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->g(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p4, p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 664
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 665
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;Ljava/lang/String;IIF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->drawTextAtAngle(Ljava/lang/String;IIF)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getBackgroundPixelColor(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic g(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getPixelColor(II)I

    move-result p0

    return p0
.end method

.method private getBackgroundPixelColor(II)I
    .locals 5

    const v0, 0xffffff

    if-ltz p1, :cond_5

    .line 671
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_5

    if-ltz p2, :cond_5

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 672
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 679
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    .line 686
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    .line 687
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 689
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 690
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    .line 688
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 693
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    return p1

    .line 698
    :cond_3
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    if-eqz p1, :cond_4

    .line 699
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_4
    return v0

    .line 704
    :catch_0
    const-string p1, "Canvas"

    .line 705
    const-string p2, "Returning COLOR_NONE (exception) from getBackgroundPixelColor."

    .line 704
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return v0
.end method

.method private getPixelColor(II)I
    .locals 3

    const v0, 0xffffff

    if-ltz p1, :cond_4

    .line 712
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_4

    if-ltz p2, :cond_4

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 713
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_1

    .line 718
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 721
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->h(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/Sprite;

    .line 722
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 736
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->createBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 728
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getBackgroundPixelColor(II)I

    move-result p1

    return p1

    .line 741
    :cond_3
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 744
    :catch_0
    const-string p1, "Canvas"

    .line 745
    const-string p2, "Returning COLOR_NONE (exception) from getPixelColor."

    .line 744
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return v0
.end method

.method private getSize(II)I
    .locals 2

    .line 549
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 550
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    return p1

    :cond_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 560
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_1
    return p2
.end method

.method private setBackground()V
    .locals 3

    .line 630
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->b(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 631
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 632
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v2

    :cond_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 636
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 637
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v2

    :cond_2
    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 639
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v0, 0x0

    .line 449
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeBitmap:Landroid/graphics/Bitmap;

    .line 452
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 456
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 460
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->h(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Sprite;

    .line 461
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 463
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Canvas;->m(Lcom/google/appinventor/components/runtime/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 534
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 538
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x20

    const/16 v0, 0x30

    .line 543
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getSize(II)I

    move-result p1

    .line 544
    invoke-direct {p0, p2, v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getSize(II)I

    move-result p2

    .line 543
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 5

    .line 468
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    .line 469
    iget-object p4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_2

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 485
    :try_start_0
    invoke-static {v0, p1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 487
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 489
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 493
    new-instance p3, Landroid/graphics/Canvas;

    iget-object p4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p3, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    goto :goto_0

    .line 498
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 502
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    .line 505
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 506
    new-instance p3, Landroid/graphics/RectF;

    int-to-float p4, p1

    int-to-float v2, p2

    const/4 v4, 0x0

    invoke-direct {p3, v4, v4, p4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 507
    iget-object p4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p4, v0, v3, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 519
    :catch_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Bad values to createScaledBimap w = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", h = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Canvas"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :goto_0
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->dontGrabTouchEventsForComponent()V

    .line 575
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->f(Lcom/google/appinventor/components/runtime/Canvas;)Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->parse(Landroid/view/MotionEvent;)V

    .line 576
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->e(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 578
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->d(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;

    .line 581
    invoke-interface {v1, p1}, Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->k(Lcom/google/appinventor/components/runtime/Canvas;I)V

    .line 654
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackground()V

    .line 656
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->clearDrawingLayer()V

    return-void
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->l(Lcom/google/appinventor/components/runtime/Canvas;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 596
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 597
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 599
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Canvas;->b(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 601
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->b(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 603
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Canvas;->b(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to load "

    const-string v1, "Canvas"

    .line 0
    invoke-static {v0, p1, v1}, L_COROUTINE/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackground()V

    .line 609
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->clearDrawingLayer()V

    return-void
.end method

.method public setBackgroundImageBase64(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x8
    .end annotation

    .line 614
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->l(Lcom/google/appinventor/components/runtime/Canvas;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 615
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 616
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 618
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Canvas;->b(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 619
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Canvas;->b(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 620
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 621
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 624
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackground()V

    .line 625
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->clearDrawingLayer()V

    return-void
.end method
