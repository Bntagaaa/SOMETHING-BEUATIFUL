.class Landroidx/constraintlayout/solver/widgets/Flow$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/widgets/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public c:I

.field public d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public g:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public final synthetic r:Landroidx/constraintlayout/solver/widgets/Flow;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V
    .locals 1

    .line 353
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->r:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 333
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v0, 0x0

    .line 334
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->c:I

    .line 339
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->h:I

    .line 340
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->i:I

    .line 341
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->j:I

    .line 342
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->k:I

    .line 343
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->l:I

    .line 344
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->m:I

    .line 345
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->n:I

    .line 346
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->o:I

    .line 347
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->p:I

    .line 348
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->q:I

    .line 354
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->a:I

    .line 355
    iput-object p3, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 356
    iput-object p4, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 357
    iput-object p5, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 358
    iput-object p6, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->g:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 359
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingLeft()I

    move-result p2

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->h:I

    .line 360
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingTop()I

    move-result p2

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->i:I

    .line 361
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingRight()I

    move-result p2

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->j:I

    .line 362
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->k:I

    .line 363
    iput p7, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->q:I

    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 7

    .line 409
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->a:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->r:Landroidx/constraintlayout/solver/widgets/Flow;

    if-nez v0, :cond_3

    .line 410
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->q:I

    .line 32
    invoke-virtual {v3, p1, v0}, Landroidx/constraintlayout/solver/widgets/Flow;->e(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v0

    .line 411
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_0

    .line 412
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->p:I

    const/4 v0, 0x0

    .line 32
    :cond_0
    iget v4, v3, Landroidx/constraintlayout/solver/widgets/Flow;->W:I

    .line 416
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v5

    if-ne v5, v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 419
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->l:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->l:I

    .line 420
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->q:I

    .line 32
    invoke-virtual {v3, p1, v0}, Landroidx/constraintlayout/solver/widgets/Flow;->d(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v0

    .line 421
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->c:I

    if-ge v1, v0, :cond_7

    .line 422
    :cond_2
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 423
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->c:I

    .line 424
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->m:I

    goto :goto_2

    .line 427
    :cond_3
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->q:I

    .line 32
    invoke-virtual {v3, p1, v0}, Landroidx/constraintlayout/solver/widgets/Flow;->e(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v0

    .line 428
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->q:I

    .line 32
    invoke-virtual {v3, p1, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->d(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v4

    .line 429
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_4

    .line 430
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->p:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->p:I

    const/4 v4, 0x0

    .line 32
    :cond_4
    iget v3, v3, Landroidx/constraintlayout/solver/widgets/Flow;->X:I

    .line 434
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v5

    if-ne v5, v1, :cond_5

    goto :goto_1

    :cond_5
    move v2, v3

    .line 437
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->m:I

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->m:I

    .line 438
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_6

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->c:I

    if-ge v1, v0, :cond_7

    .line 439
    :cond_6
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 440
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->c:I

    .line 441
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->l:I

    .line 444
    :cond_7
    :goto_2
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->o:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->o:I

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 383
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->c:I

    const/4 v1, 0x0

    .line 384
    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 385
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->l:I

    .line 386
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->m:I

    .line 387
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->n:I

    .line 388
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->o:I

    .line 389
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->p:I

    return-void
.end method

.method public createConstraints(ZIZ)V
    .locals 17

    move-object/from16 v0, p0

    .line 448
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->o:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 449
    :goto_0
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->r:Landroidx/constraintlayout/solver/widgets/Flow;

    if-ge v3, v1, :cond_2

    .line 450
    iget v5, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->n:I

    add-int v6, v5, v3

    .line 32
    iget v7, v4, Landroidx/constraintlayout/solver/widgets/Flow;->i0:I

    if-lt v6, v7, :cond_0

    goto :goto_1

    .line 32
    :cond_0
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Flow;->h0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    add-int/2addr v5, v3

    .line 453
    aget-object v4, v4, v5

    if-eqz v4, :cond_1

    .line 455
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetAnchors()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_35

    .line 458
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v3, :cond_3

    goto/16 :goto_16

    :cond_3
    if-eqz p3, :cond_4

    if-nez p2, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    :goto_3
    if-ge v7, v1, :cond_9

    if-eqz p1, :cond_5

    add-int/lit8 v10, v1, -0x1

    sub-int/2addr v10, v7

    goto :goto_4

    :cond_5
    move v10, v7

    .line 470
    :goto_4
    iget v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->n:I

    add-int v12, v11, v10

    .line 32
    iget v13, v4, Landroidx/constraintlayout/solver/widgets/Flow;->i0:I

    if-lt v12, v13, :cond_6

    goto :goto_5

    .line 32
    :cond_6
    iget-object v12, v4, Landroidx/constraintlayout/solver/widgets/Flow;->h0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    add-int/2addr v11, v10

    .line 473
    aget-object v10, v12, v11

    .line 474
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    if-nez v10, :cond_8

    if-ne v8, v6, :cond_7

    move v8, v7

    :cond_7
    move v9, v7

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 483
    :cond_9
    :goto_5
    iget v7, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->a:I

    if-nez v7, :cond_1f

    .line 484
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 32
    iget v11, v4, Landroidx/constraintlayout/solver/widgets/Flow;->L:I

    .line 485
    invoke-virtual {v7, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 486
    iget v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->i:I

    if-lez p2, :cond_a

    .line 32
    iget v12, v4, Landroidx/constraintlayout/solver/widgets/Flow;->X:I

    add-int/2addr v11, v12

    .line 490
    :cond_a
    iget-object v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v12, v13, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    if-eqz p3, :cond_b

    .line 492
    iget-object v11, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->g:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->k:I

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    :cond_b
    if-lez p2, :cond_c

    .line 495
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 496
    iget-object v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 32
    :cond_c
    iget v11, v4, Landroidx/constraintlayout/solver/widgets/Flow;->Z:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_10

    .line 500
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v11

    if-nez v11, :cond_10

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v1, :cond_10

    if-eqz p1, :cond_d

    add-int/lit8 v13, v1, -0x1

    sub-int/2addr v13, v11

    goto :goto_7

    :cond_d
    move v13, v11

    .line 506
    :goto_7
    iget v14, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->n:I

    add-int v15, v14, v13

    .line 32
    iget v10, v4, Landroidx/constraintlayout/solver/widgets/Flow;->i0:I

    if-lt v15, v10, :cond_e

    goto :goto_8

    .line 32
    :cond_e
    iget-object v10, v4, Landroidx/constraintlayout/solver/widgets/Flow;->h0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    add-int/2addr v14, v13

    .line 509
    aget-object v10, v10, v14

    .line 510
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v13

    if-eqz v13, :cond_f

    goto :goto_9

    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_10
    :goto_8
    move-object v10, v7

    :goto_9
    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v1, :cond_35

    if-eqz p1, :cond_11

    add-int/lit8 v14, v1, -0x1

    sub-int/2addr v14, v13

    goto :goto_b

    :cond_11
    move v14, v13

    .line 522
    :goto_b
    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->n:I

    const/16 v16, 0x1

    add-int v3, v15, v14

    .line 32
    iget v12, v4, Landroidx/constraintlayout/solver/widgets/Flow;->i0:I

    if-lt v3, v12, :cond_12

    goto/16 :goto_16

    .line 32
    :cond_12
    iget-object v3, v4, Landroidx/constraintlayout/solver/widgets/Flow;->h0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    add-int/2addr v15, v14

    .line 525
    aget-object v3, v3, v15

    if-nez v13, :cond_13

    .line 527
    iget-object v12, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v2, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->h:I

    invoke-virtual {v3, v12, v15, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_13
    if-nez v14, :cond_16

    .line 32
    iget v2, v4, Landroidx/constraintlayout/solver/widgets/Flow;->K:I

    .line 32
    iget v12, v4, Landroidx/constraintlayout/solver/widgets/Flow;->Q:F

    .line 535
    iget v14, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->n:I

    if-nez v14, :cond_14

    .line 32
    iget v14, v4, Landroidx/constraintlayout/solver/widgets/Flow;->M:I

    if-eq v14, v6, :cond_14

    .line 32
    iget v12, v4, Landroidx/constraintlayout/solver/widgets/Flow;->S:F

    :goto_c
    move v2, v14

    goto :goto_d

    :cond_14
    if-eqz p3, :cond_15

    .line 32
    iget v14, v4, Landroidx/constraintlayout/solver/widgets/Flow;->O:I

    if-eq v14, v6, :cond_15

    .line 32
    iget v12, v4, Landroidx/constraintlayout/solver/widgets/Flow;->U:F

    goto :goto_c

    .line 542
    :cond_15
    :goto_d
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 543
    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    :cond_16
    add-int/lit8 v2, v1, -0x1

    if-ne v13, v2, :cond_17

    .line 546
    iget-object v2, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v14, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->j:I

    invoke-virtual {v3, v2, v12, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_17
    if-eqz v11, :cond_19

    .line 549
    iget-object v2, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 32
    iget v14, v4, Landroidx/constraintlayout/solver/widgets/Flow;->W:I

    .line 549
    invoke-virtual {v2, v12, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    if-ne v13, v8, :cond_18

    .line 551
    iget-object v2, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->h:I

    invoke-virtual {v2, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 553
    :cond_18
    iget-object v2, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v14, 0x0

    invoke-virtual {v2, v12, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    add-int/lit8 v2, v9, 0x1

    if-ne v13, v2, :cond_19

    .line 555
    iget-object v2, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->j:I

    invoke-virtual {v2, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    :cond_19
    if-eq v3, v7, :cond_1e

    .line 32
    iget v2, v4, Landroidx/constraintlayout/solver/widgets/Flow;->Z:I

    const/4 v11, 0x3

    if-ne v2, v11, :cond_1a

    .line 560
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v2

    if-eqz v2, :cond_1a

    if-eq v3, v10, :cond_1a

    .line 562
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 563
    iget-object v2, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v14, 0x0

    invoke-virtual {v2, v12, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_e

    .line 32
    :cond_1a
    iget v2, v4, Landroidx/constraintlayout/solver/widgets/Flow;->Z:I

    if-eqz v2, :cond_1d

    const/4 v12, 0x1

    if-eq v2, v12, :cond_1c

    if-eqz v5, :cond_1b

    .line 577
    iget-object v2, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v14, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->i:I

    invoke-virtual {v2, v12, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 578
    iget-object v2, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->g:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v14, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->k:I

    invoke-virtual {v2, v12, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_e

    .line 580
    :cond_1b
    iget-object v2, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v14, 0x0

    invoke-virtual {v2, v12, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 581
    iget-object v2, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2, v12, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_e

    :cond_1c
    const/4 v14, 0x0

    .line 571
    iget-object v2, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2, v12, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_e

    :cond_1d
    const/4 v14, 0x0

    .line 567
    iget-object v2, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2, v12, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_e

    :cond_1e
    const/4 v11, 0x3

    :goto_e
    add-int/lit8 v13, v13, 0x1

    move-object v11, v3

    const/4 v2, 0x0

    const/4 v12, 0x3

    goto/16 :goto_a

    .line 590
    :cond_1f
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 32
    iget v3, v4, Landroidx/constraintlayout/solver/widgets/Flow;->K:I

    .line 591
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 592
    iget v3, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->h:I

    if-lez p2, :cond_20

    .line 32
    iget v7, v4, Landroidx/constraintlayout/solver/widgets/Flow;->W:I

    add-int/2addr v3, v7

    :cond_20
    if-eqz p1, :cond_22

    .line 597
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7, v10, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    if-eqz p3, :cond_21

    .line 599
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->j:I

    invoke-virtual {v3, v7, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    :cond_21
    if-lez p2, :cond_24

    .line 602
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 603
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v14, 0x0

    invoke-virtual {v3, v7, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_f

    .line 606
    :cond_22
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7, v10, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    if-eqz p3, :cond_23

    .line 608
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->j:I

    invoke-virtual {v3, v7, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    :cond_23
    if-lez p2, :cond_24

    .line 611
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 612
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v14, 0x0

    invoke-virtual {v3, v7, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    :cond_24
    :goto_f
    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_10
    if-ge v14, v1, :cond_35

    .line 616
    iget v3, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->n:I

    add-int v7, v3, v14

    .line 32
    iget v11, v4, Landroidx/constraintlayout/solver/widgets/Flow;->i0:I

    if-lt v7, v11, :cond_25

    goto/16 :goto_16

    .line 32
    :cond_25
    iget-object v7, v4, Landroidx/constraintlayout/solver/widgets/Flow;->h0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    add-int/2addr v3, v14

    .line 619
    aget-object v3, v7, v3

    if-nez v14, :cond_28

    .line 621
    iget-object v7, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->i:I

    invoke-virtual {v3, v7, v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 32
    iget v7, v4, Landroidx/constraintlayout/solver/widgets/Flow;->L:I

    .line 32
    iget v11, v4, Landroidx/constraintlayout/solver/widgets/Flow;->R:F

    .line 624
    iget v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->n:I

    if-nez v12, :cond_26

    .line 32
    iget v12, v4, Landroidx/constraintlayout/solver/widgets/Flow;->N:I

    if-eq v12, v6, :cond_26

    .line 32
    iget v11, v4, Landroidx/constraintlayout/solver/widgets/Flow;->T:F

    :goto_11
    move v7, v12

    goto :goto_12

    :cond_26
    if-eqz p3, :cond_27

    .line 32
    iget v12, v4, Landroidx/constraintlayout/solver/widgets/Flow;->P:I

    if-eq v12, v6, :cond_27

    .line 32
    iget v11, v4, Landroidx/constraintlayout/solver/widgets/Flow;->V:F

    goto :goto_11

    .line 631
    :cond_27
    :goto_12
    invoke-virtual {v3, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 632
    invoke-virtual {v3, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    :cond_28
    add-int/lit8 v7, v1, -0x1

    if-ne v14, v7, :cond_29

    .line 635
    iget-object v7, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->g:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->k:I

    invoke-virtual {v3, v7, v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_29
    if-eqz v10, :cond_2b

    .line 638
    iget-object v7, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 32
    iget v12, v4, Landroidx/constraintlayout/solver/widgets/Flow;->X:I

    .line 638
    invoke-virtual {v7, v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    if-ne v14, v8, :cond_2a

    .line 640
    iget-object v7, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->i:I

    invoke-virtual {v7, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 642
    :cond_2a
    iget-object v7, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v11, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    const/16 v16, 0x1

    add-int/lit8 v7, v9, 0x1

    if-ne v14, v7, :cond_2b

    .line 644
    iget-object v7, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->k:I

    invoke-virtual {v7, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    :cond_2b
    if-eq v3, v2, :cond_2f

    const/4 v7, 0x2

    if-eqz p1, :cond_30

    .line 32
    iget v10, v4, Landroidx/constraintlayout/solver/widgets/Flow;->Y:I

    if-eqz v10, :cond_2e

    const/4 v12, 0x1

    if-eq v10, v12, :cond_2d

    if-eq v10, v7, :cond_2c

    goto :goto_13

    .line 655
    :cond_2c
    iget-object v7, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 656
    iget-object v7, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7, v10, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_13

    :cond_2d
    const/4 v12, 0x0

    .line 660
    iget-object v7, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7, v10, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_13

    :cond_2e
    const/4 v12, 0x0

    .line 651
    iget-object v7, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7, v10, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    :cond_2f
    :goto_13
    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_15

    .line 32
    :cond_30
    iget v10, v4, Landroidx/constraintlayout/solver/widgets/Flow;->Y:I

    if-eqz v10, :cond_34

    const/4 v12, 0x1

    if-eq v10, v12, :cond_33

    if-eq v10, v7, :cond_31

    :goto_14
    const/4 v11, 0x0

    goto :goto_15

    :cond_31
    if-eqz v5, :cond_32

    .line 672
    iget-object v7, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->h:I

    invoke-virtual {v7, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 673
    iget-object v7, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->j:I

    invoke-virtual {v7, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_14

    .line 675
    :cond_32
    iget-object v7, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 676
    iget-object v7, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_15

    :cond_33
    const/4 v11, 0x0

    .line 681
    iget-object v7, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_15

    :cond_34
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 667
    iget-object v7, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    :goto_15
    add-int/lit8 v14, v14, 0x1

    move-object v10, v3

    goto/16 :goto_10

    :cond_35
    :goto_16
    return-void
.end method

.method public getHeight()I
    .locals 2

    .line 402
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 403
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->m:I

    .line 32
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->r:Landroidx/constraintlayout/solver/widgets/Flow;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow;->X:I

    sub-int/2addr v0, v1

    return v0

    .line 405
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->m:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 395
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->a:I

    if-nez v0, :cond_0

    .line 396
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->l:I

    .line 32
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->r:Landroidx/constraintlayout/solver/widgets/Flow;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow;->W:I

    sub-int/2addr v0, v1

    return v0

    .line 398
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->l:I

    return v0
.end method

.method public measureMatchConstraints(I)V
    .locals 9

    .line 693
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->p:I

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 696
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->o:I

    .line 697
    div-int v5, p1, v0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 698
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->r:Landroidx/constraintlayout/solver/widgets/Flow;

    if-ge v0, v1, :cond_4

    .line 699
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->n:I

    add-int v4, v3, v0

    .line 32
    iget v6, v2, Landroidx/constraintlayout/solver/widgets/Flow;->i0:I

    if-lt v4, v6, :cond_1

    goto :goto_2

    .line 32
    :cond_1
    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/Flow;->h0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    add-int/2addr v3, v0

    .line 702
    aget-object v3, v2, v3

    .line 703
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->a:I

    if-nez v2, :cond_2

    if-eqz v3, :cond_3

    .line 704
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_3

    .line 705
    iget v2, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v2, :cond_3

    .line 706
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->r:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 710
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_3

    .line 711
    iget v2, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v2, :cond_3

    .line 712
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    move v7, v5

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->r:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    move v5, v7

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 721
    :cond_4
    :goto_2
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->l:I

    .line 722
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->m:I

    const/4 v0, 0x0

    .line 723
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 724
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->c:I

    .line 725
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->o:I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_c

    .line 727
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->n:I

    add-int/2addr v3, v1

    .line 32
    iget v4, v2, Landroidx/constraintlayout/solver/widgets/Flow;->i0:I

    if-lt v3, v4, :cond_5

    goto :goto_5

    .line 32
    :cond_5
    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/Flow;->h0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 730
    aget-object v3, v4, v3

    .line 731
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->a:I

    const/16 v5, 0x8

    if-nez v4, :cond_8

    .line 732
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    .line 32
    iget v6, v2, Landroidx/constraintlayout/solver/widgets/Flow;->W:I

    .line 734
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    if-ne v7, v5, :cond_6

    const/4 v6, 0x0

    .line 737
    :cond_6
    iget v5, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->l:I

    add-int/2addr v4, v6

    add-int/2addr v4, v5

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->l:I

    .line 738
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->q:I

    .line 32
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->d(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v4

    .line 739
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v5, :cond_7

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->c:I

    if-ge v5, v4, :cond_b

    .line 740
    :cond_7
    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 741
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->c:I

    .line 742
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->m:I

    goto :goto_4

    .line 745
    :cond_8
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->q:I

    .line 32
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->e(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v4

    .line 746
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->q:I

    .line 32
    invoke-virtual {v2, v3, v6}, Landroidx/constraintlayout/solver/widgets/Flow;->d(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v6

    .line 32
    iget v7, v2, Landroidx/constraintlayout/solver/widgets/Flow;->X:I

    .line 748
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v8

    if-ne v8, v5, :cond_9

    const/4 v7, 0x0

    .line 751
    :cond_9
    iget v5, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->m:I

    add-int/2addr v6, v7

    add-int/2addr v6, v5

    iput v6, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->m:I

    .line 752
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v5, :cond_a

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->c:I

    if-ge v5, v4, :cond_b

    .line 753
    :cond_a
    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 754
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->c:I

    .line 755
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->l:I

    :cond_b
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    :goto_5
    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    .line 392
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->n:I

    return-void
.end method

.method public setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V
    .locals 0

    .line 370
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->a:I

    .line 371
    iput-object p2, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 372
    iput-object p3, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 373
    iput-object p4, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 374
    iput-object p5, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->g:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 375
    iput p6, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->h:I

    .line 376
    iput p7, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->i:I

    .line 377
    iput p8, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->j:I

    .line 378
    iput p9, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->k:I

    .line 379
    iput p10, p0, Landroidx/constraintlayout/solver/widgets/Flow$a;->q:I

    return-void
.end method
