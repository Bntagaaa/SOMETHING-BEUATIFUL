.class public Landroidx/transition/Explode;
.super Landroidx/transition/Visibility;
.source "SourceFile"


# static fields
.field public static final L:Landroid/view/animation/DecelerateInterpolator;

.field public static final M:Landroid/view/animation/AccelerateInterpolator;


# instance fields
.field public final K:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/transition/Explode;->L:Landroid/view/animation/DecelerateInterpolator;

    .line 45
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/transition/Explode;->M:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    const/4 v0, 0x2

    .line 48
    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/transition/Explode;->K:[I

    .line 51
    new-instance v0, Landroidx/transition/CircularPropagation;

    invoke-direct {v0}, Landroidx/transition/CircularPropagation;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->setPropagation(Landroidx/transition/TransitionPropagation;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Landroidx/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 48
    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/transition/Explode;->K:[I

    .line 56
    new-instance p1, Landroidx/transition/CircularPropagation;

    invoke-direct {p1}, Landroidx/transition/CircularPropagation;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->setPropagation(Landroidx/transition/TransitionPropagation;)V

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 77
    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureEndValues(Landroidx/transition/TransitionValues;)V

    .line 78
    invoke-virtual {p0, p1}, Landroidx/transition/Explode;->p(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 71
    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureStartValues(Landroidx/transition/TransitionValues;)V

    .line 72
    invoke-virtual {p0, p1}, Landroidx/transition/Explode;->p(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public final o(Landroid/view/ViewGroup;Landroid/graphics/Rect;[I)V
    .locals 12

    .line 128
    iget-object v0, p0, Landroidx/transition/Explode;->K:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 129
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 130
    aget v0, v0, v3

    .line 134
    invoke-virtual {p0}, Landroidx/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v5, v4

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v6, v4

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    .line 142
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    .line 145
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 146
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-int/2addr p2, v6

    int-to-float p2, p2

    const/4 v7, 0x0

    cmpl-float v8, v4, v7

    if-nez v8, :cond_1

    cmpl-float v7, p2, v7

    if-nez v7, :cond_1

    .line 152
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double v7, v7, v9

    double-to-float p2, v7

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr p2, v4

    .line 153
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    mul-double v7, v7, v9

    double-to-float v7, v7

    sub-float v4, v7, v4

    move v11, v4

    move v4, p2

    move p2, v11

    :cond_1
    mul-float v7, v4, v4

    mul-float v8, p2, p2

    add-float/2addr v8, v7

    float-to-double v7, v8

    .line 173
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    div-float/2addr v4, v7

    div-float/2addr p2, v7

    sub-int/2addr v5, v2

    sub-int/2addr v6, v0

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p1, v6

    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float v0, v0

    int-to-float p1, p1

    mul-float v0, v0, v0

    mul-float p1, p1, p1

    add-float/2addr p1, v0

    float-to-double v5, p1

    .line 173
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float p1, v5

    mul-float v4, v4, p1

    .line 162
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p3, v1

    mul-float p1, p1, p2

    .line 163
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    aput p1, p3, v3

    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 87
    :cond_0
    iget-object p3, p4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:explode:screenBounds"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v6

    .line 89
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v7

    .line 90
    iget-object v0, p0, Landroidx/transition/Explode;->K:[I

    invoke-virtual {p0, p1, p3, v0}, Landroidx/transition/Explode;->o(Landroid/view/ViewGroup;Landroid/graphics/Rect;[I)V

    const/4 p1, 0x0

    .line 91
    aget p1, v0, p1

    int-to-float p1, p1

    add-float v4, v6, p1

    const/4 p1, 0x1

    .line 92
    aget p1, v0, p1

    int-to-float p1, p1

    add-float v5, v7, p1

    .line 94
    iget v2, p3, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sget-object v8, Landroidx/transition/Explode;->L:Landroid/view/animation/DecelerateInterpolator;

    move-object v9, p0

    move-object v0, p2

    move-object v1, p4

    invoke-static/range {v0 .. v9}, Landroidx/transition/v;->a(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Visibility;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 104
    :cond_0
    iget-object p4, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:explode:screenBounds"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    .line 105
    iget v2, p4, Landroid/graphics/Rect;->left:I

    .line 106
    iget v3, p4, Landroid/graphics/Rect;->top:I

    .line 107
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    .line 108
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    .line 111
    iget-object v0, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget v1, Landroidx/transition/R$id;->transition_position:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 115
    aget v7, v0, v6

    iget v8, p4, Landroid/graphics/Rect;->left:I

    sub-int v8, v7, v8

    int-to-float v8, v8

    add-float/2addr v8, v4

    .line 116
    aget v0, v0, v1

    iget v9, p4, Landroid/graphics/Rect;->top:I

    sub-int v9, v0, v9

    int-to-float v9, v9

    add-float/2addr v9, v5

    .line 117
    invoke-virtual {p4, v7, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_1
    move v8, v4

    move v9, v5

    .line 119
    :goto_0
    iget-object v0, p0, Landroidx/transition/Explode;->K:[I

    invoke-virtual {p0, p1, p4, v0}, Landroidx/transition/Explode;->o(Landroid/view/ViewGroup;Landroid/graphics/Rect;[I)V

    .line 120
    aget p1, v0, v6

    int-to-float p1, p1

    add-float v6, v8, p1

    .line 121
    aget p1, v0, v1

    int-to-float p1, p1

    add-float v7, v9, p1

    .line 123
    sget-object v8, Landroidx/transition/Explode;->M:Landroid/view/animation/AccelerateInterpolator;

    move-object v9, p0

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v9}, Landroidx/transition/v;->a(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Visibility;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method public final p(Landroidx/transition/TransitionValues;)V
    .locals 5

    .line 60
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 61
    iget-object v1, p0, Landroidx/transition/Explode;->K:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 62
    aget v2, v1, v2

    const/4 v3, 0x1

    .line 63
    aget v1, v1, v3

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    .line 66
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v1, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v0, "android:explode:screenBounds"

    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
