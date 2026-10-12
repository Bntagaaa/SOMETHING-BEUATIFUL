.class public final Lcom/google/android/material/transition/platform/MaterialContainerTransform;
.super Landroid/transition/Transition;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$d;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$FitMode;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$FadeMode;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDirection;
    }
.end annotation


# static fields
.field public static final A:Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;

.field public static final B:Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;

.field public static final C:Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;

.field public static final D:Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;

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

.field public static final z:[Ljava/lang/String;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public final d:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Landroid/view/View;

.field public p:Landroid/view/View;

.field public q:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public r:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public s:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

.field public t:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

.field public u:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

.field public v:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

.field public w:Z

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 201
    const-string v0, "materialContainerTransition:bounds"

    const-string v1, "materialContainerTransition:shapeAppearance"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->z:[Ljava/lang/String;

    .line 207
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;

    new-instance v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    const/4 v2, 0x0

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v2, v4}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v5, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v5, v2, v4}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-direct {v6, v2, v7}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    invoke-direct {v0, v1, v3, v5, v6}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V

    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->A:Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;

    .line 213
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;

    new-instance v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    const v3, 0x3f19999a    # 0.6f

    const v5, 0x3f666666    # 0.9f

    invoke-direct {v1, v3, v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v6, v2, v4}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v7, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v7, v2, v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v8, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    const v9, 0x3e99999a    # 0.3f

    invoke-direct {v8, v9, v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V

    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->B:Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;

    .line 222
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;

    new-instance v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    const v6, 0x3dcccccd    # 0.1f

    const v7, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v6, v7}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v7, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v7, v6, v4}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v8, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v8, v6, v4}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v4, v6, v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    invoke-direct {v0, v1, v7, v8, v4}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V

    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->C:Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;

    .line 228
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;

    new-instance v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v1, v3, v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v3, v2, v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v4, v2, v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {v2, v6, v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V

    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->D:Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 263
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->a:Z

    .line 238
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->b:Z

    .line 239
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->c:Z

    .line 240
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->d:Z

    const v1, 0x1020002

    .line 241
    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->e:I

    const/4 v1, -0x1

    .line 242
    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->f:I

    .line 243
    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->g:I

    .line 244
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->h:I

    .line 245
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->i:I

    .line 246
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->j:I

    const/high16 v1, 0x52000000

    .line 247
    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->k:I

    .line 248
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->l:I

    .line 249
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->m:I

    .line 250
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->n:I

    .line 259
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->w:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 260
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->x:F

    .line 261
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->y:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 267
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->a:Z

    .line 238
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->b:Z

    .line 239
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->c:Z

    .line 240
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->d:Z

    const v1, 0x1020002

    .line 241
    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->e:I

    const/4 v1, -0x1

    .line 242
    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->f:I

    .line 243
    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->g:I

    .line 244
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->h:I

    .line 245
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->i:I

    .line 246
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->j:I

    const/high16 v1, 0x52000000

    .line 247
    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->k:I

    .line 248
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->l:I

    .line 249
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->m:I

    .line 250
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->n:I

    .line 259
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->w:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 260
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->x:F

    .line 261
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->y:F

    .line 268
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->c(Landroid/content/Context;Z)V

    .line 269
    iput-boolean v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->d:Z

    return-void
.end method

.method public static a(Landroid/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 5

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 820
    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    sget-object v1, Lcom/google/android/material/transition/platform/x;->a:Landroid/graphics/RectF;

    .line 280
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    invoke-static {p2, p1}, Lcom/google/android/material/transition/platform/x;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 820
    :goto_0
    iput-object v1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 822
    iput-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_1

    .line 823
    :cond_2
    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    sget p2, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_3

    .line 824
    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 827
    iget-object v1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 830
    iput-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 832
    :cond_3
    :goto_1
    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 834
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

    .line 836
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_6

    sget-object p2, Lcom/google/android/material/transition/platform/x;->a:Landroid/graphics/RectF;

    .line 304
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

    .line 836
    :cond_6
    invoke-static {p1}, Lcom/google/android/material/transition/platform/x;->b(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p2

    .line 837
    :goto_3
    iget-object v1, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "materialContainerTransition:bounds"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    iget-object p0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    if-eqz p3, :cond_7

    goto :goto_4

    .line 862
    :cond_7
    sget p3, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v1, :cond_8

    .line 863
    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lcom/google/android/material/shape/ShapeAppearanceModel;

    goto :goto_4

    .line 866
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 881
    sget v1, Lcom/google/android/material/R$attr;->transitionShapeAppearance:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 882
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 883
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v3, v0, :cond_9

    .line 869
    invoke-static {p3, v3, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p3

    goto :goto_4

    .line 872
    :cond_9
    instance-of p3, p1, Lcom/google/android/material/shape/Shapeable;

    if-eqz p3, :cond_a

    .line 873
    check-cast p1, Lcom/google/android/material/shape/Shapeable;

    invoke-interface {p1}, Lcom/google/android/material/shape/Shapeable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p3

    goto :goto_4

    .line 876
    :cond_a
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p3

    .line 130
    :goto_4
    new-instance p1, Lcom/google/android/material/transition/platform/v;

    invoke-direct {p1, p2}, Lcom/google/android/material/transition/platform/v;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p3, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withTransformedCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    .line 838
    const-string p2, "materialContainerTransition:shapeAppearance"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(ZLcom/google/android/material/transition/platform/MaterialContainerTransform$c;Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 1065
    :goto_0
    new-instance p1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;

    iget-object p3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->s:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 1561
    iget-object v0, p2, Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;->a:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 1066
    sget-object v1, Lcom/google/android/material/transition/platform/x;->a:Landroid/graphics/RectF;

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->t:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    if-eqz v0, :cond_2

    goto :goto_2

    .line 323
    :cond_2
    iget-object v0, p2, Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;->b:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 1067
    :goto_2
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->u:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    if-eqz v1, :cond_3

    goto :goto_3

    .line 323
    :cond_3
    iget-object v1, p2, Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;->c:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 1068
    :goto_3
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->v:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    if-eqz v2, :cond_4

    goto :goto_4

    .line 323
    :cond_4
    iget-object v2, p2, Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;->d:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 1069
    :goto_4
    invoke-direct {p1, p3, v0, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V

    return-object p1
.end method

.method public final c(Landroid/content/Context;Z)V
    .locals 5

    .line 1012
    sget v0, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sget-object v2, Lcom/google/android/material/transition/platform/x;->a:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v2

    if-nez v2, :cond_0

    .line 72
    invoke-static {p1, v0, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    :cond_0
    if-eqz p2, :cond_1

    .line 1015
    sget p2, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    goto :goto_0

    :cond_1
    sget p2, Lcom/google/android/material/R$attr;->motionDurationMedium2:I

    :goto_0
    if-eqz p2, :cond_2

    .line 81
    invoke-virtual {p0}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    const/4 v0, -0x1

    .line 82
    invoke-static {p1, p2, v0}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result p2

    if-eq p2, v0, :cond_2

    int-to-long v0, p2

    .line 84
    invoke-virtual {p0, v0, v1}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 1016
    :cond_2
    iget-boolean p2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->c:Z

    if-nez p2, :cond_8

    .line 1017
    sget p2, Lcom/google/android/material/R$attr;->motionPath:I

    if-eqz p2, :cond_8

    .line 105
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_7

    .line 107
    iget p1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-ne p1, v2, :cond_5

    .line 108
    iget p1, v0, Landroid/util/TypedValue;->data:I

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_4

    .line 113
    new-instance p2, Lcom/google/android/material/transition/platform/MaterialArcMotion;

    invoke-direct {p2}, Lcom/google/android/material/transition/platform/MaterialArcMotion;-><init>()V

    goto :goto_1

    .line 115
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid motion path type: "

    .line 0
    invoke-static {p1, v0}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    const/4 p2, 0x3

    if-ne p1, p2, :cond_6

    .line 118
    iget-object p1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 119
    new-instance p2, Landroid/transition/PatternPathMotion;

    invoke-static {p1}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/transition/PatternPathMotion;-><init>(Landroid/graphics/Path;)V

    goto :goto_1

    .line 121
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Motion path theme attribute must either be an enum value or path data string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    if-eqz p2, :cond_8

    .line 96
    invoke-virtual {p0, p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->setPathMotion(Landroid/transition/PathMotion;)V

    :cond_8
    return-void
.end method

.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 811
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->p:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->g:I

    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->r:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->a(Landroid/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 806
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->o:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->f:I

    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->q:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->a(Landroid/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 28
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/transition/TransitionValues;
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

    .line 897
    :cond_0
    iget-object v5, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "materialContainerTransition:bounds"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/graphics/RectF;

    .line 898
    iget-object v5, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 899
    const-string v7, "materialContainerTransition:shapeAppearance"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 900
    const-string v5, "MaterialContainerTransform"

    if-eqz v10, :cond_1b

    if-nez v11, :cond_1

    goto/16 :goto_12

    .line 905
    :cond_1
    iget-object v8, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Landroid/graphics/RectF;

    .line 906
    iget-object v6, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 907
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v14, :cond_1a

    if-nez v15, :cond_2

    goto/16 :goto_11

    .line 913
    :cond_2
    iget-object v9, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 914
    iget-object v13, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 917
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v0, v13

    goto :goto_0

    :cond_3
    move-object v0, v9

    .line 918
    :goto_0
    iget v2, v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->e:I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v2, v5, :cond_4

    .line 919
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v4, v0

    goto :goto_1

    .line 922
    :cond_4
    iget v2, v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->e:I

    invoke-static {v2, v0}, Lcom/google/android/material/transition/platform/x;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 927
    :goto_1
    invoke-static {v2}, Lcom/google/android/material/transition/platform/x;->b(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v5

    .line 928
    iget v6, v5, Landroid/graphics/RectF;->left:F

    neg-float v6, v6

    .line 929
    iget v5, v5, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    const/4 v7, 0x0

    if-eqz v4, :cond_5

    .line 1028
    invoke-static {v4}, Lcom/google/android/material/transition/platform/x;->b(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v4

    .line 1029
    invoke-virtual {v4, v6, v5}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2

    .line 1032
    :cond_5
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-direct {v4, v7, v7, v8, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 931
    :goto_2
    invoke-virtual {v10, v6, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 932
    invoke-virtual {v14, v6, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 1037
    iget v5, v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->l:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_8

    if-eq v5, v6, :cond_7

    if-ne v5, v3, :cond_6

    goto :goto_4

    .line 1045
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid transition direction: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    const/4 v7, 0x1

    goto :goto_4

    .line 327
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

    .line 936
    :cond_9
    :goto_4
    iget-boolean v5, v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->d:Z

    if-nez v5, :cond_a

    .line 939
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0, v7}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->c(Landroid/content/Context;Z)V

    .line 942
    :cond_a
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$d;

    .line 944
    invoke-virtual {v1}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v8

    iget v5, v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->x:F

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v16, v5, v12

    if-eqz v16, :cond_b

    :goto_5
    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_6

    .line 1022
    :cond_b
    invoke-static {v9}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v5

    goto :goto_5

    .line 948
    :goto_6
    iget v12, v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->y:F

    cmpl-float v16, v12, p1

    if-eqz v16, :cond_c

    :goto_7
    move/from16 v16, v12

    goto :goto_8

    .line 1022
    :cond_c
    invoke-static {v13}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v12

    goto :goto_7

    .line 952
    :goto_8
    iget v12, v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->h:I

    iget v3, v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->i:I

    iget v6, v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->j:I

    move-object/from16 p3, v0

    iget v0, v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->k:I

    move/from16 v20, v0

    iget-boolean v0, v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->w:Z

    move/from16 v22, v0

    iget v0, v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->m:I

    .line 82
    sget-object v17, Lcom/google/android/material/transition/platform/b;->a:Lcom/google/android/material/transition/platform/b$a;

    sget-object v18, Lcom/google/android/material/transition/platform/b;->b:Lcom/google/android/material/transition/platform/b$b;

    if-eqz v0, :cond_12

    move-object/from16 v27, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    const/4 v2, 0x3

    if-ne v0, v2, :cond_e

    .line 90
    sget-object v17, Lcom/google/android/material/transition/platform/b;->d:Lcom/google/android/material/transition/platform/b$d;

    :cond_d
    :goto_9
    move-object/from16 v23, v17

    goto :goto_a

    .line 92
    :cond_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid fade mode: "

    .line 0
    invoke-static {v0, v3}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_f
    sget-object v17, Lcom/google/android/material/transition/platform/b;->c:Lcom/google/android/material/transition/platform/b$c;

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

    .line 959
    :goto_a
    iget v0, v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->n:I

    .line 129
    sget-object v2, Lcom/google/android/material/transition/platform/i;->a:Lcom/google/android/material/transition/platform/i$a;

    sget-object v17, Lcom/google/android/material/transition/platform/i;->b:Lcom/google/android/material/transition/platform/i$b;

    if-eqz v0, :cond_16

    move-object/from16 v18, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_15

    const/4 v2, 0x2

    if-ne v0, v2, :cond_14

    :cond_13
    move-object/from16 v24, v17

    goto :goto_d

    .line 137
    :cond_14
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid fit mode: "

    .line 0
    invoke-static {v0, v3}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    :goto_b
    move-object/from16 v24, v18

    goto :goto_d

    :cond_16
    move-object/from16 v18, v2

    .line 143
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 144
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 145
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v19

    .line 146
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

    .line 1050
    :goto_d
    invoke-virtual {v1}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v0

    .line 1051
    instance-of v2, v0, Landroid/transition/ArcMotion;

    if-nez v2, :cond_19

    instance-of v0, v0, Lcom/google/android/material/transition/platform/MaterialArcMotion;

    if-eqz v0, :cond_18

    goto :goto_f

    .line 1055
    :cond_18
    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->A:Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;

    sget-object v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->B:Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;

    invoke-virtual {v1, v7, v0, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->b(ZLcom/google/android/material/transition/platform/MaterialContainerTransform$c;Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;

    move-result-object v0

    :goto_e
    move-object/from16 v25, v0

    goto :goto_10

    .line 1052
    :cond_19
    :goto_f
    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->C:Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;

    sget-object v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->D:Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;

    invoke-virtual {v1, v7, v0, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->b(ZLcom/google/android/material/transition/platform/MaterialContainerTransform$c;Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;

    move-result-object v0

    goto :goto_e

    .line 961
    :goto_10
    iget-boolean v0, v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->a:Z

    move/from16 v26, v0

    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v21, v7

    move/from16 v17, v12

    move-object/from16 v7, p3

    move v12, v5

    invoke-direct/range {v7 .. v26}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$d;-><init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/platform/a;Lcom/google/android/material/transition/platform/h;Lcom/google/android/material/transition/platform/MaterialContainerTransform$c;Z)V

    move-object v3, v7

    .line 965
    iget v0, v4, Landroid/graphics/RectF;->left:F

    .line 966
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v2, v4, Landroid/graphics/RectF;->top:F

    .line 967
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v5, v4, Landroid/graphics/RectF;->right:F

    .line 968
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 969
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 965
    invoke-virtual {v3, v0, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v2, 0x2

    .line 971
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 972
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$a;

    invoke-direct {v0, v3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$a;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$d;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 980
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$b;

    move-object v4, v9

    move-object v5, v13

    move-object/from16 v2, v27

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$b;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform;Landroid/view/View;Lcom/google/android/material/transition/platform/MaterialContainerTransform$d;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-object v6

    .line 909
    :cond_1a
    :goto_11
    const-string v0, "Skipping due to null end bounds. Ensure end view is laid out and measured."

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 901
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

    .line 491
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->h:I

    return v0
.end method

.method public getDrawingViewId()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 463
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->e:I

    return v0
.end method

.method public getEndContainerColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 550
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->j:I

    return v0
.end method

.method public getEndElevation()F
    .locals 1

    .line 447
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->y:F

    return v0
.end method

.method public getEndShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->r:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method public getEndView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->p:Landroid/view/View;

    return-object v0
.end method

.method public getEndViewId()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 308
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->g:I

    return v0
.end method

.method public getFadeMode()I
    .locals 1

    .line 637
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->m:I

    return v0
.end method

.method public getFadeProgressThresholds()Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 676
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->s:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method public getFitMode()I
    .locals 1

    .line 657
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->n:I

    return v0
.end method

.method public getScaleMaskProgressThresholds()Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 718
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->u:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method public getScaleProgressThresholds()Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 697
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->t:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method public getScrimColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 591
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->k:I

    return v0
.end method

.method public getShapeMaskProgressThresholds()Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 740
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->v:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method public getStartContainerColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 523
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->i:I

    return v0
.end method

.method public getStartElevation()F
    .locals 1

    .line 427
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->x:F

    return v0
.end method

.method public getStartShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->q:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method public getStartView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->o:Landroid/view/View;

    return-object v0
.end method

.method public getStartViewId()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 275
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->f:I

    return v0
.end method

.method public getTransitionDirection()I
    .locals 1

    .line 619
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->l:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 801
    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->z:[Ljava/lang/String;

    return-object v0
.end method

.method public isDrawDebugEnabled()Z
    .locals 1

    .line 780
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->a:Z

    return v0
.end method

.method public isElevationShadowEnabled()Z
    .locals 1

    .line 401
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->w:Z

    return v0
.end method

.method public isHoldAtEndEnabled()Z
    .locals 1

    .line 761
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->b:Z

    return v0
.end method

.method public setAllContainerColors(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 580
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->h:I

    .line 581
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->i:I

    .line 582
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->j:I

    return-void
.end method

.method public setContainerColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 513
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->h:I

    return-void
.end method

.method public setDrawDebugEnabled(Z)V
    .locals 0

    .line 789
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->a:Z

    return-void
.end method

.method public setDrawingViewId(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 481
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->e:I

    return-void
.end method

.method public setElevationShadowEnabled(Z)V
    .locals 0

    .line 417
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->w:Z

    return-void
.end method

.method public setEndContainerColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 565
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->j:I

    return-void
.end method

.method public setEndElevation(F)V
    .locals 0

    .line 457
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->y:F

    return-void
.end method

.method public setEndShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 393
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->r:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-void
.end method

.method public setEndView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 349
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->p:Landroid/view/View;

    return-void
.end method

.method public setEndViewId(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 319
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->g:I

    return-void
.end method

.method public setFadeMode(I)V
    .locals 0

    .line 651
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->m:I

    return-void
.end method

.method public setFadeProgressThresholds(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 687
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->s:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    return-void
.end method

.method public setFitMode(I)V
    .locals 0

    .line 666
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->n:I

    return-void
.end method

.method public setHoldAtEndEnabled(Z)V
    .locals 0

    .line 771
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->b:Z

    return-void
.end method

.method public setPathMotion(Landroid/transition/PathMotion;)V
    .locals 0
    .param p1    # Landroid/transition/PathMotion;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 794
    invoke-super {p0, p1}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    const/4 p1, 0x1

    .line 795
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->c:Z

    return-void
.end method

.method public setScaleMaskProgressThresholds(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 730
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->u:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    return-void
.end method

.method public setScaleProgressThresholds(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 708
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->t:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    return-void
.end method

.method public setScrimColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 607
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->k:I

    return-void
.end method

.method public setShapeMaskProgressThresholds(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 752
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->v:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    return-void
.end method

.method public setStartContainerColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 540
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->i:I

    return-void
.end method

.method public setStartElevation(F)V
    .locals 0

    .line 437
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->x:F

    return-void
.end method

.method public setStartShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 374
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->q:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-void
.end method

.method public setStartView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 334
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->o:Landroid/view/View;

    return-void
.end method

.method public setStartViewId(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 293
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->f:I

    return-void
.end method

.method public setTransitionDirection(I)V
    .locals 0

    .line 631
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->l:I

    return-void
.end method
