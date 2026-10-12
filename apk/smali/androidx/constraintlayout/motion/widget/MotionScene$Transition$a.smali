.class Landroidx/constraintlayout/motion/widget/MotionScene$Transition$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 617
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$a;->b:I

    const/16 v0, 0x11

    .line 618
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$a;->c:I

    .line 626
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$a;->a:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 627
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object p3, Landroidx/constraintlayout/widget/R$styleable;->OnClick:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 628
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    .line 630
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 631
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->OnClick_targetId:I

    if-ne v0, v1, :cond_0

    .line 632
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$a;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$a;->b:I

    goto :goto_1

    .line 633
    :cond_0
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->OnClick_clickAction:I

    if-ne v0, v1, :cond_1

    .line 634
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$a;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$a;->c:I

    :cond_1
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 637
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public addOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .locals 6

    .line 641
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 643
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "OnClick could not find id "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionScene"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 431
    :cond_1
    iget v0, p3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    .line 431
    iget p3, p3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    if-ne v0, v1, :cond_2

    .line 649
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 653
    :cond_2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$a;->c:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-ne p2, v0, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    and-int/lit16 v5, v1, 0x100

    if-eqz v5, :cond_4

    if-ne p2, v0, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    or-int/2addr v2, v5

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_5

    if-ne p2, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    or-int/2addr v0, v2

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_6

    if-ne p2, p3, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    or-int/2addr v0, v2

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_7

    if-ne p2, p3, :cond_7

    const/4 v3, 0x1

    :cond_7
    or-int p2, v0, v3

    if-eqz p2, :cond_8

    .line 660
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 431
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$a;->a:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->j:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 60
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 692
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isInteractionEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 431
    :cond_0
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 696
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 431
    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    .line 698
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    return-void

    .line 701
    :cond_1
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 431
    iget-object v3, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->j:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 701
    invoke-direct {v2, v3, p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;-><init>(Landroidx/constraintlayout/motion/widget/MotionScene;Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 431
    iput v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    .line 431
    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    .line 431
    iput p1, v2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    .line 704
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 705
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    return-void

    .line 431
    :cond_2
    iget-object v1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->j:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 708
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 709
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$a;->c:I

    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_4

    and-int/lit16 v4, v3, 0x100

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v4, 0x1

    :goto_1
    and-int/lit8 v7, v3, 0x10

    if-nez v7, :cond_6

    and-int/lit16 v7, v3, 0x1000

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :cond_6
    :goto_2
    if-eqz v4, :cond_9

    if-eqz v6, :cond_9

    if-eq v1, p1, :cond_7

    .line 714
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 716
    :cond_7
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v7

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getEndState()I

    move-result v8

    if-eq v7, v8, :cond_a

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_8

    goto :goto_3

    :cond_8
    move v5, v4

    const/4 v6, 0x0

    goto :goto_3

    :cond_9
    move v5, v4

    :cond_a
    :goto_3
    if-ne p1, v1, :cond_b

    goto :goto_4

    .line 431
    :cond_b
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    .line 431
    iget v4, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    if-ne v4, v2, :cond_c

    .line 683
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:I

    if-eq v2, v1, :cond_11

    goto :goto_4

    .line 685
    :cond_c
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:I

    if-eq v2, v4, :cond_d

    if-ne v2, v1, :cond_11

    :cond_d
    :goto_4
    if-eqz v5, :cond_e

    and-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_e

    .line 724
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 725
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    return-void

    :cond_e
    if-eqz v6, :cond_f

    and-int/lit8 v1, v3, 0x10

    if-eqz v1, :cond_f

    .line 727
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 728
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToStart()V

    return-void

    :cond_f
    if-eqz v5, :cond_10

    and-int/lit16 v1, v3, 0x100

    if-eqz v1, :cond_10

    .line 730
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 731
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    return-void

    :cond_10
    if-eqz v6, :cond_11

    and-int/lit16 v1, v3, 0x1000

    if-eqz v1, :cond_11

    .line 733
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    const/4 p1, 0x0

    .line 734
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_11
    :goto_5
    return-void
.end method

.method public removeOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 2

    const/4 v0, -0x1

    .line 665
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$a;->b:I

    if-ne v1, v0, :cond_0

    return-void

    .line 668
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    .line 670
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " (*)  could not find id "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionScene"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 673
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
