.class Landroidx/fragment/app/b1$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/b1$c$a;,
        Landroidx/fragment/app/b1$c$b;
    }
.end annotation


# instance fields
.field public a:Landroidx/fragment/app/b1$c$b;

.field public b:Landroidx/fragment/app/b1$c$a;

.field public final c:Landroidx/fragment/app/Fragment;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/HashSet;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/b1$c$b;Landroidx/fragment/app/b1$c$a;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
    .locals 1

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/b1$c;->d:Ljava/util/ArrayList;

    .line 507
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/b1$c;->e:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 510
    iput-boolean v0, p0, Landroidx/fragment/app/b1$c;->f:Z

    .line 511
    iput-boolean v0, p0, Landroidx/fragment/app/b1$c;->g:Z

    .line 523
    iput-object p1, p0, Landroidx/fragment/app/b1$c;->a:Landroidx/fragment/app/b1$c$b;

    .line 524
    iput-object p2, p0, Landroidx/fragment/app/b1$c;->b:Landroidx/fragment/app/b1$c$a;

    .line 525
    iput-object p3, p0, Landroidx/fragment/app/b1$c;->c:Landroidx/fragment/app/Fragment;

    .line 527
    new-instance p1, Landroidx/fragment/app/c1;

    invoke-direct {p1, p0}, Landroidx/fragment/app/c1;-><init>(Landroidx/fragment/app/b1$c;)V

    invoke-virtual {p4, p1}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 565
    iget-boolean v0, p0, Landroidx/fragment/app/b1$c;->f:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 595
    iput-boolean v0, p0, Landroidx/fragment/app/b1$c;->f:Z

    .line 596
    iget-object v0, p0, Landroidx/fragment/app/b1$c;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 597
    invoke-virtual {p0}, Landroidx/fragment/app/b1$c;->complete()V

    return-void

    .line 599
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 600
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/os/CancellationSignal;

    .line 601
    invoke-virtual {v1}, Landroidx/core/os/CancellationSignal;->cancel()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final b(Landroidx/fragment/app/b1$c$b;Landroidx/fragment/app/b1$c$a;)V
    .locals 6

    .line 607
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    sget-object v0, Landroidx/fragment/app/b1$c$b;->a:Landroidx/fragment/app/b1$c$b;

    const-string v1, " mFinalState = "

    iget-object v2, p0, Landroidx/fragment/app/b1$c;->c:Landroidx/fragment/app/Fragment;

    const-string v3, "SpecialEffectsController: For fragment "

    const-string v4, "FragmentManager"

    const/4 v5, 0x2

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    if-eq p2, v5, :cond_0

    goto/16 :goto_0

    .line 622
    :cond_0
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 623
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/fragment/app/b1$c;->a:Landroidx/fragment/app/b1$c$b;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " -> REMOVED. mLifecycleImpact  = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/fragment/app/b1$c;->b:Landroidx/fragment/app/b1$c$a;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to REMOVING."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_1
    iput-object v0, p0, Landroidx/fragment/app/b1$c;->a:Landroidx/fragment/app/b1$c$b;

    .line 629
    sget-object p1, Landroidx/fragment/app/b1$c$a;->c:Landroidx/fragment/app/b1$c$a;

    iput-object p1, p0, Landroidx/fragment/app/b1$c;->b:Landroidx/fragment/app/b1$c$a;

    return-void

    .line 609
    :cond_2
    iget-object p1, p0, Landroidx/fragment/app/b1$c;->a:Landroidx/fragment/app/b1$c$b;

    if-ne p1, v0, :cond_6

    .line 610
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 611
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/fragment/app/b1$c;->b:Landroidx/fragment/app/b1$c$a;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to ADDING."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_3
    sget-object p1, Landroidx/fragment/app/b1$c$b;->b:Landroidx/fragment/app/b1$c$b;

    iput-object p1, p0, Landroidx/fragment/app/b1$c;->a:Landroidx/fragment/app/b1$c$b;

    .line 618
    sget-object p1, Landroidx/fragment/app/b1$c$a;->b:Landroidx/fragment/app/b1$c$a;

    iput-object p1, p0, Landroidx/fragment/app/b1$c;->b:Landroidx/fragment/app/b1$c$a;

    return-void

    .line 633
    :cond_4
    iget-object p2, p0, Landroidx/fragment/app/b1$c;->a:Landroidx/fragment/app/b1$c$b;

    if-eq p2, v0, :cond_6

    .line 634
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 635
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/b1$c;->a:Landroidx/fragment/app/b1$c$b;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_5
    iput-object p1, p0, Landroidx/fragment/app/b1$c;->a:Landroidx/fragment/app/b1$c$b;

    :cond_6
    :goto_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public complete()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 686
    iget-boolean v0, p0, Landroidx/fragment/app/b1$c;->g:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    .line 689
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpecialEffectsController: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has called complete."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    .line 693
    iput-boolean v0, p0, Landroidx/fragment/app/b1$c;->g:Z

    .line 694
    iget-object v0, p0, Landroidx/fragment/app/b1$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 695
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final completeSpecialEffect(Landroidx/core/os/CancellationSignal;)V
    .locals 1
    .param p1    # Landroidx/core/os/CancellationSignal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 671
    iget-object v0, p0, Landroidx/fragment/app/b1$c;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 672
    invoke-virtual {p0}, Landroidx/fragment/app/b1$c;->complete()V

    :cond_0
    return-void
.end method

.method public getFinalState()Landroidx/fragment/app/b1$c$b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 542
    iget-object v0, p0, Landroidx/fragment/app/b1$c;->a:Landroidx/fragment/app/b1$c$b;

    return-object v0
.end method

.method public final getFragment()Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 561
    iget-object v0, p0, Landroidx/fragment/app/b1$c;->c:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public final markStartedSpecialEffect(Landroidx/core/os/CancellationSignal;)V
    .locals 1
    .param p1    # Landroidx/core/os/CancellationSignal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 659
    invoke-virtual {p0}, Landroidx/fragment/app/b1$c;->c()V

    .line 660
    iget-object v0, p0, Landroidx/fragment/app/b1$c;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Operation {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 574
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    const-string v1, "} {mFinalState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    iget-object v1, p0, Landroidx/fragment/app/b1$c;->a:Landroidx/fragment/app/b1$c$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 579
    const-string v1, "} {mLifecycleImpact = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    iget-object v1, p0, Landroidx/fragment/app/b1$c;->b:Landroidx/fragment/app/b1$c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 583
    const-string v1, "} {mFragment = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    iget-object v1, p0, Landroidx/fragment/app/b1$c;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 587
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
