.class Landroidx/transition/TransitionManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/TransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroidx/transition/Transition;

.field public b:Landroid/view/ViewGroup;


# virtual methods
.method public onPreDraw()Z
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 244
    iget-object v2, v0, Landroidx/transition/TransitionManager$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 245
    invoke-virtual {v2, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 271
    sget-object v2, Landroidx/transition/TransitionManager;->e:Ljava/util/ArrayList;

    iget-object v4, v0, Landroidx/transition/TransitionManager$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    .line 277
    :cond_0
    invoke-static {}, Landroidx/transition/TransitionManager;->b()Landroidx/collection/ArrayMap;

    move-result-object v2

    .line 278
    invoke-virtual {v2, v4}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 281
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 282
    invoke-virtual {v2, v4, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 284
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 286
    :goto_0
    iget-object v7, v0, Landroidx/transition/TransitionManager$a;->a:Landroidx/transition/Transition;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v3, Landroidx/transition/TransitionManager$a$a;

    invoke-direct {v3, v0, v2}, Landroidx/transition/TransitionManager$a$a;-><init>(Landroidx/transition/TransitionManager$a;Landroidx/collection/ArrayMap;)V

    invoke-virtual {v7, v3}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    const/4 v2, 0x0

    .line 295
    invoke-virtual {v7, v4, v2}, Landroidx/transition/Transition;->d(Landroid/view/ViewGroup;Z)V

    if-eqz v6, :cond_3

    .line 297
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/transition/Transition;

    .line 298
    invoke-virtual {v6, v4}, Landroidx/transition/Transition;->resume(Landroid/view/View;)V

    goto :goto_1

    .line 1782
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v7, Landroidx/transition/Transition;->t:Ljava/util/ArrayList;

    .line 1783
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v7, Landroidx/transition/Transition;->u:Ljava/util/ArrayList;

    .line 1784
    iget-object v3, v7, Landroidx/transition/Transition;->p:Landroidx/transition/u;

    iget-object v6, v7, Landroidx/transition/Transition;->q:Landroidx/transition/u;

    .line 667
    new-instance v8, Landroidx/collection/ArrayMap;

    iget-object v9, v3, Landroidx/transition/u;->a:Landroidx/collection/ArrayMap;

    invoke-direct {v8, v9}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    .line 668
    new-instance v9, Landroidx/collection/ArrayMap;

    iget-object v10, v6, Landroidx/transition/u;->a:Landroidx/collection/ArrayMap;

    invoke-direct {v9, v10}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    const/4 v10, 0x0

    .line 670
    :goto_2
    iget-object v11, v7, Landroidx/transition/Transition;->s:[I

    array-length v12, v11

    if-ge v10, v12, :cond_f

    .line 671
    aget v11, v11, v10

    if-eq v11, v1, :cond_c

    const/4 v12, 0x2

    if-eq v11, v12, :cond_a

    const/4 v12, 0x3

    if-eq v11, v12, :cond_8

    const/4 v12, 0x4

    if-eq v11, v12, :cond_5

    :cond_4
    const/16 v16, 0x1

    goto/16 :goto_8

    .line 567
    :cond_5
    iget-object v11, v3, Landroidx/transition/u;->c:Landroidx/collection/LongSparseArray;

    invoke-virtual {v11}, Landroidx/collection/LongSparseArray;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_4

    .line 569
    invoke-virtual {v11, v13}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    if-eqz v14, :cond_6

    .line 570
    invoke-virtual {v7, v14}, Landroidx/transition/Transition;->i(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v15, 0x1

    .line 571
    invoke-virtual {v11, v13}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    const/16 v16, 0x1

    iget-object v15, v6, Landroidx/transition/u;->c:Landroidx/collection/LongSparseArray;

    invoke-virtual {v15, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_7

    .line 572
    invoke-virtual {v7, v1}, Landroidx/transition/Transition;->i(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 573
    invoke-virtual {v8, v14}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/TransitionValues;

    .line 574
    invoke-virtual {v9, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/transition/TransitionValues;

    if-eqz v2, :cond_7

    if-eqz v15, :cond_7

    .line 576
    iget-object v5, v7, Landroidx/transition/Transition;->t:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    iget-object v2, v7, Landroidx/transition/Transition;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    invoke-virtual {v8, v14}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-virtual {v9, v1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    const/16 v16, 0x1

    :cond_7
    :goto_4
    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto :goto_3

    :cond_8
    const/16 v16, 0x1

    .line 680
    iget-object v1, v3, Landroidx/transition/u;->b:Landroid/util/SparseArray;

    iget-object v2, v6, Landroidx/transition/u;->b:Landroid/util/SparseArray;

    .line 594
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v5, :cond_e

    .line 596
    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_9

    .line 597
    invoke-virtual {v7, v12}, Landroidx/transition/Transition;->i(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 598
    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    if-eqz v13, :cond_9

    .line 599
    invoke-virtual {v7, v13}, Landroidx/transition/Transition;->i(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 600
    invoke-virtual {v8, v12}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/transition/TransitionValues;

    .line 601
    invoke-virtual {v9, v13}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/transition/TransitionValues;

    if-eqz v14, :cond_9

    if-eqz v15, :cond_9

    .line 603
    iget-object v0, v7, Landroidx/transition/Transition;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    iget-object v0, v7, Landroidx/transition/Transition;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-virtual {v8, v12}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    invoke-virtual {v9, v13}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    goto :goto_5

    :cond_a
    const/16 v16, 0x1

    .line 621
    iget-object v0, v3, Landroidx/transition/u;->d:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_e

    .line 623
    invoke-virtual {v0, v2}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-eqz v5, :cond_b

    .line 624
    invoke-virtual {v7, v5}, Landroidx/transition/Transition;->i(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 625
    invoke-virtual {v0, v2}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    iget-object v12, v6, Landroidx/transition/u;->d:Landroidx/collection/ArrayMap;

    invoke-virtual {v12, v11}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_b

    .line 626
    invoke-virtual {v7, v11}, Landroidx/transition/Transition;->i(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 627
    invoke-virtual {v8, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/transition/TransitionValues;

    .line 628
    invoke-virtual {v9, v11}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/transition/TransitionValues;

    if-eqz v12, :cond_b

    if-eqz v13, :cond_b

    .line 630
    iget-object v14, v7, Landroidx/transition/Transition;->t:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    iget-object v12, v7, Landroidx/transition/Transition;->u:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    invoke-virtual {v8, v5}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    invoke-virtual {v9, v11}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_c
    const/16 v16, 0x1

    .line 546
    invoke-virtual {v8}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_e

    .line 547
    invoke-virtual {v8, v0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_d

    .line 548
    invoke-virtual {v7, v1}, Landroidx/transition/Transition;->i(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 549
    invoke-virtual {v9, v1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/TransitionValues;

    if-eqz v1, :cond_d

    .line 550
    iget-object v2, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroidx/transition/Transition;->i(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 551
    invoke-virtual {v8, v0}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/TransitionValues;

    .line 552
    iget-object v5, v7, Landroidx/transition/Transition;->t:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v2, v7, Landroidx/transition/Transition;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_e
    :goto_8
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_f
    const/16 v16, 0x1

    const/4 v0, 0x0

    .line 647
    :goto_9
    invoke-virtual {v8}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 648
    invoke-virtual {v8, v0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/TransitionValues;

    .line 649
    iget-object v2, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroidx/transition/Transition;->i(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 650
    iget-object v2, v7, Landroidx/transition/Transition;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    iget-object v1, v7, Landroidx/transition/Transition;->u:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_11
    const/4 v2, 0x0

    .line 656
    :goto_a
    invoke-virtual {v9}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v0

    if-ge v2, v0, :cond_13

    .line 657
    invoke-virtual {v9, v2}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/TransitionValues;

    .line 658
    iget-object v1, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroidx/transition/Transition;->i(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 659
    iget-object v1, v7, Landroidx/transition/Transition;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    iget-object v0, v7, Landroidx/transition/Transition;->t:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1786
    :cond_13
    invoke-static {}, Landroidx/transition/Transition;->h()Landroidx/collection/ArrayMap;

    move-result-object v0

    .line 1787
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    .line 1788
    sget-object v2, Landroidx/transition/f0;->a:Landroidx/transition/h0;

    .line 101
    new-instance v2, Landroidx/transition/n0;

    invoke-direct {v2, v4}, Landroidx/transition/n0;-><init>(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_19

    .line 1790
    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    if-eqz v3, :cond_18

    .line 1792
    invoke-virtual {v0, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/Transition$c;

    if-eqz v5, :cond_18

    .line 1793
    iget-object v6, v5, Landroidx/transition/Transition$c;->a:Landroid/view/View;

    if-eqz v6, :cond_18

    iget-object v8, v5, Landroidx/transition/Transition$c;->d:Landroidx/transition/n0;

    .line 1794
    invoke-virtual {v2, v8}, Landroidx/transition/n0;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    const/4 v15, 0x1

    .line 1797
    invoke-virtual {v7, v6, v15}, Landroidx/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v8

    .line 1798
    invoke-virtual {v7, v6, v15}, Landroidx/transition/Transition;->g(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v9

    if-nez v8, :cond_14

    if-nez v9, :cond_14

    .line 1800
    iget-object v9, v7, Landroidx/transition/Transition;->q:Landroidx/transition/u;

    iget-object v9, v9, Landroidx/transition/u;->a:Landroidx/collection/ArrayMap;

    invoke-virtual {v9, v6}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Landroidx/transition/TransitionValues;

    :cond_14
    if-nez v8, :cond_15

    if-eqz v9, :cond_18

    .line 1802
    :cond_15
    iget-object v6, v5, Landroidx/transition/Transition$c;->e:Landroidx/transition/Transition;

    .line 1803
    iget-object v5, v5, Landroidx/transition/Transition$c;->c:Landroidx/transition/TransitionValues;

    invoke-virtual {v6, v5, v9}, Landroidx/transition/Transition;->isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1805
    invoke-virtual {v3}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_d

    .line 1814
    :cond_16
    invoke-virtual {v0, v3}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 1809
    :cond_17
    :goto_d
    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    :cond_18
    :goto_e
    add-int/lit8 v1, v1, -0x1

    const/16 v16, 0x1

    goto :goto_c

    .line 1821
    :cond_19
    iget-object v5, v7, Landroidx/transition/Transition;->p:Landroidx/transition/u;

    iget-object v6, v7, Landroidx/transition/Transition;->q:Landroidx/transition/u;

    iget-object v0, v7, Landroidx/transition/Transition;->t:Ljava/util/ArrayList;

    iget-object v8, v7, Landroidx/transition/Transition;->u:Ljava/util/ArrayList;

    move-object v3, v7

    move-object v7, v0

    invoke-virtual/range {v3 .. v8}, Landroidx/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroidx/transition/u;Landroidx/transition/u;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1822
    invoke-virtual {v3}, Landroidx/transition/Transition;->runAnimators()V

    const/4 v15, 0x1

    return v15
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 244
    iget-object p1, p0, Landroidx/transition/TransitionManager$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 245
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 256
    sget-object p1, Landroidx/transition/TransitionManager;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/transition/TransitionManager$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 257
    invoke-static {}, Landroidx/transition/TransitionManager;->b()Landroidx/collection/ArrayMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 258
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 259
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Transition;

    .line 260
    invoke-virtual {v1, v0}, Landroidx/transition/Transition;->resume(Landroid/view/View;)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object p1, p0, Landroidx/transition/TransitionManager$a;->a:Landroidx/transition/Transition;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->e(Z)V

    return-void
.end method
