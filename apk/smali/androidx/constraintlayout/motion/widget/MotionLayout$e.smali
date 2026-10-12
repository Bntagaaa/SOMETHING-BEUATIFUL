.class Landroidx/constraintlayout/motion/widget/MotionLayout$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

.field public b:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

.field public c:Landroidx/constraintlayout/widget/ConstraintSet;

.field public d:Landroidx/constraintlayout/widget/ConstraintSet;

.field public e:I

.field public f:I

.field public final synthetic g:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 0

    .line 1971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1972
    new-instance p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 1973
    new-instance p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    const/4 p1, 0x0

    .line 1974
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->c:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 1975
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d:Landroidx/constraintlayout/widget/ConstraintSet;

    return-void
.end method

.method public static a(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 4

    .line 1980
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    .line 1981
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1982
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1984
    invoke-virtual {p1, p0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 1985
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1987
    instance-of v3, v2, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v3, :cond_0

    .line 1988
    new-instance v3, Landroidx/constraintlayout/solver/widgets/Barrier;

    invoke-direct {v3}, Landroidx/constraintlayout/solver/widgets/Barrier;-><init>()V

    goto :goto_1

    .line 1989
    :cond_0
    instance-of v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v3, :cond_1

    .line 1990
    new-instance v3, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-direct {v3}, Landroidx/constraintlayout/solver/widgets/Guideline;-><init>()V

    goto :goto_1

    .line 1991
    :cond_1
    instance-of v3, v2, Landroidx/constraintlayout/solver/widgets/Flow;

    if-eqz v3, :cond_2

    .line 1992
    new-instance v3, Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-direct {v3}, Landroidx/constraintlayout/solver/widgets/Flow;-><init>()V

    goto :goto_1

    .line 1993
    :cond_2
    instance-of v3, v2, Landroidx/constraintlayout/solver/widgets/Helper;

    if-eqz v3, :cond_3

    .line 1994
    new-instance v3, Landroidx/constraintlayout/solver/widgets/HelperWidget;

    invoke-direct {v3}, Landroidx/constraintlayout/solver/widgets/HelperWidget;-><init>()V

    goto :goto_1

    .line 1996
    :cond_3
    new-instance v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-direct {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    .line 1998
    :goto_1
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 1999
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2001
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2002
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public static b(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 4

    .line 2120
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2123
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object p0

    .line 2124
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2126
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2127
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public build()V
    .locals 17

    move-object/from16 v0, p0

    .line 2265
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 2266
    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 2269
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2270
    new-instance v6, Landroidx/constraintlayout/motion/widget/MotionController;

    invoke-direct {v6, v5}, Landroidx/constraintlayout/motion/widget/MotionController;-><init>(Landroid/view/View;)V

    .line 2272
    iget-object v7, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v2, :cond_7

    .line 2275
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2276
    iget-object v5, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez v5, :cond_1

    move/from16 v16, v2

    goto/16 :goto_3

    .line 2280
    :cond_1
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->c:Landroidx/constraintlayout/widget/ConstraintSet;

    const-string v7, ")"

    const-string v8, " ("

    const-string v9, "no widget for  "

    const-string v10, "MotionLayout"

    if-eqz v6, :cond_3

    .line 2281
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v6, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 2283
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->c:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 846
    iget-object v12, v5, Landroidx/constraintlayout/motion/widget/MotionController;->d:Landroidx/constraintlayout/motion/widget/c;

    const/4 v13, 0x0

    iput v13, v12, Landroidx/constraintlayout/motion/widget/c;->c:F

    .line 847
    iput v13, v12, Landroidx/constraintlayout/motion/widget/c;->d:F

    .line 848
    invoke-virtual {v5, v12}, Landroidx/constraintlayout/motion/widget/MotionController;->g(Landroidx/constraintlayout/motion/widget/c;)V

    .line 849
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    int-to-float v15, v15

    move/from16 v16, v2

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 668
    iput v13, v12, Landroidx/constraintlayout/motion/widget/c;->e:F

    .line 669
    iput v14, v12, Landroidx/constraintlayout/motion/widget/c;->f:F

    .line 670
    iput v15, v12, Landroidx/constraintlayout/motion/widget/c;->g:F

    .line 671
    iput v2, v12, Landroidx/constraintlayout/motion/widget/c;->h:F

    .line 850
    iget v2, v5, Landroidx/constraintlayout/motion/widget/MotionController;->b:I

    invoke-virtual {v11, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v2

    .line 851
    invoke-virtual {v12, v2}, Landroidx/constraintlayout/motion/widget/c;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    .line 852
    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    iput v2, v5, Landroidx/constraintlayout/motion/widget/MotionController;->j:F

    .line 853
    iget-object v2, v5, Landroidx/constraintlayout/motion/widget/MotionController;->f:Landroidx/constraintlayout/motion/widget/b;

    iget v12, v5, Landroidx/constraintlayout/motion/widget/MotionController;->b:I

    invoke-virtual {v2, v6, v11, v12}, Landroidx/constraintlayout/motion/widget/b;->setState(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintSet;I)V

    goto :goto_2

    :cond_2
    move/from16 v16, v2

    .line 2285
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:I

    if-eqz v2, :cond_4

    .line 2286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move/from16 v16, v2

    .line 2290
    :cond_4
    :goto_2
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d:Landroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v2, :cond_6

    .line 2291
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v2, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2293
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 857
    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/MotionController;->e:Landroidx/constraintlayout/motion/widget/c;

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v6, Landroidx/constraintlayout/motion/widget/c;->c:F

    .line 858
    iput v7, v6, Landroidx/constraintlayout/motion/widget/c;->d:F

    .line 859
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/MotionController;->g(Landroidx/constraintlayout/motion/widget/c;)V

    .line 860
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    int-to-float v10, v10

    .line 668
    iput v7, v6, Landroidx/constraintlayout/motion/widget/c;->e:F

    .line 669
    iput v8, v6, Landroidx/constraintlayout/motion/widget/c;->f:F

    .line 670
    iput v9, v6, Landroidx/constraintlayout/motion/widget/c;->g:F

    .line 671
    iput v10, v6, Landroidx/constraintlayout/motion/widget/c;->h:F

    .line 861
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionController;->b:I

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/motion/widget/c;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    .line 863
    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/MotionController;->g:Landroidx/constraintlayout/motion/widget/b;

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionController;->b:I

    invoke-virtual {v6, v2, v4, v5}, Landroidx/constraintlayout/motion/widget/b;->setState(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintSet;I)V

    goto :goto_3

    .line 2295
    :cond_5
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:I

    if-eqz v2, :cond_6

    .line 2296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v16

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method public final c(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 6

    .line 2007
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->c:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2008
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2009
    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 2010
    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 2011
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->b(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMeasurer(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 2012
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->c(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMeasurer(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 2013
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->removeAllChildren()V

    .line 2014
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->removeAllChildren()V

    .line 2015
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->d(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-result-object v0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    .line 2016
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->e(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-result-object v0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    .line 2017
    iget v0, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:F

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2019
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 2021
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V

    goto :goto_0

    .line 2023
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, v0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V

    if-eqz p1, :cond_2

    .line 2025
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 2032
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 859
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result p2

    .line 2032
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    .line 2033
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateHierarchy()V

    .line 2042
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 859
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result p2

    .line 2042
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    .line 2043
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateHierarchy()V

    .line 2050
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2052
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, -0x2

    if-ne p2, v0, :cond_3

    .line 2053
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 2054
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 2056
    :cond_3
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, v0, :cond_4

    .line 2057
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 2058
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_4
    return-void
.end method

.method public final d(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 8

    .line 2064
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 2065
    new-instance v4, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v4, v0, v0}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    .line 2067
    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 2068
    invoke-virtual {v5, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2069
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v5, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2072
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2073
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2074
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v5, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 2077
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2078
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 2079
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->applyToLayoutParams(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 2081
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->getWidth(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 2082
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->getHeight(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 2083
    instance-of v0, v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v0, :cond_1

    .line 2084
    move-object v0, v2

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {p2, v0, v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->applyToHelper(Landroidx/constraintlayout/widget/ConstraintHelper;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 2085
    instance-of v0, v2, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v0, :cond_1

    .line 2086
    move-object v0, v2

    check-cast v0, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->validateParams()V

    .line 2097
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveLayoutDirection(I)V

    .line 2101
    sget v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->TOUCH_UP_COMPLETE:I

    .line 859
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 2102
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->getVisibilityMode(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2103
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {v3, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVisibility(I)V

    goto :goto_1

    .line 2105
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->getVisibility(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVisibility(I)V

    goto :goto_1

    .line 2108
    :cond_3
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2109
    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v1, :cond_4

    .line 2110
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 2111
    check-cast v0, Landroidx/constraintlayout/solver/widgets/Helper;

    .line 2112
    invoke-virtual {v1, p1, v0, v5}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePreLayout(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/Helper;Landroid/util/SparseArray;)V

    .line 2113
    check-cast v0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    .line 2114
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->captureWidgets()V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public isNotConfiguredWith(II)Z
    .locals 1

    .line 2309
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->e:I

    if-ne p1, v0, :cond_1

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->f:I

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public measure(II)V
    .locals 11

    .line 2190
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2191
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 2193
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->k0:I

    .line 2194
    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:I

    .line 2195
    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getOptimizationLevel()I

    move-result v5

    .line 2197
    iget v6, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:I

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getStartState()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 2198
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 859
    invoke-virtual {v4, v6, v5, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2199
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->c:Landroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v6, :cond_2

    .line 2200
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 859
    invoke-virtual {v4, v6, v5, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    goto :goto_0

    .line 2203
    :cond_0
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->c:Landroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v6, :cond_1

    .line 2204
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 859
    invoke-virtual {v4, v6, v5, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2206
    :cond_1
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 859
    invoke-virtual {v4, v6, v5, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2215
    :cond_2
    :goto_0
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_3

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v0, v6, :cond_3

    if-ne v3, v6, :cond_3

    goto :goto_4

    .line 2219
    :cond_3
    iput v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->k0:I

    .line 2220
    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:I

    .line 2221
    iget v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:I

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getStartState()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 2222
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 859
    invoke-virtual {v4, v0, v5, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2223
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->c:Landroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v0, :cond_6

    .line 2224
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 859
    invoke-virtual {v4, v0, v5, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    goto :goto_1

    .line 2227
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->c:Landroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v0, :cond_5

    .line 2228
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 859
    invoke-virtual {v4, v0, v5, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2230
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 859
    invoke-virtual {v4, v0, v5, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2233
    :cond_6
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    iput v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->g0:I

    .line 2234
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    iput v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:I

    .line 2235
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    iput v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:I

    .line 2236
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    iput v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:I

    .line 2237
    iget v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->g0:I

    iget v3, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:I

    if-ne v0, v3, :cond_8

    iget v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:I

    iget v3, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:I

    if-eq v0, v3, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 2241
    :goto_4
    iget v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->g0:I

    .line 2242
    iget v3, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:I

    .line 2243
    iget v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->k0:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_9

    if-nez v5, :cond_a

    :cond_9
    int-to-float v5, v0

    .line 2244
    iget v9, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:F

    iget v10, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:I

    sub-int/2addr v10, v0

    int-to-float v0, v10

    mul-float v9, v9, v0

    add-float/2addr v9, v5

    float-to-int v0, v9

    .line 2246
    :cond_a
    iget v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:I

    if-eq v5, v6, :cond_c

    if-nez v5, :cond_b

    goto :goto_6

    :cond_b
    :goto_5
    move v4, v3

    goto :goto_7

    :cond_c
    :goto_6
    int-to-float v5, v3

    .line 2247
    iget v6, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:F

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:I

    sub-int/2addr v4, v3

    int-to-float v3, v4

    mul-float v6, v6, v3

    add-float/2addr v6, v5

    float-to-int v3, v6

    goto :goto_5

    .line 2250
    :goto_7
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 2251
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_8

    :cond_d
    const/4 v5, 0x0

    goto :goto_9

    :cond_e
    :goto_8
    const/4 v5, 0x1

    .line 2252
    :goto_9
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 2253
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_b

    :cond_f
    const/4 v6, 0x0

    :goto_a
    move v3, v0

    goto :goto_c

    :cond_10
    :goto_b
    const/4 v6, 0x1

    goto :goto_a

    .line 859
    :goto_c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveMeasuredDimension(IIIIZZ)V

    return-void
.end method

.method public reEvaluateState()V
    .locals 14

    .line 859
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 859
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 2185
    invoke-virtual {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->measure(II)V

    .line 1496
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1498
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->build()V

    const/4 v2, 0x1

    .line 1499
    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:Z

    .line 1501
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 1502
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 1503
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->gatPathMotionArc()I

    move-result v3

    const/4 v6, -0x1

    .line 1504
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Ljava/util/HashMap;

    const/4 v10, 0x0

    if-eq v3, v6, :cond_1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_1

    .line 1506
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v7, :cond_0

    .line 1508
    invoke-virtual {v7, v3}, Landroidx/constraintlayout/motion/widget/MotionController;->setPathMotionArc(I)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    :goto_1
    if-ge v11, v1, :cond_3

    .line 1514
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v3, :cond_2

    .line 1516
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v6, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    .line 1517
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:F

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIFJ)V

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1521
    :cond_3
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStaggered()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_d

    float-to-double v4, v3

    const-wide/16 v6, 0x0

    cmpg-double v8, v4, v6

    if-gez v8, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 1525
    :goto_2
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, -0x800001

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, 0x0

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const v8, -0x800001

    :goto_3
    const/high16 v11, 0x3f800000    # 1.0f

    if-ge v6, v1, :cond_b

    .line 1528
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 1529
    iget v13, v12, Landroidx/constraintlayout/motion/widget/MotionController;->j:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_9

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v1, :cond_6

    .line 1544
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 1545
    iget v8, v7, Landroidx/constraintlayout/motion/widget/MotionController;->j:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1546
    iget v8, v7, Landroidx/constraintlayout/motion/widget/MotionController;->j:F

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1547
    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionController;->j:F

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    if-ge v10, v1, :cond_d

    .line 1551
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 1552
    iget v7, v6, Landroidx/constraintlayout/motion/widget/MotionController;->j:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_8

    sub-float v7, v11, v3

    div-float v7, v11, v7

    .line 1554
    iput v7, v6, Landroidx/constraintlayout/motion/widget/MotionController;->l:F

    if-eqz v2, :cond_7

    .line 1556
    iget v7, v6, Landroidx/constraintlayout/motion/widget/MotionController;->j:F

    sub-float v7, v4, v7

    sub-float v8, v4, v5

    div-float/2addr v7, v8

    mul-float v7, v7, v3

    sub-float v7, v3, v7

    iput v7, v6, Landroidx/constraintlayout/motion/widget/MotionController;->k:F

    goto :goto_6

    .line 1558
    :cond_7
    iget v7, v6, Landroidx/constraintlayout/motion/widget/MotionController;->j:F

    sub-float/2addr v7, v5

    mul-float v7, v7, v3

    sub-float v8, v4, v5

    div-float/2addr v7, v8

    sub-float v7, v3, v7

    iput v7, v6, Landroidx/constraintlayout/motion/widget/MotionController;->k:F

    :cond_8
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 118
    :cond_9
    iget-object v11, v12, Landroidx/constraintlayout/motion/widget/MotionController;->e:Landroidx/constraintlayout/motion/widget/c;

    iget v12, v11, Landroidx/constraintlayout/motion/widget/c;->e:F

    .line 122
    iget v11, v11, Landroidx/constraintlayout/motion/widget/c;->f:F

    if-eqz v2, :cond_a

    sub-float/2addr v11, v12

    goto :goto_7

    :cond_a
    add-float/2addr v11, v12

    .line 1536
    :goto_7
    invoke-static {v7, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1537
    invoke-static {v8, v11}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_b
    :goto_8
    if-ge v10, v1, :cond_d

    .line 1564
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 118
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionController;->e:Landroidx/constraintlayout/motion/widget/c;

    .line 118
    iget v6, v5, Landroidx/constraintlayout/motion/widget/c;->e:F

    .line 122
    iget v5, v5, Landroidx/constraintlayout/motion/widget/c;->f:F

    if-eqz v2, :cond_c

    sub-float/2addr v5, v6

    goto :goto_9

    :cond_c
    add-float/2addr v5, v6

    :goto_9
    sub-float v6, v11, v3

    div-float v6, v11, v6

    .line 1568
    iput v6, v4, Landroidx/constraintlayout/motion/widget/MotionController;->l:F

    sub-float/2addr v5, v7

    mul-float v5, v5, v3

    sub-float v6, v8, v7

    div-float/2addr v5, v6

    sub-float v5, v3, v5

    .line 1569
    iput v5, v4, Landroidx/constraintlayout/motion/widget/MotionController;->k:F

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_d
    return-void
.end method

.method public setMeasuredId(II)V
    .locals 0

    .line 2304
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->e:I

    .line 2305
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->f:I

    return-void
.end method
