.class Landroidx/fragment/app/c$d;
.super Landroidx/fragment/app/c$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final c:Ljava/lang/Object;

.field public final d:Z

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/b1$c;Landroidx/core/os/CancellationSignal;ZZ)V
    .locals 1

    .line 817
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/c$c;-><init>(Landroidx/fragment/app/b1$c;Landroidx/core/os/CancellationSignal;)V

    .line 818
    invoke-virtual {p1}, Landroidx/fragment/app/b1$c;->getFinalState()Landroidx/fragment/app/b1$c$b;

    move-result-object p2

    sget-object v0, Landroidx/fragment/app/b1$c$b;->b:Landroidx/fragment/app/b1$c$b;

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_0

    .line 820
    invoke-virtual {p1}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 821
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Landroidx/fragment/app/c$d;->c:Ljava/lang/Object;

    if-eqz p3, :cond_1

    .line 825
    invoke-virtual {p1}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result p2

    goto :goto_1

    .line 826
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result p2

    :goto_1
    iput-boolean p2, p0, Landroidx/fragment/app/c$d;->d:Z

    goto :goto_3

    :cond_2
    if-eqz p3, :cond_3

    .line 829
    invoke-virtual {p1}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object p2

    goto :goto_2

    .line 830
    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object p2

    :goto_2
    iput-object p2, p0, Landroidx/fragment/app/c$d;->c:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 832
    iput-boolean p2, p0, Landroidx/fragment/app/c$d;->d:Z

    :goto_3
    if-eqz p4, :cond_5

    if-eqz p3, :cond_4

    .line 837
    invoke-virtual {p1}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/c$d;->e:Ljava/lang/Object;

    return-void

    .line 840
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/c$d;->e:Ljava/lang/Object;

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 843
    iput-object p1, p0, Landroidx/fragment/app/c$d;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Landroidx/fragment/app/FragmentTransitionImpl;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 887
    :cond_0
    sget-object v0, Landroidx/fragment/app/s0;->b:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v0, :cond_1

    .line 888
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 891
    :cond_1
    sget-object v0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v0, :cond_2

    .line 892
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 895
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transition "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for fragment "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    iget-object p1, p0, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/b1$c;

    invoke-virtual {p1}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid framework Transition or AndroidX Transition"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSharedElementTransition()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 862
    iget-object v0, p0, Landroidx/fragment/app/c$d;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public hasSharedElementTransition()Z
    .locals 1

    .line 857
    iget-object v0, p0, Landroidx/fragment/app/c$d;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
