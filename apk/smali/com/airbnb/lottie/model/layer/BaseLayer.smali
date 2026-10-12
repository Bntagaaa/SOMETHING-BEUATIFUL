.class public abstract Lcom/airbnb/lottie/model/layer/BaseLayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/model/KeyPathElement;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/Matrix;

.field public final c:Lcom/airbnb/lottie/animation/LPaint;

.field public final d:Lcom/airbnb/lottie/animation/LPaint;

.field public final e:Lcom/airbnb/lottie/animation/LPaint;

.field public final f:Lcom/airbnb/lottie/animation/LPaint;

.field public final g:Lcom/airbnb/lottie/animation/LPaint;

.field public final h:Landroid/graphics/RectF;

.field public final i:Landroid/graphics/RectF;

.field public final j:Landroid/graphics/RectF;

.field public final k:Landroid/graphics/RectF;

.field public final l:Ljava/lang/String;

.field public final m:Landroid/graphics/Matrix;

.field public final n:Lcom/airbnb/lottie/LottieDrawable;

.field public final o:Lcom/airbnb/lottie/model/layer/Layer;

.field public final p:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

.field public final q:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public r:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field public s:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field public t:Ljava/util/List;

.field public final u:Ljava/util/ArrayList;

.field public final v:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

.field public w:Z

.field public x:Z

.field public y:Lcom/airbnb/lottie/animation/LPaint;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 6

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->a:Landroid/graphics/Path;

    .line 76
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->b:Landroid/graphics/Matrix;

    .line 77
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->c:Lcom/airbnb/lottie/animation/LPaint;

    .line 78
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/animation/LPaint;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->d:Lcom/airbnb/lottie/animation/LPaint;

    .line 79
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v3}, Lcom/airbnb/lottie/animation/LPaint;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->e:Lcom/airbnb/lottie/animation/LPaint;

    .line 80
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->f:Lcom/airbnb/lottie/animation/LPaint;

    .line 81
    new-instance v4, Lcom/airbnb/lottie/animation/LPaint;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/animation/LPaint;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->g:Lcom/airbnb/lottie/animation/LPaint;

    .line 82
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->h:Landroid/graphics/RectF;

    .line 83
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->i:Landroid/graphics/RectF;

    .line 84
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->j:Landroid/graphics/RectF;

    .line 85
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->k:Landroid/graphics/RectF;

    .line 87
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->m:Landroid/graphics/Matrix;

    .line 104
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->u:Ljava/util/ArrayList;

    .line 106
    iput-boolean v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->w:Z

    .line 112
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->n:Lcom/airbnb/lottie/LottieDrawable;

    .line 113
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->o:Lcom/airbnb/lottie/model/layer/Layer;

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    iget-object v4, p2, Lcom/airbnb/lottie/model/layer/Layer;->c:Ljava/lang/String;

    .line 114
    const-string v5, "#draw"

    .line 0
    invoke-static {p1, v4, v5}, L_COROUTINE/a;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 114
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->l:Ljava/lang/String;

    .line 115
    sget-object p1, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->INVERT:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    iget-object v4, p2, Lcom/airbnb/lottie/model/layer/Layer;->u:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    if-ne v4, p1, :cond_0

    .line 116
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {p1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 118
    :cond_0
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 121
    :goto_0
    iget-object p1, p2, Lcom/airbnb/lottie/model/layer/Layer;->i:Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->v:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 122
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 124
    iget-object p1, p2, Lcom/airbnb/lottie/model/layer/Layer;->h:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 125
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-direct {p2, p1}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->p:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 126
    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 129
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_1

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->p:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getOpacityAnimations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 132
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 133
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_2

    .line 105
    :cond_2
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->o:Lcom/airbnb/lottie/model/layer/Layer;

    iget-object p2, p1, Lcom/airbnb/lottie/model/layer/Layer;->t:Ljava/util/List;

    .line 174
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 175
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    iget-object p1, p1, Lcom/airbnb/lottie/model/layer/Layer;->t:Ljava/util/List;

    invoke-direct {p2, p1}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->q:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 176
    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setIsDiscrete()V

    .line 177
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->q:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    new-instance p2, Lcom/airbnb/lottie/model/layer/a;

    invoke-direct {p2, p0}, Lcom/airbnb/lottie/model/layer/a;-><init>(Lcom/airbnb/lottie/model/layer/BaseLayer;)V

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 183
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->q:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 542
    :goto_3
    iget-boolean p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->w:Z

    if-eq v1, p1, :cond_4

    .line 543
    iput-boolean v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->w:Z

    .line 191
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->n:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 184
    :cond_4
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->q:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    return-void

    .line 542
    :cond_5
    iget-boolean p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->w:Z

    if-eq v1, p1, :cond_6

    .line 543
    iput-boolean v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->w:Z

    .line 191
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->n:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    :cond_6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->t:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->s:Lcom/airbnb/lottie/model/layer/BaseLayer;

    if-nez v0, :cond_1

    .line 578
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->t:Ljava/util/List;

    return-void

    .line 582
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->t:Ljava/util/List;

    .line 583
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->s:Lcom/airbnb/lottie/model/layer/BaseLayer;

    :goto_0
    if-eqz v0, :cond_2

    .line 585
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->s:Lcom/airbnb/lottie/model/layer/BaseLayer;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 1
    .param p1    # Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "**>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 1
    .param p2    # Lcom/airbnb/lottie/value/LottieValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->v:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->applyValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)Z

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 10

    .line 325
    const-string v0, "Layer#clearLayer"

    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->h:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v5, v2, v3

    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float v6, v2, v3

    iget v2, v1, Landroid/graphics/RectF;->right:F

    add-float v7, v2, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v8, v1, v3

    iget-object v9, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->g:Lcom/airbnb/lottie/animation/LPaint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 328
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->p:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 228
    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->l:Ljava/lang/String;

    invoke-static {v3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 229
    iget-boolean v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->w:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->o:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object/from16 v16, v3

    goto/16 :goto_11

    .line 233
    :cond_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->a()V

    .line 234
    const-string v5, "Layer#parentMatrix"

    invoke-static {v5}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 235
    iget-object v6, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->b:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 236
    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 237
    iget-object v7, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->t:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_0
    if-ltz v7, :cond_2

    .line 238
    iget-object v9, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->t:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->v:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 240
    :cond_2
    invoke-static {v5}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 241
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->v:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v7

    if-nez v7, :cond_3

    const/16 v7, 0x64

    :goto_1
    move/from16 v9, p3

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    :goto_2
    int-to-float v9, v9

    const/high16 v10, 0x437f0000    # 255.0f

    div-float/2addr v9, v10

    int-to-float v7, v7

    mul-float v9, v9, v7

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v9, v7

    mul-float v9, v9, v10

    float-to-int v7, v9

    .line 166
    iget-object v9, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->r:Lcom/airbnb/lottie/model/layer/BaseLayer;

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    .line 244
    :goto_3
    iget-object v11, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->n:Lcom/airbnb/lottie/LottieDrawable;

    const-string v12, "Layer#drawLayer"

    if-nez v9, :cond_5

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->c()Z

    move-result v9

    if-nez v9, :cond_5

    .line 245
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 246
    invoke-static {v12}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, v1, v6, v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 248
    invoke-static {v12}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 249
    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v1

    .line 319
    invoke-virtual {v11}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v2

    .line 320
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;

    move-result-object v2

    .line 113
    iget-object v3, v4, Lcom/airbnb/lottie/model/layer/Layer;->c:Ljava/lang/String;

    .line 320
    invoke-virtual {v2, v3, v1}, Lcom/airbnb/lottie/PerformanceTracker;->recordRenderTime(Ljava/lang/String;F)V

    return-void

    .line 253
    :cond_5
    const-string v9, "Layer#computeBounds"

    invoke-static {v9}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 254
    iget-object v13, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v13, v6, v10}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 166
    iget-object v14, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->r:Lcom/airbnb/lottie/model/layer/BaseLayer;

    if-eqz v14, :cond_6

    const/4 v14, 0x1

    goto :goto_4

    :cond_6
    const/4 v14, 0x0

    :goto_4
    const/4 v15, 0x0

    if-nez v14, :cond_7

    goto :goto_5

    .line 387
    :cond_7
    sget-object v14, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->INVERT:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    iget-object v10, v4, Lcom/airbnb/lottie/model/layer/Layer;->u:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    if-ne v10, v14, :cond_8

    goto :goto_5

    .line 393
    :cond_8
    iget-object v10, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->j:Landroid/graphics/RectF;

    invoke-virtual {v10, v15, v15, v15, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 394
    iget-object v14, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->r:Lcom/airbnb/lottie/model/layer/BaseLayer;

    invoke-virtual {v14, v10, v2, v8}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 395
    invoke-virtual {v13, v10}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 397
    invoke-virtual {v13, v15, v15, v15, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 258
    :cond_9
    :goto_5
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 332
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->i:Landroid/graphics/RectF;

    invoke-virtual {v5, v15, v15, v15, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 333
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->c()Z

    move-result v10

    iget-object v14, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->a:Landroid/graphics/Path;

    iget-object v15, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->p:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    if-nez v10, :cond_c

    move-object/from16 v16, v3

    :cond_a
    :goto_6
    move-object/from16 v17, v9

    move-object/from16 v20, v11

    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 337
    :cond_c
    invoke-virtual {v15}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v10, :cond_10

    move-object/from16 v16, v3

    .line 339
    invoke-virtual {v15}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/model/content/Mask;

    move-object/from16 v17, v3

    .line 340
    invoke-virtual {v15}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 341
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    .line 342
    invoke-virtual {v14, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 343
    invoke-virtual {v14, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 345
    sget-object v3, Lcom/airbnb/lottie/model/layer/BaseLayer$a;->b:[I

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/model/content/Mask;->getMaskMode()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    aget v3, v3, v18

    move/from16 v18, v8

    const/4 v8, 0x1

    if-eq v3, v8, :cond_a

    const/4 v8, 0x2

    if-eq v3, v8, :cond_a

    const/4 v8, 0x3

    if-eq v3, v8, :cond_d

    const/4 v8, 0x4

    if-eq v3, v8, :cond_d

    goto :goto_8

    .line 355
    :cond_d
    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/model/content/Mask;->isInverted()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_6

    .line 359
    :cond_e
    :goto_8
    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->k:Landroid/graphics/RectF;

    const/4 v8, 0x0

    invoke-virtual {v14, v3, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v18, :cond_f

    .line 364
    invoke-virtual {v5, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move-object/from16 v17, v9

    move/from16 v19, v10

    move-object/from16 v20, v11

    goto :goto_9

    .line 366
    :cond_f
    iget v8, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v17, v9

    iget v9, v3, Landroid/graphics/RectF;->left:F

    .line 367
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget v9, v5, Landroid/graphics/RectF;->top:F

    move/from16 v19, v10

    iget v10, v3, Landroid/graphics/RectF;->top:F

    .line 368
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget v10, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v20, v11

    iget v11, v3, Landroid/graphics/RectF;->right:F

    .line 369
    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iget v11, v5, Landroid/graphics/RectF;->bottom:F

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 370
    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 366
    invoke-virtual {v5, v8, v9, v10, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_9
    add-int/lit8 v8, v18, 0x1

    move-object/from16 v3, v16

    move-object/from16 v9, v17

    move/from16 v10, v19

    move-object/from16 v11, v20

    goto/16 :goto_7

    :cond_10
    move-object/from16 v16, v3

    move-object/from16 v17, v9

    move-object/from16 v20, v11

    .line 376
    invoke-virtual {v13, v5}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v3, 0x0

    .line 378
    invoke-virtual {v13, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 261
    :goto_a
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v13, v3, v3, v5, v8}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    if-nez v5, :cond_11

    .line 262
    invoke-virtual {v13, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 265
    :cond_11
    invoke-static/range {v17 .. v17}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 270
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_21

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_21

    .line 271
    const-string v3, "Layer#saveLayer"

    invoke-static {v3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 272
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->c:Lcom/airbnb/lottie/animation/LPaint;

    const/16 v8, 0xff

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 273
    invoke-static {v1, v13, v5}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 274
    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 277
    invoke-virtual/range {p0 .. p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->b(Landroid/graphics/Canvas;)V

    .line 278
    invoke-static {v12}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0, v1, v6, v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 280
    invoke-static {v12}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 282
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->c()Z

    move-result v9

    const/16 v10, 0x13

    const-string v11, "Layer#restoreLayer"

    if-eqz v9, :cond_1f

    .line 404
    invoke-static {v3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 405
    iget-object v9, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->d:Lcom/airbnb/lottie/animation/LPaint;

    invoke-static {v1, v13, v9, v10}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 406
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-ge v12, v10, :cond_12

    .line 409
    invoke-virtual/range {p0 .. p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->b(Landroid/graphics/Canvas;)V

    .line 411
    :cond_12
    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    const/4 v10, 0x0

    .line 412
    :goto_b
    invoke-virtual {v15}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_1e

    .line 413
    invoke-virtual {v15}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/airbnb/lottie/model/content/Mask;

    .line 414
    invoke-virtual {v15}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-object/from16 v18, v3

    .line 415
    invoke-virtual {v15}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getOpacityAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 416
    sget-object v19, Lcom/airbnb/lottie/model/layer/BaseLayer$a;->b:[I

    invoke-virtual {v12}, Lcom/airbnb/lottie/model/content/Mask;->getMaskMode()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->ordinal()I

    move-result v21

    move-object/from16 v22, v3

    aget v3, v19, v21

    move-object/from16 v19, v8

    const/4 v8, 0x1

    if-eq v3, v8, :cond_1a

    iget-object v8, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->e:Lcom/airbnb/lottie/animation/LPaint;

    const v21, 0x40233333    # 2.55f

    move/from16 v23, v10

    const/4 v10, 0x2

    if-eq v3, v10, :cond_17

    const/4 v10, 0x3

    if-eq v3, v10, :cond_15

    const/4 v10, 0x4

    if-eq v3, v10, :cond_13

    :goto_c
    const/16 v3, 0xff

    goto/16 :goto_f

    .line 428
    :cond_13
    invoke-virtual {v12}, Lcom/airbnb/lottie/model/content/Mask;->isInverted()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 484
    invoke-static {v1, v13, v5}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 485
    invoke-virtual {v1, v13, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 486
    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    .line 487
    invoke-virtual {v14, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 488
    invoke-virtual {v14, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 489
    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v21

    float-to-int v3, v3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 490
    invoke-virtual {v1, v14, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 491
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_c

    .line 475
    :cond_14
    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    .line 476
    invoke-virtual {v14, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 477
    invoke-virtual {v14, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 478
    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v21

    float-to-int v3, v3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 479
    invoke-virtual {v1, v14, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_c

    :cond_15
    const/4 v10, 0x4

    .line 447
    invoke-virtual {v12}, Lcom/airbnb/lottie/model/content/Mask;->isInverted()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 527
    invoke-static {v1, v13, v9}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 528
    invoke-virtual {v1, v13, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 529
    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v21

    float-to-int v3, v3

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 530
    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    .line 531
    invoke-virtual {v14, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 532
    invoke-virtual {v14, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 533
    invoke-virtual {v1, v14, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 534
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_c

    .line 516
    :cond_16
    invoke-static {v1, v13, v9}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 517
    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    .line 518
    invoke-virtual {v14, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 519
    invoke-virtual {v14, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 520
    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v21

    float-to-int v3, v3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 521
    invoke-virtual {v1, v14, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 522
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_c

    :cond_17
    const/4 v10, 0x4

    if-nez v23, :cond_18

    const/high16 v3, -0x1000000

    .line 436
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0xff

    .line 437
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 438
    invoke-virtual {v1, v13, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 440
    :cond_18
    invoke-virtual {v12}, Lcom/airbnb/lottie/model/content/Mask;->isInverted()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 504
    invoke-static {v1, v13, v8}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 505
    invoke-virtual {v1, v13, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 506
    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v21

    float-to-int v3, v3

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 507
    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    .line 508
    invoke-virtual {v14, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 509
    invoke-virtual {v14, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 510
    invoke-virtual {v1, v14, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 511
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_c

    .line 496
    :cond_19
    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    .line 497
    invoke-virtual {v14, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 498
    invoke-virtual {v14, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 499
    invoke-virtual {v1, v14, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_c

    :cond_1a
    move/from16 v23, v10

    const/4 v10, 0x4

    .line 461
    invoke-virtual {v15}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_e

    :cond_1b
    const/4 v3, 0x0

    .line 465
    :goto_d
    invoke-virtual {v15}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_1d

    .line 466
    invoke-virtual {v15}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/model/content/Mask;

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/content/Mask;->getMaskMode()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-result-object v8

    sget-object v12, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_NONE:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    if-eq v8, v12, :cond_1c

    :goto_e
    goto/16 :goto_c

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1d
    const/16 v3, 0xff

    .line 423
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 424
    invoke-virtual {v1, v13, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_f
    add-int/lit8 v8, v23, 0x1

    move v10, v8

    move-object/from16 v3, v18

    const/16 v8, 0xff

    goto/16 :goto_b

    :cond_1e
    move-object/from16 v18, v3

    .line 455
    invoke-static {v11}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 457
    invoke-static {v11}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    goto :goto_10

    :cond_1f
    move-object/from16 v18, v3

    .line 166
    :goto_10
    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->r:Lcom/airbnb/lottie/model/layer/BaseLayer;

    if-eqz v3, :cond_20

    .line 287
    const-string v3, "Layer#drawMatte"

    invoke-static {v3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 288
    invoke-static/range {v18 .. v18}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 289
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->f:Lcom/airbnb/lottie/animation/LPaint;

    const/16 v6, 0x13

    invoke-static {v1, v13, v5, v6}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 290
    invoke-static/range {v18 .. v18}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 291
    invoke-virtual/range {p0 .. p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->b(Landroid/graphics/Canvas;)V

    .line 293
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->r:Lcom/airbnb/lottie/model/layer/BaseLayer;

    invoke-virtual {v5, v1, v2, v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 294
    invoke-static {v11}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 296
    invoke-static {v11}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 297
    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 300
    :cond_20
    invoke-static {v11}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 302
    invoke-static {v11}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 305
    :cond_21
    iget-boolean v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->x:Z

    if-eqz v2, :cond_22

    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->y:Lcom/airbnb/lottie/animation/LPaint;

    if-eqz v2, :cond_22

    .line 306
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 307
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->y:Lcom/airbnb/lottie/animation/LPaint;

    const v3, -0x3d7fd

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->y:Lcom/airbnb/lottie/animation/LPaint;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 309
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->y:Lcom/airbnb/lottie/animation/LPaint;

    invoke-virtual {v1, v13, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 310
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->y:Lcom/airbnb/lottie/animation/LPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 311
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->y:Lcom/airbnb/lottie/animation/LPaint;

    const v3, 0x50ebebeb

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 312
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->y:Lcom/airbnb/lottie/animation/LPaint;

    invoke-virtual {v1, v13, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 315
    :cond_22
    invoke-static/range {v16 .. v16}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v1

    .line 319
    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v2

    .line 320
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;

    move-result-object v2

    .line 113
    iget-object v3, v4, Lcom/airbnb/lottie/model/layer/Layer;->c:Ljava/lang/String;

    .line 320
    invoke-virtual {v2, v3, v1}, Lcom/airbnb/lottie/PerformanceTracker;->recordRenderTime(Ljava/lang/String;F)V

    return-void

    .line 230
    :goto_11
    invoke-static/range {v16 .. v16}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public abstract drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 209
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->h:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 210
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->a()V

    .line 211
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->m:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p3, :cond_1

    .line 214
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->t:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 215
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_1

    .line 216
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->t:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object p3, p3, Lcom/airbnb/lottie/model/layer/BaseLayer;->v:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p3}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 218
    :cond_0
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->s:Lcom/airbnb/lottie/model/layer/BaseLayer;

    if-eqz p2, :cond_1

    .line 219
    iget-object p2, p2, Lcom/airbnb/lottie/model/layer/BaseLayer;->v:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 223
    :cond_1
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->v:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->o:Lcom/airbnb/lottie/model/layer/Layer;

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/Layer;->c:Ljava/lang/String;

    return-object v0
.end method

.method public onValueChanged()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->n:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "**>;)V"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 0

    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 3
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

    .line 603
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->r:Lcom/airbnb/lottie/model/layer/BaseLayer;

    if-eqz v0, :cond_1

    .line 604
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/airbnb/lottie/model/KeyPath;->addKey(Ljava/lang/String;)Lcom/airbnb/lottie/model/KeyPath;

    move-result-object v0

    .line 605
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->r:Lcom/airbnb/lottie/model/layer/BaseLayer;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/airbnb/lottie/model/KeyPath;->fullyResolvesTo(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->r:Lcom/airbnb/lottie/model/layer/BaseLayer;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/model/KeyPath;->resolve(Lcom/airbnb/lottie/model/KeyPathElement;)Lcom/airbnb/lottie/model/KeyPath;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/airbnb/lottie/model/KeyPath;->propagateToChildren(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 610
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->r:Lcom/airbnb/lottie/model/layer/BaseLayer;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/airbnb/lottie/model/KeyPath;->incrementDepthBy(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, p2

    .line 611
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->r:Lcom/airbnb/lottie/model/layer/BaseLayer;

    invoke-virtual {v2, p1, v1, p3, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V

    .line 615
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/airbnb/lottie/model/KeyPath;->matches(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 619
    :cond_2
    const-string v0, "__container"

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 620
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/airbnb/lottie/model/KeyPath;->addKey(Ljava/lang/String;)Lcom/airbnb/lottie/model/KeyPath;

    move-result-object p4

    .line 622
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/airbnb/lottie/model/KeyPath;->fullyResolvesTo(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 623
    invoke-virtual {p4, p0}, Lcom/airbnb/lottie/model/KeyPath;->resolve(Lcom/airbnb/lottie/model/KeyPathElement;)Lcom/airbnb/lottie/model/KeyPath;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/airbnb/lottie/model/KeyPath;->propagateToChildren(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 628
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/airbnb/lottie/model/KeyPath;->incrementDepthBy(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, p2

    .line 629
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public setOutlineMasksAndMattes(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->y:Lcom/airbnb/lottie/animation/LPaint;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    invoke-direct {v0}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->y:Lcom/airbnb/lottie/animation/LPaint;

    .line 149
    :cond_0
    iput-boolean p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->x:Z

    return-void
.end method

.method public setProgress(F)V
    .locals 4

    .line 550
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->v:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->setProgress(F)V

    .line 551
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->p:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 552
    :goto_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 553
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->o:Lcom/airbnb/lottie/model/layer/Layer;

    iget v0, v0, Lcom/airbnb/lottie/model/layer/Layer;->m:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    div-float/2addr p1, v0

    .line 559
    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->q:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v2, :cond_2

    div-float v0, p1, v0

    .line 561
    invoke-virtual {v2, v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 563
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->r:Lcom/airbnb/lottie/model/layer/BaseLayer;

    if-eqz v0, :cond_3

    .line 97
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->o:Lcom/airbnb/lottie/model/layer/Layer;

    iget v2, v2, Lcom/airbnb/lottie/model/layer/Layer;->m:F

    mul-float v2, v2, p1

    .line 566
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setProgress(F)V

    .line 568
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 569
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
