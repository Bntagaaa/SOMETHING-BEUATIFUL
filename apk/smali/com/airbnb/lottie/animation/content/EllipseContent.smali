.class public Lcom/airbnb/lottie/animation/content/EllipseContent;
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

.field public final d:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public final e:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public final f:Lcom/airbnb/lottie/model/content/CircleShape;

.field public final g:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

.field public h:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/CircleShape;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->a:Landroid/graphics/Path;

    .line 32
    new-instance v0, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    invoke-direct {v0}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->g:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 36
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/CircleShape;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->b:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->c:Lcom/airbnb/lottie/LottieDrawable;

    .line 38
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/CircleShape;->getSize()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->d:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 39
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/CircleShape;->getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->e:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 40
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->f:Lcom/airbnb/lottie/model/content/CircleShape;

    .line 42
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 43
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 45
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 46
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

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

    .line 127
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->ELLIPSE_SIZE:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_0

    .line 128
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->d:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    return-void

    .line 129
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    .line 130
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->e:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    :cond_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 17

    move-object/from16 v0, p0

    .line 74
    iget-boolean v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->h:Z

    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->a:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    return-object v2

    .line 78
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 80
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->f:Lcom/airbnb/lottie/model/content/CircleShape;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/content/CircleShape;->isHidden()Z

    move-result v3

    const/4 v9, 0x1

    if-eqz v3, :cond_1

    .line 81
    iput-boolean v9, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->h:Z

    return-object v2

    .line 85
    :cond_1
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->d:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 86
    iget v4, v3, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v10, v4, v5

    .line 87
    iget v3, v3, Landroid/graphics/PointF;->y:F

    div-float v11, v3, v5

    const v3, 0x3f0d6239    # 0.55228f

    mul-float v12, v10, v3

    mul-float v13, v11, v3

    .line 93
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 94
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/content/CircleShape;->isReversed()Z

    move-result v1

    const/4 v14, 0x0

    if-eqz v1, :cond_2

    neg-float v4, v11

    .line 95
    invoke-virtual {v2, v14, v4}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v3, v14, v12

    neg-float v5, v10

    sub-float v6, v14, v13

    const/4 v8, 0x0

    move v7, v5

    .line 96
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v1, v4

    move v15, v6

    add-float v4, v13, v14

    const/4 v7, 0x0

    move v8, v11

    move v6, v5

    move v5, v3

    move v3, v6

    move v6, v11

    .line 97
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move/from16 v16, v6

    move v6, v4

    move/from16 v4, v16

    add-float v3, v12, v14

    const/4 v8, 0x0

    move v7, v10

    move v5, v10

    .line 98
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move/from16 v16, v5

    move v5, v3

    move/from16 v3, v16

    const/4 v7, 0x0

    move v8, v1

    move v6, v1

    move v4, v15

    .line 99
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    :cond_2
    move v3, v10

    move v1, v11

    neg-float v4, v1

    .line 101
    invoke-virtual {v2, v14, v4}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v5, v12, v14

    sub-float v6, v14, v13

    const/4 v8, 0x0

    move v7, v3

    move/from16 v16, v5

    move v5, v3

    move/from16 v3, v16

    .line 102
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v10, v5

    move v5, v3

    move v3, v10

    move v10, v4

    move v11, v6

    add-float v4, v13, v14

    const/4 v7, 0x0

    move v8, v1

    move v6, v1

    .line 103
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move/from16 v16, v6

    move v6, v4

    move/from16 v4, v16

    sub-float v5, v14, v12

    neg-float v3, v3

    const/4 v8, 0x0

    move v7, v3

    move/from16 v16, v5

    move v5, v3

    move/from16 v3, v16

    .line 104
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/4 v7, 0x0

    move v8, v10

    move v4, v5

    move v5, v3

    move v3, v4

    move v6, v10

    move v4, v11

    .line 105
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 108
    :goto_0
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->e:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 109
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 111
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 113
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->g:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 115
    iput-boolean v9, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->h:Z

    return-object v2
.end method

.method public onValueChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->h:Z

    .line 55
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->c:Lcom/airbnb/lottie/LottieDrawable;

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

    .line 121
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

    .line 59
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 60
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    .line 61
    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 56
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;->d:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 61
    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v1, v2, :cond_0

    .line 63
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->g:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 14
    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->a:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->a(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
