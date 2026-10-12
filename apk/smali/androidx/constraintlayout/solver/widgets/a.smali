.class Landroidx/constraintlayout/solver/widgets/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;I)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez p2, :cond_0

    .line 51
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->E:I

    .line 52
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->H:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    const/4 v14, 0x0

    :goto_0
    move v12, v2

    move-object v13, v3

    goto :goto_1

    .line 55
    :cond_0
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->F:I

    .line 56
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->G:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    const/4 v14, 0x2

    goto :goto_0

    :goto_1
    const/4 v15, 0x0

    :goto_2
    if-ge v15, v12, :cond_4e

    .line 60
    aget-object v2, v13, v15

    .line 63
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ChainHead;->define()V

    .line 80
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 81
    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLast:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 82
    iget-object v5, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 83
    iget-object v6, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 84
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHead:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 90
    iget v8, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mTotalWeight:F

    .line 94
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, p2

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x1

    if-ne v9, v11, :cond_1

    const/4 v9, 0x1

    goto :goto_3

    :cond_1
    const/4 v9, 0x0

    :goto_3
    if-nez p2, :cond_5

    .line 100
    iget v11, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:I

    if-nez v11, :cond_2

    const/16 v17, 0x1

    goto :goto_4

    :cond_2
    const/16 v17, 0x0

    :goto_4
    if-ne v11, v10, :cond_3

    const/16 v16, 0x1

    :goto_5
    move/from16 v18, v9

    const/4 v9, 0x2

    goto :goto_6

    :cond_3
    const/16 v16, 0x0

    goto :goto_5

    :goto_6
    if-ne v11, v9, :cond_4

    const/4 v11, 0x1

    goto :goto_7

    :cond_4
    const/4 v11, 0x0

    :goto_7
    move-object v9, v3

    move/from16 v19, v17

    move/from16 v17, v16

    :goto_8
    const/16 v16, 0x0

    goto :goto_c

    :cond_5
    move/from16 v18, v9

    const/4 v9, 0x2

    .line 104
    iget v11, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:I

    if-nez v11, :cond_6

    const/16 v16, 0x1

    goto :goto_9

    :cond_6
    const/16 v16, 0x0

    :goto_9
    if-ne v11, v10, :cond_7

    const/16 v17, 0x1

    goto :goto_a

    :cond_7
    const/16 v17, 0x0

    :goto_a
    if-ne v11, v9, :cond_8

    const/4 v11, 0x1

    goto :goto_b

    :cond_8
    const/4 v11, 0x0

    :goto_b
    move-object v9, v3

    move/from16 v19, v16

    goto :goto_8

    :goto_c
    const/16 v22, 0x0

    if-nez v16, :cond_15

    .line 114
    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, v14

    if-eqz v11, :cond_9

    const/16 v21, 0x1

    goto :goto_d

    :cond_9
    const/16 v21, 0x4

    .line 120
    :goto_d
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v23

    move/from16 v24, v8

    .line 121
    iget-object v8, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v8, p2

    move/from16 v25, v11

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v11, :cond_a

    iget-object v8, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v8, v8, p2

    if-nez v8, :cond_a

    const/16 v26, 0x1

    goto :goto_e

    :cond_a
    const/16 v26, 0x0

    .line 124
    :goto_e
    iget-object v8, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_b

    if-eq v9, v3, :cond_b

    .line 125
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    add-int v23, v8, v23

    :cond_b
    move/from16 v8, v23

    if-eqz v25, :cond_c

    if-eq v9, v3, :cond_c

    if-eq v9, v5, :cond_c

    const/16 v21, 0x5

    :cond_c
    move/from16 v23, v12

    .line 132
    iget-object v12, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v12, :cond_f

    if-ne v9, v5, :cond_d

    move-object/from16 v27, v13

    .line 134
    iget-object v13, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    move/from16 v28, v14

    const/4 v14, 0x6

    invoke-virtual {v1, v13, v12, v8, v14}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_f

    :cond_d
    move-object/from16 v27, v13

    move/from16 v28, v14

    .line 137
    iget-object v13, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    const/16 v14, 0x8

    invoke-virtual {v1, v13, v12, v8, v14}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :goto_f
    if-eqz v26, :cond_e

    if-nez v25, :cond_e

    const/4 v12, 0x5

    goto :goto_10

    :cond_e
    move/from16 v12, v21

    .line 143
    :goto_10
    iget-object v13, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1, v13, v10, v8, v12}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_11

    :cond_f
    move-object/from16 v27, v13

    move/from16 v28, v14

    :goto_11
    if-eqz v18, :cond_11

    .line 148
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v8

    const/16 v14, 0x8

    if-eq v8, v14, :cond_10

    iget-object v8, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v8, p2

    if-ne v8, v11, :cond_10

    .line 150
    iget-object v8, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v14, v28, 0x1

    aget-object v10, v8, v14

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v8, v8, v28

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v1, v10, v8, v11, v12}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_12

    :cond_10
    const/4 v11, 0x0

    .line 154
    :goto_12
    iget-object v8, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, v28

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, v28

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    const/16 v14, 0x8

    invoke-virtual {v1, v8, v10, v11, v14}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 160
    :cond_11
    iget-object v8, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v14, v28, 0x1

    aget-object v8, v8, v14

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_13

    .line 162
    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 163
    iget-object v10, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, v28

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_13

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eq v10, v9, :cond_12

    goto :goto_13

    :cond_12
    move-object/from16 v22, v8

    :cond_13
    :goto_13
    if-eqz v22, :cond_14

    move-object/from16 v9, v22

    goto :goto_14

    :cond_14
    const/16 v16, 0x1

    :goto_14
    move/from16 v12, v23

    move/from16 v8, v24

    move/from16 v11, v25

    move-object/from16 v13, v27

    move/from16 v14, v28

    goto/16 :goto_c

    :cond_15
    move/from16 v24, v8

    move/from16 v25, v11

    move/from16 v23, v12

    move-object/from16 v27, v13

    move/from16 v28, v14

    if-eqz v6, :cond_18

    .line 177
    iget-object v8, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v14, v28, 0x1

    aget-object v8, v8, v14

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_18

    .line 178
    iget-object v8, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, v14

    .line 179
    iget-object v9, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, p2

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_16

    iget-object v9, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v9, v9, p2

    if-nez v9, :cond_16

    if-nez v25, :cond_16

    .line 181
    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v10, v0, :cond_16

    .line 182
    iget-object v10, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    neg-int v11, v11

    const/4 v12, 0x5

    invoke-virtual {v1, v10, v9, v11, v12}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_15

    :cond_16
    const/4 v12, 0x5

    if-eqz v25, :cond_17

    .line 184
    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v10, v0, :cond_17

    .line 185
    iget-object v10, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    neg-int v11, v11

    const/4 v13, 0x4

    invoke-virtual {v1, v10, v9, v11, v13}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 188
    :cond_17
    :goto_15
    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v10, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, v14

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    .line 189
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    neg-int v8, v8

    const/4 v14, 0x6

    .line 188
    invoke-virtual {v1, v9, v10, v8, v14}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_16

    :cond_18
    const/4 v12, 0x5

    :goto_16
    if-eqz v18, :cond_19

    .line 195
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v14, v28, 0x1

    aget-object v8, v8, v14

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v9, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, v14

    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    .line 197
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    const/16 v14, 0x8

    .line 195
    invoke-virtual {v1, v8, v10, v9, v14}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 201
    :cond_19
    iget-object v8, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    if-eqz v8, :cond_1f

    .line 203
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_1f

    .line 208
    iget-boolean v11, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasUndefinedWeights:Z

    if-eqz v11, :cond_1a

    iget-boolean v11, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-nez v11, :cond_1a

    .line 209
    iget v11, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    int-to-float v11, v11

    move/from16 v31, v11

    goto :goto_17

    :cond_1a
    move/from16 v31, v24

    :goto_17
    move-object/from16 v14, v22

    const/4 v13, 0x0

    const/16 v30, 0x0

    :goto_18
    if-ge v13, v9, :cond_1f

    .line 213
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/16 v16, 0x0

    .line 214
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v11, v11, p2

    cmpg-float v18, v11, v16

    if-gez v18, :cond_1c

    .line 217
    iget-boolean v11, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-eqz v11, :cond_1b

    .line 218
    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v11, v28, 0x1

    aget-object v11, v10, v11

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v10, v10, v28

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v0, 0x0

    const/4 v12, 0x4

    invoke-virtual {v1, v11, v10, v0, v12}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    const/4 v11, 0x0

    goto :goto_1a

    :cond_1b
    const/4 v12, 0x4

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v32, 0x3f800000    # 1.0f

    goto :goto_19

    :cond_1c
    const/4 v12, 0x4

    move/from16 v32, v11

    :goto_19
    cmpl-float v0, v32, v16

    if-nez v0, :cond_1d

    .line 225
    iget-object v0, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v10, v28, 0x1

    aget-object v10, v0, v10

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v0, v0, v28

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-virtual {v1, v10, v0, v11, v12}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_1a

    :cond_1d
    const/4 v11, 0x0

    if-eqz v14, :cond_1e

    .line 231
    iget-object v0, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v12, v0, v28

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    add-int/lit8 v14, v28, 0x1

    .line 232
    aget-object v0, v0, v14

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    .line 233
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v0, v11, v28

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    .line 234
    aget-object v11, v11, v14

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    .line 235
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v29

    move-object/from16 v35, v0

    move-object/from16 v36, v11

    move-object/from16 v33, v12

    .line 236
    invoke-virtual/range {v29 .. v36}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEqualMatchDimensions(FFFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/ArrayRow;

    move-object/from16 v0, v29

    .line 238
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    :cond_1e
    move-object v14, v10

    move/from16 v30, v32

    :goto_1a
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x1

    const/4 v12, 0x5

    move-object/from16 v0, p0

    goto/16 :goto_18

    :cond_1f
    if-eqz v5, :cond_20

    if-eq v5, v6, :cond_21

    if-eqz v25, :cond_20

    goto :goto_1b

    :cond_20
    move-object v11, v4

    move-object v0, v5

    move-object v10, v6

    const/16 v16, 0x2

    goto/16 :goto_21

    .line 260
    :cond_21
    :goto_1b
    iget-object v0, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v28

    .line 261
    iget-object v2, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v14, v28, 0x1

    aget-object v2, v2, v14

    .line 262
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v3, v0

    goto :goto_1c

    :cond_22
    move-object/from16 v3, v22

    .line 263
    :goto_1c
    iget-object v0, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_23

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_1d

    :cond_23
    move-object/from16 v0, v22

    .line 264
    :goto_1d
    iget-object v2, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v28

    .line 265
    iget-object v8, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, v14

    if-eqz v3, :cond_25

    if-eqz v0, :cond_25

    if-nez p2, :cond_24

    .line 269
    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:F

    :goto_1e
    move-object v9, v4

    goto :goto_1f

    .line 271
    :cond_24
    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:F

    goto :goto_1e

    .line 273
    :goto_1f
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 274
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    .line 275
    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v11, v9

    const/4 v9, 0x7

    move-object/from16 v16, v6

    move-object v6, v0

    move-object v0, v5

    move v5, v7

    move-object v7, v8

    move v8, v10

    move-object/from16 v10, v16

    const/16 v16, 0x2

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_20

    :cond_25
    move-object v11, v4

    move-object v0, v5

    move-object v10, v6

    const/16 v16, 0x2

    :cond_26
    :goto_20
    move-object/from16 v1, p1

    goto/16 :goto_36

    :goto_21
    if-eqz v19, :cond_37

    if-eqz v0, :cond_37

    .line 282
    iget v1, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v1, :cond_27

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsCount:I

    if-ne v2, v1, :cond_27

    const/16 v20, 0x1

    goto :goto_22

    :cond_27
    const/16 v20, 0x0

    :goto_22
    move-object v12, v0

    move-object v13, v12

    :goto_23
    if-eqz v12, :cond_26

    .line 284
    iget-object v1, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p2

    move-object v14, v1

    :goto_24
    if-eqz v14, :cond_28

    .line 285
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_28

    .line 286
    iget-object v1, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v14, v1, p2

    goto :goto_24

    :cond_28
    if-nez v14, :cond_2a

    if-ne v12, v10, :cond_29

    goto :goto_25

    :cond_29
    move-object/from16 v18, v12

    move-object v12, v3

    goto/16 :goto_2c

    .line 289
    :cond_2a
    :goto_25
    iget-object v1, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v28

    .line 290
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    .line 291
    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_2b

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_26

    :cond_2b
    move-object/from16 v4, v22

    :goto_26
    if-eq v13, v12, :cond_2c

    .line 293
    iget-object v4, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v5, v28, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_27

    :cond_2c
    if-ne v12, v0, :cond_2e

    if-ne v13, v12, :cond_2e

    .line 295
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v28

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_2d

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_27

    :cond_2d
    move-object/from16 v4, v22

    .line 301
    :cond_2e
    :goto_27
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    .line 302
    iget-object v5, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v6, v28, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    if-eqz v14, :cond_2f

    .line 305
    iget-object v7, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v28

    .line 306
    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    .line 307
    iget-object v9, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, v6

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_29

    .line 309
    :cond_2f
    iget-object v7, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v6

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_30

    .line 311
    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_28

    :cond_30
    move-object/from16 v8, v22

    .line 313
    :goto_28
    iget-object v9, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, v6

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    :goto_29
    if-eqz v7, :cond_31

    .line 317
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    add-int/2addr v5, v7

    :cond_31
    if-eqz v13, :cond_32

    .line 320
    iget-object v7, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    add-int/2addr v1, v7

    :cond_32
    if-eqz v2, :cond_29

    if-eqz v4, :cond_29

    if-eqz v8, :cond_29

    if-eqz v9, :cond_29

    if-ne v12, v0, :cond_33

    .line 325
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v28

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    :cond_33
    if-ne v12, v10, :cond_34

    .line 329
    iget-object v5, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    :cond_34
    move-object v7, v9

    if-eqz v20, :cond_35

    const/16 v9, 0x8

    :goto_2a
    move-object v6, v8

    move v8, v5

    goto :goto_2b

    :cond_35
    const/4 v9, 0x5

    goto :goto_2a

    :goto_2b
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v18, v12

    move-object v12, v3

    move-object v3, v4

    move v4, v1

    move-object/from16 v1, p1

    .line 335
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 340
    :goto_2c
    invoke-virtual/range {v18 .. v18}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_36

    move-object/from16 v13, v18

    :cond_36
    move-object v3, v12

    move-object v12, v14

    goto/16 :goto_23

    :cond_37
    move-object v12, v3

    if-eqz v17, :cond_26

    if-eqz v0, :cond_26

    .line 349
    iget v1, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v1, :cond_38

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsCount:I

    if-ne v2, v1, :cond_38

    const/16 v20, 0x1

    goto :goto_2d

    :cond_38
    const/16 v20, 0x0

    :goto_2d
    move-object v13, v0

    move-object v14, v13

    :goto_2e
    if-eqz v13, :cond_43

    .line 351
    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p2

    :goto_2f
    if-eqz v1, :cond_39

    .line 352
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_39

    .line 353
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p2

    goto :goto_2f

    :cond_39
    if-eq v13, v0, :cond_41

    if-eq v13, v10, :cond_41

    if-eqz v1, :cond_41

    if-ne v1, v10, :cond_3a

    move-object/from16 v1, v22

    .line 359
    :cond_3a
    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v28

    move-object v3, v2

    .line 360
    iget-object v2, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    .line 362
    iget-object v4, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v5, v28, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    .line 366
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 367
    iget-object v6, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    if-eqz v1, :cond_3c

    .line 370
    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v28

    .line 371
    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    .line 372
    iget-object v9, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_3b

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_31

    :cond_3b
    move-object/from16 v9, v22

    goto :goto_31

    .line 374
    :cond_3c
    iget-object v7, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v28

    if-eqz v7, :cond_3d

    .line 376
    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_30

    :cond_3d
    move-object/from16 v8, v22

    .line 378
    :goto_30
    iget-object v9, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, v5

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    :goto_31
    if-eqz v7, :cond_3e

    .line 382
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    add-int/2addr v6, v7

    .line 385
    :cond_3e
    iget-object v7, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v7, v5

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int/2addr v5, v3

    move-object v7, v9

    if-eqz v20, :cond_3f

    const/16 v9, 0x8

    goto :goto_32

    :cond_3f
    const/4 v9, 0x4

    :goto_32
    if-eqz v2, :cond_40

    if-eqz v4, :cond_40

    if-eqz v8, :cond_40

    if-eqz v7, :cond_40

    move-object v3, v4

    move v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v18, v8

    move v8, v6

    move-object/from16 v6, v18

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    .line 392
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    move-object v2, v1

    goto :goto_33

    :cond_40
    move-object/from16 v2, p1

    move-object/from16 v18, v1

    :goto_33
    move-object/from16 v5, v18

    goto :goto_34

    :cond_41
    move-object/from16 v2, p1

    move-object v5, v1

    .line 397
    :goto_34
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_42

    move-object v14, v13

    :cond_42
    move-object v13, v5

    goto/16 :goto_2e

    :cond_43
    move-object/from16 v2, p1

    .line 402
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v28

    .line 403
    iget-object v3, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v28

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 404
    iget-object v4, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v14, v28, 0x1

    aget-object v12, v4, v14

    .line 405
    iget-object v4, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v14

    iget-object v13, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v9, 0x5

    if-eqz v3, :cond_44

    if-eq v0, v10, :cond_45

    .line 409
    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    invoke-virtual {v2, v4, v3, v1, v9}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    :cond_44
    move-object v1, v2

    goto :goto_35

    :cond_45
    if-eqz v13, :cond_44

    .line 411
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    iget-object v6, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v7, v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    .line 412
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    .line 411
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :goto_35
    if-eqz v13, :cond_46

    if-eq v0, v10, :cond_46

    .line 416
    iget-object v2, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v1, v2, v3, v4, v9}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    :cond_46
    :goto_36
    if-nez v19, :cond_47

    if-eqz v17, :cond_4d

    :cond_47
    if-eqz v0, :cond_4d

    if-eq v0, v10, :cond_4d

    .line 423
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v2, v28

    .line 424
    iget-object v4, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v14, v28, 0x1

    aget-object v4, v4, v14

    .line 425
    iget-object v5, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_48

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_37

    :cond_48
    move-object/from16 v5, v22

    .line 426
    :goto_37
    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_49

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_38

    :cond_49
    move-object/from16 v6, v22

    :goto_38
    if-eq v11, v10, :cond_4b

    .line 428
    iget-object v6, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v14

    .line 429
    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_4a

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v22, v6

    :cond_4a
    move-object/from16 v6, v22

    :cond_4b
    if-ne v0, v10, :cond_4c

    .line 433
    aget-object v4, v2, v14

    :cond_4c
    if-eqz v5, :cond_4d

    if-eqz v6, :cond_4d

    .line 437
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    .line 442
    iget-object v2, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v14

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    .line 443
    iget-object v2, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v7, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v9, 0x5

    move-object v3, v5

    const/high16 v5, 0x3f000000    # 0.5f

    move v4, v0

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_4d
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v12, v23

    move-object/from16 v13, v27

    move/from16 v14, v28

    goto/16 :goto_2

    :cond_4e
    return-void
.end method
