.class public Lcom/airbnb/lottie/model/layer/TextLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "SourceFile"


# instance fields
.field public final A:Landroid/graphics/RectF;

.field public final B:Landroid/graphics/Matrix;

.field public final C:Landroid/graphics/Paint;

.field public final D:Landroid/graphics/Paint;

.field public final E:Ljava/util/HashMap;

.field public final F:Landroidx/collection/LongSparseArray;

.field public final G:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final H:Lcom/airbnb/lottie/LottieDrawable;

.field public final I:Lcom/airbnb/lottie/LottieComposition;

.field public final J:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public K:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final L:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public M:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final N:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public O:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final P:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public Q:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public R:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final z:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 3

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->z:Ljava/lang/StringBuilder;

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->A:Landroid/graphics/RectF;

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->B:Landroid/graphics/Matrix;

    .line 43
    new-instance v0, Lcom/airbnb/lottie/model/layer/TextLayer$a;

    const/4 v1, 0x1

    .line 43
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 44
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->C:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Lcom/airbnb/lottie/model/layer/TextLayer$b;

    .line 46
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 47
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->D:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->E:Ljava/util/HashMap;

    .line 50
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->F:Landroidx/collection/LongSparseArray;

    .line 77
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->H:Lcom/airbnb/lottie/LottieDrawable;

    .line 78
    iget-object p1, p2, Lcom/airbnb/lottie/model/layer/Layer;->b:Lcom/airbnb/lottie/LottieComposition;

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->I:Lcom/airbnb/lottie/LottieComposition;

    .line 80
    iget-object p1, p2, Lcom/airbnb/lottie/model/layer/Layer;->q:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->G:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 81
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 85
    iget-object p1, p2, Lcom/airbnb/lottie/model/layer/Layer;->r:Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    if-eqz p1, :cond_0

    iget-object p2, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->J:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 87
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 88
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 91
    iget-object p2, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->stroke:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    if-eqz p2, :cond_1

    .line 92
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->L:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 93
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 94
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 97
    iget-object p2, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz p2, :cond_2

    .line 98
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->N:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 99
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 100
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 103
    iget-object p1, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->tracking:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz p1, :cond_3

    .line 104
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->P:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 105
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 106
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_3
    return-void
.end method

.method public static d(Lcom/airbnb/lottie/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V
    .locals 2

    .line 336
    sget-object v0, Lcom/airbnb/lottie/model/layer/TextLayer$c;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    neg-float p0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    .line 344
    invoke-virtual {p1, p0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void

    :cond_1
    neg-float p0, p2

    .line 341
    invoke-virtual {p1, p0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public static e(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8

    .line 394
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v7, p1

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static f(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2

    .line 374
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 2
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

    .line 459
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 460
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 461
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->K:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz p1, :cond_0

    .line 462
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_0
    if-nez p2, :cond_1

    .line 466
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->K:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    return-void

    .line 468
    :cond_1
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->K:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 469
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 470
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->K:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    return-void

    .line 472
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    if-ne p1, v0, :cond_5

    .line 473
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->M:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz p1, :cond_3

    .line 474
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_3
    if-nez p2, :cond_4

    .line 478
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->M:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    return-void

    .line 480
    :cond_4
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->M:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 481
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 482
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->M:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    return-void

    .line 484
    :cond_5
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_WIDTH:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    .line 485
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->O:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz p1, :cond_6

    .line 486
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_6
    if-nez p2, :cond_7

    .line 490
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->O:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    return-void

    .line 492
    :cond_7
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->O:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 493
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 494
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->O:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    return-void

    .line 496
    :cond_8
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TEXT_TRACKING:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    .line 497
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->Q:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz p1, :cond_9

    .line 498
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_9
    if-nez p2, :cond_a

    .line 502
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->Q:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    return-void

    .line 504
    :cond_a
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->Q:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 505
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 506
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->Q:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    return-void

    .line 508
    :cond_b
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TEXT_SIZE:Ljava/lang/Float;

    if-ne p1, v0, :cond_e

    .line 509
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->R:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz p1, :cond_c

    .line 510
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_c
    if-nez p2, :cond_d

    .line 514
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->R:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    return-void

    .line 516
    :cond_d
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->R:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 517
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 518
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->R:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_e
    return-void
.end method

.method public final drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 119
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 120
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->H:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->useTextGlyphs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 123
    :cond_0
    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->G:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/model/DocumentData;

    .line 124
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->I:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieComposition;->getFonts()Ljava/util/Map;

    move-result-object v5

    iget-object v6, v3, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/model/Font;

    if-nez v5, :cond_1

    .line 127
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 131
    :cond_1
    iget-object v6, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->K:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    iget-object v7, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->C:Landroid/graphics/Paint;

    if-eqz v6, :cond_2

    .line 132
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v6, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->J:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v6, :cond_3

    .line 134
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 136
    :cond_3
    iget v6, v3, Lcom/airbnb/lottie/model/DocumentData;->color:I

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    :goto_0
    iget-object v6, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->M:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    iget-object v8, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->D:Landroid/graphics/Paint;

    if-eqz v6, :cond_4

    .line 140
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 141
    :cond_4
    iget-object v6, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->L:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v6, :cond_5

    .line 142
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 144
    :cond_5
    iget v6, v3, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    :goto_1
    iget-object v6, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->v:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v9

    const/16 v10, 0x64

    if-nez v9, :cond_6

    const/16 v6, 0x64

    goto :goto_2

    :cond_6
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_2
    mul-int/lit16 v6, v6, 0xff

    .line 147
    div-int/2addr v6, v10

    .line 148
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 149
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 151
    iget-object v6, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->O:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v6, :cond_7

    .line 152
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    .line 153
    :cond_7
    iget-object v6, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->N:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v6, :cond_8

    .line 154
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    .line 156
    :cond_8
    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v6

    .line 157
    iget v9, v3, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:F

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v10

    mul-float v10, v10, v9

    mul-float v10, v10, v6

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    :goto_3
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->useTextGlyphs()Z

    move-result v6

    iget-object v9, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->P:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    const-string v10, "\n"

    const-string v11, "\r"

    const-string v12, "\r\n"

    const/high16 p3, 0x41200000    # 10.0f

    const/high16 v16, 0x42c80000    # 100.0f

    if-eqz v6, :cond_14

    .line 172
    iget-object v6, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->R:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v6, :cond_9

    .line 173
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_4

    .line 177
    :cond_9
    iget v6, v3, Lcom/airbnb/lottie/model/DocumentData;->size:F

    :goto_4
    div-float v6, v6, v16

    const/high16 v17, 0x40000000    # 2.0f

    .line 180
    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v14

    .line 182
    iget-object v13, v3, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 185
    iget v15, v3, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v16

    mul-float v16, v16, v15

    .line 303
    invoke-virtual {v13, v12, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 304
    invoke-virtual {v12, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 305
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 306
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 189
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v11, :cond_21

    .line 192
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    const/4 v4, 0x0

    const/4 v15, 0x0

    .line 323
    :goto_6
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v15, v5, :cond_b

    .line 324
    invoke-virtual {v13, v15}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move-object/from16 v20, v9

    .line 325
    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v21, v10

    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v9, v10}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 326
    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/LottieComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/model/FontCharacter;

    if-nez v5, :cond_a

    goto :goto_7

    :cond_a
    float-to-double v9, v4

    .line 330
    invoke-virtual {v5}, Lcom/airbnb/lottie/model/FontCharacter;->getWidth()D

    move-result-wide v4

    move-wide/from16 v22, v4

    float-to-double v4, v6

    mul-double v4, v4, v22

    move-wide/from16 v22, v4

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v4

    float-to-double v4, v4

    mul-double v4, v4, v22

    move-wide/from16 v22, v4

    float-to-double v4, v14

    mul-double v4, v4, v22

    add-double/2addr v4, v9

    double-to-float v4, v4

    :goto_7
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    goto :goto_6

    :cond_b
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    .line 195
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 198
    iget-object v5, v3, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    invoke-static {v5, v1, v4}, Lcom/airbnb/lottie/model/layer/TextLayer;->d(Lcom/airbnb/lottie/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V

    add-int/lit8 v4, v11, -0x1

    int-to-float v4, v4

    mul-float v4, v4, v16

    div-float v4, v4, v17

    int-to-float v5, v12

    mul-float v5, v5, v16

    sub-float/2addr v5, v4

    const/4 v4, 0x0

    .line 203
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v4, 0x0

    .line 215
    :goto_8
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_13

    .line 216
    invoke-virtual {v13, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 217
    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v9, v10}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 218
    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/LottieComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/model/FontCharacter;

    if-nez v5, :cond_c

    move-object/from16 v15, p2

    move/from16 v22, v4

    move/from16 v23, v11

    goto/16 :goto_f

    .line 404
    :cond_c
    iget-object v9, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->E:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 405
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    move/from16 v22, v4

    move/from16 v23, v11

    goto :goto_a

    .line 407
    :cond_d
    invoke-virtual {v5}, Lcom/airbnb/lottie/model/FontCharacter;->getShapes()Ljava/util/List;

    move-result-object v10

    .line 408
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    move/from16 v22, v4

    .line 409
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v15}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v23, v11

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v15, :cond_e

    .line 411
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v25, v10

    move-object/from16 v10, v24

    check-cast v10, Lcom/airbnb/lottie/model/content/ShapeGroup;

    move/from16 v24, v11

    .line 412
    new-instance v11, Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-direct {v11, v2, v0, v10}, Lcom/airbnb/lottie/animation/content/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeGroup;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v24, 0x1

    move-object/from16 v10, v25

    goto :goto_9

    .line 414
    :cond_e
    invoke-virtual {v9, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v4

    :goto_a
    const/4 v4, 0x0

    .line 356
    :goto_b
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_10

    .line 357
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getPath()Landroid/graphics/Path;

    move-result-object v10

    .line 358
    iget-object v11, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->A:Landroid/graphics/RectF;

    const/4 v15, 0x0

    invoke-virtual {v10, v11, v15}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 359
    iget-object v11, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->B:Landroid/graphics/Matrix;

    move-object/from16 v15, p2

    invoke-virtual {v11, v15}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    move/from16 v24, v4

    .line 360
    iget v4, v3, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:F

    neg-float v4, v4

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v25

    mul-float v4, v4, v25

    move-object/from16 v25, v5

    const/4 v5, 0x0

    invoke-virtual {v11, v5, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 361
    invoke-virtual {v11, v6, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 362
    invoke-virtual {v10, v11}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 363
    iget-boolean v4, v3, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    if-eqz v4, :cond_f

    .line 364
    invoke-static {v10, v7, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->f(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 365
    invoke-static {v10, v8, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->f(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_c

    .line 367
    :cond_f
    invoke-static {v10, v8, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->f(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 368
    invoke-static {v10, v7, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->f(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_c
    add-int/lit8 v4, v24, 0x1

    move-object/from16 v5, v25

    goto :goto_b

    :cond_10
    move-object/from16 v15, p2

    move-object/from16 v25, v5

    .line 224
    invoke-virtual/range {v25 .. v25}, Lcom/airbnb/lottie/model/FontCharacter;->getWidth()D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v6

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v5

    mul-float v5, v5, v4

    mul-float v5, v5, v14

    .line 226
    iget v4, v3, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    int-to-float v4, v4

    div-float v4, v4, p3

    .line 227
    iget-object v9, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->Q:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v9, :cond_11

    .line 228
    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    :goto_d
    add-float/2addr v4, v9

    goto :goto_e

    :cond_11
    if-eqz v20, :cond_12

    .line 230
    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    goto :goto_d

    :cond_12
    :goto_e
    mul-float v4, v4, v14

    add-float/2addr v4, v5

    const/4 v5, 0x0

    .line 233
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_f
    add-int/lit8 v4, v22, 0x1

    move/from16 v11, v23

    goto/16 :goto_8

    :cond_13
    move-object/from16 v15, p2

    move/from16 v23, v11

    .line 209
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    goto/16 :goto_5

    :cond_14
    move-object/from16 v15, p2

    move-object/from16 v19, v5

    move-object/from16 v20, v9

    const/high16 v17, 0x40000000    # 2.0f

    .line 239
    invoke-static {v15}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    .line 240
    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/airbnb/lottie/LottieDrawable;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    if-nez v4, :cond_15

    goto/16 :goto_19

    .line 244
    :cond_15
    iget-object v5, v3, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 245
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getTextDelegate()Lcom/airbnb/lottie/TextDelegate;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 247
    invoke-virtual {v2, v5}, Lcom/airbnb/lottie/TextDelegate;->getTextInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 249
    :cond_16
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 251
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->R:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v2, :cond_17

    .line 252
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_10

    .line 256
    :cond_17
    iget v2, v3, Lcom/airbnb/lottie/model/DocumentData;->size:F

    .line 258
    :goto_10
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v4

    mul-float v4, v4, v2

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 259
    invoke-virtual {v7}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 260
    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 263
    iget v4, v3, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v6

    mul-float v6, v6, v4

    .line 266
    iget v4, v3, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    int-to-float v4, v4

    div-float v4, v4, p3

    .line 267
    iget-object v9, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->Q:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v9, :cond_18

    .line 268
    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    :goto_11
    add-float/2addr v4, v9

    goto :goto_12

    :cond_18
    if-eqz v20, :cond_19

    .line 270
    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    goto :goto_11

    .line 272
    :cond_19
    :goto_12
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v9

    mul-float v9, v9, v4

    mul-float v9, v9, v2

    div-float v9, v9, v16

    .line 303
    invoke-virtual {v5, v12, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 276
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v15, 0x0

    :goto_13
    if-ge v15, v4, :cond_21

    .line 279
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 281
    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    mul-float v11, v11, v9

    add-float/2addr v11, v10

    .line 283
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 286
    iget-object v10, v3, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    invoke-static {v10, v1, v11}, Lcom/airbnb/lottie/model/layer/TextLayer;->d(Lcom/airbnb/lottie/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V

    add-int/lit8 v10, v4, -0x1

    int-to-float v10, v10

    mul-float v10, v10, v6

    div-float v10, v10, v17

    int-to-float v11, v15

    mul-float v11, v11, v6

    sub-float/2addr v11, v10

    const/4 v10, 0x0

    .line 291
    invoke-virtual {v1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v10, 0x0

    .line 310
    :goto_14
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_20

    .line 419
    invoke-virtual {v5, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    .line 420
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v12, v10

    .line 423
    :goto_15
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_1b

    .line 424
    invoke-virtual {v5, v12}, Ljava/lang/String;->codePointAt(I)I

    move-result v13

    .line 449
    invoke-static {v13}, Ljava/lang/Character;->getType(I)I

    move-result v14

    move-object/from16 p2, v2

    const/16 v2, 0x10

    if-eq v14, v2, :cond_1a

    .line 450
    invoke-static {v13}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/16 v14, 0x1b

    if-eq v2, v14, :cond_1a

    .line 451
    invoke-static {v13}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/4 v14, 0x6

    if-eq v2, v14, :cond_1a

    .line 452
    invoke-static {v13}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/16 v14, 0x1c

    if-eq v2, v14, :cond_1a

    .line 453
    invoke-static {v13}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/16 v14, 0x13

    if-ne v2, v14, :cond_1c

    .line 428
    :cond_1a
    invoke-static {v13}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v12, v2

    mul-int/lit8 v11, v11, 0x1f

    add-int/2addr v11, v13

    move-object/from16 v2, p2

    goto :goto_15

    :cond_1b
    move-object/from16 p2, v2

    :cond_1c
    int-to-long v13, v11

    .line 433
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->F:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v13, v14}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 434
    invoke-virtual {v2, v13, v14}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move/from16 p3, v4

    goto :goto_17

    .line 437
    :cond_1d
    iget-object v11, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->z:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move v0, v10

    :goto_16
    if-ge v0, v12, :cond_1e

    move/from16 p3, v4

    .line 439
    invoke-virtual {v5, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 440
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 441
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v0, v4

    move/from16 v4, p3

    goto :goto_16

    :cond_1e
    move/from16 p3, v4

    .line 443
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-virtual {v2, v13, v14, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v2, v0

    .line 312
    :goto_17
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v10, v0

    .line 384
    iget-boolean v0, v3, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    if-eqz v0, :cond_1f

    .line 385
    invoke-static {v2, v7, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->e(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 386
    invoke-static {v2, v8, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->e(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_18

    .line 388
    :cond_1f
    invoke-static {v2, v8, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->e(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 389
    invoke-static {v2, v7, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->e(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 314
    :goto_18
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, v9

    const/4 v4, 0x0

    .line 316
    invoke-virtual {v1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v4, p3

    goto/16 :goto_14

    :cond_20
    move-object/from16 p2, v2

    move/from16 p3, v4

    const/4 v4, 0x0

    .line 297
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v4, p3

    goto/16 :goto_13

    .line 166
    :cond_21
    :goto_19
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 112
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 114
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->I:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
