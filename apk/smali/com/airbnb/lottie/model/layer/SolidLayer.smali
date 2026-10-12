.class public Lcom/airbnb/lottie/model/layer/SolidLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "SourceFile"


# instance fields
.field public final A:Lcom/airbnb/lottie/animation/LPaint;

.field public final B:[F

.field public final C:Landroid/graphics/Path;

.field public final D:Lcom/airbnb/lottie/model/layer/Layer;

.field public E:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 21
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->z:Landroid/graphics/RectF;

    .line 22
    new-instance p1, Lcom/airbnb/lottie/animation/LPaint;

    invoke-direct {p1}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->A:Lcom/airbnb/lottie/animation/LPaint;

    const/16 v0, 0x8

    .line 23
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->B:[F

    .line 24
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->C:Landroid/graphics/Path;

    .line 30
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->D:Lcom/airbnb/lottie/model/layer/Layer;

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 33
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    iget p2, p2, Lcom/airbnb/lottie/model/layer/Layer;->l:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 1
    .param p2    # Lcom/airbnb/lottie/value/LottieValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 83
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 84
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->E:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    return-void

    .line 88
    :cond_0
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->E:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    :cond_1
    return-void
.end method

.method public drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 11

    .line 153
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->D:Lcom/airbnb/lottie/model/layer/Layer;

    iget v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->l:I

    .line 38
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->v:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v3

    if-nez v3, :cond_1

    const/16 v2, 0x64

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    int-to-float p3, p3

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr p3, v3

    int-to-float v1, v1

    div-float/2addr v1, v3

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    mul-float v1, v1, p3

    mul-float v1, v1, v3

    float-to-int p3, v1

    .line 45
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->A:Lcom/airbnb/lottie/animation/LPaint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 46
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->E:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v2, :cond_2

    .line 47
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2
    if-lez p3, :cond_3

    .line 50
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->B:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, p3, v2

    const/4 v4, 0x1

    .line 51
    aput v3, p3, v4

    .line 52
    iget v5, v0, Lcom/airbnb/lottie/model/layer/Layer;->j:I

    int-to-float v5, v5

    const/4 v6, 0x2

    aput v5, p3, v6

    const/4 v7, 0x3

    .line 53
    aput v3, p3, v7

    const/4 v8, 0x4

    .line 54
    aput v5, p3, v8

    .line 55
    iget v0, v0, Lcom/airbnb/lottie/model/layer/Layer;->k:I

    int-to-float v0, v0

    const/4 v5, 0x5

    aput v0, p3, v5

    const/4 v9, 0x6

    .line 56
    aput v3, p3, v9

    const/4 v3, 0x7

    .line 57
    aput v0, p3, v3

    .line 61
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 62
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->C:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 63
    aget v0, p3, v2

    aget v10, p3, v4

    invoke-virtual {p2, v0, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 64
    aget v0, p3, v6

    aget v6, p3, v7

    invoke-virtual {p2, v0, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 65
    aget v0, p3, v8

    aget v5, p3, v5

    invoke-virtual {p2, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 66
    aget v0, p3, v9

    aget v3, p3, v3

    invoke-virtual {p2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 67
    aget v0, p3, v2

    aget p3, p3, v4

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 68
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 69
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 2

    .line 74
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 75
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->z:Landroid/graphics/RectF;

    .line 161
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->D:Lcom/airbnb/lottie/model/layer/Layer;

    iget v0, p3, Lcom/airbnb/lottie/model/layer/Layer;->j:I

    int-to-float v0, v0

    .line 157
    iget p3, p3, Lcom/airbnb/lottie/model/layer/Layer;->k:I

    int-to-float p3, p3

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p2, v1, v1, v0, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 76
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->m:Landroid/graphics/Matrix;

    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 77
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method
