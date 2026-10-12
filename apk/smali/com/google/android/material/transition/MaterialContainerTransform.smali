.class public final Lcom/google/android/material/transition/MaterialContainerTransform;
.super Landroidx/transition/Transition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/MaterialContainerTransform$c;,
        Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;,
        Lcom/google/android/material/transition/MaterialContainerTransform$d;,
        Lcom/google/android/material/transition/MaterialContainerTransform$FitMode;,
        Lcom/google/android/material/transition/MaterialContainerTransform$FadeMode;,
        Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDirection;
    }
.end annotation


# static fields
.field public static final FADE_MODE_CROSS:I = 0x2

.field public static final FADE_MODE_IN:I = 0x0

.field public static final FADE_MODE_OUT:I = 0x1

.field public static final FADE_MODE_THROUGH:I = 0x3

.field public static final FIT_MODE_AUTO:I = 0x0

.field public static final FIT_MODE_HEIGHT:I = 0x2

.field public static final FIT_MODE_WIDTH:I = 0x1

.field public static final TRANSITION_DIRECTION_AUTO:I = 0x0

.field public static final TRANSITION_DIRECTION_ENTER:I = 0x1

.field public static final TRANSITION_DIRECTION_RETURN:I = 0x2

.field public static final k0:[Ljava/lang/String;

.field public static final l0:Lcom/google/android/material/transition/MaterialContainerTransform$c;

.field public static final m0:Lcom/google/android/material/transition/MaterialContainerTransform$c;

.field public static final n0:Lcom/google/android/material/transition/MaterialContainerTransform$c;

.field public static final o0:Lcom/google/android/material/transition/MaterialContainerTransform$c;


# instance fields
.field public I:Z

.field public J:Z

.field public K:Z

.field public final L:Z

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:Landroid/view/View;

.field public a0:Landroid/view/View;

.field public b0:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public c0:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public d0:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

.field public e0:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

.field public f0:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

.field public g0:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

.field public h0:Z

.field public i0:F

.field public j0:F


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 196
    const-string v0, "materialContainerTransition:bounds"

    const-string v1, "materialContainerTransition:shapeAppearance"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->k0:[Ljava/lang/String;

    .line 202
    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    new-instance v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    const/4 v2, 0x0

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v2, v4}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v5, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v5, v2, v4}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v6, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-direct {v6, v2, v7}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    invoke-direct {v0, v1, v3, v5, v6}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->l0:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    .line 208
    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    new-instance v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    const v3, 0x3f19999a    # 0.6f

    const v5, 0x3f666666    # 0.9f

    invoke-direct {v1, v3, v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v6, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v6, v2, v4}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v7, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v7, v2, v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v8, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    const v9, 0x3e99999a    # 0.3f

    invoke-direct {v8, v9, v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->m0:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    .line 217
    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    new-instance v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    const v6, 0x3dcccccd    # 0.1f

    const v7, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v6, v7}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v7, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v7, v6, v4}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v8, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v8, v6, v4}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v4, v6, v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    invoke-direct {v0, v1, v7, v8, v4}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->n0:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    .line 223
    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    new-instance v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v1, v3, v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v3, v2, v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v4, v2, v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v2, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {v2, v6, v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->o0:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 258
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->I:Z

    .line 233
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->J:Z

    .line 234
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->K:Z

    .line 235
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->L:Z

    const v1, 0x1020002

    .line 236
    iput v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->M:I

    const/4 v1, -0x1

    .line 237
    iput v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->N:I

    .line 238
    iput v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->O:I

    .line 239
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->P:I

    .line 240
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->Q:I

    .line 241
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->R:I

    const/high16 v1, 0x52000000

    .line 242
    iput v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->S:I

    .line 243
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->T:I

    .line 244
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->U:I

    .line 245
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->V:I

    .line 254
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->h0:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 255
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->i0:F

    .line 256
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->j0:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 262
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->I:Z

    .line 233
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->J:Z

    .line 234
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->K:Z

    .line 235
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->L:Z

    const v1, 0x1020002

    .line 236
    iput v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->M:I

    const/4 v1, -0x1

    .line 237
    iput v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->N:I

    .line 238
    iput v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->O:I

    .line 239
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->P:I

    .line 240
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->Q:I

    .line 241
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->R:I

    const/high16 v1, 0x52000000

    .line 242
    iput v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->S:I

    .line 243
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->T:I

    .line 244
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->U:I

    .line 245
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->V:I

    .line 254
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->h0:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 255
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->i0:F

    .line 256
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->j0:F

    .line 263
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/transition/MaterialContainerTransform;->o(Landroid/content/Context;Z)V

    .line 264
    iput-boolean v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->L:Z

    return-void
.end method

.method public static m(Landroidx/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 5

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 815
    iget-object p1, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget-object v1, Lcom/google/android/material/transition/u;->a:Landroid/graphics/RectF;

    .line 275
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    invoke-static {p2, p1}, Lcom/google/android/material/transition/u;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 815
    :goto_0
    iput-object v1, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 817
    iput-object p1, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_1

    .line 818
    :cond_2
    iget-object p1, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget p2, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_3

    .line 819
    iget-object p1, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 822
    iget-object v1, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 825
    iput-object p1, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 827
    :cond_3
    :goto_1
    iget-object p1, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 829
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    return-void

    .line 831
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_6

    sget-object p2, Lcom/google/android/material/transition/u;->a:Landroid/graphics/RectF;

    .line 299
    new-instance p2, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p2, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_3

    .line 831
    :cond_6
    invoke-static {p1}, Lcom/google/android/material/transition/u;->b(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p2

    .line 832
    :goto_3
    iget-object v1, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "materialContainerTransition:bounds"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    iget-object p0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    if-eqz p3, :cond_7

    goto :goto_4

    .line 857
    :cond_7
    sget p3, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v1, :cond_8

    .line 858
    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lcom/google/android/material/shape/ShapeAppearanceModel;

    goto :goto_4

    .line 861
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 876
    sget v1, Lcom/google/android/material/R$attr;->transitionShapeAppearance:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 877
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 878
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v3, v0, :cond_9

    .line 864
    invoke-static {p3, v3, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p3

    goto :goto_4

    .line 867
    :cond_9
    instance-of p3, p1, Lcom/google/android/material/shape/Shapeable;

    if-eqz p3, :cond_a

    .line 868
    check-cast p1, Lcom/google/android/material/shape/Shapeable;

    invoke-interface {p1}, Lcom/google/android/material/shape/Shapeable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p3

    goto :goto_4

    .line 871
    :cond_a
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p3

    .line 125
    :goto_4
    new-instance p1, Lcom/google/android/material/transition/s;

    invoke-direct {p1, p2}, Lcom/google/android/material/transition/s;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p3, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withTransformedCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    .line 833
    const-string p2, "materialContainerTransition:shapeAppearance"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 3
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 806
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->a0:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->O:I

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->c0:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/transition/MaterialContainerTransform;->m(Landroidx/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 3
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 801
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->W:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->N:I

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->b0:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/transition/MaterialContainerTransform;->m(Landroidx/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 28
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_1c

    if-nez v2, :cond_0

    goto/16 :goto_13

    .line 892
    :cond_0
    iget-object v5, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "materialContainerTransition:bounds"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/graphics/RectF;

    .line 893
    iget-object v5, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 894
    const-string v7, "materialContainerTransition:shapeAppearance"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 895
    const-string v5, "MaterialContainerTransform"

    if-eqz v10, :cond_1b

    if-nez v11, :cond_1

    goto/16 :goto_12

    .line 900
    :cond_1
    iget-object v8, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Landroid/graphics/RectF;

    .line 901
    iget-object v6, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 902
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v14, :cond_1a

    if-nez v15, :cond_2

    goto/16 :goto_11

    .line 908
    :cond_2
    iget-object v9, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 909
    iget-object v13, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 912
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v0, v13

    goto :goto_0

    :cond_3
    move-object v0, v9

    .line 913
    :goto_0
    iget v2, v1, Lcom/google/android/material/transition/MaterialContainerTransform;->M:I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v2, v5, :cond_4

    .line 914
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v4, v0

    goto :goto_1

    .line 917
    :cond_4
    iget v2, v1, Lcom/google/android/material/transition/MaterialContainerTransform;->M:I

    invoke-static {v2, v0}, Lcom/google/android/material/transition/u;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 922
    :goto_1
    invoke-static {v2}, Lcom/google/android/material/transition/u;->b(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v5

    .line 923
    iget v6, v5, Landroid/graphics/RectF;->left:F

    neg-float v6, v6

    .line 924
    iget v5, v5, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    const/4 v7, 0x0

    if-eqz v4, :cond_5

    .line 1023
    invoke-static {v4}, Lcom/google/android/material/transition/u;->b(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v4

    .line 1024
    invoke-virtual {v4, v6, v5}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2

    .line 1027
    :cond_5
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-direct {v4, v7, v7, v8, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 926
    :goto_2
    invoke-virtual {v10, v6, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 927
    invoke-virtual {v14, v6, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 1032
    iget v5, v1, Lcom/google/android/material/transition/MaterialContainerTransform;->T:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_8

    if-eq v5, v6, :cond_7

    if-ne v5, v3, :cond_6

    goto :goto_4

    .line 1040
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid transition direction: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/google/android/material/transition/MaterialContainerTransform;->T:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    const/4 v7, 0x1

    goto :goto_4

    .line 322
    :cond_8
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v8

    mul-float v8, v8, v5

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v12

    mul-float v12, v12, v5

    cmpl-float v5, v8, v12

    if-lez v5, :cond_9

    goto :goto_3

    .line 931
    :cond_9
    :goto_4
    iget-boolean v5, v1, Lcom/google/android/material/transition/MaterialContainerTransform;->L:Z

    if-nez v5, :cond_a

    .line 934
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0, v7}, Lcom/google/android/material/transition/MaterialContainerTransform;->o(Landroid/content/Context;Z)V

    .line 937
    :cond_a
    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;

    .line 939
    invoke-virtual {v1}, Landroidx/transition/Transition;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v8

    iget v5, v1, Lcom/google/android/material/transition/MaterialContainerTransform;->i0:F

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v16, v5, v12

    if-eqz v16, :cond_b

    :goto_5
    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_6

    .line 1017
    :cond_b
    invoke-static {v9}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v5

    goto :goto_5

    .line 943
    :goto_6
    iget v12, v1, Lcom/google/android/material/transition/MaterialContainerTransform;->j0:F

    cmpl-float v16, v12, p1

    if-eqz v16, :cond_c

    :goto_7
    move/from16 v16, v12

    goto :goto_8

    .line 1017
    :cond_c
    invoke-static {v13}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v12

    goto :goto_7

    .line 947
    :goto_8
    iget v12, v1, Lcom/google/android/material/transition/MaterialContainerTransform;->P:I

    iget v3, v1, Lcom/google/android/material/transition/MaterialContainerTransform;->Q:I

    iget v6, v1, Lcom/google/android/material/transition/MaterialContainerTransform;->R:I

    move-object/from16 p3, v0

    iget v0, v1, Lcom/google/android/material/transition/MaterialContainerTransform;->S:I

    move/from16 v20, v0

    iget-boolean v0, v1, Lcom/google/android/material/transition/MaterialContainerTransform;->h0:Z

    move/from16 v22, v0

    iget v0, v1, Lcom/google/android/material/transition/MaterialContainerTransform;->U:I

    .line 77
    sget-object v17, Lcom/google/android/material/transition/b;->a:Lcom/google/android/material/transition/b$a;

    sget-object v18, Lcom/google/android/material/transition/b;->b:Lcom/google/android/material/transition/b$b;

    if-eqz v0, :cond_12

    move-object/from16 v27, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    const/4 v2, 0x3

    if-ne v0, v2, :cond_e

    .line 85
    sget-object v17, Lcom/google/android/material/transition/b;->d:Lcom/google/android/material/transition/b$d;

    :cond_d
    :goto_9
    move-object/from16 v23, v17

    goto :goto_a

    .line 87
    :cond_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid fade mode: "

    .line 0
    invoke-static {v0, v3}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_f
    sget-object v17, Lcom/google/android/material/transition/b;->c:Lcom/google/android/material/transition/b$c;

    goto :goto_9

    :cond_10
    if-eqz v7, :cond_d

    :cond_11
    move-object/from16 v23, v18

    goto :goto_a

    :cond_12
    move-object/from16 v27, v2

    if-eqz v7, :cond_11

    goto :goto_9

    .line 954
    :goto_a
    iget v0, v1, Lcom/google/android/material/transition/MaterialContainerTransform;->V:I

    .line 124
    sget-object v2, Lcom/google/android/material/transition/i;->a:Lcom/google/android/material/transition/i$a;

    sget-object v17, Lcom/google/android/material/transition/i;->b:Lcom/google/android/material/transition/i$b;

    if-eqz v0, :cond_16

    move-object/from16 v18, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_15

    const/4 v2, 0x2

    if-ne v0, v2, :cond_14

    :cond_13
    move-object/from16 v24, v17

    goto :goto_d

    .line 132
    :cond_14
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid fit mode: "

    .line 0
    invoke-static {v0, v3}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    :goto_b
    move-object/from16 v24, v18

    goto :goto_d

    :cond_16
    move-object/from16 v18, v2

    .line 138
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 139
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 140
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v19

    .line 141
    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v21

    mul-float v24, v21, v0

    div-float v24, v24, v19

    mul-float v19, v19, v2

    div-float v19, v19, v0

    if-eqz v7, :cond_17

    cmpl-float v0, v24, v2

    if-ltz v0, :cond_13

    goto :goto_c

    :cond_17
    cmpl-float v0, v19, v21

    if-ltz v0, :cond_13

    :goto_c
    goto :goto_b

    .line 1045
    :goto_d
    invoke-virtual {v1}, Landroidx/transition/Transition;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v0

    .line 1046
    instance-of v2, v0, Landroidx/transition/ArcMotion;

    if-nez v2, :cond_19

    instance-of v0, v0, Lcom/google/android/material/transition/MaterialArcMotion;

    if-eqz v0, :cond_18

    goto :goto_f

    .line 1050
    :cond_18
    sget-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->l0:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    sget-object v2, Lcom/google/android/material/transition/MaterialContainerTransform;->m0:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    invoke-virtual {v1, v7, v0, v2}, Lcom/google/android/material/transition/MaterialContainerTransform;->n(ZLcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;)Lcom/google/android/material/transition/MaterialContainerTransform$c;

    move-result-object v0

    :goto_e
    move-object/from16 v25, v0

    goto :goto_10

    .line 1047
    :cond_19
    :goto_f
    sget-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->n0:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    sget-object v2, Lcom/google/android/material/transition/MaterialContainerTransform;->o0:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    invoke-virtual {v1, v7, v0, v2}, Lcom/google/android/material/transition/MaterialContainerTransform;->n(ZLcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;)Lcom/google/android/material/transition/MaterialContainerTransform$c;

    move-result-object v0

    goto :goto_e

    .line 956
    :goto_10
    iget-boolean v0, v1, Lcom/google/android/material/transition/MaterialContainerTransform;->I:Z

    move/from16 v26, v0

    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v21, v7

    move/from16 v17, v12

    move-object/from16 v7, p3

    move v12, v5

    invoke-direct/range {v7 .. v26}, Lcom/google/android/material/transition/MaterialContainerTransform$d;-><init>(Landroidx/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/a;Lcom/google/android/material/transition/h;Lcom/google/android/material/transition/MaterialContainerTransform$c;Z)V

    move-object v3, v7

    .line 960
    iget v0, v4, Landroid/graphics/RectF;->left:F

    .line 961
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v2, v4, Landroid/graphics/RectF;->top:F

    .line 962
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v5, v4, Landroid/graphics/RectF;->right:F

    .line 963
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 964
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 960
    invoke-virtual {v3, v0, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v2, 0x2

    .line 966
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 967
    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$a;

    invoke-direct {v0, v3}, Lcom/google/android/material/transition/MaterialContainerTransform$a;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$d;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 975
    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$b;

    move-object v4, v9

    move-object v5, v13

    move-object/from16 v2, v27

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/MaterialContainerTransform$b;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform;Landroid/view/View;Lcom/google/android/material/transition/MaterialContainerTransform$d;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-object v6

    .line 904
    :cond_1a
    :goto_11
    const-string v0, "Skipping due to null end bounds. Ensure end view is laid out and measured."

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 896
    :cond_1b
    :goto_12
    const-string v0, "Skipping due to null start bounds. Ensure start view is laid out and measured."

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_13
    return-object v4

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getContainerColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 486
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->P:I

    return v0
.end method

.method public getDrawingViewId()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 458
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->M:I

    return v0
.end method

.method public getEndContainerColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 545
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->R:I

    return v0
.end method

.method public getEndElevation()F
    .locals 1

    .line 442
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->j0:F

    return v0
.end method

.method public getEndShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->c0:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method public getEndView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->a0:Landroid/view/View;

    return-object v0
.end method

.method public getEndViewId()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 303
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->O:I

    return v0
.end method

.method public getFadeMode()I
    .locals 1

    .line 632
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->U:I

    return v0
.end method

.method public getFadeProgressThresholds()Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->d0:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method public getFitMode()I
    .locals 1

    .line 652
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->V:I

    return v0
.end method

.method public getScaleMaskProgressThresholds()Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 713
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->f0:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method public getScaleProgressThresholds()Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 692
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->e0:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method public getScrimColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 586
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->S:I

    return v0
.end method

.method public getShapeMaskProgressThresholds()Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 735
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->g0:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method public getStartContainerColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 518
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->Q:I

    return v0
.end method

.method public getStartElevation()F
    .locals 1

    .line 422
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->i0:F

    return v0
.end method

.method public getStartShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->b0:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method public getStartView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->W:Landroid/view/View;

    return-object v0
.end method

.method public getStartViewId()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 270
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->N:I

    return v0
.end method

.method public getTransitionDirection()I
    .locals 1

    .line 614
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->T:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 796
    sget-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->k0:[Ljava/lang/String;

    return-object v0
.end method

.method public isDrawDebugEnabled()Z
    .locals 1

    .line 775
    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->I:Z

    return v0
.end method

.method public isElevationShadowEnabled()Z
    .locals 1

    .line 396
    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->h0:Z

    return v0
.end method

.method public isHoldAtEndEnabled()Z
    .locals 1

    .line 756
    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->J:Z

    return v0
.end method

.method public final n(ZLcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;)Lcom/google/android/material/transition/MaterialContainerTransform$c;
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 1060
    :goto_0
    new-instance p1, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    iget-object p3, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->d0:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 1556
    iget-object v0, p2, Lcom/google/android/material/transition/MaterialContainerTransform$c;->a:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 1061
    sget-object v1, Lcom/google/android/material/transition/u;->a:Landroid/graphics/RectF;

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->e0:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    if-eqz v0, :cond_2

    goto :goto_2

    .line 318
    :cond_2
    iget-object v0, p2, Lcom/google/android/material/transition/MaterialContainerTransform$c;->b:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 1062
    :goto_2
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->f0:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    if-eqz v1, :cond_3

    goto :goto_3

    .line 318
    :cond_3
    iget-object v1, p2, Lcom/google/android/material/transition/MaterialContainerTransform$c;->c:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 1063
    :goto_3
    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->g0:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    if-eqz v2, :cond_4

    goto :goto_4

    .line 318
    :cond_4
    iget-object v2, p2, Lcom/google/android/material/transition/MaterialContainerTransform$c;->d:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 1064
    :goto_4
    invoke-direct {p1, p3, v0, v1, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V

    return-object p1
.end method

.method public final o(Landroid/content/Context;Z)V
    .locals 5

    .line 1007
    sget v0, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sget-object v2, Lcom/google/android/material/transition/u;->a:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Landroidx/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v2

    if-nez v2, :cond_0

    .line 67
    invoke-static {p1, v0, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    :cond_0
    if-eqz p2, :cond_1

    .line 1010
    sget p2, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    goto :goto_0

    :cond_1
    sget p2, Lcom/google/android/material/R$attr;->motionDurationMedium2:I

    :goto_0
    if-eqz p2, :cond_2

    .line 76
    invoke-virtual {p0}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    const/4 v0, -0x1

    .line 77
    invoke-static {p1, p2, v0}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result p2

    if-eq p2, v0, :cond_2

    int-to-long v0, p2

    .line 79
    invoke-virtual {p0, v0, v1}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    .line 1011
    :cond_2
    iget-boolean p2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->K:Z

    if-nez p2, :cond_8

    .line 1012
    sget p2, Lcom/google/android/material/R$attr;->motionPath:I

    if-eqz p2, :cond_8

    .line 100
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_7

    .line 102
    iget p1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-ne p1, v2, :cond_5

    .line 103
    iget p1, v0, Landroid/util/TypedValue;->data:I

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_4

    .line 108
    new-instance p2, Lcom/google/android/material/transition/MaterialArcMotion;

    invoke-direct {p2}, Lcom/google/android/material/transition/MaterialArcMotion;-><init>()V

    goto :goto_1

    .line 110
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid motion path type: "

    .line 0
    invoke-static {p1, v0}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    const/4 p2, 0x3

    if-ne p1, p2, :cond_6

    .line 113
    iget-object p1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 114
    new-instance p2, Landroidx/transition/PatternPathMotion;

    invoke-static {p1}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/transition/PatternPathMotion;-><init>(Landroid/graphics/Path;)V

    goto :goto_1

    .line 116
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Motion path theme attribute must either be an enum value or path data string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    if-eqz p2, :cond_8

    .line 91
    invoke-virtual {p0, p2}, Lcom/google/android/material/transition/MaterialContainerTransform;->setPathMotion(Landroidx/transition/PathMotion;)V

    :cond_8
    return-void
.end method

.method public setAllContainerColors(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 575
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->P:I

    .line 576
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->Q:I

    .line 577
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->R:I

    return-void
.end method

.method public setContainerColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 508
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->P:I

    return-void
.end method

.method public setDrawDebugEnabled(Z)V
    .locals 0

    .line 784
    iput-boolean p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->I:Z

    return-void
.end method

.method public setDrawingViewId(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 476
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->M:I

    return-void
.end method

.method public setElevationShadowEnabled(Z)V
    .locals 0

    .line 412
    iput-boolean p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->h0:Z

    return-void
.end method

.method public setEndContainerColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 560
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->R:I

    return-void
.end method

.method public setEndElevation(F)V
    .locals 0

    .line 452
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->j0:F

    return-void
.end method

.method public setEndShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 388
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->c0:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-void
.end method

.method public setEndView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 344
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->a0:Landroid/view/View;

    return-void
.end method

.method public setEndViewId(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 314
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->O:I

    return-void
.end method

.method public setFadeMode(I)V
    .locals 0

    .line 646
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->U:I

    return-void
.end method

.method public setFadeProgressThresholds(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 682
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->d0:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    return-void
.end method

.method public setFitMode(I)V
    .locals 0

    .line 661
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->V:I

    return-void
.end method

.method public setHoldAtEndEnabled(Z)V
    .locals 0

    .line 766
    iput-boolean p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->J:Z

    return-void
.end method

.method public setPathMotion(Landroidx/transition/PathMotion;)V
    .locals 0
    .param p1    # Landroidx/transition/PathMotion;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 789
    invoke-super {p0, p1}, Landroidx/transition/Transition;->setPathMotion(Landroidx/transition/PathMotion;)V

    const/4 p1, 0x1

    .line 790
    iput-boolean p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->K:Z

    return-void
.end method

.method public setScaleMaskProgressThresholds(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 725
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->f0:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    return-void
.end method

.method public setScaleProgressThresholds(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 703
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->e0:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    return-void
.end method

.method public setScrimColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 602
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->S:I

    return-void
.end method

.method public setShapeMaskProgressThresholds(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 747
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->g0:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    return-void
.end method

.method public setStartContainerColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 535
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->Q:I

    return-void
.end method

.method public setStartElevation(F)V
    .locals 0

    .line 432
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->i0:F

    return-void
.end method

.method public setStartShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 369
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->b0:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-void
.end method

.method public setStartView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 329
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->W:Landroid/view/View;

    return-void
.end method

.method public setStartViewId(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 288
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->N:I

    return-void
.end method

.method public setTransitionDirection(I)V
    .locals 0

    .line 626
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->T:I

    return-void
.end method
