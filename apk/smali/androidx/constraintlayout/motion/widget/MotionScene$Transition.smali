.class public Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/MotionScene$Transition$a;
    }
.end annotation


# static fields
.field public static final AUTO_ANIMATE_TO_END:I = 0x4

.field public static final AUTO_ANIMATE_TO_START:I = 0x3

.field public static final AUTO_JUMP_TO_END:I = 0x2

.field public static final AUTO_JUMP_TO_START:I = 0x1

.field public static final AUTO_NONE:I


# instance fields
.field public final a:I

.field public final b:Z

.field public c:I

.field public d:I

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:I

.field public h:I

.field public i:F

.field public final j:Landroidx/constraintlayout/motion/widget/MotionScene;

.field public final k:Ljava/util/ArrayList;

.field public l:Landroidx/constraintlayout/motion/widget/g;

.field public final m:Ljava/util/ArrayList;

.field public final n:I

.field public o:Z

.field public p:I

.field public final q:I

.field public final r:I


# direct methods
.method public constructor <init>(ILandroidx/constraintlayout/motion/widget/MotionScene;II)V
    .locals 4

    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 432
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->a:I

    const/4 v1, 0x0

    .line 433
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->b:Z

    .line 434
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    .line 435
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    .line 436
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->e:I

    const/4 v2, 0x0

    .line 437
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->f:Ljava/lang/String;

    .line 438
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->g:I

    const/16 v3, 0x190

    .line 439
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    const/4 v3, 0x0

    .line 440
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->i:F

    .line 442
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->k:Ljava/util/ArrayList;

    .line 443
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/g;

    .line 444
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->m:Ljava/util/ArrayList;

    .line 445
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->n:I

    .line 451
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->o:Z

    .line 452
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->p:I

    .line 453
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->q:I

    .line 454
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->r:I

    .line 768
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->a:I

    .line 769
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->j:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 770
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    .line 771
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    .line 60
    iget p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene;->k:I

    .line 772
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    .line 60
    iget p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene;->l:I

    .line 773
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->q:I

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionScene;Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 9

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 432
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->a:I

    const/4 v1, 0x0

    .line 433
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->b:Z

    .line 434
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    .line 435
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    .line 436
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->e:I

    const/4 v2, 0x0

    .line 437
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->f:Ljava/lang/String;

    .line 438
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->g:I

    const/16 v3, 0x190

    .line 439
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    const/4 v3, 0x0

    .line 440
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->i:F

    .line 442
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->k:Ljava/util/ArrayList;

    .line 443
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/g;

    .line 444
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->m:Ljava/util/ArrayList;

    .line 445
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->n:I

    .line 451
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->o:Z

    .line 452
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->p:I

    .line 453
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->q:I

    .line 454
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->r:I

    .line 60
    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->k:I

    .line 777
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    .line 60
    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->l:I

    .line 778
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->q:I

    .line 779
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->j:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 780
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    .line 784
    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->Transition:[I

    invoke-virtual {p2, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 790
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_e

    .line 792
    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 793
    sget v6, Landroidx/constraintlayout/widget/R$styleable;->Transition_constraintSetEnd:I

    iget-object v7, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->h:Landroid/util/SparseArray;

    const-string v8, "layout"

    if-ne v5, v6, :cond_0

    .line 794
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    .line 795
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    .line 796
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 797
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v4}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 798
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    invoke-virtual {v4, p2, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V

    .line 799
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    invoke-virtual {v7, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 805
    :cond_0
    sget v6, Landroidx/constraintlayout/widget/R$styleable;->Transition_constraintSetStart:I

    if-ne v5, v6, :cond_1

    .line 806
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    .line 807
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    .line 808
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 809
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v4}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 810
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    invoke-virtual {v4, p2, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V

    .line 811
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    invoke-virtual {v7, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 813
    :cond_1
    sget v6, Landroidx/constraintlayout/widget/R$styleable;->Transition_motionInterpolator:I

    if-ne v5, v6, :cond_5

    .line 814
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 816
    iget v6, v6, Landroid/util/TypedValue;->type:I

    const/4 v7, -0x2

    if-ne v6, v4, :cond_2

    .line 817
    invoke-virtual {p3, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->g:I

    if-eq v4, v0, :cond_d

    .line 819
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->e:I

    goto/16 :goto_1

    :cond_2
    const/4 v4, 0x3

    if-ne v6, v4, :cond_4

    .line 822
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->f:Ljava/lang/String;

    .line 823
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    .line 824
    invoke-virtual {p3, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->g:I

    .line 825
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->e:I

    goto/16 :goto_1

    .line 827
    :cond_3
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->e:I

    goto/16 :goto_1

    .line 830
    :cond_4
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->e:I

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->e:I

    goto :goto_1

    .line 833
    :cond_5
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Transition_duration:I

    if-ne v5, v4, :cond_6

    .line 834
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    goto :goto_1

    .line 835
    :cond_6
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Transition_staggered:I

    if-ne v5, v4, :cond_7

    .line 836
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->i:F

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->i:F

    goto :goto_1

    .line 837
    :cond_7
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Transition_autoTransition:I

    if-ne v5, v4, :cond_8

    .line 838
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->n:I

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->n:I

    goto :goto_1

    .line 839
    :cond_8
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Transition_android_id:I

    if-ne v5, v4, :cond_9

    .line 840
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->a:I

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->a:I

    goto :goto_1

    .line 841
    :cond_9
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Transition_transitionDisable:I

    if-ne v5, v4, :cond_a

    .line 842
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->o:Z

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->o:Z

    goto :goto_1

    .line 843
    :cond_a
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Transition_pathMotionArc:I

    if-ne v5, v4, :cond_b

    .line 844
    invoke-virtual {p3, v5, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->p:I

    goto :goto_1

    .line 845
    :cond_b
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Transition_layoutDuringTransition:I

    if-ne v5, v4, :cond_c

    .line 846
    invoke-virtual {p3, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->q:I

    goto :goto_1

    .line 847
    :cond_c
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Transition_transitionFlags:I

    if-ne v5, v4, :cond_d

    .line 848
    invoke-virtual {p3, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->r:I

    :cond_d
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 851
    :cond_e
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    if-ne p1, v0, :cond_f

    .line 852
    iput-boolean v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->b:Z

    .line 786
    :cond_f
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionScene;Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .locals 4

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 432
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->a:I

    const/4 v1, 0x0

    .line 433
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->b:Z

    .line 434
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    .line 435
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    .line 436
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->e:I

    const/4 v2, 0x0

    .line 437
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->f:Ljava/lang/String;

    .line 438
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->g:I

    const/16 v3, 0x190

    .line 439
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    const/4 v3, 0x0

    .line 440
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->i:F

    .line 442
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->k:Ljava/util/ArrayList;

    .line 443
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/g;

    .line 444
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->m:Ljava/util/ArrayList;

    .line 445
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->n:I

    .line 451
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->o:Z

    .line 452
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->p:I

    .line 453
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->q:I

    .line 454
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->r:I

    .line 741
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->j:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz p2, :cond_0

    .line 743
    iget p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->p:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->p:I

    .line 744
    iget p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->e:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->e:I

    .line 745
    iget-object p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->f:Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->f:Ljava/lang/String;

    .line 746
    iget p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->g:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->g:I

    .line 747
    iget p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    .line 748
    iget-object p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->k:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->k:Ljava/util/ArrayList;

    .line 749
    iget p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->i:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->i:F

    .line 750
    iget p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->q:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->q:I

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnClick(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 462
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$a;

    invoke-direct {v0, p1, p0, p2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$a;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public debugString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 598
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 599
    const-string v0, "null"

    goto :goto_0

    .line 601
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 603
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    if-ne v2, v1, :cond_1

    .line 604
    const-string p1, " -> null"

    .line 0
    invoke-static {v0, p1}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 606
    :cond_1
    const-string v1, " -> "

    .line 0
    invoke-static {v0, v1}, L_COROUTINE/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 606
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDuration()I
    .locals 1

    .line 506
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    return v0
.end method

.method public getEndConstraintSetId()I
    .locals 1

    .line 479
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 470
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->a:I

    return v0
.end method

.method public getKeyFrameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/constraintlayout/motion/widget/KeyFrames;",
            ">;"
        }
    .end annotation

    .line 519
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLayoutDuringTransition()I
    .locals 1

    .line 458
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->q:I

    return v0
.end method

.method public getOnClickList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/constraintlayout/motion/widget/MotionScene$Transition$a;",
            ">;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPathMotionArc()I
    .locals 1

    .line 568
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->p:I

    return v0
.end method

.method public getStagger()F
    .locals 1

    .line 515
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->i:F

    return v0
.end method

.method public getStartConstraintSetId()I
    .locals 1

    .line 488
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    return v0
.end method

.method public getTouchResponse()Landroidx/constraintlayout/motion/widget/g;
    .locals 1

    .line 537
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/g;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 576
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->o:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTransitionFlag(I)Z
    .locals 1

    .line 612
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->r:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setDuration(I)V
    .locals 0

    .line 497
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 586
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->o:Z

    return-void
.end method

.method public setPathMotionArc(I)V
    .locals 0

    .line 558
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->p:I

    return-void
.end method

.method public setStagger(F)V
    .locals 0

    .line 548
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->i:F

    return-void
.end method
