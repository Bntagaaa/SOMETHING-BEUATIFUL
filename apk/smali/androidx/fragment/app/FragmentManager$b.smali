.class Landroidx/fragment/app/FragmentManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/s0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$b;->a:Landroidx/fragment/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public onComplete(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/os/CancellationSignal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 460
    invoke-virtual {p2}, Landroidx/core/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 847
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$b;->a:Landroidx/fragment/app/FragmentManager;

    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->m:Ljava/util/Map;

    .line 847
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    if-eqz v2, :cond_0

    .line 848
    invoke-virtual {v2, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 849
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    iget p2, p1, Landroidx/fragment/app/Fragment;->a:I

    const/4 v1, 0x5

    if-ge p2, v1, :cond_0

    .line 1510
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->j()V

    .line 1511
    iget-object p2, v0, Landroidx/fragment/app/FragmentManager;->o:Landroidx/fragment/app/z;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroidx/fragment/app/z;->n(Landroidx/fragment/app/Fragment;Z)V

    const/4 p2, 0x0

    .line 1512
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    .line 1513
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    .line 1516
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/x0;

    .line 1517
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->U:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 1518
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->o:Z

    .line 1522
    iget p2, v0, Landroidx/fragment/app/FragmentManager;->q:I

    invoke-virtual {v0, p2, p1}, Landroidx/fragment/app/FragmentManager;->H(ILandroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public onStart(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/os/CancellationSignal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 833
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$b;->a:Landroidx/fragment/app/FragmentManager;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->m:Ljava/util/Map;

    .line 833
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 834
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
