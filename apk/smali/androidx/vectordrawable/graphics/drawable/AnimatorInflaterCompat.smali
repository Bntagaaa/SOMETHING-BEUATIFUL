.class public Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .locals 25

    move-object/from16 v8, p5

    .line 514
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 516
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    const/4 v12, 0x0

    if-ne v1, v2, :cond_1

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v9, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v21, v11

    const/4 v9, 0x0

    goto/16 :goto_1e

    :cond_1
    :goto_1
    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    goto :goto_0

    .line 523
    :cond_2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 526
    const-string v5, "objectAnimator"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 872
    new-instance v4, Landroid/animation/ObjectAnimator;

    invoke-direct {v4}, Landroid/animation/ObjectAnimator;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    move-object/from16 v3, p4

    move/from16 v5, p7

    .line 874
    invoke-static/range {v0 .. v6}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->d(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ObjectAnimator;FLandroid/content/res/XmlResourceParser;)Landroid/animation/ValueAnimator;

    move-object/from16 v7, p3

    :goto_2
    move-object v0, v4

    :goto_3
    move/from16 v17, v9

    move-object/from16 v21, v11

    goto/16 :goto_1b

    .line 528
    :cond_3
    const-string v5, "animator"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    move-object/from16 v3, p4

    move/from16 v5, p7

    .line 529
    invoke-static/range {v0 .. v6}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->d(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ObjectAnimator;FLandroid/content/res/XmlResourceParser;)Landroid/animation/ValueAnimator;

    move-result-object v4

    move-object v5, v1

    move-object v7, v6

    move-object v6, v2

    goto :goto_2

    :cond_4
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 530
    const-string v13, "set"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 531
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 532
    sget-object v1, Landroidx/vectordrawable/graphics/drawable/a;->h:[I

    move-object/from16 v3, p4

    invoke-static {v5, v6, v3, v1}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 535
    const-string v1, "ordering"

    invoke-static {v13, v7, v1, v12, v12}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    move-object v4, v3

    move-object v2, v6

    move-object v3, v7

    move/from16 v7, p7

    move v6, v1

    move-object v1, v5

    move-object v5, v0

    move-object/from16 v0, p0

    .line 538
    invoke-static/range {v0 .. v7}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-object v6, v2

    move-object v7, v3

    move-object v0, v5

    move-object v5, v1

    .line 540
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    .line 541
    :cond_5
    const-string v13, "propertyValuesHolder"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 543
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    const/4 v14, 0x0

    .line 579
    :goto_4
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v15

    if-eq v15, v2, :cond_2a

    if-eq v15, v3, :cond_2a

    if-eq v15, v4, :cond_6

    .line 583
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_4

    .line 587
    :cond_6
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 589
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_29

    .line 590
    sget-object v15, Landroidx/vectordrawable/graphics/drawable/a;->i:[I

    invoke-static {v5, v6, v1, v15}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 593
    const-string v10, "propertyName"

    invoke-static {v15, v7, v10, v2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 595
    const-string v12, "valueType"

    const/4 v3, 0x4

    invoke-static {v15, v7, v12, v4, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v12

    move/from16 v17, v12

    const/4 v4, 0x0

    const/16 v16, 0x2

    .line 696
    :goto_5
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move-object/from16 v19, v1

    if-eq v3, v2, :cond_14

    const/4 v1, 0x1

    if-eq v3, v1, :cond_14

    .line 698
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 699
    const-string v3, "keyframe"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 700
    sget-object v1, Landroidx/vectordrawable/graphics/drawable/a;->j:[I

    const-string v3, "value"

    move/from16 v2, v17

    move/from16 v17, v9

    const/4 v9, 0x4

    if-ne v2, v9, :cond_8

    .line 701
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 636
    invoke-static {v5, v6, v2, v1}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    move-object/from16 v21, v11

    const/4 v9, 0x0

    .line 639
    invoke-static {v2, v7, v3, v9}, Landroidx/core/content/res/TypedArrayUtils;->peekNamedValue(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 644
    iget v9, v11, Landroid/util/TypedValue;->type:I

    invoke-static {v9}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->c(I)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x3

    goto :goto_6

    :cond_7
    const/4 v9, 0x0

    .line 649
    :goto_6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_7

    :cond_8
    move-object/from16 v21, v11

    move v9, v2

    .line 704
    :goto_7
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 818
    invoke-static {v5, v6, v2, v1}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    .line 823
    const-string v11, "fraction"

    const/4 v5, 0x3

    invoke-static {v1, v7, v11, v5, v2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    const/4 v5, 0x0

    .line 826
    invoke-static {v1, v7, v3, v5}, Landroidx/core/content/res/TypedArrayUtils;->peekNamedValue(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    move-result-object v11

    if-eqz v11, :cond_9

    const/16 v18, 0x1

    :goto_8
    const/4 v5, 0x4

    goto :goto_9

    :cond_9
    const/16 v18, 0x0

    goto :goto_8

    :goto_9
    if-ne v9, v5, :cond_b

    if-eqz v18, :cond_a

    .line 832
    iget v11, v11, Landroid/util/TypedValue;->type:I

    invoke-static {v11}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->c(I)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x3

    goto :goto_a

    :cond_a
    const/4 v11, 0x0

    goto :goto_a

    :cond_b
    move v11, v9

    :goto_a
    if-eqz v18, :cond_e

    if-eqz v11, :cond_d

    const/4 v5, 0x1

    if-eq v11, v5, :cond_c

    const/4 v5, 0x3

    if-eq v11, v5, :cond_c

    const/4 v2, 0x0

    const/4 v5, 0x0

    goto :goto_b

    :cond_c
    const/4 v5, 0x0

    .line 848
    invoke-static {v1, v7, v3, v5, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 850
    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v2

    goto :goto_b

    :cond_d
    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 842
    invoke-static {v1, v7, v3, v5, v11}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    .line 844
    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    goto :goto_b

    :cond_e
    const/4 v5, 0x0

    if-nez v11, :cond_f

    .line 854
    invoke-static {v2}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v2

    goto :goto_b

    .line 855
    :cond_f
    invoke-static {v2}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v2

    .line 858
    :goto_b
    const-string v3, "interpolator"

    const/4 v11, 0x1

    invoke-static {v1, v7, v3, v11, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    move-object/from16 v5, p0

    if-lez v3, :cond_10

    .line 861
    invoke-static {v5, v3}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 862
    invoke-virtual {v2, v3}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 864
    :cond_10
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_12

    if-nez v4, :cond_11

    .line 708
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 710
    :cond_11
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_12
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_c

    :cond_13
    move-object/from16 v5, p0

    move-object/from16 v21, v11

    move/from16 v2, v17

    move/from16 v17, v9

    move v9, v2

    :goto_c
    move/from16 v1, v17

    move/from16 v17, v9

    move v9, v1

    move-object/from16 v5, p1

    move-object/from16 v1, v19

    move-object/from16 v11, v21

    const/4 v2, 0x3

    goto/16 :goto_5

    :cond_14
    move-object/from16 v5, p0

    move-object/from16 v21, v11

    move/from16 v2, v17

    move/from16 v17, v9

    if-eqz v4, :cond_24

    .line 717
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_24

    const/4 v9, 0x0

    .line 723
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe;

    add-int/lit8 v9, v1, -0x1

    .line 724
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/Keyframe;

    .line 725
    invoke-virtual {v9}, Landroid/animation/Keyframe;->getFraction()F

    move-result v11

    move/from16 v18, v1

    .line 726
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v22, v11, v6

    if-gez v22, :cond_15

    const/16 v20, 0x0

    cmpg-float v11, v11, v20

    if-gez v11, :cond_16

    .line 728
    invoke-virtual {v9, v6}, Landroid/animation/Keyframe;->setFraction(F)V

    :cond_15
    const/high16 v22, 0x3f800000    # 1.0f

    goto :goto_e

    .line 730
    :cond_16
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/high16 v22, 0x3f800000    # 1.0f

    .line 779
    invoke-virtual {v9}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v6

    if-ne v6, v5, :cond_17

    .line 780
    invoke-static/range {v22 .. v22}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v6

    goto :goto_d

    .line 781
    :cond_17
    invoke-virtual {v9}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v6

    if-ne v6, v1, :cond_18

    .line 782
    invoke-static/range {v22 .. v22}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v6

    goto :goto_d

    .line 783
    :cond_18
    invoke-static/range {v22 .. v22}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v6

    .line 730
    :goto_d
    invoke-virtual {v4, v11, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v6, v18, 0x1

    move/from16 v18, v6

    .line 734
    :goto_e
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    move-result v6

    const/4 v11, 0x0

    cmpl-float v9, v6, v11

    if-eqz v9, :cond_1c

    cmpg-float v6, v6, v11

    if-gez v6, :cond_19

    .line 737
    invoke-virtual {v3, v11}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_11

    .line 779
    :cond_19
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v6

    if-ne v6, v5, :cond_1a

    .line 780
    invoke-static {v11}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v1

    :goto_f
    const/4 v9, 0x0

    goto :goto_10

    .line 781
    :cond_1a
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, v1, :cond_1b

    .line 782
    invoke-static {v11}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v1

    goto :goto_f

    .line 783
    :cond_1b
    invoke-static {v11}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v1

    goto :goto_f

    .line 739
    :goto_10
    invoke-virtual {v4, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v18, v18, 0x1

    :cond_1c
    :goto_11
    move/from16 v1, v18

    .line 743
    new-array v3, v1, [Landroid/animation/Keyframe;

    .line 744
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v9, 0x0

    :goto_12
    if-ge v9, v1, :cond_23

    .line 746
    aget-object v4, v3, v9

    .line 747
    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    const/4 v11, 0x0

    cmpg-float v5, v5, v11

    if-gez v5, :cond_1d

    if-nez v9, :cond_1e

    .line 749
    invoke-virtual {v4, v11}, Landroid/animation/Keyframe;->setFraction(F)V

    :cond_1d
    :goto_13
    move/from16 v23, v1

    const/16 v20, 0x0

    goto :goto_17

    :cond_1e
    add-int/lit8 v5, v1, -0x1

    if-ne v9, v5, :cond_1f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 751
    invoke-virtual {v4, v6}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_13

    :cond_1f
    const/high16 v6, 0x3f800000    # 1.0f

    add-int/lit8 v4, v9, 0x1

    move v11, v9

    :goto_14
    if-ge v4, v5, :cond_21

    .line 758
    aget-object v18, v3, v4

    invoke-virtual/range {v18 .. v18}, Landroid/animation/Keyframe;->getFraction()F

    move-result v18

    const/16 v20, 0x0

    cmpl-float v18, v18, v20

    if-ltz v18, :cond_20

    goto :goto_15

    :cond_20
    add-int/lit8 v11, v4, 0x1

    move/from16 v24, v11

    move v11, v4

    move/from16 v4, v24

    goto :goto_14

    :cond_21
    const/16 v20, 0x0

    :goto_15
    add-int/lit8 v4, v11, 0x1

    .line 763
    aget-object v4, v3, v4

    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    add-int/lit8 v5, v9, -0x1

    aget-object v5, v3, v5

    .line 764
    invoke-virtual {v5}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    sub-float/2addr v4, v5

    sub-int v5, v11, v9

    add-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    move v5, v9

    :goto_16
    if-gt v5, v11, :cond_22

    .line 809
    aget-object v6, v3, v5

    add-int/lit8 v18, v5, -0x1

    aget-object v18, v3, v18

    invoke-virtual/range {v18 .. v18}, Landroid/animation/Keyframe;->getFraction()F

    move-result v18

    move/from16 v23, v1

    add-float v1, v18, v4

    invoke-virtual {v6, v1}, Landroid/animation/Keyframe;->setFraction(F)V

    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v23

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_16

    :cond_22
    move/from16 v23, v1

    :goto_17
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v23

    const/high16 v22, 0x3f800000    # 1.0f

    goto :goto_12

    .line 769
    :cond_23
    invoke-static {v10, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v5, 0x3

    if-ne v2, v5, :cond_25

    .line 771
    invoke-static {}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->getInstance()Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto :goto_18

    :cond_24
    const/4 v5, 0x3

    const/4 v1, 0x0

    :cond_25
    :goto_18
    const/4 v9, 0x0

    const/4 v11, 0x1

    if-nez v1, :cond_26

    .line 602
    invoke-static {v15, v12, v9, v11, v10}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->b(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    :cond_26
    if-eqz v1, :cond_28

    if-nez v14, :cond_27

    .line 609
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 611
    :cond_27
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_28
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_19

    :cond_29
    move-object/from16 v19, v1

    move/from16 v17, v9

    move-object/from16 v21, v11

    const/4 v5, 0x3

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/16 v16, 0x2

    .line 616
    :goto_19
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v9, v17

    move-object/from16 v1, v19

    move-object/from16 v11, v21

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_2a
    move/from16 v17, v9

    move-object/from16 v21, v11

    const/4 v9, 0x0

    const/4 v11, 0x1

    if-eqz v14, :cond_2b

    .line 621
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 622
    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    :goto_1a
    if-ge v12, v1, :cond_2c

    .line 624
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/PropertyValuesHolder;

    aput-object v3, v2, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1a

    :cond_2b
    const/4 v2, 0x0

    :cond_2c
    if-eqz v2, :cond_2d

    .line 544
    instance-of v1, v0, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2d

    .line 545
    move-object v1, v0

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_2d
    const/4 v12, 0x1

    :goto_1b
    if-eqz v8, :cond_2f

    if-nez v12, :cond_2f

    if-nez v21, :cond_2e

    .line 554
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1c

    :cond_2e
    move-object/from16 v11, v21

    .line 556
    :goto_1c
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_2f
    move-object/from16 v11, v21

    :goto_1d
    move/from16 v9, v17

    goto/16 :goto_0

    .line 549
    :cond_30
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown animator name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1e
    if-eqz v8, :cond_33

    if-eqz v21, :cond_33

    .line 560
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/animation/Animator;

    .line 562
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v12, 0x0

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    add-int/lit8 v4, v12, 0x1

    .line 563
    aput-object v3, v1, v12

    move v12, v4

    goto :goto_1f

    :cond_31
    if-nez p6, :cond_32

    .line 566
    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    .line 568
    :cond_32
    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :cond_33
    return-object v0
.end method

.method public static b(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .locals 11

    const/4 v0, 0x2

    .line 207
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 209
    iget v1, v1, Landroid/util/TypedValue;->type:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 210
    :goto_1
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_3

    .line 212
    iget v5, v5, Landroid/util/TypedValue;->type:I

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    const/4 v7, 0x4

    const/4 v8, 0x3

    if-ne p1, v7, :cond_7

    if-eqz v4, :cond_4

    .line 216
    invoke-static {v1}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->c(I)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    if-eqz v6, :cond_6

    invoke-static {v5}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->c(I)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 p1, 0x3

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :cond_7
    :goto_4
    if-nez p1, :cond_8

    const/4 v7, 0x1

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_5
    const/4 v9, 0x0

    if-ne p1, v0, :cond_e

    .line 228
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 232
    invoke-static {p1}, Landroidx/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;

    move-result-object p2

    .line 234
    invoke-static {p0}, Landroidx/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;

    move-result-object p3

    if-nez p2, :cond_9

    if-eqz p3, :cond_d

    :cond_9
    if-eqz p2, :cond_c

    .line 237
    new-instance v1, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$a;

    invoke-direct {v1}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$a;-><init>()V

    if-eqz p3, :cond_b

    .line 239
    invoke-static {p2, p3}, Landroidx/core/graphics/PathParser;->canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 243
    new-array p0, v0, [Ljava/lang/Object;

    aput-object p2, p0, v3

    aput-object p3, p0, v2

    invoke-static {p4, v1, p0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    return-object p0

    .line 240
    :cond_a
    new-instance p2, Landroid/view/InflateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, " Can\'t morph from "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 246
    :cond_b
    new-array p0, v2, [Ljava/lang/Object;

    aput-object p2, p0, v3

    invoke-static {p4, v1, p0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    return-object p0

    :cond_c
    if-eqz p3, :cond_d

    .line 250
    new-instance p0, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$a;

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$a;-><init>()V

    .line 251
    new-array p1, v2, [Ljava/lang/Object;

    aput-object p3, p1, v3

    invoke-static {p4, p0, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    return-object p0

    :cond_d
    return-object v9

    :cond_e
    if-ne p1, v8, :cond_f

    .line 260
    invoke-static {}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->getInstance()Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    move-result-object p1

    goto :goto_6

    :cond_f
    move-object p1, v9

    :goto_6
    const/4 v8, 0x5

    const/4 v10, 0x0

    if-eqz v7, :cond_15

    if-eqz v4, :cond_13

    if-ne v1, v8, :cond_10

    .line 267
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    goto :goto_7

    .line 269
    :cond_10
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    :goto_7
    if-eqz v6, :cond_12

    if-ne v5, v8, :cond_11

    .line 273
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    goto :goto_8

    .line 275
    :cond_11
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    .line 277
    :goto_8
    new-array p3, v0, [F

    aput p2, p3, v3

    aput p0, p3, v2

    invoke-static {p4, p3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    :goto_9
    move-object v9, p0

    goto/16 :goto_e

    .line 280
    :cond_12
    new-array p0, v2, [F

    aput p2, p0, v3

    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    goto :goto_9

    :cond_13
    if-ne v5, v8, :cond_14

    .line 284
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    goto :goto_a

    .line 286
    :cond_14
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    .line 288
    :goto_a
    new-array p2, v2, [F

    aput p0, p2, v3

    invoke-static {p4, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    goto :goto_9

    :cond_15
    if-eqz v4, :cond_1b

    if-ne v1, v8, :cond_16

    .line 295
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    goto :goto_b

    .line 296
    :cond_16
    invoke-static {v1}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->c(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 297
    invoke-virtual {p0, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    goto :goto_b

    .line 299
    :cond_17
    invoke-virtual {p0, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    :goto_b
    if-eqz v6, :cond_1a

    if-ne v5, v8, :cond_18

    .line 303
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    float-to-int p0, p0

    goto :goto_c

    .line 304
    :cond_18
    invoke-static {v5}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->c(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 305
    invoke-virtual {p0, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    goto :goto_c

    .line 307
    :cond_19
    invoke-virtual {p0, p3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    .line 309
    :goto_c
    filled-new-array {p2, p0}, [I

    move-result-object p0

    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    goto :goto_e

    .line 311
    :cond_1a
    filled-new-array {p2}, [I

    move-result-object p0

    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    goto :goto_e

    :cond_1b
    if-eqz v6, :cond_1e

    if-ne v5, v8, :cond_1c

    .line 316
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    float-to-int p0, p0

    goto :goto_d

    .line 317
    :cond_1c
    invoke-static {v5}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->c(I)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 318
    invoke-virtual {p0, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    goto :goto_d

    .line 320
    :cond_1d
    invoke-virtual {p0, p3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    .line 322
    :goto_d
    filled-new-array {p0}, [I

    move-result-object p0

    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    :cond_1e
    :goto_e
    if-eqz v9, :cond_1f

    if-eqz p1, :cond_1f

    .line 327
    invoke-virtual {v9, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_1f
    return-object v9
.end method

.method public static c(I)Z
    .locals 1

    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ObjectAnimator;FLandroid/content/res/XmlResourceParser;)Landroid/animation/ValueAnimator;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 890
    sget-object v7, Landroidx/vectordrawable/graphics/drawable/a;->g:[I

    invoke-static {v0, v1, v2, v7}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 892
    sget-object v8, Landroidx/vectordrawable/graphics/drawable/a;->k:[I

    invoke-static {v0, v1, v2, v8}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    if-nez p4, :cond_0

    .line 896
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p4

    :goto_0
    const/16 v2, 0x12c

    .line 345
    const-string v8, "duration"

    invoke-static {v7, v3, v8, v6, v2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    int-to-long v8, v2

    .line 347
    const-string v2, "startOffset"

    invoke-static {v7, v3, v2, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    int-to-long v10, v2

    .line 349
    const-string v2, "valueType"

    const/4 v12, 0x7

    const/4 v13, 0x4

    invoke-static {v7, v3, v2, v12, v13}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 353
    const-string v12, "valueFrom"

    invoke-static {v3, v12}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    const/4 v14, 0x3

    if-eqz v12, :cond_9

    const-string v12, "valueTo"

    .line 354
    invoke-static {v3, v12}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x6

    const/4 v15, 0x5

    if-ne v2, v13, :cond_8

    .line 655
    invoke-virtual {v7, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_1
    if-eqz v16, :cond_2

    .line 657
    iget v2, v2, Landroid/util/TypedValue;->type:I

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 658
    :goto_2
    invoke-virtual {v7, v12}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    if-eqz v4, :cond_3

    const/16 v17, 0x1

    goto :goto_3

    :cond_3
    const/16 v17, 0x0

    :goto_3
    if-eqz v17, :cond_4

    .line 660
    iget v4, v4, Landroid/util/TypedValue;->type:I

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    if-eqz v16, :cond_5

    .line 664
    invoke-static {v2}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->c(I)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    if-eqz v17, :cond_7

    invoke-static {v4}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->c(I)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const/4 v2, 0x3

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    .line 360
    :cond_8
    :goto_5
    const-string v4, ""

    invoke-static {v7, v2, v15, v12, v4}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->b(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 364
    new-array v12, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v12, v5

    invoke-virtual {v1, v12}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 367
    :cond_9
    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 368
    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 370
    const-string v4, "repeatCount"

    invoke-static {v7, v3, v4, v14, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 372
    const-string v4, "repeatMode"

    invoke-static {v7, v3, v4, v13, v6}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    if-eqz v0, :cond_14

    .line 390
    move-object v4, v1

    check-cast v4, Landroid/animation/ObjectAnimator;

    .line 391
    const-string v8, "pathData"

    invoke-static {v0, v3, v8, v6}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_13

    .line 403
    const-string v9, "propertyXName"

    const/4 v10, 0x2

    invoke-static {v0, v3, v9, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 405
    const-string v11, "propertyYName"

    invoke-static {v0, v3, v11, v14}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    if-nez v9, :cond_b

    if-eqz v11, :cond_a

    goto :goto_6

    .line 415
    :cond_a
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " propertyXName or propertyYName is needed for PathData"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 418
    :cond_b
    :goto_6
    invoke-static {v8}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v8, v8, p5

    .line 436
    new-instance v10, Landroid/graphics/PathMeasure;

    invoke-direct {v10, v2, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 440
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 441
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    .line 443
    :goto_7
    invoke-virtual {v10}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v15

    add-float/2addr v14, v15

    .line 445
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-virtual {v10}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v15

    if-nez v15, :cond_12

    .line 450
    new-instance v10, Landroid/graphics/PathMeasure;

    invoke-direct {v10, v2, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    div-float v2, v14, v8

    float-to-int v2, v2

    add-int/2addr v2, v6

    const/16 v8, 0x64

    .line 452
    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 454
    new-array v8, v2, [F

    .line 455
    new-array v15, v2, [F

    const/4 v13, 0x2

    const/16 v16, 0x0

    .line 456
    new-array v5, v13, [F

    add-int/lit8 v13, v2, -0x1

    int-to-float v13, v13

    div-float/2addr v14, v13

    move/from16 p2, v14

    const/16 p1, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x1

    :goto_8
    const/4 v14, 0x0

    if-ge v6, v2, :cond_d

    .line 466
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Float;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    move/from16 p3, v2

    sub-float v2, p1, v18

    invoke-virtual {v10, v2, v5, v14}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 469
    aget v2, v5, v16

    aput v2, v8, v6

    .line 470
    aget v2, v5, v17

    aput v2, v15, v6

    add-float v2, p1, p2

    add-int/lit8 v14, v13, 0x1

    move/from16 p1, v2

    .line 472
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_c

    .line 473
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_c

    .line 475
    invoke-virtual {v10}, Landroid/graphics/PathMeasure;->nextContour()Z

    move v13, v14

    :cond_c
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, p3

    goto :goto_8

    :cond_d
    if-eqz v9, :cond_e

    .line 483
    invoke-static {v9, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto :goto_9

    :cond_e
    move-object v2, v14

    :goto_9
    if-eqz v11, :cond_f

    .line 486
    invoke-static {v11, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    :cond_f
    if-nez v2, :cond_10

    const/4 v5, 0x1

    .line 489
    new-array v2, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v14, v2, v16

    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_a
    const/4 v5, 0x0

    goto :goto_b

    :cond_10
    const/4 v5, 0x1

    if-nez v14, :cond_11

    .line 491
    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v5, v16

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_a

    :cond_11
    const/4 v13, 0x2

    .line 493
    new-array v6, v13, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v6, v16

    aput-object v14, v6, v5

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_a

    :cond_12
    const/16 v16, 0x0

    const/4 v5, 0x0

    goto/16 :goto_7

    :cond_13
    const/16 v16, 0x0

    .line 422
    const-string v2, "propertyName"

    const/4 v5, 0x0

    .line 423
    invoke-static {v0, v3, v2, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 425
    invoke-virtual {v4, v2}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 902
    :cond_14
    :goto_b
    const-string v2, "interpolator"

    invoke-static {v7, v3, v2, v5, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    if-lez v2, :cond_15

    move-object/from16 v3, p0

    .line 905
    invoke-static {v3, v2}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 906
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 909
    :cond_15
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_16

    .line 911
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_16
    return-object v1
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 101
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    .line 103
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .locals 1
    .param p3    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 119
    invoke-static {p0, p1, p2, p3, v0}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .locals 11
    .param p3    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 129
    const-string v1, "Can\'t load animation resource ID #0x"

    const/4 v2, 0x0

    .line 131
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 501
    :try_start_1
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v10, p4

    invoke-static/range {v3 .. v10}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object p0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v2, v6

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v2, v6

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p0, v0

    move-object v2, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object p0, v0

    .line 141
    :goto_0
    :try_start_2
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 145
    throw p1

    :catch_3
    move-exception v0

    move-object p0, v0

    .line 135
    :goto_1
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 139
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-eqz v2, :cond_0

    .line 147
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 148
    :cond_0
    throw p0
.end method
