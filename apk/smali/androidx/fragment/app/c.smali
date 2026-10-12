.class Landroidx/fragment/app/c;
.super Landroidx/fragment/app/b1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/c$d;,
        Landroidx/fragment/app/c$b;,
        Landroidx/fragment/app/c$c;
    }
.end annotation


# direct methods
.method public static j(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4

    .line 697
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 698
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 699
    invoke-static {v0}, Landroidx/core/view/ViewGroupCompat;->isTransitionGroup(Landroid/view/ViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 701
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 704
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_3

    .line 706
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 707
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 708
    invoke-static {v2, p1}, Landroidx/fragment/app/c;->j(Landroid/view/View;Ljava/util/ArrayList;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 713
    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 714
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static k(Landroidx/collection/ArrayMap;Landroid/view/View;)V
    .locals 4

    .line 724
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 726
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 729
    check-cast p1, Landroid/view/ViewGroup;

    .line 730
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 732
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 733
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 734
    invoke-static {p0, v2}, Landroidx/fragment/app/c;->k(Landroidx/collection/ArrayMap;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static l(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V
    .locals 1

    .line 679
    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 680
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 682
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;Z)V
    .locals 37

    move/from16 v0, p2

    const/4 v1, 0x1

    .line 61
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    sget-object v8, Landroidx/fragment/app/b1$c$b;->b:Landroidx/fragment/app/b1$c$b;

    const/4 v9, 0x2

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/b1$c;

    .line 62
    invoke-virtual {v7}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v10

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-static {v10}, Landroidx/fragment/app/b1$c$b;->c(Landroid/view/View;)Landroidx/fragment/app/b1$c$b;

    move-result-object v10

    .line 63
    invoke-virtual {v7}, Landroidx/fragment/app/b1$c;->getFinalState()Landroidx/fragment/app/b1$c$b;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-eqz v11, :cond_2

    if-eq v11, v1, :cond_1

    if-eq v11, v9, :cond_2

    const/4 v9, 0x3

    if-eq v11, v9, :cond_2

    goto :goto_0

    :cond_1
    if-eq v10, v8, :cond_0

    move-object v6, v7

    goto :goto_0

    :cond_2
    if-ne v10, v8, :cond_0

    if-nez v5, :cond_0

    move-object v5, v7

    goto :goto_0

    .line 83
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 85
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v11, p1

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 87
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/b1$c;

    .line 89
    new-instance v14, Landroidx/core/os/CancellationSignal;

    invoke-direct {v14}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 90
    invoke-virtual {v12, v14}, Landroidx/fragment/app/b1$c;->markStartedSpecialEffect(Landroidx/core/os/CancellationSignal;)V

    .line 92
    new-instance v15, Landroidx/fragment/app/c$b;

    .line 789
    invoke-direct {v15, v12, v14}, Landroidx/fragment/app/c$c;-><init>(Landroidx/fragment/app/b1$c;Landroidx/core/os/CancellationSignal;)V

    .line 783
    iput-boolean v13, v15, Landroidx/fragment/app/c$b;->d:Z

    .line 790
    iput-boolean v0, v15, Landroidx/fragment/app/c$b;->c:Z

    .line 92
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v14, Landroidx/core/os/CancellationSignal;

    invoke-direct {v14}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 96
    invoke-virtual {v12, v14}, Landroidx/fragment/app/b1$c;->markStartedSpecialEffect(Landroidx/core/os/CancellationSignal;)V

    .line 98
    new-instance v15, Landroidx/fragment/app/c$d;

    if-eqz v0, :cond_4

    if-ne v12, v5, :cond_5

    :goto_2
    const/4 v13, 0x1

    goto :goto_3

    :cond_4
    if-ne v12, v6, :cond_5

    goto :goto_2

    .line 99
    :cond_5
    :goto_3
    invoke-direct {v15, v12, v14, v0, v13}, Landroidx/fragment/app/c$d;-><init>(Landroidx/fragment/app/b1$c;Landroidx/core/os/CancellationSignal;ZZ)V

    .line 98
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v13, Landroidx/fragment/app/d;

    move-object/from16 v14, p0

    invoke-direct {v13, v14, v10, v12}, Landroidx/fragment/app/d;-><init>(Landroidx/fragment/app/c;Ljava/util/ArrayList;Landroidx/fragment/app/b1$c;)V

    .line 645
    iget-object v12, v12, Landroidx/fragment/app/b1$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    move-object/from16 v14, p0

    .line 288
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 291
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v15, 0x0

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    const/16 v23, 0x2

    move-object/from16 v9, v16

    check-cast v9, Landroidx/fragment/app/c$d;

    .line 292
    invoke-virtual {v9}, Landroidx/fragment/app/c$c;->b()Z

    move-result v16

    if-eqz v16, :cond_7

    const/4 v9, 0x2

    goto :goto_4

    .line 867
    :cond_7
    iget-object v4, v9, Landroidx/fragment/app/c$d;->c:Ljava/lang/Object;

    invoke-virtual {v9, v4}, Landroidx/fragment/app/c$d;->c(Ljava/lang/Object;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v13

    const/16 v24, 0x1

    .line 869
    iget-object v1, v9, Landroidx/fragment/app/c$d;->e:Ljava/lang/Object;

    invoke-virtual {v9, v1}, Landroidx/fragment/app/c$d;->c(Ljava/lang/Object;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v2

    .line 870
    iget-object v9, v9, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/b1$c;

    move-object/from16 v26, v3

    const-string v3, " returned Transition "

    move-object/from16 v27, v7

    const-string v7, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    if-eqz v13, :cond_9

    if-eqz v2, :cond_9

    if-ne v13, v2, :cond_8

    goto :goto_5

    .line 872
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 874
    invoke-virtual {v9}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_5
    if-eqz v13, :cond_a

    goto :goto_6

    :cond_a
    move-object v13, v2

    :goto_6
    if-nez v15, :cond_b

    move-object v15, v13

    goto :goto_7

    :cond_b
    if-eqz v13, :cond_d

    if-ne v15, v13, :cond_c

    goto :goto_7

    .line 300
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v9}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " which uses a different Transition  type than other Fragments."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_7
    move-object/from16 v3, v26

    move-object/from16 v7, v27

    const/4 v1, 0x1

    const/4 v9, 0x2

    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_e
    move-object/from16 v26, v3

    move-object/from16 v27, v7

    const/16 v23, 0x2

    const/16 v24, 0x1

    .line 307
    sget-object v1, Landroidx/fragment/app/b1$c$b;->c:Landroidx/fragment/app/b1$c$b;

    const-string v2, "FragmentManager"

    if-nez v15, :cond_10

    .line 309
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/c$d;

    .line 759
    iget-object v4, v3, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/b1$c;

    .line 310
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v11, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-virtual {v3}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_8

    :cond_f
    move-object/from16 v34, v1

    move-object/from16 v33, v10

    move-object v8, v11

    move-object v10, v2

    goto/16 :goto_2a

    .line 319
    :cond_10
    new-instance v3, Landroid/view/View;

    invoke-virtual {v14}, Landroidx/fragment/app/b1;->getContainer()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 325
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 326
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 327
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 328
    new-instance v12, Landroidx/collection/ArrayMap;

    invoke-direct {v12}, Landroidx/collection/ArrayMap;-><init>()V

    .line 329
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object/from16 v28, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v29, 0x0

    :goto_9
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2d

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/fragment/app/c$d;

    .line 330
    invoke-virtual/range {v16 .. v16}, Landroidx/fragment/app/c$d;->hasSharedElementTransition()Z

    move-result v17

    if-eqz v17, :cond_2c

    if-eqz v5, :cond_2c

    if-eqz v6, :cond_2c

    .line 336
    invoke-virtual/range {v16 .. v16}, Landroidx/fragment/app/c$d;->getSharedElementTransition()Ljava/lang/Object;

    move-result-object v13

    .line 335
    invoke-virtual {v15, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 334
    invoke-virtual {v15, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v30, v2

    .line 339
    invoke-virtual {v6}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 3338
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    if-eqz v2, :cond_12

    .line 3338
    iget-object v2, v2, Landroidx/fragment/app/Fragment$e;->i:Ljava/util/ArrayList;

    if-nez v2, :cond_11

    goto :goto_b

    :cond_11
    :goto_a
    move-object/from16 v31, v14

    goto :goto_c

    .line 3339
    :cond_12
    :goto_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_a

    .line 343
    :goto_c
    invoke-virtual {v5}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v14

    .line 3338
    iget-object v14, v14, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    if-eqz v14, :cond_14

    .line 3338
    iget-object v14, v14, Landroidx/fragment/app/Fragment$e;->i:Ljava/util/ArrayList;

    if-nez v14, :cond_13

    goto :goto_e

    :cond_13
    :goto_d
    move-object/from16 v32, v8

    goto :goto_f

    .line 3339
    :cond_14
    :goto_e
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    goto :goto_d

    .line 345
    :goto_f
    invoke-virtual {v5}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v8

    .line 3346
    iget-object v8, v8, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    if-eqz v8, :cond_15

    .line 3346
    iget-object v8, v8, Landroidx/fragment/app/Fragment$e;->j:Ljava/util/ArrayList;

    if-nez v8, :cond_16

    .line 3347
    :cond_15
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_16
    move-object/from16 v34, v1

    move-object/from16 v33, v10

    const/4 v10, 0x0

    .line 349
    :goto_10
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_18

    .line 350
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    move-object/from16 v16, v8

    const/4 v8, -0x1

    if-eq v1, v8, :cond_17

    .line 354
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_17
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, v16

    goto :goto_10

    .line 357
    :cond_18
    invoke-virtual {v6}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 3346
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    if-eqz v1, :cond_19

    .line 3346
    iget-object v1, v1, Landroidx/fragment/app/Fragment$e;->j:Ljava/util/ArrayList;

    if-nez v1, :cond_1a

    .line 3347
    :cond_19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1a
    if-nez v0, :cond_1c

    .line 364
    invoke-virtual {v5}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v8

    .line 3367
    iget-object v8, v8, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    if-nez v8, :cond_1b

    const/4 v8, 0x0

    goto :goto_11

    .line 3370
    :cond_1b
    iget-object v8, v8, Landroidx/fragment/app/Fragment$e;->t:Landroidx/core/app/SharedElementCallback;

    .line 365
    :goto_11
    invoke-virtual {v6}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->d()Landroidx/core/app/SharedElementCallback;

    move-result-object v10

    goto :goto_12

    .line 369
    :cond_1c
    invoke-virtual {v5}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->d()Landroidx/core/app/SharedElementCallback;

    move-result-object v8

    .line 370
    invoke-virtual {v6}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v10

    .line 3367
    iget-object v10, v10, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    if-nez v10, :cond_1d

    const/4 v10, 0x0

    goto :goto_12

    .line 3370
    :cond_1d
    iget-object v10, v10, Landroidx/fragment/app/Fragment$e;->t:Landroidx/core/app/SharedElementCallback;

    .line 372
    :goto_12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v35, v11

    const/4 v11, 0x0

    :goto_13
    if-ge v11, v14, :cond_1e

    .line 374
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v14

    move-object/from16 v14, v16

    check-cast v14, Ljava/lang/String;

    .line 375
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v18, v11

    move-object/from16 v11, v16

    check-cast v11, Ljava/lang/String;

    .line 376
    invoke-virtual {v12, v14, v11}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v18, 0x1

    move/from16 v14, v17

    goto :goto_13

    .line 381
    :cond_1e
    new-instance v11, Landroidx/collection/ArrayMap;

    invoke-direct {v11}, Landroidx/collection/ArrayMap;-><init>()V

    .line 382
    invoke-virtual {v5}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v14

    iget-object v14, v14, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-static {v11, v14}, Landroidx/fragment/app/c;->k(Landroidx/collection/ArrayMap;Landroid/view/View;)V

    .line 383
    invoke-virtual {v11, v2}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    if-eqz v8, :cond_21

    .line 386
    invoke-virtual {v8, v2, v11}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 387
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_14
    if-ltz v8, :cond_22

    .line 388
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 389
    invoke-virtual {v11, v14}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    if-nez v16, :cond_20

    .line 391
    invoke-virtual {v12, v14}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v17, v8

    :cond_1f
    :goto_15
    const/16 v25, -0x1

    goto :goto_16

    :cond_20
    move/from16 v17, v8

    .line 392
    invoke-static/range {v16 .. v16}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1f

    .line 393
    invoke-virtual {v12, v14}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 394
    invoke-static/range {v16 .. v16}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14, v8}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :goto_16
    add-int/lit8 v8, v17, -0x1

    goto :goto_14

    .line 400
    :cond_21
    invoke-virtual {v11}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v12, v8}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 405
    :cond_22
    new-instance v8, Landroidx/collection/ArrayMap;

    invoke-direct {v8}, Landroidx/collection/ArrayMap;-><init>()V

    .line 406
    invoke-virtual {v6}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v14

    iget-object v14, v14, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-static {v8, v14}, Landroidx/fragment/app/c;->k(Landroidx/collection/ArrayMap;Landroid/view/View;)V

    .line 407
    invoke-virtual {v8, v1}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 408
    invoke-virtual {v12}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    if-eqz v10, :cond_27

    .line 411
    invoke-virtual {v10, v1, v8}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 412
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_17
    if-ltz v10, :cond_26

    .line 413
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 414
    invoke-virtual {v8, v14}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    if-nez v16, :cond_25

    .line 416
    invoke-static {v12, v14}, Landroidx/fragment/app/s0;->h(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_23

    .line 419
    invoke-virtual {v12, v14}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    move/from16 v17, v10

    :cond_24
    :goto_18
    const/16 v25, -0x1

    goto :goto_19

    :cond_25
    move/from16 v17, v10

    .line 421
    invoke-static/range {v16 .. v16}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_24

    .line 422
    invoke-static {v12, v14}, Landroidx/fragment/app/s0;->h(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_24

    .line 426
    invoke-static/range {v16 .. v16}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v14

    .line 425
    invoke-virtual {v12, v10, v14}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :goto_19
    add-int/lit8 v10, v17, -0x1

    goto :goto_17

    :cond_26
    const/16 v25, -0x1

    goto :goto_1b

    .line 432
    :cond_27
    sget-object v10, Landroidx/fragment/app/s0;->a:[I

    .line 1007
    invoke-virtual {v12}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_1a
    if-ltz v10, :cond_26

    .line 1008
    invoke-virtual {v12, v10}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1009
    invoke-virtual {v8, v14}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_28

    .line 1010
    invoke-virtual {v12, v10}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_28
    const/16 v25, -0x1

    add-int/lit8 v10, v10, -0x1

    goto :goto_1a

    .line 437
    :goto_1b
    invoke-virtual {v12}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-static {v11, v10}, Landroidx/fragment/app/c;->l(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    .line 438
    invoke-virtual {v12}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-static {v8, v10}, Landroidx/fragment/app/c;->l(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    .line 440
    invoke-virtual {v12}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_29

    .line 444
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 445
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    move-object v1, v9

    move-object/from16 v36, v12

    move-object/from16 v14, v31

    move-object/from16 v8, v35

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto/16 :goto_1d

    .line 450
    :cond_29
    invoke-virtual {v6}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v10

    invoke-virtual {v5}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v14

    move-object/from16 v36, v12

    const/4 v12, 0x1

    .line 449
    invoke-static {v10, v14, v0, v11, v12}, Landroidx/fragment/app/s0;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    .line 454
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/b1;->getContainer()Landroid/view/ViewGroup;

    move-result-object v10

    new-instance v14, Landroidx/fragment/app/i;

    invoke-direct {v14, v6, v5, v0, v8}, Landroidx/fragment/app/i;-><init>(Landroidx/fragment/app/b1$c;Landroidx/fragment/app/b1$c;ZLandroidx/collection/ArrayMap;)V

    invoke-static {v10, v14}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 463
    invoke-virtual {v11}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 466
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2a

    const/4 v10, 0x0

    .line 467
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 468
    invoke-virtual {v11, v2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/view/View;

    .line 469
    invoke-virtual {v15, v13, v14}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_1c

    :cond_2a
    const/4 v10, 0x0

    move-object/from16 v14, v31

    .line 473
    :goto_1c
    invoke-virtual {v8}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 476
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 477
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 478
    invoke-virtual {v8, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_2b

    .line 485
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/b1;->getContainer()Landroid/view/ViewGroup;

    move-result-object v2

    new-instance v8, Landroidx/fragment/app/j;

    invoke-direct {v8, v15, v1, v4}, Landroidx/fragment/app/j;-><init>(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v2, v8}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    const/16 v29, 0x1

    .line 498
    :cond_2b
    invoke-virtual {v15, v13, v3, v7}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v21, v13

    move-object/from16 v22, v9

    move-object/from16 v16, v13

    .line 503
    invoke-virtual/range {v15 .. v22}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v1, v22

    .line 508
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v8, v35

    invoke-virtual {v8, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    invoke-virtual {v8, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_2c
    move-object/from16 v34, v1

    move-object/from16 v30, v2

    move-object/from16 v32, v8

    move-object v1, v9

    move-object/from16 v33, v10

    move-object v8, v11

    move-object/from16 v36, v12

    move-object/from16 v31, v14

    const/4 v12, 0x1

    const/16 v25, -0x1

    move-object/from16 v14, v31

    :goto_1d
    move-object v9, v1

    move-object v11, v8

    move-object/from16 v2, v30

    move-object/from16 v8, v32

    move-object/from16 v10, v33

    move-object/from16 v1, v34

    move-object/from16 v12, v36

    const/16 v24, 0x1

    goto/16 :goto_9

    :cond_2d
    move-object/from16 v34, v1

    move-object/from16 v30, v2

    move-object/from16 v32, v8

    move-object v1, v9

    move-object/from16 v33, v10

    move-object v8, v11

    move-object/from16 v36, v12

    move-object/from16 v31, v14

    const/4 v12, 0x1

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 519
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/c$d;

    .line 520
    invoke-virtual {v11}, Landroidx/fragment/app/c$c;->b()Z

    move-result v14

    iget-object v12, v11, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/b1$c;

    if-eqz v14, :cond_2e

    .line 522
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    invoke-virtual {v11}, Landroidx/fragment/app/c$c;->a()V

    :goto_1f
    const/4 v12, 0x1

    goto :goto_1e

    .line 526
    :cond_2e
    iget-object v14, v11, Landroidx/fragment/app/c$d;->c:Ljava/lang/Object;

    invoke-virtual {v15, v14}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v13, :cond_30

    if-eq v12, v5, :cond_2f

    if-ne v12, v6, :cond_30

    :cond_2f
    const/16 v16, 0x1

    goto :goto_20

    :cond_30
    const/16 v16, 0x0

    :goto_20
    if-nez v14, :cond_32

    if-nez v16, :cond_31

    .line 536
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    invoke-virtual {v11}, Landroidx/fragment/app/c$c;->a()V

    :cond_31
    move-object/from16 p2, v2

    move-object/from16 v16, v3

    move-object/from16 v25, v6

    move-object/from16 v3, v31

    move-object/from16 v14, v32

    const/4 v6, 0x0

    goto/16 :goto_24

    :cond_32
    move-object/from16 p2, v2

    .line 541
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v25, v6

    .line 543
    invoke-virtual {v12}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v6

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    .line 542
    invoke-static {v6, v2}, Landroidx/fragment/app/c;->j(Landroid/view/View;Ljava/util/ArrayList;)V

    if-eqz v16, :cond_34

    if-ne v12, v5, :cond_33

    .line 547
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_21

    .line 549
    :cond_33
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 552
    :cond_34
    :goto_21
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 553
    invoke-virtual {v15, v14, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    move-object v6, v2

    move-object/from16 v16, v3

    move-object v2, v14

    goto :goto_22

    .line 555
    :cond_35
    invoke-virtual {v15, v14, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v14

    move-object/from16 v18, v2

    move-object/from16 v16, v14

    .line 556
    invoke-virtual/range {v15 .. v22}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v2, v16

    move-object/from16 v6, v18

    .line 559
    invoke-virtual {v12}, Landroidx/fragment/app/b1$c;->getFinalState()Landroidx/fragment/app/b1$c$b;

    move-result-object v14

    move-object/from16 v16, v3

    move-object/from16 v3, v34

    if-ne v14, v3, :cond_36

    move-object/from16 v14, v33

    .line 563
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 566
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v34, v3

    .line 568
    invoke-virtual {v12}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 570
    invoke-virtual {v12}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    .line 569
    invoke-virtual {v15, v2, v3, v14}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 577
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/b1;->getContainer()Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v14, Landroidx/fragment/app/k;

    invoke-direct {v14, v6}, Landroidx/fragment/app/k;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v3, v14}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    goto :goto_22

    :cond_36
    move-object/from16 v34, v3

    .line 586
    :goto_22
    invoke-virtual {v12}, Landroidx/fragment/app/b1$c;->getFinalState()Landroidx/fragment/app/b1$c$b;

    move-result-object v3

    move-object/from16 v14, v32

    if-ne v3, v14, :cond_38

    .line 587
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v29, :cond_37

    .line 589
    invoke-virtual {v15, v2, v4}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_37
    move-object/from16 v3, v31

    goto :goto_23

    :cond_38
    move-object/from16 v3, v31

    .line 592
    invoke-virtual {v15, v2, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 594
    :goto_23
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    iget-boolean v6, v11, Landroidx/fragment/app/c$d;->d:Z

    if-eqz v6, :cond_39

    const/4 v6, 0x0

    .line 598
    invoke-virtual {v15, v9, v2, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    goto :goto_24

    :cond_39
    const/4 v6, 0x0

    .line 602
    invoke-virtual {v15, v10, v2, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    :goto_24
    move-object/from16 v2, p2

    move-object/from16 v31, v3

    move-object/from16 v32, v14

    move-object/from16 v3, v16

    move-object/from16 v6, v25

    goto/16 :goto_1f

    :cond_3a
    move-object/from16 v25, v6

    .line 610
    invoke-virtual {v15, v9, v10, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 614
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/c$d;

    .line 615
    invoke-virtual {v4}, Landroidx/fragment/app/c$c;->b()Z

    move-result v6

    if-eqz v6, :cond_3b

    goto :goto_25

    .line 621
    :cond_3b
    iget-object v6, v4, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/b1$c;

    move-object/from16 v9, v25

    if-eqz v13, :cond_3d

    if-eq v6, v5, :cond_3c

    if-ne v6, v9, :cond_3d

    :cond_3c
    const/4 v10, 0x1

    goto :goto_26

    :cond_3d
    const/4 v10, 0x0

    .line 623
    :goto_26
    iget-object v11, v4, Landroidx/fragment/app/c$d;->c:Ljava/lang/Object;

    if-nez v11, :cond_3f

    if-eqz v10, :cond_3e

    goto :goto_27

    :cond_3e
    move-object/from16 v10, v30

    goto :goto_29

    .line 626
    :cond_3f
    :goto_27
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/b1;->getContainer()Landroid/view/ViewGroup;

    move-result-object v10

    invoke-static {v10}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_41

    .line 627
    invoke-static/range {v23 .. v23}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v10

    if-eqz v10, :cond_40

    .line 628
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "SpecialEffectsController: Container "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/b1;->getContainer()Landroid/view/ViewGroup;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " has not been laid out. Completing operation "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v10, v30

    .line 628
    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :cond_40
    move-object/from16 v10, v30

    .line 633
    :goto_28
    invoke-virtual {v4}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_29

    :cond_41
    move-object/from16 v10, v30

    .line 636
    invoke-virtual {v6}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v6

    .line 638
    new-instance v11, Landroidx/fragment/app/l;

    invoke-direct {v11, v4}, Landroidx/fragment/app/l;-><init>(Landroidx/fragment/app/c$d;)V

    .line 635
    iget-object v4, v4, Landroidx/fragment/app/c$c;->b:Landroidx/core/os/CancellationSignal;

    invoke-virtual {v15, v6, v2, v4, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V

    :goto_29
    move-object/from16 v25, v9

    move-object/from16 v30, v10

    goto :goto_25

    :cond_42
    move-object/from16 v10, v30

    .line 650
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/b1;->getContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_43

    :goto_2a
    const/4 v2, 0x0

    goto :goto_2b

    :cond_43
    const/4 v3, 0x4

    .line 655
    invoke-static {v0, v3}, Landroidx/fragment/app/s0;->k(Ljava/util/ArrayList;I)V

    .line 657
    invoke-static {v1}, Landroidx/fragment/app/FragmentTransitionImpl;->c(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 659
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/b1;->getContainer()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v15, v4, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 660
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/b1;->getContainer()Landroid/view/ViewGroup;

    move-result-object v2

    move-object/from16 v4, v36

    invoke-static {v2, v7, v1, v3, v4}, Landroidx/fragment/app/FragmentTransitionImpl;->d(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/ArrayMap;)V

    const/4 v2, 0x0

    .line 664
    invoke-static {v0, v2}, Landroidx/fragment/app/s0;->k(Ljava/util/ArrayList;I)V

    .line 665
    invoke-virtual {v15, v13, v7, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 117
    :goto_2b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/b1;->getContainer()Landroid/view/ViewGroup;

    move-result-object v12

    .line 133
    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 134
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/c$b;

    .line 139
    invoke-virtual {v6}, Landroidx/fragment/app/c$c;->b()Z

    move-result v7

    if-eqz v7, :cond_44

    .line 141
    invoke-virtual {v6}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_2c

    .line 144
    :cond_44
    invoke-virtual {v6, v1}, Landroidx/fragment/app/c$b;->c(Landroid/content/Context;)Landroidx/fragment/app/x$a;

    move-result-object v7

    if-nez v7, :cond_45

    .line 147
    invoke-virtual {v6}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_2c

    .line 151
    :cond_45
    iget-object v7, v7, Landroidx/fragment/app/x$a;->b:Landroid/animation/Animator;

    if-nez v7, :cond_46

    .line 153
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 159
    :cond_46
    iget-object v15, v6, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/b1$c;

    invoke-virtual {v15}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v9

    .line 160
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_48

    .line 162
    invoke-static/range {v23 .. v23}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 163
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "Ignoring Animator set on "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " as this Fragment was involved in a Transition."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_47
    invoke-virtual {v6}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_2c

    .line 172
    :cond_48
    invoke-virtual {v15}, Landroidx/fragment/app/b1$c;->getFinalState()Landroidx/fragment/app/b1$c$b;

    move-result-object v5

    move-object/from16 v11, v34

    if-ne v5, v11, :cond_49

    const/4 v14, 0x1

    goto :goto_2d

    :cond_49
    const/4 v14, 0x0

    :goto_2d
    move-object/from16 v5, v33

    if-eqz v14, :cond_4a

    .line 177
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 179
    :cond_4a
    iget-object v13, v9, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    .line 180
    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    move-object/from16 v34, v11

    .line 181
    new-instance v11, Landroidx/fragment/app/e;

    move-object/from16 v16, v6

    invoke-direct/range {v11 .. v16}, Landroidx/fragment/app/e;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/b1$c;Landroidx/fragment/app/c$b;)V

    invoke-virtual {v7, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 193
    invoke-virtual {v7, v13}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 194
    invoke-virtual {v7}, Landroid/animation/Animator;->start()V

    .line 197
    new-instance v9, Landroidx/fragment/app/f;

    invoke-direct {v9, v7}, Landroidx/fragment/app/f;-><init>(Landroid/animation/Animator;)V

    iget-object v6, v6, Landroidx/fragment/app/c$c;->b:Landroidx/core/os/CancellationSignal;

    invoke-virtual {v6, v9}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    move-object/from16 v33, v5

    const/4 v5, 0x1

    goto/16 :goto_2c

    .line 206
    :cond_4b
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/c$b;

    .line 759
    iget-object v4, v3, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/b1$c;

    .line 209
    invoke-virtual {v4}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v6

    .line 210
    const-string v7, "Ignoring Animation set on "

    if-eqz v0, :cond_4d

    .line 211
    invoke-static/range {v23 .. v23}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " as Animations cannot run alongside Transitions."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_4c
    invoke-virtual {v3}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_2e

    :cond_4d
    if-eqz v5, :cond_4f

    .line 220
    invoke-static/range {v23 .. v23}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " as Animations cannot run alongside Animators."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_4e
    invoke-virtual {v3}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_2e

    .line 229
    :cond_4f
    iget-object v6, v6, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    .line 231
    invoke-virtual {v3, v1}, Landroidx/fragment/app/c$b;->c(Landroid/content/Context;)Landroidx/fragment/app/x$a;

    move-result-object v7

    invoke-static {v7}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/x$a;

    iget-object v7, v7, Landroidx/fragment/app/x$a;->a:Landroid/view/animation/Animation;

    .line 230
    invoke-static {v7}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/animation/Animation;

    .line 232
    invoke-virtual {v4}, Landroidx/fragment/app/b1$c;->getFinalState()Landroidx/fragment/app/b1$c$b;

    move-result-object v4

    .line 233
    sget-object v8, Landroidx/fragment/app/b1$c$b;->a:Landroidx/fragment/app/b1$c$b;

    if-eq v4, v8, :cond_50

    .line 236
    invoke-virtual {v6, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 240
    invoke-virtual {v3}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_2f

    .line 242
    :cond_50
    invoke-virtual {v12, v6}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 243
    new-instance v4, Landroidx/fragment/app/x$b;

    invoke-direct {v4, v7, v12, v6}, Landroidx/fragment/app/x$b;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 245
    new-instance v7, Landroidx/fragment/app/g;

    invoke-direct {v7, v6, v12, v3}, Landroidx/fragment/app/g;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/c$b;)V

    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 268
    invoke-virtual {v6, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 272
    :goto_2f
    new-instance v4, Landroidx/fragment/app/h;

    invoke-direct {v4, v6, v12, v3}, Landroidx/fragment/app/h;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/c$b;)V

    iget-object v3, v3, Landroidx/fragment/app/c$c;->b:Landroidx/core/os/CancellationSignal;

    invoke-virtual {v3, v4}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    goto/16 :goto_2e

    .line 123
    :cond_51
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/b1$c;

    .line 742
    invoke-virtual {v1}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    .line 743
    invoke-virtual {v1}, Landroidx/fragment/app/b1$c;->getFinalState()Landroidx/fragment/app/b1$c$b;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/fragment/app/b1$c$b;->a(Landroid/view/View;)V

    goto :goto_30

    .line 126
    :cond_52
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
