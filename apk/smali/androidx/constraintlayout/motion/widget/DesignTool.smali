.class public Landroidx/constraintlayout/motion/widget/DesignTool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/motion/widget/d;


# static fields
.field public static final f:Ljava/util/HashMap;

.field public static final g:Ljava/util/HashMap;


# instance fields
.field public final a:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/constraintlayout/motion/widget/DesignTool;->f:Ljava/util/HashMap;

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroidx/constraintlayout/motion/widget/DesignTool;->g:Ljava/util/HashMap;

    const/4 v2, 0x4

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const-string v4, "layout_constraintBottom_toBottomOf"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    const-string v6, "layout_constraintBottom_toTopOf"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const-string v5, "layout_constraintTop_toBottomOf"

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {v3, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const-string v3, "layout_constraintTop_toTopOf"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x6

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    const-string v8, "layout_constraintStart_toStartOf"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x7

    .line 95
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    const-string v10, "layout_constraintStart_toEndOf"

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {v7, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const-string v9, "layout_constraintEnd_toStartOf"

    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {v7, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const-string v7, "layout_constraintEnd_toEndOf"

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    const-string v12, "layout_constraintLeft_toLeftOf"

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x2

    .line 99
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    const-string v14, "layout_constraintLeft_toRightOf"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {v11, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    const-string v15, "layout_constraintRight_toRightOf"

    invoke-virtual {v0, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {v11, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const-string v11, "layout_constraintRight_toLeftOf"

    invoke-virtual {v0, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const-string v13, "layout_constraintBaseline_toBaselineOf"

    invoke-virtual {v0, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "layout_marginBottom"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "layout_marginTop"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "layout_marginStart"

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {v1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "layout_marginEnd"

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "layout_marginEnd"

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "layout_marginLeft"

    invoke-virtual {v1, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "layout_marginLeft"

    invoke-virtual {v1, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "layout_marginRight"

    invoke-virtual {v1, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "layout_marginRight"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->b:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->c:Ljava/lang/String;

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->d:I

    .line 80
    iput v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->e:I

    .line 83
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    return-void
.end method

.method public static a(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V
    .locals 8

    .line 132
    sget-object v0, Landroidx/constraintlayout/motion/widget/DesignTool;->f:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 137
    sget-object v2, Landroidx/constraintlayout/motion/widget/DesignTool;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p0, p3}, Landroidx/constraintlayout/motion/widget/DesignTool;->b(ILjava/lang/String;)I

    move-result p0

    move v7, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const/4 v7, 0x0

    .line 141
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 142
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    move-object v2, p1

    move v4, p4

    move v6, p5

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    :cond_1
    return-void
.end method

.method public static b(ILjava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x64

    .line 122
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return v0

    .line 126
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int p1, p1, p0

    int-to-float p0, p1

    const/high16 p1, 0x43200000    # 160.0f

    div-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static c(Landroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 149
    const-string v1, "layout_constraintVertical_bias"

    goto :goto_0

    .line 148
    :cond_0
    const-string v1, "layout_constraintHorizontal_bias"

    .line 151
    :goto_0
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setHorizontalBias(IF)V

    return-void

    :cond_1
    if-ne p3, v0, :cond_2

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setVerticalBias(IF)V

    :cond_2
    return-void
.end method

.method public static d(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 164
    const-string v0, "layout_height"

    goto :goto_0

    .line 163
    :cond_0
    const-string v0, "layout_width"

    .line 166
    :goto_0
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_3

    .line 169
    const-string v0, "wrap_content"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    invoke-static {p0, p3}, Landroidx/constraintlayout/motion/widget/DesignTool;->b(ILjava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, -0x2

    :goto_1
    if-nez p4, :cond_2

    .line 173
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p1, p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    return-void

    .line 175
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p1, p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    :cond_3
    return-void
.end method


# virtual methods
.method public designAccess(ILjava/lang/String;Ljava/lang/Object;[FI[FI)I
    .locals 2

    .line 550
    check-cast p3, Landroid/view/View;

    .line 552
    iget-object p4, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 p5, -0x1

    const/4 p7, 0x0

    if-eqz p1, :cond_2

    .line 553
    iget-object v0, p4, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    return p5

    :cond_0
    if-eqz p3, :cond_1

    .line 558
    iget-object v0, p4, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez p3, :cond_3

    :cond_1
    return p5

    :cond_2
    move-object p3, p7

    :cond_3
    const/4 v0, 0x1

    if-eqz p1, :cond_9

    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    const/4 p7, 0x3

    if-eq p1, p7, :cond_4

    return p5

    .line 588
    :cond_4
    iget-object p1, p4, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    .line 381
    iget-object p1, p3, Landroidx/constraintlayout/motion/widget/MotionController;->w:Ljava/util/HashMap;

    .line 381
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/motion/widget/SplineSet;

    if-nez p1, :cond_5

    return p5

    :cond_5
    const/4 p2, 0x0

    .line 385
    :goto_0
    array-length p3, p6

    if-ge p2, p3, :cond_6

    .line 386
    array-length p3, p6

    sub-int/2addr p3, v0

    div-int p3, p2, p3

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/motion/widget/SplineSet;->get(F)F

    move-result p3

    aput p3, p6, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 388
    :cond_6
    array-length p1, p6

    return p1

    .line 580
    :cond_7
    iget-object p1, p4, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result p1

    .line 581
    div-int/lit8 p1, p1, 0x10

    .line 583
    invoke-virtual {p3, p6, p7}, Landroidx/constraintlayout/motion/widget/MotionController;->a([F[I)I

    return p1

    .line 572
    :cond_8
    iget-object p1, p4, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result p1

    .line 573
    div-int/lit8 p1, p1, 0x10

    .line 575
    invoke-virtual {p3, p6, p1}, Landroidx/constraintlayout/motion/widget/MotionController;->b([FI)V

    return p1

    :cond_9
    return v0
.end method

.method public disableAutoTransition(Z)V
    .locals 1

    .line 3983
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    return-void

    .line 3986
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->disableAutoTransition(Z)V

    return-void
.end method

.method public dumpConstraintSet(Ljava/lang/String;)V
    .locals 6

    .line 708
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 709
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 3958
    :cond_0
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 3961
    :cond_1
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v1

    .line 712
    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " dumping  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 714
    :try_start_0
    iget-object p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p1

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    new-array v1, v2, [I

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->dump(Landroidx/constraintlayout/motion/widget/MotionScene;[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 716
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public getAnimationKeyFrames(Ljava/lang/Object;[F)I
    .locals 2

    .line 241
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 244
    :cond_0
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v1

    .line 245
    div-int/lit8 v1, v1, 0x10

    .line 247
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 v0, 0x0

    .line 252
    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->a([F[I)I

    return v1
.end method

.method public getAnimationPath(Ljava/lang/Object;[FI)I
    .locals 2

    .line 199
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 203
    :cond_0
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 208
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionController;->b([FI)V

    return p3
.end method

.method public getAnimationRectangles(Ljava/lang/Object;[F)V
    .locals 8

    .line 219
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v1, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v1

    .line 223
    div-int/lit8 v1, v1, 0x10

    .line 225
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, -0x1

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    int-to-float v4, v3

    mul-float v4, v4, v2

    const/4 v5, 0x0

    .line 401
    invoke-virtual {p1, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionController;->c(F[F)F

    move-result v4

    .line 402
    iget-object v5, p1, Landroidx/constraintlayout/motion/widget/MotionController;->h:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v5, v5, v0

    float-to-double v6, v4

    iget-object v4, p1, Landroidx/constraintlayout/motion/widget/MotionController;->n:[D

    invoke-virtual {v5, v6, v7, v4}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 403
    iget-object v4, p1, Landroidx/constraintlayout/motion/widget/MotionController;->m:[I

    iget-object v5, p1, Landroidx/constraintlayout/motion/widget/MotionController;->n:[D

    mul-int/lit8 v6, v3, 0x8

    iget-object v7, p1, Landroidx/constraintlayout/motion/widget/MotionController;->d:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v7, v4, v5, p2, v6}, Landroidx/constraintlayout/motion/widget/c;->c([I[D[FI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public getEndState()Ljava/lang/String;
    .locals 3

    .line 335
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getEndState()I

    move-result v1

    .line 337
    iget v2, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->e:I

    if-ne v2, v1, :cond_0

    .line 338
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->c:Ljava/lang/String;

    return-object v0

    .line 3971
    :cond_0
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 3974
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->lookUpConstraintName(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 342
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->c:Ljava/lang/String;

    .line 343
    iput v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->e:I

    :cond_2
    return-object v0
.end method

.method public getKeyFrameInfo(Ljava/lang/Object;I[I)I
    .locals 1

    .line 447
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Ljava/util/HashMap;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 451
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionController;->getKeyFrameInfo(I[I)I

    move-result p1

    return p1
.end method

.method public getKeyFramePosition(Ljava/lang/Object;IFF)F
    .locals 1

    .line 462
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Ljava/util/HashMap;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionController;

    invoke-virtual {p1, p3, p4, p2}, Landroidx/constraintlayout/motion/widget/MotionController;->e(FFI)F

    move-result p1

    return p1
.end method

.method public getKeyFramePositions(Ljava/lang/Object;[I[F)I
    .locals 1

    .line 432
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Ljava/util/HashMap;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 436
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionController;->getkeyFramePositions([I[F)I

    move-result p1

    return p1
.end method

.method public getKeyframe(III)Ljava/lang/Object;
    .locals 2

    .line 601
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 604
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionScene;->e(III)Landroidx/constraintlayout/motion/widget/Key;

    move-result-object p1

    return-object p1
.end method

.method public getKeyframe(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 2

    .line 640
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 643
    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 644
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    invoke-virtual {v1, p2, p1, p3}, Landroidx/constraintlayout/motion/widget/MotionScene;->e(III)Landroidx/constraintlayout/motion/widget/Key;

    move-result-object p1

    return-object p1
.end method

.method public getKeyframeAtLocation(Ljava/lang/Object;FF)Ljava/lang/Object;
    .locals 9

    .line 608
    check-cast p1, Landroid/view/View;

    .line 610
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v1, :cond_0

    const/4 p1, -0x1

    .line 611
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 614
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez v0, :cond_1

    return-object v1

    .line 621
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 622
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 623
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 315
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 316
    iget-object p1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->d:Landroidx/constraintlayout/motion/widget/c;

    iget v2, p1, Landroidx/constraintlayout/motion/widget/c;->e:F

    iput v2, v5, Landroid/graphics/RectF;->left:F

    .line 317
    iget v6, p1, Landroidx/constraintlayout/motion/widget/c;->f:F

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 318
    iget v7, p1, Landroidx/constraintlayout/motion/widget/c;->g:F

    add-float/2addr v2, v7

    iput v2, v5, Landroid/graphics/RectF;->right:F

    .line 319
    iget p1, p1, Landroidx/constraintlayout/motion/widget/c;->h:F

    add-float/2addr v6, p1

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 320
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 321
    iget-object p1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->e:Landroidx/constraintlayout/motion/widget/c;

    iget v2, p1, Landroidx/constraintlayout/motion/widget/c;->e:F

    iput v2, v6, Landroid/graphics/RectF;->left:F

    .line 322
    iget v7, p1, Landroidx/constraintlayout/motion/widget/c;->f:F

    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 323
    iget v8, p1, Landroidx/constraintlayout/motion/widget/c;->g:F

    add-float/2addr v2, v8

    iput v2, v6, Landroid/graphics/RectF;->right:F

    .line 324
    iget p1, p1, Landroidx/constraintlayout/motion/widget/c;->h:F

    add-float/2addr v7, p1

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 325
    iget-object p1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->u:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/Key;

    .line 326
    instance-of v2, v0, Landroidx/constraintlayout/motion/widget/a;

    if-eqz v2, :cond_2

    .line 327
    move-object v2, v0

    check-cast v2, Landroidx/constraintlayout/motion/widget/a;

    move v7, p2

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Landroidx/constraintlayout/motion/widget/a;->intersects(IILandroid/graphics/RectF;Landroid/graphics/RectF;FF)Z

    move-result p2

    if-eqz p2, :cond_3

    return-object v2

    :cond_2
    move v7, p2

    move v8, p3

    :cond_3
    move p2, v7

    move p3, v8

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public getPositionKeyframe(Ljava/lang/Object;Ljava/lang/Object;FF[Ljava/lang/String;[F)Ljava/lang/Boolean;
    .locals 9

    .line 628
    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/a;

    if-eqz v0, :cond_0

    .line 629
    move-object v1, p1

    check-cast v1, Landroidx/constraintlayout/motion/widget/a;

    .line 630
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Ljava/util/HashMap;

    move-object v2, p2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 631
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1185
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 1186
    iget-object v0, p2, Landroidx/constraintlayout/motion/widget/MotionController;->d:Landroidx/constraintlayout/motion/widget/c;

    iget v4, v0, Landroidx/constraintlayout/motion/widget/c;->e:F

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 1187
    iget v5, v0, Landroidx/constraintlayout/motion/widget/c;->f:F

    iput v5, v3, Landroid/graphics/RectF;->top:F

    .line 1188
    iget v6, v0, Landroidx/constraintlayout/motion/widget/c;->g:F

    add-float/2addr v4, v6

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 1189
    iget v0, v0, Landroidx/constraintlayout/motion/widget/c;->h:F

    add-float/2addr v5, v0

    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    .line 1190
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 1191
    iget-object p2, p2, Landroidx/constraintlayout/motion/widget/MotionController;->e:Landroidx/constraintlayout/motion/widget/c;

    iget v0, p2, Landroidx/constraintlayout/motion/widget/c;->e:F

    iput v0, v4, Landroid/graphics/RectF;->left:F

    .line 1192
    iget v5, p2, Landroidx/constraintlayout/motion/widget/c;->f:F

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 1193
    iget v6, p2, Landroidx/constraintlayout/motion/widget/c;->g:F

    add-float/2addr v0, v6

    iput v0, v4, Landroid/graphics/RectF;->right:F

    .line 1194
    iget p2, p2, Landroidx/constraintlayout/motion/widget/c;->h:F

    add-float/2addr v5, p2

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 1195
    invoke-virtual/range {v1 .. v8}, Landroidx/constraintlayout/motion/widget/a;->positionAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    .line 632
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    const/4 p2, 0x1

    .line 633
    iput-boolean p2, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:Z

    .line 634
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 636
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public getProgress()F
    .locals 1

    .line 354
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v0

    return v0
.end method

.method public getStartState()Ljava/lang/String;
    .locals 4

    .line 321
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getStartState()I

    move-result v1

    .line 322
    iget v2, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->d:I

    if-ne v2, v1, :cond_0

    .line 323
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->b:Ljava/lang/String;

    return-object v0

    .line 3971
    :cond_0
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    .line 3974
    :cond_1
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->lookUpConstraintName(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    .line 328
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->b:Ljava/lang/String;

    .line 329
    iput v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->d:I

    .line 3971
    :cond_2
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_3

    return-object v3

    .line 3974
    :cond_3
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->lookUpConstraintName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 2

    .line 363
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/DesignTool;->getProgress()F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 367
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    const v1, 0x3f7d70a4    # 0.99f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 369
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->c:Ljava/lang/String;

    return-object v0

    .line 372
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTransitionTimeMs()J
    .locals 2

    .line 419
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransitionTimeMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public isInTransition()Z
    .locals 1

    .line 381
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAttributes(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 665
    move-object v2, p3

    check-cast v2, Landroid/view/View;

    .line 666
    move-object v3, p4

    check-cast v3, Ljava/util/HashMap;

    .line 3958
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object p4, p3, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    const/4 v6, 0x0

    if-nez p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 3961
    :cond_0
    invoke-virtual {p4, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->lookUpConstraintId(Ljava/lang/String;)I

    move-result p2

    .line 669
    :goto_0
    iget-object p4, p3, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p4, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 679
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result p4

    invoke-virtual {v1, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(I)V

    .line 681
    invoke-static {p1, v1, v2, v3, v6}, Landroidx/constraintlayout/motion/widget/DesignTool;->d(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V

    const/4 p4, 0x1

    .line 682
    invoke-static {p1, v1, v2, v3, p4}, Landroidx/constraintlayout/motion/widget/DesignTool;->d(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V

    const/4 v4, 0x6

    const/4 v5, 0x6

    move v0, p1

    .line 684
    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->a(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v5, 0x7

    .line 685
    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->a(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v4, 0x7

    .line 686
    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->a(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v5, 0x6

    .line 687
    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->a(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 688
    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->a(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v5, 0x2

    .line 689
    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->a(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v4, 0x2

    .line 690
    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->a(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v5, 0x1

    .line 691
    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->a(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v4, 0x3

    const/4 v5, 0x3

    .line 692
    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->a(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v5, 0x4

    .line 693
    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->a(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v4, 0x4

    const/4 v5, 0x3

    .line 694
    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->a(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v5, 0x4

    .line 695
    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->a(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v4, 0x5

    const/4 v5, 0x5

    .line 696
    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->a(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    .line 698
    invoke-static {v1, v2, v3, v6}, Landroidx/constraintlayout/motion/widget/DesignTool;->c(Landroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V

    .line 699
    invoke-static {v1, v2, v3, p4}, Landroidx/constraintlayout/motion/widget/DesignTool;->c(Landroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V

    .line 181
    const-string p1, "layout_editor_absoluteX"

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 183
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result p4

    invoke-static {v0, p1}, Landroidx/constraintlayout/motion/widget/DesignTool;->b(ILjava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p4, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->setEditorAbsoluteX(II)V

    .line 185
    :cond_2
    const-string p1, "layout_editor_absoluteY"

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 187
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result p4

    invoke-static {v0, p1}, Landroidx/constraintlayout/motion/widget/DesignTool;->b(ILjava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p4, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->setEditorAbsoluteY(II)V

    .line 703
    :cond_3
    invoke-virtual {p3, p2, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    .line 704
    invoke-virtual {p3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    return-void
.end method

.method public setKeyFrame(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 476
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v1, :cond_0

    .line 477
    check-cast p1, Landroid/view/View;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionScene;->setKeyframe(Landroid/view/View;ILjava/lang/String;Ljava/lang/Object;)V

    int-to-float p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    .line 478
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    const/4 p1, 0x0

    .line 479
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:F

    .line 480
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    const/4 p1, 0x1

    .line 481
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->g(Z)V

    :cond_0
    return-void
.end method

.method public setKeyFramePosition(Ljava/lang/Object;IIFF)Z
    .locals 4

    .line 497
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object p3, p2, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz p3, :cond_3

    .line 498
    iget-object p3, p2, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 499
    iget v0, p2, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    if-eqz p3, :cond_3

    .line 500
    iget-object v1, p2, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    check-cast p1, Landroid/view/View;

    .line 1155
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->c:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1158
    :cond_0
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/KeyFrames;

    .line 1159
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/KeyFrames;->getKeyFramesForView(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1160
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/Key;

    .line 1161
    iget v3, v3, Landroidx/constraintlayout/motion/widget/Key;->a:I

    if-ne v3, v0, :cond_2

    const/4 v1, 0x2

    .line 501
    invoke-virtual {p3, p4, p5, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->e(FFI)F

    move-result v1

    const/4 v2, 0x5

    .line 502
    invoke-virtual {p3, p4, p5, v2}, Landroidx/constraintlayout/motion/widget/MotionController;->e(FFI)F

    move-result p3

    .line 504
    iget-object p4, p2, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    const-string v1, "motion:percentX"

    invoke-virtual {p4, p1, v0, v1, p5}, Landroidx/constraintlayout/motion/widget/MotionScene;->setKeyframe(Landroid/view/View;ILjava/lang/String;Ljava/lang/Object;)V

    .line 505
    iget-object p4, p2, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string p5, "motion:percentY"

    invoke-virtual {p4, p1, v0, p5, p3}, Landroidx/constraintlayout/motion/widget/MotionScene;->setKeyframe(Landroid/view/View;ILjava/lang/String;Ljava/lang/Object;)V

    .line 506
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    const/4 p1, 0x1

    .line 507
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->g(Z)V

    .line 508
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setKeyframe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 648
    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/Key;

    if-eqz v0, :cond_0

    .line 649
    check-cast p1, Landroidx/constraintlayout/motion/widget/Key;

    .line 650
    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/motion/widget/Key;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 651
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    const/4 p2, 0x1

    .line 652
    iput-boolean p2, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:Z

    :cond_0
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 277
    const-string p1, "motion_base"

    .line 279
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->b:Ljava/lang/String;

    if-ne v0, p1, :cond_1

    return-void

    .line 288
    :cond_1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->c:Ljava/lang/String;

    .line 300
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v2, :cond_2

    .line 301
    iput-object v0, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 3958
    :cond_2
    iget-object v0, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    .line 3961
    :cond_3
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->lookUpConstraintId(Ljava/lang/String;)I

    move-result p1

    .line 305
    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->d:I

    if-eqz p1, :cond_6

    .line 308
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getStartState()I

    move-result v0

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    .line 309
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto :goto_1

    .line 310
    :cond_4
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getEndState()I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne p1, v0, :cond_5

    .line 311
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto :goto_1

    .line 313
    :cond_5
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    .line 314
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 317
    :cond_6
    :goto_1
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    return-void
.end method

.method public setToolPosition(F)V
    .locals 2

    .line 261
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 262
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 264
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    const/4 p1, 0x1

    .line 265
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->g(Z)V

    .line 266
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 267
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTransition(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 391
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 392
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 3958
    :cond_0
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 3961
    :cond_1
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v1

    .line 3958
    :goto_0
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v3, :cond_2

    goto :goto_1

    .line 3961
    :cond_2
    invoke-virtual {v3, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v2

    .line 397
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(II)V

    .line 398
    iput v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->d:I

    .line 399
    iput v2, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->e:I

    .line 401
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->b:Ljava/lang/String;

    .line 402
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->c:Ljava/lang/String;

    return-void
.end method

.method public setViewDebug(Ljava/lang/Object;I)V
    .locals 2

    .line 521
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz p1, :cond_0

    .line 523
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionController;->setDrawPath(I)V

    .line 524
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
