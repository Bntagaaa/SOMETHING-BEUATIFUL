.class Landroidx/transition/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/v$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Visibility;)Landroid/animation/ObjectAnimator;
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v3

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v4

    .line 58
    iget-object v5, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget v6, Landroidx/transition/R$id;->transition_position:I

    invoke-virtual {v5, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    if-eqz v5, :cond_0

    .line 60
    aget v6, v5, v2

    sub-int/2addr v6, p2

    int-to-float v6, v6

    add-float/2addr v6, v3

    .line 61
    aget v5, v5, v1

    sub-int/2addr v5, p3

    int-to-float v5, v5

    add-float/2addr v5, v4

    goto :goto_0

    :cond_0
    move v6, p4

    move v5, p5

    :goto_0
    sub-float v7, v6, v3

    .line 64
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v7, p2

    sub-float p2, v5, v4

    .line 65
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr p2, p3

    .line 67
    invoke-virtual {p0, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 68
    invoke-virtual {p0, v5}, Landroid/view/View;->setTranslationY(F)V

    cmpl-float v8, v6, p6

    if-nez v8, :cond_1

    cmpl-float v8, v5, p7

    if-nez v8, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_1
    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v0, [F

    aput v6, v9, v2

    aput p6, v9, v1

    .line 73
    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v0, [F

    aput v5, v9, v2

    aput p7, v9, v1

    .line 74
    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v6, v0, v2

    aput-object v5, v0, v1

    .line 72
    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 76
    new-instance v1, Landroidx/transition/v$a;

    iget-object p1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object p3, p1

    move p5, p2

    move-object p1, v1

    move/from16 p6, v3

    move/from16 p7, v4

    move p4, v7

    move-object p2, p0

    invoke-direct/range {p1 .. p7}, Landroidx/transition/v$a;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    move-object/from16 p0, p9

    .line 78
    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 79
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 32
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    move-object/from16 p0, p8

    .line 81
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method
