.class public Landroidx/transition/ChangeImageTransform;
.super Landroidx/transition/Transition;
.source "SourceFile"


# static fields
.field public static final I:[Ljava/lang/String;

.field public static final J:Landroid/animation/TypeEvaluator;

.field public static final K:Landroid/util/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    const-string v0, "android:changeImageTransform:matrix"

    const-string v1, "android:changeImageTransform:bounds"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ChangeImageTransform;->I:[Ljava/lang/String;

    .line 54
    new-instance v0, Landroidx/transition/ChangeImageTransform$a;

    invoke-direct {v0}, Landroidx/transition/ChangeImageTransform$a;-><init>()V

    sput-object v0, Landroidx/transition/ChangeImageTransform;->J:Landroid/animation/TypeEvaluator;

    .line 61
    new-instance v0, Landroidx/transition/ChangeImageTransform$b;

    .line 62
    const-class v1, Landroid/graphics/Matrix;

    const-string v2, "animatedTransform"

    invoke-direct {v0, v1, v2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 61
    sput-object v0, Landroidx/transition/ChangeImageTransform;->K:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static m(Landroidx/transition/TransitionValues;)V
    .locals 6

    .line 82
    iget-object v0, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 83
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 86
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    .line 87
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 91
    :cond_1
    iget-object p0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 98
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 99
    const-string v0, "android:changeImageTransform:bounds"

    invoke-interface {p0, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_4

    .line 188
    sget-object v0, Landroidx/transition/ChangeImageTransform$c;->a:[I

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 216
    :cond_2
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 218
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v2, v2

    div-float v4, v3, v2

    .line 221
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 222
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v5, v1, v0

    .line 225
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v2, v2, v4

    mul-float v0, v0, v4

    sub-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v3, v2

    .line 229
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-float/2addr v1, v0

    div-float/2addr v1, v2

    .line 230
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 232
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 233
    invoke-virtual {v1, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v2, v3

    int-to-float v0, v0

    .line 234
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 203
    :cond_3
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 204
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 206
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 207
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 205
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v1, v2

    goto :goto_1

    .line 195
    :cond_4
    :goto_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v1, v0

    .line 100
    :goto_1
    const-string v0, "android:changeImageTransform:matrix"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 110
    invoke-static {p1}, Landroidx/transition/ChangeImageTransform;->m(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 105
    invoke-static {p1}, Landroidx/transition/ChangeImageTransform;->m(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 7
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_a

    if-nez p3, :cond_0

    goto/16 :goto_2

    .line 134
    :cond_0
    iget-object v3, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeImageTransform:bounds"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 135
    iget-object v5, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    if-eqz v3, :cond_a

    if-nez v4, :cond_1

    goto :goto_2

    .line 140
    :cond_1
    iget-object p2, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeImageTransform:matrix"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Matrix;

    .line 141
    iget-object v6, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Matrix;

    if-nez p2, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    if-eqz p2, :cond_4

    .line 144
    invoke-virtual {p2, v5}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    .line 146
    :goto_0
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v6, :cond_5

    return-object v2

    .line 150
    :cond_5
    iget-object p3, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    check-cast p3, Landroid/widget/ImageView;

    .line 151
    invoke-virtual {p3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 153
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 156
    sget-object v4, Landroidx/transition/ChangeImageTransform;->K:Landroid/util/Property;

    if-lez v3, :cond_9

    if-gtz v2, :cond_6

    goto :goto_1

    :cond_6
    if-nez p2, :cond_7

    .line 160
    sget-object p2, Landroidx/transition/l;->a:Landroid/graphics/Matrix;

    :cond_7
    if-nez v5, :cond_8

    .line 163
    sget-object v5, Landroidx/transition/l;->a:Landroid/graphics/Matrix;

    .line 165
    :cond_8
    invoke-virtual {v4, p3, p2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    new-instance v2, Landroidx/transition/t$a;

    invoke-direct {v2}, Landroidx/transition/t$a;-><init>()V

    new-array p1, p1, [Landroid/graphics/Matrix;

    aput-object p2, p1, v0

    aput-object v5, p1, v1

    invoke-static {p3, v4, v2, p1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1

    .line 174
    :cond_9
    :goto_1
    sget-object p2, Landroidx/transition/ChangeImageTransform;->J:Landroid/animation/TypeEvaluator;

    new-array p1, p1, [Landroid/graphics/Matrix;

    sget-object v2, Landroidx/transition/l;->a:Landroid/graphics/Matrix;

    aput-object v2, p1, v0

    aput-object v2, p1, v1

    invoke-static {p3, v4, p2, p1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1

    :cond_a
    :goto_2
    return-object v2
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 115
    sget-object v0, Landroidx/transition/ChangeImageTransform;->I:[Ljava/lang/String;

    return-object v0
.end method
