.class public Landroidx/constraintlayout/solver/LinearSystem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/LinearSystem$a;,
        Landroidx/constraintlayout/solver/LinearSystem$b;
    }
.end annotation


# static fields
.field public static ARRAY_ROW_CREATION:J = 0x0L

.field public static final DEBUG:Z = false

.field public static final FULL_DEBUG:Z = false

.field public static final MEASURE:Z = false

.field public static OPTIMIZED_ARRAY_ROW_CREATION:J = 0x0L

.field public static OPTIMIZED_ENGINE:Z = true

.field public static n:I = 0x3e8

.field public static sMetrics:Landroidx/constraintlayout/solver/Metrics;


# instance fields
.field public a:I

.field public final b:Landroidx/constraintlayout/solver/PriorityGoalRow;

.field public c:I

.field public d:I

.field public e:[Landroidx/constraintlayout/solver/ArrayRow;

.field public f:[Z

.field public g:I

.field public graphOptimizer:Z

.field public h:I

.field public i:I

.field public final j:Landroidx/constraintlayout/solver/Cache;

.field public k:[Landroidx/constraintlayout/solver/SolverVariable;

.field public l:I

.field public m:Landroidx/constraintlayout/solver/ArrayRow;

.field public newgraphOptimizer:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->a:I

    const/16 v1, 0x20

    .line 58
    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->c:I

    .line 59
    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->d:I

    const/4 v2, 0x0

    .line 60
    iput-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 63
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->graphOptimizer:Z

    .line 64
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->newgraphOptimizer:Z

    .line 67
    new-array v2, v1, [Z

    iput-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->f:[Z

    const/4 v2, 0x1

    .line 69
    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->g:I

    .line 70
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    .line 71
    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->i:I

    .line 75
    sget v2, Landroidx/constraintlayout/solver/LinearSystem;->n:I

    new-array v2, v2, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->k:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 76
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->l:I

    .line 89
    new-array v0, v1, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 90
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->g()V

    .line 91
    new-instance v0, Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/Cache;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->j:Landroidx/constraintlayout/solver/Cache;

    .line 92
    new-instance v1, Landroidx/constraintlayout/solver/PriorityGoalRow;

    invoke-direct {v1, v0}, Landroidx/constraintlayout/solver/PriorityGoalRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->b:Landroidx/constraintlayout/solver/PriorityGoalRow;

    .line 93
    sget-boolean v1, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Landroidx/constraintlayout/solver/LinearSystem$b;

    invoke-direct {v1, p0, v0}, Landroidx/constraintlayout/solver/LinearSystem$b;-><init>(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/Cache;)V

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->m:Landroidx/constraintlayout/solver/ArrayRow;

    return-void

    .line 96
    :cond_0
    new-instance v1, Landroidx/constraintlayout/solver/ArrayRow;

    invoke-direct {v1, v0}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->m:Landroidx/constraintlayout/solver/ArrayRow;

    return-void
.end method

.method public static createRowDimensionPercent(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 2

    .line 1277
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object p0

    .line 356
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    const/high16 v1, -0x40800000    # -1.0f

    .line 356
    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 357
    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p2, p3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    return-object p0
.end method

.method public static getMetrics()Landroidx/constraintlayout/solver/Metrics;
    .locals 1

    .line 105
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    return-object v0
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 2

    .line 352
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->j:Landroidx/constraintlayout/solver/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->c:Landroidx/constraintlayout/solver/a$b;

    invoke-interface {v0}, Landroidx/constraintlayout/solver/a$a;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/SolverVariable;

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Landroidx/constraintlayout/solver/SolverVariable;

    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;-><init>(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->setType(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/SolverVariable;->reset()V

    .line 358
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->setType(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    .line 360
    :goto_0
    iget p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->l:I

    sget p2, Landroidx/constraintlayout/solver/LinearSystem;->n:I

    if-lt p1, p2, :cond_1

    mul-int/lit8 p2, p2, 0x2

    .line 361
    sput p2, Landroidx/constraintlayout/solver/LinearSystem;->n:I

    .line 362
    iget-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->k:[Landroidx/constraintlayout/solver/SolverVariable;

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->k:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 364
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->k:[Landroidx/constraintlayout/solver/SolverVariable;

    iget p2, p0, Landroidx/constraintlayout/solver/LinearSystem;->l:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->l:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method public addCenterPoint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1292
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    .line 1293
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    .line 1294
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v13

    .line 1295
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    .line 1297
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 1298
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v10

    .line 1299
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    .line 1300
    invoke-virtual {v2, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v11

    .line 1302
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    move/from16 v2, p3

    float-to-double v4, v2

    .line 1303
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    move/from16 v2, p4

    move-object/from16 p1, v1

    int-to-double v1, v2

    mul-double v14, v14, v1

    double-to-float v12, v14

    .line 1304
    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/solver/ArrayRow;->createRowWithAngle(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1305
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    move-wide v7, v4

    .line 1306
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v5

    .line 1307
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v7, v7, v1

    double-to-float v10, v7

    move-object/from16 v8, p1

    move-object v9, v3

    move-object v7, v13

    .line 1308
    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/solver/ArrayRow;->createRowWithAngle(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1309
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method public addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 6

    .line 1178
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_0

    .line 307
    iget-object p3, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 307
    invoke-interface {p3, p1, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 308
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p6, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 309
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    const/high16 p3, -0x40000000    # -2.0f

    invoke-interface {p1, p2, p3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto/16 :goto_0

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, p4, v2

    if-nez v2, :cond_2

    .line 319
    iget-object p4, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 319
    invoke-interface {p4, p1, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 320
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p2, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 321
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p5, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 322
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p6, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    if-gtz p3, :cond_1

    if-lez p7, :cond_6

    :cond_1
    neg-int p1, p3

    add-int/2addr p1, p7

    int-to-float p1, p1

    .line 324
    iput p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_3

    .line 328
    iget-object p4, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 328
    invoke-interface {p4, p1, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 329
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p2, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    int-to-float p1, p3

    .line 330
    iput p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    goto :goto_0

    :cond_3
    cmpl-float v2, p4, v1

    if-ltz v2, :cond_4

    .line 333
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 333
    invoke-interface {p1, p6, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 334
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p5, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    neg-int p1, p7

    int-to-float p1, p1

    .line 335
    iput p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    goto :goto_0

    .line 337
    :cond_4
    iget-object v2, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    sub-float v4, v1, p4

    mul-float v5, v4, v1

    .line 337
    invoke-interface {v2, p1, v5}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 338
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    mul-float v2, v4, v3

    invoke-interface {p1, p2, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 339
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    mul-float v3, v3, p4

    invoke-interface {p1, p5, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 340
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    mul-float v1, v1, p4

    invoke-interface {p1, p6, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    if-gtz p3, :cond_5

    if-lez p7, :cond_6

    :cond_5
    neg-int p1, p3

    int-to-float p1, p1

    mul-float p1, p1, v4

    int-to-float p2, p7

    mul-float p2, p2, p4

    add-float/2addr p2, p1

    .line 342
    iput p2, v0, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    :cond_6
    :goto_0
    const/16 p1, 0x8

    if-eq p8, p1, :cond_7

    .line 1181
    invoke-virtual {v0, p0, p8}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1183
    :cond_7
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method public addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_a

    .line 520
    :cond_0
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_1

    .line 521
    iget-wide v5, v2, Landroidx/constraintlayout/solver/Metrics;->constraints:J

    add-long/2addr v5, v3

    iput-wide v5, v2, Landroidx/constraintlayout/solver/Metrics;->constraints:J

    .line 522
    iget-boolean v5, v1, Landroidx/constraintlayout/solver/ArrayRow;->d:Z

    if-eqz v5, :cond_1

    .line 523
    iget-wide v5, v2, Landroidx/constraintlayout/solver/Metrics;->simpleconstraints:J

    add-long/2addr v5, v3

    iput-wide v5, v2, Landroidx/constraintlayout/solver/Metrics;->simpleconstraints:J

    .line 526
    :cond_1
    iget v2, v0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    const/4 v5, 0x1

    add-int/2addr v2, v5

    iget v6, v0, Landroidx/constraintlayout/solver/LinearSystem;->i:I

    if-ge v2, v6, :cond_2

    iget v2, v0, Landroidx/constraintlayout/solver/LinearSystem;->g:I

    add-int/2addr v2, v5

    iget v6, v0, Landroidx/constraintlayout/solver/LinearSystem;->d:I

    if-lt v2, v6, :cond_3

    .line 527
    :cond_2
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/LinearSystem;->d()V

    .line 534
    :cond_3
    iget-boolean v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->d:Z

    if-nez v2, :cond_18

    .line 536
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/ArrayRow;->updateFromSystem(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 538
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/ArrayRow;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_a

    .line 415
    :cond_4
    iget v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    const/4 v7, 0x0

    cmpg-float v8, v2, v7

    if-gez v8, :cond_5

    const/high16 v8, -0x40800000    # -1.0f

    mul-float v2, v2, v8

    .line 417
    iput v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 418
    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->invert()V

    .line 464
    :cond_5
    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v2

    const/4 v8, 0x0

    move-object v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v10, v2, :cond_e

    .line 466
    iget-object v15, v1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v15, v10}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    move-result v15

    move-wide/from16 v16, v3

    .line 467
    iget-object v3, v1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v3, v10}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    .line 468
    iget-object v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->e:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v6, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v4, v6, :cond_9

    if-nez v8, :cond_7

    .line 532
    iget v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    if-gt v4, v5, :cond_6

    :goto_1
    const/4 v12, 0x1

    goto :goto_2

    :cond_6
    const/4 v12, 0x0

    :goto_2
    move-object v8, v3

    move v11, v15

    goto :goto_5

    :cond_7
    cmpl-float v4, v11, v15

    if-lez v4, :cond_8

    .line 532
    iget v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    if-gt v4, v5, :cond_6

    goto :goto_1

    :cond_8
    if-nez v12, :cond_d

    .line 532
    iget v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    if-gt v4, v5, :cond_d

    move-object v8, v3

    move v11, v15

    const/4 v12, 0x1

    goto :goto_5

    :cond_9
    if-nez v8, :cond_d

    cmpg-float v4, v15, v7

    if-gez v4, :cond_d

    if-nez v9, :cond_b

    .line 532
    iget v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    if-gt v4, v5, :cond_a

    :goto_3
    const/4 v14, 0x1

    goto :goto_4

    :cond_a
    const/4 v14, 0x0

    :goto_4
    move-object v9, v3

    move v13, v15

    goto :goto_5

    :cond_b
    cmpl-float v4, v13, v15

    if-lez v4, :cond_c

    .line 532
    iget v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    if-gt v4, v5, :cond_a

    goto :goto_3

    :cond_c
    if-nez v14, :cond_d

    .line 532
    iget v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    if-gt v4, v5, :cond_d

    move-object v9, v3

    move v13, v15

    const/4 v14, 0x1

    :cond_d
    :goto_5
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v3, v16

    goto :goto_0

    :cond_e
    move-wide/from16 v16, v3

    if-eqz v8, :cond_f

    goto :goto_6

    :cond_f
    move-object v8, v9

    :goto_6
    if-nez v8, :cond_10

    const/4 v2, 0x1

    goto :goto_7

    .line 437
    :cond_10
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/solver/ArrayRow;->b(Landroidx/constraintlayout/solver/SolverVariable;)V

    const/4 v2, 0x0

    .line 439
    :goto_7
    iget-object v3, v1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v3

    if-nez v3, :cond_11

    .line 440
    iput-boolean v5, v1, Landroidx/constraintlayout/solver/ArrayRow;->d:Z

    :cond_11
    if-eqz v2, :cond_15

    .line 552
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/LinearSystem;->createExtraVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    .line 553
    iput-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 554
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/solver/LinearSystem;->b(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 556
    iget-object v3, v0, Landroidx/constraintlayout/solver/LinearSystem;->m:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-interface {v3, v1}, Landroidx/constraintlayout/solver/LinearSystem$a;->initFromRow(Landroidx/constraintlayout/solver/LinearSystem$a;)V

    .line 557
    iget-object v3, v0, Landroidx/constraintlayout/solver/LinearSystem;->m:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/solver/LinearSystem;->f(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 558
    iget v3, v2, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    .line 562
    iget-object v3, v1, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    if-ne v3, v2, :cond_13

    .line 564
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/ArrayRow;->pickPivot(Landroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 566
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v3, :cond_12

    .line 567
    iget-wide v8, v3, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    add-long v8, v8, v16

    iput-wide v8, v3, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    .line 569
    :cond_12
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/ArrayRow;->b(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 572
    :cond_13
    iget-boolean v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->d:Z

    if-nez v2, :cond_14

    .line 573
    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 575
    :cond_14
    iget v2, v0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    sub-int/2addr v2, v5

    iput v2, v0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    goto :goto_8

    :cond_15
    const/4 v5, 0x0

    .line 63
    :cond_16
    :goto_8
    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    if-eqz v2, :cond_19

    iget-object v2, v2, Landroidx/constraintlayout/solver/SolverVariable;->e:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v3, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-eq v2, v3, :cond_17

    iget v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    cmpg-float v2, v2, v7

    if-ltz v2, :cond_19

    :cond_17
    move v6, v5

    goto :goto_9

    :cond_18
    const/4 v6, 0x0

    :goto_9
    if-nez v6, :cond_19

    .line 589
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/solver/LinearSystem;->b(Landroidx/constraintlayout/solver/ArrayRow;)V

    :cond_19
    :goto_a
    return-void
.end method

.method public addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 3

    const/16 v0, 0x8

    if-ne p4, v0, :cond_0

    .line 1205
    iget-boolean v1, p2, Landroidx/constraintlayout/solver/SolverVariable;->isFinalValue:Z

    if-eqz v1, :cond_0

    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1209
    iget p2, p2, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/solver/SolverVariable;->setFinalValue(Landroidx/constraintlayout/solver/LinearSystem;F)V

    const/4 p1, 0x0

    return-object p1

    .line 1215
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v1

    .line 1216
    invoke-virtual {v1, p1, p2, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    if-eq p4, v0, :cond_1

    .line 1218
    invoke-virtual {v1, p0, p4}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1220
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-object v1
.end method

.method public addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V
    .locals 3

    .line 1230
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    int-to-float p2, p2

    .line 1234
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/solver/SolverVariable;->setFinalValue(Landroidx/constraintlayout/solver/LinearSystem;F)V

    return-void

    :cond_0
    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    .line 1242
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v0, v1, v0

    .line 1243
    iget-boolean v1, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Z

    if-eqz v1, :cond_1

    int-to-float p1, p2

    .line 1244
    iput p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    return-void

    .line 1246
    :cond_1
    iget-object v1, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v1

    if-nez v1, :cond_2

    .line 1247
    iput-boolean v2, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Z

    int-to-float p1, p2

    .line 1248
    iput p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    return-void

    .line 1250
    :cond_2
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1251
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1252
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void

    .line 1256
    :cond_3
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 139
    iput-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    int-to-float p2, p2

    .line 140
    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    .line 141
    iput p2, v0, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 142
    iput-boolean v2, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Z

    .line 1258
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method public addGreaterBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)V
    .locals 2

    .line 1119
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object p4

    .line 1120
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    const/4 v1, 0x0

    .line 1121
    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1122
    invoke-virtual {p4, p1, p2, v0, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1123
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method public addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 3

    .line 1104
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1105
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    .line 1106
    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1107
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    .line 1109
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    .line 305
    invoke-virtual {p0, p4, p2}, Landroidx/constraintlayout/solver/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p2

    .line 178
    iget-object p3, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    int-to-float p1, p1

    .line 178
    invoke-interface {p3, p2, p1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 1112
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method public addLowerBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)V
    .locals 2

    .line 1152
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object p4

    .line 1153
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    const/4 v1, 0x0

    .line 1154
    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1155
    invoke-virtual {p4, p1, p2, v0, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1156
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method public addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 3

    .line 1137
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1138
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    .line 1139
    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1140
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    .line 1142
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    .line 305
    invoke-virtual {p0, p4, p2}, Landroidx/constraintlayout/solver/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p2

    .line 178
    iget-object p3, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    int-to-float p1, p1

    .line 178
    invoke-interface {p3, p2, p1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 1145
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method public addRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V
    .locals 6

    .line 1190
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1191
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDimensionRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    const/16 p1, 0x8

    if-eq p6, p1, :cond_0

    .line 1193
    invoke-virtual {v0, p0, p6}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1195
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method public final b(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 3

    .line 594
    sget-boolean v0, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->j:Landroidx/constraintlayout/solver/Cache;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    .line 596
    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->a:Landroidx/constraintlayout/solver/a$b;

    invoke-interface {v1, v0}, Landroidx/constraintlayout/solver/a$a;->release(Ljava/lang/Object;)Z

    goto :goto_0

    .line 599
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    .line 600
    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->b:Landroidx/constraintlayout/solver/a$b;

    invoke-interface {v1, v0}, Landroidx/constraintlayout/solver/a$a;->release(Ljava/lang/Object;)Z

    .line 606
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    aput-object p1, v0, v1

    .line 607
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    add-int/lit8 v1, v1, 0x1

    .line 608
    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    .line 609
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Display Rows ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1045
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 5

    .line 330
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_0

    .line 331
    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->errors:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->errors:J

    .line 333
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->g:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->d:I

    if-lt v0, v1, :cond_1

    .line 334
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->d()V

    .line 336
    :cond_1
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    invoke-virtual {p0, v0, p2}, Landroidx/constraintlayout/solver/LinearSystem;->a(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p2

    .line 337
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->a:I

    .line 338
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->g:I

    .line 339
    iput v0, p2, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 340
    iput p1, p2, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 341
    iget-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->j:Landroidx/constraintlayout/solver/Cache;

    iget-object p1, p1, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    aput-object p2, p1, v0

    .line 342
    iget-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->b:Landroidx/constraintlayout/solver/PriorityGoalRow;

    invoke-interface {p1, p2}, Landroidx/constraintlayout/solver/LinearSystem$a;->addError(Landroidx/constraintlayout/solver/SolverVariable;)V

    return-object p2
.end method

.method public createExtraVariable()Landroidx/constraintlayout/solver/SolverVariable;
    .locals 5

    .line 273
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_0

    .line 274
    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->extravariables:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->extravariables:J

    .line 276
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->g:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->d:I

    if-lt v0, v1, :cond_1

    .line 277
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->d()V

    .line 279
    :cond_1
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->a(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 280
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->a:I

    .line 281
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->g:I

    .line 282
    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 283
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->j:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 205
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->g:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->d:I

    if-lt v1, v2, :cond_1

    .line 206
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->d()V

    .line 209
    :cond_1
    instance-of v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_6

    .line 210
    check-cast p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 211
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->j:Landroidx/constraintlayout/solver/Cache;

    if-nez v0, :cond_2

    .line 212
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 213
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 215
    :cond_2
    iget p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_4

    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->a:I

    if-gt p1, v3, :cond_4

    iget-object v3, v1, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v3, v3, p1

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    if-eq p1, v2, :cond_5

    .line 219
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/SolverVariable;->reset()V

    .line 221
    :cond_5
    iget p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->a:I

    .line 222
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->g:I

    .line 223
    iput p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 224
    sget-object v2, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    iput-object v2, v0, Landroidx/constraintlayout/solver/SolverVariable;->e:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 225
    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    aput-object v0, v1, p1

    :cond_6
    return-object v0
.end method

.method public createRow()Landroidx/constraintlayout/solver/ArrayRow;
    .locals 5

    .line 236
    sget-boolean v0, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    const-wide/16 v1, 0x1

    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->j:Landroidx/constraintlayout/solver/Cache;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, v3, Landroidx/constraintlayout/solver/Cache;->a:Landroidx/constraintlayout/solver/a$b;

    invoke-interface {v0}, Landroidx/constraintlayout/solver/a$a;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/ArrayRow;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Landroidx/constraintlayout/solver/LinearSystem$b;

    invoke-direct {v0, p0, v3}, Landroidx/constraintlayout/solver/LinearSystem$b;-><init>(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/Cache;)V

    .line 240
    sget-wide v3, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ARRAY_ROW_CREATION:J

    add-long/2addr v3, v1

    sput-wide v3, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ARRAY_ROW_CREATION:J

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/ArrayRow;->reset()V

    goto :goto_0

    .line 245
    :cond_1
    iget-object v0, v3, Landroidx/constraintlayout/solver/Cache;->b:Landroidx/constraintlayout/solver/a$b;

    invoke-interface {v0}, Landroidx/constraintlayout/solver/a$a;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/ArrayRow;

    if-nez v0, :cond_2

    .line 247
    new-instance v0, Landroidx/constraintlayout/solver/ArrayRow;

    invoke-direct {v0, v3}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    .line 248
    sget-wide v3, Landroidx/constraintlayout/solver/LinearSystem;->ARRAY_ROW_CREATION:J

    add-long/2addr v3, v1

    sput-wide v3, Landroidx/constraintlayout/solver/LinearSystem;->ARRAY_ROW_CREATION:J

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/ArrayRow;->reset()V

    :goto_0
    return-object v0
.end method

.method public createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;
    .locals 5

    .line 258
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_0

    .line 259
    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->slackvariables:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->slackvariables:J

    .line 261
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->g:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->d:I

    if-lt v0, v1, :cond_1

    .line 262
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->d()V

    .line 264
    :cond_1
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->a(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 265
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->a:I

    .line 266
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->g:I

    .line 267
    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 268
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->j:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public final d()V
    .locals 6

    .line 129
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->c:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->c:I

    .line 130
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 131
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->j:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v0, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->c:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v1, v0, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 132
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->c:I

    new-array v1, v0, [Z

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->f:[Z

    .line 133
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->d:I

    .line 134
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->i:I

    .line 135
    sget-object v1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v1, :cond_0

    .line 136
    iget-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->tableSizeIncrease:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->tableSizeIncrease:J

    .line 137
    iget-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->maxTableSize:J

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->maxTableSize:J

    .line 138
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->maxTableSize:J

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->lastTableSize:J

    :cond_0
    return-void
.end method

.method public displayReadableRows()V
    .locals 6

    .line 957
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->c()V

    .line 959
    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->a:I

    const-string v4, "\n"

    if-ge v2, v3, :cond_1

    .line 960
    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->j:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 961
    iget-boolean v5, v3, Landroidx/constraintlayout/solver/SolverVariable;->isFinalValue:Z

    if-eqz v5, :cond_0

    .line 962
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " $["

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] => "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 965
    :cond_1
    const-string v2, "\n\n #  "

    .line 0
    invoke-static {v0, v2}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 966
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    if-ge v1, v2, :cond_2

    .line 0
    invoke-static {v0}, L_COROUTINE/a;->p(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 967
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/ArrayRow;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 968
    const-string v2, "\n #  "

    .line 0
    invoke-static {v0, v2}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 970
    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->b:Landroidx/constraintlayout/solver/PriorityGoalRow;

    if-eqz v1, :cond_3

    .line 971
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Goal: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 973
    :cond_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public displayVariablesReadableRows()V
    .locals 5

    .line 978
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->c()V

    .line 980
    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    const-string v3, "\n"

    if-ge v1, v2, :cond_1

    .line 981
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v2, Landroidx/constraintlayout/solver/SolverVariable;->e:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v4, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v2, v4, :cond_0

    .line 0
    invoke-static {v0}, L_COROUTINE/a;->p(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 982
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/ArrayRow;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 0
    invoke-static {v0, v3}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 0
    :cond_1
    invoke-static {v0}, L_COROUTINE/a;->p(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 986
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->b:Landroidx/constraintlayout/solver/PriorityGoalRow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 987
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Landroidx/constraintlayout/solver/PriorityGoalRow;)V
    .locals 20

    move-object/from16 v0, p0

    .line 463
    sget-object v1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    .line 464
    iget-wide v4, v1, Landroidx/constraintlayout/solver/Metrics;->minimizeGoal:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Landroidx/constraintlayout/solver/Metrics;->minimizeGoal:J

    .line 465
    iget-wide v4, v1, Landroidx/constraintlayout/solver/Metrics;->maxVariables:J

    iget v6, v0, Landroidx/constraintlayout/solver/LinearSystem;->g:I

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Landroidx/constraintlayout/solver/Metrics;->maxVariables:J

    .line 466
    sget-object v1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v4, v1, Landroidx/constraintlayout/solver/Metrics;->maxRows:J

    iget v6, v0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Landroidx/constraintlayout/solver/Metrics;->maxRows:J

    :cond_0
    const/4 v4, 0x0

    .line 800
    :goto_0
    iget v5, v0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    if-ge v4, v5, :cond_10

    .line 801
    iget-object v5, v0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v5, v5, v4

    iget-object v6, v5, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 802
    iget-object v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->e:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v7, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v6, v7, :cond_2

    :cond_1
    move-wide/from16 v16, v2

    goto/16 :goto_8

    .line 805
    :cond_2
    iget v5, v5, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-nez v4, :cond_10

    .line 823
    sget-object v7, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v7, :cond_3

    .line 824
    iget-wide v8, v7, Landroidx/constraintlayout/solver/Metrics;->bfs:J

    add-long/2addr v8, v2

    iput-wide v8, v7, Landroidx/constraintlayout/solver/Metrics;->bfs:J

    :cond_3
    const/4 v7, 0x1

    add-int/2addr v5, v7

    const/4 v8, -0x1

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    .line 835
    :goto_2
    iget v14, v0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    iget-object v15, v0, Landroidx/constraintlayout/solver/LinearSystem;->j:Landroidx/constraintlayout/solver/Cache;

    if-ge v10, v14, :cond_c

    .line 836
    iget-object v14, v0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v14, v14, v10

    .line 837
    iget-object v1, v14, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 838
    iget-object v1, v1, Landroidx/constraintlayout/solver/SolverVariable;->e:Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-wide/from16 v16, v2

    sget-object v2, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v1, v2, :cond_4

    goto :goto_6

    .line 843
    :cond_4
    iget-boolean v1, v14, Landroidx/constraintlayout/solver/ArrayRow;->d:Z

    if-eqz v1, :cond_5

    goto :goto_6

    .line 846
    :cond_5
    iget v1, v14, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_b

    const/4 v1, 0x1

    .line 851
    :goto_3
    iget v2, v0, Landroidx/constraintlayout/solver/LinearSystem;->g:I

    if-ge v1, v2, :cond_b

    .line 852
    iget-object v2, v15, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v2, v2, v1

    .line 853
    iget-object v3, v14, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v3, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v3

    cmpg-float v18, v3, v6

    if-gtz v18, :cond_6

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_4
    const/16 v7, 0x9

    if-ge v6, v7, :cond_a

    .line 861
    iget-object v7, v2, Landroidx/constraintlayout/solver/SolverVariable;->c:[F

    aget v7, v7, v6

    div-float/2addr v7, v3

    cmpg-float v19, v7, v9

    if-gez v19, :cond_7

    if-eq v6, v13, :cond_8

    :cond_7
    if-le v6, v13, :cond_9

    :cond_8
    move v12, v1

    move v13, v6

    move v9, v7

    move v11, v10

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_3

    :cond_b
    :goto_6
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v2, v16

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_2

    :cond_c
    move-wide/from16 v16, v2

    if-eq v11, v8, :cond_e

    .line 875
    iget-object v1, v0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v1, v1, v11

    .line 880
    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iput v8, v2, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    .line 881
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v2, :cond_d

    .line 882
    iget-wide v6, v2, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    add-long v6, v6, v16

    iput-wide v6, v2, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    .line 884
    :cond_d
    iget-object v2, v15, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v2, v2, v12

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/ArrayRow;->b(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 885
    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iput v11, v2, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    .line 886
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_7

    :cond_e
    const/4 v4, 0x1

    .line 895
    :goto_7
    iget v1, v0, Landroidx/constraintlayout/solver/LinearSystem;->g:I

    div-int/lit8 v1, v1, 0x2

    if-le v5, v1, :cond_f

    const/4 v4, 0x1

    :cond_f
    move-wide/from16 v2, v16

    const/4 v6, 0x0

    goto/16 :goto_1

    :goto_8
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v2, v16

    goto/16 :goto_0

    .line 483
    :cond_10
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/solver/LinearSystem;->f(Landroidx/constraintlayout/solver/ArrayRow;)V

    const/4 v1, 0x0

    .line 934
    :goto_9
    iget v2, v0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    if-ge v1, v2, :cond_11

    .line 935
    iget-object v2, v0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v2, v2, v1

    .line 936
    iget-object v3, v2, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, v2, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    iput v2, v3, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_11
    return-void
.end method

.method public final f(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 13

    .line 637
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    .line 638
    iget-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->optimize:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->optimize:J

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 642
    :goto_0
    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->g:I

    if-ge v3, v4, :cond_1

    .line 643
    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->f:[Z

    aput-boolean v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_2
    :goto_1
    if-nez v3, :cond_e

    .line 655
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v5, :cond_3

    .line 656
    iget-wide v6, v5, Landroidx/constraintlayout/solver/Metrics;->iterations:J

    add-long/2addr v6, v1

    iput-wide v6, v5, Landroidx/constraintlayout/solver/Metrics;->iterations:J

    :cond_3
    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 663
    iget v6, p0, Landroidx/constraintlayout/solver/LinearSystem;->g:I

    mul-int/lit8 v6, v6, 0x2

    if-lt v4, v6, :cond_4

    goto/16 :goto_4

    .line 670
    :cond_4
    invoke-interface {p1}, Landroidx/constraintlayout/solver/LinearSystem$a;->getKey()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 671
    iget-object v6, p0, Landroidx/constraintlayout/solver/LinearSystem;->f:[Z

    invoke-interface {p1}, Landroidx/constraintlayout/solver/LinearSystem$a;->getKey()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    iget v7, v7, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput-boolean v5, v6, v7

    .line 673
    :cond_5
    iget-object v6, p0, Landroidx/constraintlayout/solver/LinearSystem;->f:[Z

    invoke-interface {p1, p0, v6}, Landroidx/constraintlayout/solver/LinearSystem$a;->getPivotCandidate(Landroidx/constraintlayout/solver/LinearSystem;[Z)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 679
    iget-object v7, p0, Landroidx/constraintlayout/solver/LinearSystem;->f:[Z

    iget v8, v6, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-boolean v9, v7, v8

    if-eqz v9, :cond_6

    goto :goto_4

    .line 685
    :cond_6
    aput-boolean v5, v7, v8

    :cond_7
    if-eqz v6, :cond_d

    const/4 v5, -0x1

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 706
    :goto_2
    iget v10, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    if-ge v8, v10, :cond_b

    .line 707
    iget-object v10, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v10, v10, v8

    .line 708
    iget-object v11, v10, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 709
    iget-object v11, v11, Landroidx/constraintlayout/solver/SolverVariable;->e:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v12, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v11, v12, :cond_8

    goto :goto_3

    .line 713
    :cond_8
    iget-boolean v11, v10, Landroidx/constraintlayout/solver/ArrayRow;->d:Z

    if-eqz v11, :cond_9

    goto :goto_3

    .line 135
    :cond_9
    iget-object v11, v10, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v11, v6}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->contains(Landroidx/constraintlayout/solver/SolverVariable;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 723
    iget-object v11, v10, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v11, v6}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v11

    const/4 v12, 0x0

    cmpg-float v12, v11, v12

    if-gez v12, :cond_a

    .line 725
    iget v10, v10, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    neg-float v10, v10

    div-float/2addr v10, v11

    cmpg-float v11, v10, v7

    if-gez v11, :cond_a

    move v9, v8

    move v7, v10

    :cond_a
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_b
    if-le v9, v5, :cond_2

    .line 740
    iget-object v7, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v7, v7, v9

    .line 741
    iget-object v8, v7, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iput v5, v8, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    .line 742
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v5, :cond_c

    .line 743
    iget-wide v10, v5, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    add-long/2addr v10, v1

    iput-wide v10, v5, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    .line 745
    :cond_c
    invoke-virtual {v7, v6}, Landroidx/constraintlayout/solver/ArrayRow;->b(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 746
    iget-object v5, v7, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iput v9, v5, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    .line 747
    invoke-virtual {v5, v7}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto/16 :goto_1

    :cond_d
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_e
    :goto_4
    return-void
.end method

.method public fillMetrics(Landroidx/constraintlayout/solver/Metrics;)V
    .locals 0

    .line 101
    sput-object p1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    return-void
.end method

.method public final g()V
    .locals 5

    .line 146
    sget-boolean v0, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->j:Landroidx/constraintlayout/solver/Cache;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 147
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 148
    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    .line 150
    iget-object v4, v2, Landroidx/constraintlayout/solver/Cache;->a:Landroidx/constraintlayout/solver/a$b;

    invoke-interface {v4, v0}, Landroidx/constraintlayout/solver/a$a;->release(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    aput-object v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 156
    aget-object v0, v0, v3

    if-eqz v0, :cond_2

    .line 158
    iget-object v4, v2, Landroidx/constraintlayout/solver/Cache;->b:Landroidx/constraintlayout/solver/a$b;

    invoke-interface {v4, v0}, Landroidx/constraintlayout/solver/a$a;->release(Ljava/lang/Object;)Z

    .line 160
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    aput-object v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getCache()Landroidx/constraintlayout/solver/Cache;
    .locals 1

    .line 1061
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->j:Landroidx/constraintlayout/solver/Cache;

    return-object v0
.end method

.method public getMemoryUsed()I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 993
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    if-ge v1, v3, :cond_2

    .line 994
    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    .line 403
    iget-object v4, v3, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v4, v4, 0x8

    .line 409
    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->sizeInBytes()I

    move-result v3

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public getNumEquations()I
    .locals 1

    .line 1002
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    return v0
.end method

.method public getNumVariables()I
    .locals 1

    .line 1004
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->a:I

    return v0
.end method

.method public getObjectVariableValue(Ljava/lang/Object;)I
    .locals 1

    .line 391
    check-cast p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 393
    iget p1, p1, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public minimize()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 424
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    .line 425
    iget-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->minimize:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->minimize:J

    .line 430
    :cond_0
    iget-boolean v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->graphOptimizer:Z

    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->b:Landroidx/constraintlayout/solver/PriorityGoalRow;

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->newgraphOptimizer:Z

    if-eqz v3, :cond_1

    goto :goto_0

    .line 451
    :cond_1
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/PriorityGoalRow;)V

    return-void

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 432
    iget-wide v5, v0, Landroidx/constraintlayout/solver/Metrics;->graphOptimizer:J

    add-long/2addr v5, v1

    iput-wide v5, v0, Landroidx/constraintlayout/solver/Metrics;->graphOptimizer:J

    :cond_3
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 435
    :goto_1
    iget v5, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    if-ge v3, v5, :cond_5

    .line 436
    iget-object v5, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v5, v5, v3

    .line 437
    iget-boolean v5, v5, Landroidx/constraintlayout/solver/ArrayRow;->d:Z

    if-nez v5, :cond_4

    .line 443
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/PriorityGoalRow;)V

    return-void

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 445
    :cond_5
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v3, :cond_6

    .line 446
    iget-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->fullySolved:J

    add-long/2addr v4, v1

    iput-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->fullySolved:J

    .line 934
    :cond_6
    :goto_2
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    if-ge v0, v1, :cond_7

    .line 935
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v1, v1, v0

    .line 936
    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iget v1, v1, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    iput v1, v2, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public removeRow(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 4

    .line 619
    iget-boolean v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    if-eqz v0, :cond_2

    .line 620
    iget v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 621
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 622
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    add-int/lit8 v2, v0, 0x1

    aget-object v3, v1, v2

    aput-object v3, v1, v0

    move v0, v2

    goto :goto_0

    .line 624
    :cond_0
    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    .line 626
    :cond_1
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iget p1, p1, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/solver/SolverVariable;->setFinalValue(Landroidx/constraintlayout/solver/LinearSystem;F)V

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 169
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->j:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v2, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 170
    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    .line 172
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/SolverVariable;->reset()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_1
    iget-object v1, v2, Landroidx/constraintlayout/solver/Cache;->c:Landroidx/constraintlayout/solver/a$b;

    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->k:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->l:I

    invoke-interface {v1, v3, v4}, Landroidx/constraintlayout/solver/a$a;->releaseAll([Ljava/lang/Object;I)V

    .line 176
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->l:I

    .line 178
    iget-object v1, v2, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->a:I

    .line 183
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->b:Landroidx/constraintlayout/solver/PriorityGoalRow;

    invoke-interface {v1}, Landroidx/constraintlayout/solver/LinearSystem$a;->clear()V

    const/4 v1, 0x1

    .line 184
    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->g:I

    const/4 v1, 0x0

    .line 185
    :goto_1
    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    if-ge v1, v3, :cond_2

    .line 186
    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 188
    :cond_2
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->g()V

    .line 189
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->h:I

    .line 190
    sget-boolean v0, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    if-eqz v0, :cond_3

    .line 191
    new-instance v0, Landroidx/constraintlayout/solver/LinearSystem$b;

    invoke-direct {v0, p0, v2}, Landroidx/constraintlayout/solver/LinearSystem$b;-><init>(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/Cache;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->m:Landroidx/constraintlayout/solver/ArrayRow;

    return-void

    .line 193
    :cond_3
    new-instance v0, Landroidx/constraintlayout/solver/ArrayRow;

    invoke-direct {v0, v2}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->m:Landroidx/constraintlayout/solver/ArrayRow;

    return-void
.end method
