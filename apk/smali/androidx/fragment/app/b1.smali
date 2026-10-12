.class abstract Landroidx/fragment/app/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/b1$b;,
        Landroidx/fragment/app/b1$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/b1;->b:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/b1;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Landroidx/fragment/app/b1;->d:Z

    .line 90
    iput-boolean v0, p0, Landroidx/fragment/app/b1;->e:Z

    .line 93
    iput-object p1, p0, Landroidx/fragment/app/b1;->a:Landroid/view/ViewGroup;

    return-void
.end method

.method public static f(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/b1;
    .locals 0

    .line 55
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->B()Landroidx/fragment/app/d1;

    move-result-object p1

    .line 56
    invoke-static {p0, p1}, Landroidx/fragment/app/b1;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/d1;)Landroidx/fragment/app/b1;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/view/ViewGroup;Landroidx/fragment/app/d1;)Landroidx/fragment/app/b1;
    .locals 3

    .line 72
    sget v0, Landroidx/fragment/R$id;->special_effects_controller_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 73
    instance-of v2, v1, Landroidx/fragment/app/b1;

    if-eqz v2, :cond_0

    .line 74
    check-cast v1, Landroidx/fragment/app/b1;

    return-object v1

    .line 77
    :cond_0
    invoke-interface {p1, p0}, Landroidx/fragment/app/d1;->createController(Landroid/view/ViewGroup;)Landroidx/fragment/app/b1;

    move-result-object p1

    .line 78
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/b1$c$b;Landroidx/fragment/app/b1$c$a;Landroidx/fragment/app/k0;)V
    .locals 3

    .line 193
    iget-object v0, p0, Landroidx/fragment/app/b1;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 194
    :try_start_0
    new-instance v1, Landroidx/core/os/CancellationSignal;

    invoke-direct {v1}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 149
    iget-object v2, p3, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    .line 196
    invoke-virtual {p0, v2}, Landroidx/fragment/app/b1;->d(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/b1$c;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {v2, p1, p2}, Landroidx/fragment/app/b1$c;->b(Landroidx/fragment/app/b1$c$b;Landroidx/fragment/app/b1$c$a;)V

    .line 201
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 203
    :cond_0
    new-instance v2, Landroidx/fragment/app/b1$b;

    invoke-direct {v2, p1, p2, p3, v1}, Landroidx/fragment/app/b1$b;-><init>(Landroidx/fragment/app/b1$c$b;Landroidx/fragment/app/b1$c$a;Landroidx/fragment/app/k0;Landroidx/core/os/CancellationSignal;)V

    .line 205
    iget-object p1, p0, Landroidx/fragment/app/b1;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance p1, Landroidx/fragment/app/z0;

    invoke-direct {p1, p0, v2}, Landroidx/fragment/app/z0;-><init>(Landroidx/fragment/app/b1;Landroidx/fragment/app/b1$b;)V

    .line 645
    iget-object p2, v2, Landroidx/fragment/app/b1$c;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance p1, Landroidx/fragment/app/a1;

    invoke-direct {p1, p0, v2}, Landroidx/fragment/app/a1;-><init>(Landroidx/fragment/app/b1;Landroidx/fragment/app/b1$b;)V

    .line 645
    iget-object p2, v2, Landroidx/fragment/app/b1$c;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract b(Ljava/util/ArrayList;Z)V
.end method

.method public final c()V
    .locals 7

    .line 260
    iget-boolean v0, p0, Landroidx/fragment/app/b1;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/b1;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 267
    invoke-virtual {p0}, Landroidx/fragment/app/b1;->e()V

    .line 268
    iput-boolean v1, p0, Landroidx/fragment/app/b1;->d:Z

    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/b1;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 272
    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/b1;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 273
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/b1;->c:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 275
    iget-object v3, p0, Landroidx/fragment/app/b1;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 276
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/b1$c;

    const/4 v4, 0x2

    .line 277
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 278
    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: Cancelling operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 281
    :cond_3
    :goto_1
    invoke-virtual {v3}, Landroidx/fragment/app/b1$c;->a()V

    .line 677
    iget-boolean v4, v3, Landroidx/fragment/app/b1$c;->g:Z

    if-nez v4, :cond_2

    .line 285
    iget-object v4, p0, Landroidx/fragment/app/b1;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 289
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/b1;->i()V

    .line 291
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/b1;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 292
    iget-object v3, p0, Landroidx/fragment/app/b1;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 293
    iget-object v3, p0, Landroidx/fragment/app/b1;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 294
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/b1$c;

    .line 295
    invoke-virtual {v4}, Landroidx/fragment/app/b1$c;->c()V

    goto :goto_2

    .line 297
    :cond_5
    iget-boolean v3, p0, Landroidx/fragment/app/b1;->d:Z

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/b1;->b(Ljava/util/ArrayList;Z)V

    .line 298
    iput-boolean v1, p0, Landroidx/fragment/app/b1;->d:Z

    .line 300
    :cond_6
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/b1$c;
    .locals 3

    .line 135
    iget-object v0, p0, Landroidx/fragment/app/b1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/b1$c;

    .line 136
    invoke-virtual {v1}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 565
    iget-boolean v2, v1, Landroidx/fragment/app/b1$c;->f:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e()V
    .locals 9

    .line 304
    iget-object v0, p0, Landroidx/fragment/app/b1;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    .line 305
    iget-object v1, p0, Landroidx/fragment/app/b1;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 306
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/b1;->i()V

    .line 307
    iget-object v2, p0, Landroidx/fragment/app/b1;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/b1$c;

    .line 308
    invoke-virtual {v3}, Landroidx/fragment/app/b1$c;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 312
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/b1;->c:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 313
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/b1$c;

    .line 314
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 315
    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 316
    const-string v6, ""

    goto :goto_2

    .line 317
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroidx/fragment/app/b1;->a:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is not attached to window. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Cancelling running operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 315
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_2
    invoke-virtual {v3}, Landroidx/fragment/app/b1$c;->a()V

    goto :goto_1

    .line 324
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/b1;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 325
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/b1$c;

    .line 326
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 327
    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SpecialEffectsController: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    .line 328
    const-string v7, ""

    goto :goto_4

    .line 329
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroidx/fragment/app/b1;->a:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is not attached to window. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Cancelling pending operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 327
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_5
    invoke-virtual {v3}, Landroidx/fragment/app/b1$c;->a()V

    goto :goto_3

    .line 334
    :cond_6
    monitor-exit v1

    return-void

    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getContainer()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 98
    iget-object v0, p0, Landroidx/fragment/app/b1;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final h()V
    .locals 7

    .line 232
    iget-object v0, p0, Landroidx/fragment/app/b1;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 233
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/b1;->i()V

    const/4 v1, 0x0

    .line 235
    iput-boolean v1, p0, Landroidx/fragment/app/b1;->e:Z

    .line 236
    iget-object v2, p0, Landroidx/fragment/app/b1;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 237
    iget-object v3, p0, Landroidx/fragment/app/b1;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/b1$c;

    .line 239
    invoke-virtual {v3}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-static {v4}, Landroidx/fragment/app/b1$c$b;->c(Landroid/view/View;)Landroidx/fragment/app/b1$c$b;

    move-result-object v4

    .line 240
    invoke-virtual {v3}, Landroidx/fragment/app/b1$c;->getFinalState()Landroidx/fragment/app/b1$c$b;

    move-result-object v5

    sget-object v6, Landroidx/fragment/app/b1$c$b;->b:Landroidx/fragment/app/b1$c$b;

    if-ne v5, v6, :cond_1

    if-eq v4, v6, :cond_1

    .line 242
    invoke-virtual {v3}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 3418
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    if-nez v2, :cond_0

    goto :goto_1

    .line 3421
    :cond_0
    iget-boolean v1, v2, Landroidx/fragment/app/Fragment$e;->w:Z

    .line 245
    :goto_1
    iput-boolean v1, p0, Landroidx/fragment/app/b1;->e:Z

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 249
    :cond_2
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i()V
    .locals 4

    .line 338
    iget-object v0, p0, Landroidx/fragment/app/b1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/b1$c;

    .line 552
    iget-object v2, v1, Landroidx/fragment/app/b1$c;->b:Landroidx/fragment/app/b1$c$a;

    .line 340
    sget-object v3, Landroidx/fragment/app/b1$c$a;->b:Landroidx/fragment/app/b1$c$a;

    if-ne v2, v3, :cond_0

    .line 341
    invoke-virtual {v1}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 342
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v2

    .line 343
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-static {v2}, Landroidx/fragment/app/b1$c$b;->b(I)Landroidx/fragment/app/b1$c$b;

    move-result-object v2

    .line 344
    sget-object v3, Landroidx/fragment/app/b1$c$a;->a:Landroidx/fragment/app/b1$c$a;

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/b1$c;->b(Landroidx/fragment/app/b1$c$b;Landroidx/fragment/app/b1$c$a;)V

    goto :goto_0

    :cond_1
    return-void
.end method
