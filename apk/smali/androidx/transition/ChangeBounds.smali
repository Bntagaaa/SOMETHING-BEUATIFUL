.class public Landroidx/transition/ChangeBounds;
.super Landroidx/transition/Transition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ChangeBounds$k;
    }
.end annotation


# static fields
.field public static final J:[Ljava/lang/String;

.field public static final K:Landroid/util/Property;

.field public static final L:Landroid/util/Property;

.field public static final M:Landroid/util/Property;

.field public static final N:Landroid/util/Property;

.field public static final O:Landroid/util/Property;

.field public static final P:Landroidx/transition/p;


# instance fields
.field public I:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 61
    const-string v0, "android:changeBounds:clip"

    const-string v1, "android:changeBounds:parent"

    const-string v2, "android:changeBounds:bounds"

    const-string v3, "android:changeBounds:windowX"

    const-string v4, "android:changeBounds:windowY"

    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ChangeBounds;->J:[Ljava/lang/String;

    .line 69
    new-instance v0, Landroidx/transition/ChangeBounds$b;

    .line 70
    const-string v1, "boundsOrigin"

    const-class v2, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 71
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroidx/transition/ChangeBounds$b;->a:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroidx/transition/ChangeBounds$c;

    .line 88
    const-string v1, "topLeft"

    invoke-direct {v0, v2, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 87
    sput-object v0, Landroidx/transition/ChangeBounds;->K:Landroid/util/Property;

    .line 100
    new-instance v0, Landroidx/transition/ChangeBounds$d;

    .line 101
    const-string v3, "bottomRight"

    invoke-direct {v0, v2, v3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 100
    sput-object v0, Landroidx/transition/ChangeBounds;->L:Landroid/util/Property;

    .line 113
    new-instance v0, Landroidx/transition/ChangeBounds$e;

    .line 114
    invoke-direct {v0, v2, v3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 113
    sput-object v0, Landroidx/transition/ChangeBounds;->M:Landroid/util/Property;

    .line 130
    new-instance v0, Landroidx/transition/ChangeBounds$f;

    .line 131
    invoke-direct {v0, v2, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 130
    sput-object v0, Landroidx/transition/ChangeBounds;->N:Landroid/util/Property;

    .line 147
    new-instance v0, Landroidx/transition/ChangeBounds$g;

    .line 148
    const-string v1, "position"

    invoke-direct {v0, v2, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 147
    sput-object v0, Landroidx/transition/ChangeBounds;->O:Landroid/util/Property;

    .line 168
    new-instance v0, Landroidx/transition/p;

    invoke-direct {v0}, Landroidx/transition/p;-><init>()V

    sput-object v0, Landroidx/transition/ChangeBounds;->P:Landroidx/transition/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 170
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->I:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 176
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->I:Z

    .line 178
    sget-object v1, Landroidx/transition/q;->d:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 179
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v1, "resizeClip"

    invoke-static {p1, p2, v1, v0, v0}, Landroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result p2

    .line 181
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    invoke-virtual {p0, p2}, Landroidx/transition/ChangeBounds;->setResizeClip(Z)V

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 244
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeBounds;->m(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 239
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeBounds;->m(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 20
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

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    const/16 v17, 0x0

    goto/16 :goto_b

    .line 267
    :cond_1
    iget-object v7, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 268
    iget-object v8, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 269
    const-string v9, "android:changeBounds:parent"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 270
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    if-nez v8, :cond_2

    goto :goto_0

    .line 274
    :cond_2
    iget-object v10, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 276
    iget-object v7, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:changeBounds:bounds"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 277
    iget-object v9, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 278
    iget v9, v7, Landroid/graphics/Rect;->left:I

    .line 279
    iget v12, v8, Landroid/graphics/Rect;->left:I

    .line 280
    iget v11, v7, Landroid/graphics/Rect;->top:I

    .line 281
    iget v13, v8, Landroid/graphics/Rect;->top:I

    .line 282
    iget v14, v7, Landroid/graphics/Rect;->right:I

    .line 283
    iget v15, v8, Landroid/graphics/Rect;->right:I

    .line 284
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 285
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    const/16 p1, 0x1

    sub-int v5, v14, v9

    const/16 v16, 0x0

    sub-int v4, v7, v11

    sub-int v6, v15, v12

    sub-int v3, v8, v13

    .line 290
    iget-object v1, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move/from16 v18, v3

    const-string v3, "android:changeBounds:clip"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 291
    iget-object v2, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-eqz v5, :cond_3

    if-nez v4, :cond_4

    :cond_3
    if-eqz v6, :cond_8

    if-eqz v18, :cond_8

    :cond_4
    if-ne v9, v12, :cond_6

    if-eq v11, v13, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-ne v14, v15, :cond_7

    if-eq v7, v8, :cond_9

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :cond_9
    :goto_3
    if-eqz v1, :cond_a

    .line 297
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    :cond_a
    if-nez v1, :cond_c

    if-eqz v2, :cond_c

    :cond_b
    add-int/lit8 v3, v3, 0x1

    :cond_c
    if-lez v3, :cond_0

    move-object/from16 p2, v1

    .line 303
    iget-boolean v1, v0, Landroidx/transition/ChangeBounds;->I:Z

    move/from16 v19, v1

    sget-object v1, Landroidx/transition/ChangeBounds;->O:Landroid/util/Property;

    if-nez v19, :cond_11

    .line 304
    invoke-static {v10, v9, v11, v14, v7}, Landroidx/transition/f0;->a(Landroid/view/View;IIII)V

    const/4 v2, 0x2

    if-ne v3, v2, :cond_e

    if-ne v5, v6, :cond_d

    move/from16 v3, v18

    if-ne v4, v3, :cond_d

    .line 308
    invoke-virtual {v0}, Landroidx/transition/Transition;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v2

    int-to-float v3, v9

    int-to-float v4, v11

    int-to-float v5, v12

    int-to-float v6, v13

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v2

    const/4 v3, 0x0

    .line 29
    invoke-static {v10, v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto/16 :goto_a

    .line 313
    :cond_d
    new-instance v1, Landroidx/transition/ChangeBounds$k;

    .line 471
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 472
    iput-object v10, v1, Landroidx/transition/ChangeBounds$k;->e:Landroid/view/View;

    .line 314
    invoke-virtual {v0}, Landroidx/transition/Transition;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v2

    int-to-float v3, v9

    int-to-float v4, v11

    int-to-float v5, v12

    int-to-float v6, v13

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v2

    .line 316
    sget-object v3, Landroidx/transition/ChangeBounds;->K:Landroid/util/Property;

    const/4 v4, 0x0

    .line 29
    invoke-static {v1, v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 319
    invoke-virtual {v0}, Landroidx/transition/Transition;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v3

    int-to-float v5, v14

    int-to-float v6, v7

    int-to-float v7, v15

    int-to-float v8, v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v3

    .line 321
    sget-object v5, Landroidx/transition/ChangeBounds;->L:Landroid/util/Property;

    .line 29
    invoke-static {v1, v5, v4, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 323
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x2

    .line 324
    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v2, v5, v16

    aput-object v3, v5, p1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 326
    new-instance v2, Landroidx/transition/ChangeBounds$h;

    invoke-direct {v2, v1}, Landroidx/transition/ChangeBounds$h;-><init>(Landroidx/transition/ChangeBounds$k;)V

    invoke-virtual {v4, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v1, v4

    goto/16 :goto_a

    :cond_e
    if-ne v9, v12, :cond_10

    if-eq v11, v13, :cond_f

    goto :goto_4

    .line 339
    :cond_f
    invoke-virtual {v0}, Landroidx/transition/Transition;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v1

    int-to-float v2, v14

    int-to-float v3, v7

    int-to-float v4, v15

    int-to-float v5, v8

    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 341
    sget-object v2, Landroidx/transition/ChangeBounds;->M:Landroid/util/Property;

    const/4 v3, 0x0

    .line 29
    invoke-static {v10, v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto/16 :goto_a

    .line 334
    :cond_10
    :goto_4
    invoke-virtual {v0}, Landroidx/transition/Transition;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v1

    int-to-float v2, v9

    int-to-float v3, v11

    int-to-float v4, v12

    int-to-float v5, v13

    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 336
    sget-object v2, Landroidx/transition/ChangeBounds;->N:Landroid/util/Property;

    const/4 v3, 0x0

    .line 29
    invoke-static {v10, v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto/16 :goto_a

    :cond_11
    move/from16 v3, v18

    .line 345
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 346
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/2addr v7, v9

    add-int/2addr v14, v11

    .line 348
    invoke-static {v10, v9, v11, v7, v14}, Landroidx/transition/f0;->a(Landroid/view/View;IIII)V

    if-ne v9, v12, :cond_13

    if-eq v11, v13, :cond_12

    goto :goto_5

    :cond_12
    move-object/from16 p3, v2

    const/4 v1, 0x0

    goto :goto_6

    .line 353
    :cond_13
    :goto_5
    invoke-virtual {v0}, Landroidx/transition/Transition;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v7

    int-to-float v9, v9

    int-to-float v11, v11

    int-to-float v14, v12

    move-object/from16 p3, v2

    int-to-float v2, v13

    invoke-virtual {v7, v9, v11, v14, v2}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v2

    const/4 v7, 0x0

    .line 29
    invoke-static {v10, v1, v7, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :goto_6
    if-nez p2, :cond_14

    .line 360
    new-instance v2, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v2, v7, v7, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_7

    :cond_14
    const/4 v7, 0x0

    move-object/from16 v2, p2

    :goto_7
    if-nez p3, :cond_15

    .line 363
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v7, v7, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_8

    :cond_15
    move-object/from16 v4, p3

    .line 366
    :goto_8
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 367
    invoke-static {v10, v2}, Landroidx/core/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 368
    sget-object v3, Landroidx/transition/ChangeBounds;->P:Landroidx/transition/p;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v2, v6, v7

    aput-object v4, v6, p1

    const-string v2, "clipBounds"

    invoke-static {v10, v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 370
    new-instance v9, Landroidx/transition/ChangeBounds$i;

    move-object/from16 v11, p3

    move v14, v15

    move v15, v8

    invoke-direct/range {v9 .. v15}, Landroidx/transition/ChangeBounds$i;-><init>(Landroid/view/View;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v6, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_9

    :cond_16
    const/4 v6, 0x0

    .line 388
    :goto_9
    sget-boolean v2, Landroidx/transition/t;->a:Z

    if-nez v1, :cond_17

    move-object v1, v6

    goto :goto_a

    :cond_17
    if-nez v6, :cond_18

    goto :goto_a

    .line 149
    :cond_18
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x2

    .line 150
    new-array v3, v5, [Landroid/animation/Animator;

    const/16 v16, 0x0

    aput-object v1, v3, v16

    aput-object v6, v3, p1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-object v1, v2

    .line 391
    :goto_a
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_19

    .line 392
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    .line 393
    invoke-static {v2, v3}, Landroidx/transition/z;->a(Landroid/view/ViewGroup;Z)V

    .line 394
    new-instance v3, Landroidx/transition/ChangeBounds$j;

    invoke-direct {v3, v2}, Landroidx/transition/ChangeBounds$j;-><init>(Landroid/view/ViewGroup;)V

    .line 421
    invoke-virtual {v0, v3}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    :cond_19
    return-object v1

    :goto_b
    return-object v17
.end method

.method public getResizeClip()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Landroidx/transition/ChangeBounds;->I:Z

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 188
    sget-object v0, Landroidx/transition/ChangeBounds;->J:[Ljava/lang/String;

    return-object v0
.end method

.method public final m(Landroidx/transition/TransitionValues;)V
    .locals 7

    .line 220
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 222
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    :cond_0
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 224
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 223
    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:changeBounds:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-boolean v1, p0, Landroidx/transition/ChangeBounds;->I:Z

    if-eqz v1, :cond_1

    .line 232
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeBounds:clip"

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public setResizeClip(Z)V
    .locals 0

    .line 205
    iput-boolean p1, p0, Landroidx/transition/ChangeBounds;->I:Z

    return-void
.end method
