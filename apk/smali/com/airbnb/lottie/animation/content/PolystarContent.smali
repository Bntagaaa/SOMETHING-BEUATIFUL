.class public Lcom/airbnb/lottie/animation/content/PolystarContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/b;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/airbnb/lottie/LottieDrawable;

.field public final d:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

.field public final e:Z

.field public final f:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public final g:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public final h:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public final i:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public final j:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public final k:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public final l:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public final m:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

.field public n:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/PolystarShape;)V
    .locals 7

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->a:Landroid/graphics/Path;

    .line 44
    new-instance v0, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    invoke-direct {v0}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->m:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 49
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->c:Lcom/airbnb/lottie/LottieDrawable;

    .line 51
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->b:Ljava/lang/String;

    .line 52
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getType()Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->d:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 53
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->e:Z

    .line 54
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getPoints()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->f:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 55
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v1

    invoke-interface {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->g:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 56
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getRotation()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->h:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 57
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getOuterRadius()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->j:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 58
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getOuterRoundedness()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->l:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 59
    sget-object v5, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->STAR:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    if-ne p1, v5, :cond_0

    .line 60
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getInnerRadius()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v6

    iput-object v6, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->i:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 61
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getInnerRoundedness()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object p3

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p3

    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->k:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 63
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->i:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 64
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->k:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 67
    :goto_0
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 68
    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 69
    invoke-virtual {p2, v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 70
    invoke-virtual {p2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 71
    invoke-virtual {p2, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    if-ne p1, v5, :cond_1

    .line 73
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->i:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 74
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->k:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 77
    :cond_1
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 78
    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 79
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 80
    invoke-virtual {v3, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 81
    invoke-virtual {v4, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    if-ne p1, v5, :cond_2

    .line 83
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->i:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 84
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->k:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_2
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

    .line 310
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_POINTS:Ljava/lang/Float;

    if-ne p1, v0, :cond_0

    .line 311
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->f:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    return-void

    .line 312
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_ROTATION:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 313
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->h:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    return-void

    .line 314
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_2

    .line 315
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->g:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    return-void

    .line 316
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_INNER_RADIUS:Ljava/lang/Float;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->i:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_3

    .line 317
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    return-void

    .line 318
    :cond_3
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_OUTER_RADIUS:Ljava/lang/Float;

    if-ne p1, v0, :cond_4

    .line 319
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->j:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    return-void

    .line 320
    :cond_4
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_INNER_ROUNDEDNESS:Ljava/lang/Float;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->k:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_5

    .line 321
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    return-void

    .line 322
    :cond_5
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_OUTER_ROUNDEDNESS:Ljava/lang/Float;

    if-ne p1, v0, :cond_6

    .line 323
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->l:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    :cond_6
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 42

    move-object/from16 v0, p0

    .line 110
    iget-boolean v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->n:Z

    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->a:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    return-object v2

    .line 114
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 116
    iget-boolean v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->e:Z

    const/4 v9, 0x1

    if-eqz v1, :cond_1

    .line 117
    iput-boolean v9, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->n:Z

    return-object v2

    .line 121
    :cond_1
    sget-object v1, Lcom/airbnb/lottie/animation/content/PolystarContent$a;->a:[I

    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->d:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    iget-object v10, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->g:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->j:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->l:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    const-wide v14, 0x4056800000000000L    # 90.0

    const-wide/16 v16, 0x0

    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->h:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    const/high16 v19, 0x42c80000    # 100.0f

    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->f:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eq v1, v9, :cond_6

    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    const/4 v7, 0x2

    if-eq v1, v7, :cond_2

    goto/16 :goto_12

    .line 249
    :cond_2
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v1, v7

    if-nez v3, :cond_3

    goto :goto_0

    .line 250
    :cond_3
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v7, v3

    move-wide/from16 v16, v7

    :goto_0
    sub-double v16, v16, v14

    .line 254
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    int-to-double v14, v1

    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    div-double v11, v20, v14

    double-to-float v1, v11

    .line 258
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float v11, v3, v19

    .line 259
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v12

    float-to-double v3, v12

    .line 264
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    double-to-float v5, v5

    .line 265
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v25, v14

    const/16 v24, 0x0

    mul-double v13, v16, v3

    double-to-float v6, v13

    .line 266
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-double v13, v1

    add-double/2addr v7, v13

    .line 269
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v15

    move-wide/from16 v17, v7

    const/4 v1, 0x0

    :goto_1
    int-to-double v7, v1

    cmpg-double v19, v7, v15

    if-gez v19, :cond_5

    .line 273
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v7, v7, v3

    double-to-float v7, v7

    .line 274
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-object/from16 v26, v10

    mul-double v9, v19, v3

    double-to-float v8, v9

    cmpl-float v9, v11, v24

    if-eqz v9, :cond_4

    float-to-double v9, v6

    move/from16 v19, v1

    move-object/from16 v27, v2

    float-to-double v1, v5

    .line 277
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    sub-double v1, v1, v22

    double-to-float v1, v1

    float-to-double v1, v1

    .line 278
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 279
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    move v10, v1

    float-to-double v1, v8

    move-wide/from16 v20, v3

    float-to-double v3, v7

    .line 281
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    sub-double v1, v1, v22

    double-to-float v1, v1

    float-to-double v1, v1

    .line 282
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 283
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v2, v12, v11

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float v2, v2, v4

    mul-float v9, v9, v2

    mul-float v4, v2, v10

    mul-float v3, v3, v2

    mul-float v2, v2, v1

    sub-float/2addr v5, v9

    sub-float v4, v6, v4

    add-float/2addr v3, v7

    add-float v6, v8, v2

    move v2, v5

    move v5, v3

    move v3, v2

    move-object/from16 v2, v27

    .line 289
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_2

    :cond_4
    move/from16 v19, v1

    move-wide/from16 v20, v3

    .line 291
    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    add-double v17, v17, v13

    add-int/lit8 v1, v19, 0x1

    move v5, v7

    move v6, v8

    move-wide/from16 v3, v20

    move-object/from16 v10, v26

    const/4 v9, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v26, v10

    .line 297
    invoke-virtual/range {v26 .. v26}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 298
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 299
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    goto/16 :goto_12

    :cond_6
    move-object/from16 v26, v10

    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    const/16 v24, 0x0

    .line 143
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    if-nez v3, :cond_7

    goto :goto_3

    .line 144
    :cond_7
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v7, v3

    move-wide/from16 v16, v7

    :goto_3
    sub-double v16, v16, v14

    .line 148
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    float-to-double v9, v1

    div-double v11, v20, v9

    double-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float v13, v11, v12

    float-to-int v3, v1

    int-to-float v3, v3

    sub-float/2addr v1, v3

    cmpl-float v14, v1, v24

    if-eqz v14, :cond_8

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    mul-float v3, v3, v13

    move/from16 v16, v13

    const/high16 v15, 0x40000000    # 2.0f

    float-to-double v12, v3

    add-double/2addr v7, v12

    goto :goto_4

    :cond_8
    move/from16 v16, v13

    const/high16 v15, 0x40000000    # 2.0f

    .line 157
    :goto_4
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 159
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->i:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v13

    .line 162
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->k:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_9

    .line 163
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float v3, v3, v19

    move/from16 v17, v3

    goto :goto_5

    :cond_9
    const/16 v17, 0x0

    :goto_5
    if-eqz v6, :cond_a

    .line 167
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float v3, v3, v19

    move/from16 v19, v3

    goto :goto_6

    :cond_a
    const/16 v19, 0x0

    :goto_6
    if-eqz v14, :cond_b

    .line 175
    invoke-static {v12, v13, v1, v13}, L_COROUTINE/a;->a(FFFF)F

    move-result v3

    float-to-double v4, v3

    .line 177
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    move v6, v3

    move-wide/from16 v27, v4

    mul-double v3, v20, v27

    double-to-float v3, v3

    .line 178
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v27

    double-to-float v4, v4

    .line 179
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float v5, v11, v1

    div-float/2addr v5, v15

    move/from16 v20, v3

    move/from16 v21, v4

    float-to-double v3, v5

    add-double/2addr v7, v3

    move/from16 v3, v16

    move/from16 v4, v21

    move/from16 v16, v6

    goto :goto_7

    :cond_b
    float-to-double v3, v12

    .line 182
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    double-to-float v5, v5

    .line 183
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v3, v3, v20

    double-to-float v4, v3

    .line 184
    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move v6, v5

    move/from16 v3, v16

    move/from16 v16, v4

    float-to-double v4, v3

    add-double/2addr v7, v4

    move/from16 v20, v6

    move/from16 v4, v16

    const/16 v16, 0x0

    .line 190
    :goto_7
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double v27, v5, v9

    move v5, v4

    move/from16 v6, v20

    const/4 v4, 0x0

    const/16 v18, 0x0

    move-wide/from16 v20, v7

    :goto_8
    int-to-double v7, v4

    cmpg-double v29, v7, v27

    if-gez v29, :cond_16

    if-eqz v18, :cond_c

    move/from16 v29, v12

    goto :goto_9

    :cond_c
    move/from16 v29, v13

    :goto_9
    cmpl-float v30, v16, v24

    if-eqz v30, :cond_d

    sub-double v31, v27, v9

    cmpl-double v33, v7, v31

    if-nez v33, :cond_d

    mul-float v31, v11, v1

    div-float v31, v31, v15

    move/from16 v9, v31

    goto :goto_a

    :cond_d
    move v9, v3

    :goto_a
    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    if-eqz v30, :cond_e

    sub-double v35, v27, v33

    cmpl-double v10, v7, v35

    if-nez v10, :cond_e

    move/from16 v10, v16

    move/from16 v29, v3

    move/from16 v30, v4

    goto :goto_b

    :cond_e
    move/from16 v10, v29

    move/from16 v30, v4

    move/from16 v29, v3

    :goto_b
    float-to-double v3, v10

    .line 202
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v35

    move-wide/from16 v37, v3

    mul-double v3, v35, v37

    double-to-float v3, v3

    .line 203
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v35

    move-wide/from16 v39, v7

    mul-double v7, v35, v37

    double-to-float v8, v7

    cmpl-float v4, v17, v24

    if-nez v4, :cond_f

    cmpl-float v4, v19, v24

    if-nez v4, :cond_f

    .line 206
    invoke-virtual {v2, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    move v10, v1

    move v7, v3

    goto/16 :goto_11

    :cond_f
    move v10, v1

    move-object v4, v2

    float-to-double v1, v5

    move-object/from16 v35, v4

    move v7, v5

    float-to-double v4, v6

    .line 208
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    sub-double v1, v1, v22

    double-to-float v1, v1

    float-to-double v1, v1

    .line 209
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 210
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    move v5, v1

    float-to-double v1, v8

    move/from16 v36, v4

    move/from16 v37, v5

    float-to-double v4, v3

    .line 212
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    sub-double v1, v1, v22

    double-to-float v1, v1

    float-to-double v1, v1

    .line 213
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 214
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    if-eqz v18, :cond_10

    move/from16 v2, v17

    goto :goto_c

    :cond_10
    move/from16 v2, v19

    :goto_c
    if-eqz v18, :cond_11

    move/from16 v5, v19

    goto :goto_d

    :cond_11
    move/from16 v5, v17

    :goto_d
    if-eqz v18, :cond_12

    move/from16 v38, v13

    goto :goto_e

    :cond_12
    move/from16 v38, v12

    :goto_e
    if-eqz v18, :cond_13

    move/from16 v41, v12

    goto :goto_f

    :cond_13
    move/from16 v41, v13

    :goto_f
    mul-float v38, v38, v2

    const v2, 0x3ef4e26d    # 0.47829f

    mul-float v38, v38, v2

    mul-float v36, v36, v38

    mul-float v38, v38, v37

    mul-float v41, v41, v5

    mul-float v41, v41, v2

    mul-float v4, v4, v41

    mul-float v41, v41, v1

    if-eqz v14, :cond_15

    if-nez v30, :cond_14

    mul-float v36, v36, v10

    mul-float v38, v38, v10

    goto :goto_10

    :cond_14
    sub-double v1, v27, v33

    cmpl-double v5, v39, v1

    if-nez v5, :cond_15

    mul-float v4, v4, v10

    mul-float v41, v41, v10

    :cond_15
    :goto_10
    sub-float v6, v6, v36

    sub-float v5, v7, v38

    add-float/2addr v4, v3

    add-float v41, v8, v41

    move v2, v5

    move v5, v4

    move v4, v2

    move v7, v3

    move v3, v6

    move-object/from16 v2, v35

    move/from16 v6, v41

    .line 235
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_11
    float-to-double v3, v9

    add-double v20, v20, v3

    xor-int/lit8 v18, v18, 0x1

    add-int/lit8 v4, v30, 0x1

    move v6, v7

    move v5, v8

    move v1, v10

    move/from16 v3, v29

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    goto/16 :goto_8

    .line 243
    :cond_16
    invoke-virtual/range {v26 .. v26}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 244
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 245
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 130
    :goto_12
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 132
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->m:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    const/4 v1, 0x1

    .line 134
    iput-boolean v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->n:Z

    return-object v2
.end method

.method public onValueChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->n:Z

    .line 94
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->c:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "I",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ")V"
        }
    .end annotation

    .line 304
    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 98
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 99
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    .line 100
    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 56
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;->d:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 101
    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v1, v2, :cond_0

    .line 103
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->m:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 14
    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->a:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->a(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
