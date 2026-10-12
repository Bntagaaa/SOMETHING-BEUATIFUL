.class public abstract Landroidx/fragment/app/FragmentManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/FragmentResultOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentManager$g;,
        Landroidx/fragment/app/FragmentManager$h;,
        Landroidx/fragment/app/FragmentManager$l;,
        Landroidx/fragment/app/FragmentManager$k;,
        Landroidx/fragment/app/FragmentManager$j;,
        Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;,
        Landroidx/fragment/app/FragmentManager$i;,
        Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;,
        Landroidx/fragment/app/FragmentManager$BackStackEntry;
    }
.end annotation


# static fields
.field public static N:Z = false

.field public static O:Z = true

.field public static final POP_BACK_STACK_INCLUSIVE:I = 0x1


# instance fields
.field public A:Landroidx/activity/result/ActivityResultLauncher;

.field public B:Ljava/util/ArrayDeque;

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Ljava/util/ArrayList;

.field public I:Ljava/util/ArrayList;

.field public J:Ljava/util/ArrayList;

.field public K:Ljava/util/ArrayList;

.field public L:Landroidx/fragment/app/h0;

.field public final M:Ljava/lang/Runnable;

.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public final c:Landroidx/fragment/app/l0;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public final f:Landroidx/fragment/app/y;

.field public g:Landroidx/activity/OnBackPressedDispatcher;

.field public final h:Landroidx/activity/OnBackPressedCallback;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/Map;

.field public final k:Ljava/util/Map;

.field public l:Ljava/util/ArrayList;

.field public final m:Ljava/util/Map;

.field public final n:Landroidx/fragment/app/FragmentManager$b;

.field public final o:Landroidx/fragment/app/z;

.field public final p:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public q:I

.field public r:Landroidx/fragment/app/FragmentHostCallback;

.field public s:Landroidx/fragment/app/FragmentContainer;

.field public t:Landroidx/fragment/app/Fragment;

.field public u:Landroidx/fragment/app/Fragment;

.field public v:Landroidx/fragment/app/FragmentFactory;

.field public final w:Landroidx/fragment/app/FragmentFactory;

.field public final x:Landroidx/fragment/app/FragmentManager$d;

.field public y:Landroidx/activity/result/ActivityResultLauncher;

.field public z:Landroidx/activity/result/ActivityResultLauncher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    .line 426
    new-instance v0, Landroidx/fragment/app/l0;

    invoke-direct {v0}, Landroidx/fragment/app/l0;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    .line 429
    new-instance v0, Landroidx/fragment/app/y;

    invoke-direct {v0, p0}, Landroidx/fragment/app/y;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->f:Landroidx/fragment/app/y;

    .line 432
    new-instance v0, Landroidx/fragment/app/FragmentManager$a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->h:Landroidx/activity/OnBackPressedCallback;

    .line 440
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 442
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 443
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->j:Ljava/util/Map;

    .line 444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 445
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->k:Ljava/util/Map;

    .line 448
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 449
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->m:Ljava/util/Map;

    .line 450
    new-instance v0, Landroidx/fragment/app/FragmentManager$b;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$b;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/FragmentManager$b;

    .line 465
    new-instance v0, Landroidx/fragment/app/z;

    invoke-direct {v0, p0}, Landroidx/fragment/app/z;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->o:Landroidx/fragment/app/z;

    .line 467
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, -0x1

    .line 470
    iput v0, p0, Landroidx/fragment/app/FragmentManager;->q:I

    const/4 v0, 0x0

    .line 477
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/FragmentFactory;

    .line 478
    new-instance v0, Landroidx/fragment/app/FragmentManager$c;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$c;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/FragmentFactory;

    .line 487
    new-instance v0, Landroidx/fragment/app/FragmentManager$d;

    .line 488
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/FragmentManager$d;

    .line 500
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->B:Ljava/util/ArrayDeque;

    .line 521
    new-instance v0, Landroidx/fragment/app/FragmentManager$e;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$e;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->M:Ljava/lang/Runnable;

    return-void
.end method

.method public static D(I)Z
    .locals 1

    .line 141
    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->N:Z

    if-nez v0, :cond_1

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static E(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    .line 3459
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->D:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    if-nez v0, :cond_3

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    .line 3447
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    .line 3447
    invoke-virtual {p0}, Landroidx/fragment/app/l0;->e()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_2

    .line 3449
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->E(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    return v0
.end method

.method public static F(Landroidx/fragment/app/Fragment;)Z
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    .line 633
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    .line 635
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 639
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v0, Landroidx/fragment/app/FragmentManager;->t:Landroidx/fragment/app/Fragment;

    .line 640
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->F(Landroidx/fragment/app/Fragment;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static W(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x2

    .line 1764
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "show: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    :cond_0
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1766
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->z:Z

    .line 1769
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->N:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->N:Z

    :cond_1
    return-void
.end method

.method public static enableDebugLogging(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    sput-boolean p0, Landroidx/fragment/app/FragmentManager;->N:Z

    return-void
.end method

.method public static enableNewStateManager(Z)V
    .locals 0
    .annotation build Landroidx/fragment/app/FragmentStateManagerControl;
    .end annotation

    .line 124
    sput-boolean p0, Landroidx/fragment/app/FragmentManager;->O:Z

    return-void
.end method

.method public static findFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Landroid/view/View;",
            ")TF;"
        }
    .end annotation

    move-object v0, p0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1013
    sget v2, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 1014
    instance-of v3, v2, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_0

    .line 1015
    check-cast v2, Landroidx/fragment/app/Fragment;

    goto :goto_1

    :cond_0
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_1

    move-object v1, v2

    goto :goto_2

    .line 1000
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1001
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    return-object v1

    .line 983
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not have a Fragment set"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;
    .locals 1

    .line 2430
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    .line 2434
    :cond_0
    iget v0, p1, Landroidx/fragment/app/Fragment;->x:I

    if-gtz v0, :cond_1

    goto :goto_0

    .line 2441
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->s:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2442
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->s:Landroidx/fragment/app/FragmentContainer;

    iget p1, p1, Landroidx/fragment/app/Fragment;->x:I

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 2444
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 2445
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final B()Landroidx/fragment/app/d1;
    .locals 1

    .line 3370
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->t:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3375
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->B()Landroidx/fragment/app/d1;

    move-result-object v0

    return-object v0

    .line 3377
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/FragmentManager$d;

    return-object v0
.end method

.method public final C(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x2

    .line 1747
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hide: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->z:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1749
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->z:Z

    .line 1752
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->N:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->N:Z

    .line 1753
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->V(Landroidx/fragment/app/Fragment;)V

    :cond_1
    return-void
.end method

.method public final G(Landroidx/fragment/app/Fragment;)V
    .locals 6

    .line 1591
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    .line 291
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    iget-object v1, v1, Landroidx/fragment/app/l0;->b:Ljava/util/HashMap;

    .line 291
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1522
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->q:I

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentManager;->H(ILandroidx/fragment/app/Fragment;)V

    .line 1600
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1601
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->M:Z

    if-eqz v3, :cond_3

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 1603
    iget v3, p1, Landroidx/fragment/app/Fragment;->O:F

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-lez v5, :cond_0

    .line 1604
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1606
    :cond_0
    iput v4, p1, Landroidx/fragment/app/Fragment;->O:F

    .line 1607
    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->M:Z

    .line 1609
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 247
    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->b:Landroid/content/Context;

    .line 3308
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    .line 3311
    :cond_1
    iget-boolean v3, v3, Landroidx/fragment/app/Fragment$e;->c:Z

    .line 1609
    :goto_0
    invoke-static {v0, p1, v1, v3}, Landroidx/fragment/app/x;->a(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/x$a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1612
    iget-object v3, v0, Landroidx/fragment/app/x$a;->a:Landroid/view/animation/Animation;

    if-eqz v3, :cond_2

    .line 1613
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 1615
    :cond_2
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    iget-object v0, v0, Landroidx/fragment/app/x$a;->b:Landroid/animation/Animator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1616
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1621
    :cond_3
    :goto_1
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->N:Z

    if-eqz v0, :cond_10

    .line 1536
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 1537
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 247
    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->b:Landroid/content/Context;

    .line 1538
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->z:Z

    xor-int/2addr v3, v1

    .line 3308
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    if-nez v4, :cond_4

    const/4 v4, 0x0

    goto :goto_2

    .line 3311
    :cond_4
    iget-boolean v4, v4, Landroidx/fragment/app/Fragment$e;->c:Z

    .line 1537
    :goto_2
    invoke-static {v0, p1, v3, v4}, Landroidx/fragment/app/x;->a(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/x$a;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1539
    iget-object v3, v0, Landroidx/fragment/app/x$a;->b:Landroid/animation/Animator;

    if-eqz v3, :cond_8

    .line 1540
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1541
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v0, :cond_7

    .line 3425
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_3

    .line 3428
    :cond_5
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$e;->y:Z

    :goto_3
    if-eqz v0, :cond_6

    .line 3432
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->c()Landroidx/fragment/app/Fragment$e;

    move-result-object v0

    iput-boolean v2, v0, Landroidx/fragment/app/Fragment$e;->y:Z

    goto :goto_4

    .line 1545
    :cond_6
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    .line 1546
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    .line 1547
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1550
    new-instance v5, Landroidx/fragment/app/c0;

    invoke-direct {v5, v0, v4, p1}, Landroidx/fragment/app/c0;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4

    .line 1562
    :cond_7
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1564
    :goto_4
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    goto :goto_8

    :cond_8
    if-eqz v0, :cond_9

    .line 1567
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    iget-object v0, v0, Landroidx/fragment/app/x$a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1568
    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 1570
    :cond_9
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v0, :cond_b

    .line 3425
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_5

    .line 3428
    :cond_a
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$e;->y:Z

    :goto_5
    if-nez v0, :cond_b

    const/16 v0, 0x8

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    .line 1573
    :goto_6
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3425
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_7

    .line 3428
    :cond_c
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$e;->y:Z

    :goto_7
    if-eqz v0, :cond_d

    .line 3432
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->c()Landroidx/fragment/app/Fragment$e;

    move-result-object v0

    iput-boolean v2, v0, Landroidx/fragment/app/Fragment$e;->y:Z

    .line 3463
    :cond_d
    :goto_8
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz v0, :cond_e

    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->E(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3464
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->C:Z

    .line 1580
    :cond_e
    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->N:Z

    .line 1581
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->z:Z

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    return-void

    :cond_f
    const/4 v0, 0x3

    .line 1592
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1593
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring moving "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to state "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroidx/fragment/app/FragmentManager;->q:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "since it is not added to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method

.method public final H(ILandroidx/fragment/app/Fragment;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    .line 1314
    iget-object v1, v4, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    .line 296
    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    iget-object v3, v2, Landroidx/fragment/app/l0;->b:Ljava/util/HashMap;

    .line 296
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/k0;

    const/4 v7, 0x1

    if-nez v1, :cond_0

    .line 1320
    new-instance v1, Landroidx/fragment/app/k0;

    iget-object v3, v0, Landroidx/fragment/app/FragmentManager;->o:Landroidx/fragment/app/z;

    invoke-direct {v1, v3, v2, v4}, Landroidx/fragment/app/k0;-><init>(Landroidx/fragment/app/z;Landroidx/fragment/app/l0;Landroidx/fragment/app/Fragment;)V

    .line 159
    iput v7, v1, Landroidx/fragment/app/k0;->e:I

    :cond_0
    move-object v8, v1

    .line 1333
    iget-boolean v1, v4, Landroidx/fragment/app/Fragment;->n:Z

    const/4 v9, 0x2

    if-eqz v1, :cond_1

    iget-boolean v1, v4, Landroidx/fragment/app/Fragment;->o:Z

    if-eqz v1, :cond_1

    iget v1, v4, Landroidx/fragment/app/Fragment;->a:I

    if-ne v1, v9, :cond_1

    move/from16 v1, p1

    .line 1334
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    move/from16 v1, p1

    .line 1336
    :goto_0
    invoke-virtual {v8}, Landroidx/fragment/app/k0;->d()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1337
    iget v1, v4, Landroidx/fragment/app/Fragment;->a:I

    iget-object v11, v0, Landroidx/fragment/app/FragmentManager;->m:Ljava/util/Map;

    const/4 v12, 0x3

    const-string v13, "FragmentManager"

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v5, -0x1

    if-gt v1, v10, :cond_a

    if-ge v1, v10, :cond_2

    .line 1339
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1343
    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->e(Landroidx/fragment/app/Fragment;)V

    .line 1345
    :cond_2
    iget v1, v4, Landroidx/fragment/app/Fragment;->a:I

    if-eq v1, v5, :cond_3

    if-eqz v1, :cond_4

    if-eq v1, v7, :cond_5

    if-eq v1, v9, :cond_7

    if-eq v1, v3, :cond_8

    if-eq v1, v2, :cond_9

    goto/16 :goto_5

    :cond_3
    if-le v10, v5, :cond_4

    .line 1348
    invoke-virtual {v8}, Landroidx/fragment/app/k0;->c()V

    :cond_4
    if-lez v10, :cond_5

    .line 1353
    invoke-virtual {v8}, Landroidx/fragment/app/k0;->e()V

    :cond_5
    if-le v10, v5, :cond_6

    .line 1361
    invoke-virtual {v8}, Landroidx/fragment/app/k0;->j()V

    :cond_6
    if-le v10, v7, :cond_7

    .line 1365
    invoke-virtual {v8}, Landroidx/fragment/app/k0;->f()V

    :cond_7
    if-le v10, v9, :cond_8

    .line 1370
    invoke-virtual {v8}, Landroidx/fragment/app/k0;->a()V

    :cond_8
    if-le v10, v3, :cond_9

    .line 1375
    invoke-virtual {v8}, Landroidx/fragment/app/k0;->q()V

    :cond_9
    if-le v10, v2, :cond_1a

    .line 1380
    invoke-virtual {v8}, Landroidx/fragment/app/k0;->n()V

    goto/16 :goto_5

    :cond_a
    if-le v1, v10, :cond_1a

    if-eqz v1, :cond_18

    if-eq v1, v7, :cond_16

    if-eq v1, v9, :cond_f

    if-eq v1, v3, :cond_d

    if-eq v1, v2, :cond_c

    const/4 v6, 0x7

    if-eq v1, v6, :cond_b

    goto/16 :goto_5

    :cond_b
    if-ge v10, v6, :cond_c

    .line 1387
    invoke-virtual {v8}, Landroidx/fragment/app/k0;->l()V

    :cond_c
    if-ge v10, v2, :cond_d

    .line 1392
    invoke-virtual {v8}, Landroidx/fragment/app/k0;->r()V

    :cond_d
    if-ge v10, v3, :cond_f

    .line 1397
    invoke-static {v12}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1398
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "movefrom ACTIVITY_CREATED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_e
    iget-object v1, v4, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v1, :cond_f

    .line 1403
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v4, Landroidx/fragment/app/Fragment;->c:Landroid/util/SparseArray;

    if-nez v1, :cond_f

    .line 1404
    invoke-virtual {v8}, Landroidx/fragment/app/k0;->p()V

    :cond_f
    if-ge v10, v9, :cond_16

    .line 1412
    iget-object v1, v4, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v1, :cond_15

    iget-object v2, v4, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eqz v2, :cond_15

    .line 1414
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1415
    iget-object v1, v4, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1417
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->g()Z

    move-result v1

    if-nez v1, :cond_15

    .line 1418
    iget v1, v0, Landroidx/fragment/app/FragmentManager;->q:I

    const/4 v2, 0x0

    if-le v1, v5, :cond_11

    iget-boolean v1, v0, Landroidx/fragment/app/FragmentManager;->F:Z

    if-nez v1, :cond_11

    iget-object v1, v4, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    .line 1419
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_11

    iget v1, v4, Landroidx/fragment/app/Fragment;->O:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_11

    .line 1421
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 247
    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->b:Landroid/content/Context;

    .line 3308
    iget-object v3, v4, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    const/4 v5, 0x0

    if-nez v3, :cond_10

    const/4 v3, 0x0

    goto :goto_1

    .line 3311
    :cond_10
    iget-boolean v3, v3, Landroidx/fragment/app/Fragment$e;->c:Z

    .line 1421
    :goto_1
    invoke-static {v1, v4, v5, v3}, Landroidx/fragment/app/x;->a(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/x$a;

    move-result-object v1

    goto :goto_2

    :cond_11
    const/4 v1, 0x0

    .line 1424
    :goto_2
    iput v2, v4, Landroidx/fragment/app/Fragment;->O:F

    .line 1428
    iget-object v2, v4, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    .line 1429
    iget-object v3, v4, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v1, :cond_13

    .line 1431
    iget-object v5, v0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/FragmentManager$b;

    .line 148
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 149
    new-instance v6, Landroidx/core/os/CancellationSignal;

    invoke-direct {v6}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 150
    new-instance v14, Landroidx/fragment/app/u;

    invoke-direct {v14, v4}, Landroidx/fragment/app/u;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v6, v14}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    .line 161
    invoke-interface {v5, v4, v6}, Landroidx/fragment/app/s0$a;->onStart(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    .line 162
    iget-object v14, v1, Landroidx/fragment/app/x$a;->a:Landroid/view/animation/Animation;

    if-eqz v14, :cond_12

    .line 163
    new-instance v1, Landroidx/fragment/app/x$b;

    invoke-direct {v1, v14, v2, v3}, Landroidx/fragment/app/x$b;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 165
    iget-object v14, v4, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    .line 3381
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->c()Landroidx/fragment/app/Fragment$e;

    move-result-object v15

    iput-object v14, v15, Landroidx/fragment/app/Fragment$e;->a:Landroid/view/View;

    .line 166
    new-instance v14, Landroidx/fragment/app/v;

    invoke-direct {v14, v2, v4, v5, v6}, Landroidx/fragment/app/v;-><init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager$b;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {v1, v14}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 191
    iget-object v5, v4, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    .line 3385
    :cond_12
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->c()Landroidx/fragment/app/Fragment$e;

    move-result-object v14

    iget-object v15, v1, Landroidx/fragment/app/x$a;->b:Landroid/animation/Animator;

    iput-object v15, v14, Landroidx/fragment/app/Fragment$e;->b:Landroid/animation/Animator;

    .line 195
    new-instance v1, Landroidx/fragment/app/w;

    invoke-direct/range {v1 .. v6}, Landroidx/fragment/app/w;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager$b;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {v15, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 208
    iget-object v1, v4, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v15, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 209
    invoke-virtual {v15}, Landroid/animation/Animator;->start()V

    .line 1434
    :cond_13
    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1435
    invoke-static {v9}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1436
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Removing view "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for fragment "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from container "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_14
    iget-object v1, v4, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eq v2, v1, :cond_15

    goto :goto_6

    .line 1451
    :cond_15
    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_16

    .line 1452
    invoke-virtual {v8}, Landroidx/fragment/app/k0;->h()V

    :cond_16
    if-ge v10, v7, :cond_18

    .line 1458
    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_17

    goto :goto_4

    .line 1462
    :cond_17
    invoke-virtual {v8}, Landroidx/fragment/app/k0;->g()V

    :cond_18
    move v7, v10

    :goto_4
    if-gez v7, :cond_19

    .line 1468
    invoke-virtual {v8}, Landroidx/fragment/app/k0;->i()V

    :cond_19
    move v10, v7

    .line 1473
    :cond_1a
    :goto_5
    iget v1, v4, Landroidx/fragment/app/Fragment;->a:I

    if-eq v1, v10, :cond_1c

    .line 1474
    invoke-static {v12}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1475
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveToState: Fragment state for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not updated inline; expected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Landroidx/fragment/app/Fragment;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_1b
    iput v10, v4, Landroidx/fragment/app/Fragment;->a:I

    :cond_1c
    :goto_6
    return-void
.end method

.method public final I(IZ)V
    .locals 3

    .line 1636
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1637
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 1640
    iget p2, p0, Landroidx/fragment/app/FragmentManager;->q:I

    if-ne p1, p2, :cond_2

    goto/16 :goto_6

    .line 1644
    :cond_2
    iput p1, p0, Landroidx/fragment/app/FragmentManager;->q:I

    .line 1646
    sget-boolean p1, Landroidx/fragment/app/FragmentManager;->O:Z

    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    if-eqz p1, :cond_6

    .line 109
    iget-object p1, p2, Landroidx/fragment/app/l0;->a:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iget-object v1, p2, Landroidx/fragment/app/l0;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 110
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/k0;

    if-eqz v0, :cond_3

    .line 112
    invoke-virtual {v0}, Landroidx/fragment/app/k0;->k()V

    goto :goto_1

    .line 118
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/k0;

    if-eqz v0, :cond_5

    .line 120
    invoke-virtual {v0}, Landroidx/fragment/app/k0;->k()V

    .line 123
    iget-object v1, v0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->m:Z

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->f()Z

    move-result v1

    if-nez v1, :cond_5

    .line 125
    invoke-virtual {p2, v0}, Landroidx/fragment/app/l0;->h(Landroidx/fragment/app/k0;)V

    goto :goto_2

    .line 1650
    :cond_6
    invoke-virtual {p2}, Landroidx/fragment/app/l0;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 1651
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->G(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    .line 1657
    :cond_7
    invoke-virtual {p2}, Landroidx/fragment/app/l0;->d()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/k0;

    .line 149
    iget-object v1, v0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    .line 1659
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->M:Z

    if-nez v2, :cond_9

    .line 1660
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->G(Landroidx/fragment/app/Fragment;)V

    .line 1662
    :cond_9
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->m:Z

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->f()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1664
    invoke-virtual {p2, v0}, Landroidx/fragment/app/l0;->h(Landroidx/fragment/app/k0;)V

    goto :goto_4

    .line 1679
    :cond_a
    invoke-virtual {p2}, Landroidx/fragment/app/l0;->d()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/k0;

    .line 1680
    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentManager;->K(Landroidx/fragment/app/k0;)V

    goto :goto_5

    .line 1671
    :cond_b
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->C:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz p1, :cond_c

    iget p2, p0, Landroidx/fragment/app/FragmentManager;->q:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_c

    .line 1672
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    const/4 p1, 0x0

    .line 1673
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->C:Z

    :cond_c
    :goto_6
    return-void
.end method

.method public final J()V
    .locals 2

    .line 2978
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2981
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->D:Z

    .line 2982
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->E:Z

    .line 2983
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    .line 96
    iput-boolean v0, v1, Landroidx/fragment/app/h0;->j:Z

    .line 2984
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 3052
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->J()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final K(Landroidx/fragment/app/k0;)V
    .locals 2

    .line 149
    iget-object v0, p1, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    .line 1293
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->I:Z

    if-eqz v1, :cond_2

    .line 1294
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 1296
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->G:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1299
    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->I:Z

    .line 1300
    sget-boolean v1, Landroidx/fragment/app/FragmentManager;->O:Z

    if-eqz v1, :cond_1

    .line 1301
    invoke-virtual {p1}, Landroidx/fragment/app/k0;->k()V

    return-void

    .line 1522
    :cond_1
    iget p1, p0, Landroidx/fragment/app/FragmentManager;->q:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentManager;->H(ILandroidx/fragment/app/Fragment;)V

    :cond_2
    return-void
.end method

.method public final L(IILjava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    .line 764
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->v(Z)Z

    const/4 v1, 0x1

    .line 765
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->u(Z)V

    .line 767
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    if-gez p1, :cond_0

    if-nez p3, :cond_0

    .line 770
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 771
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 777
    :cond_0
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->H:Ljava/util/ArrayList;

    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->I:Ljava/util/ArrayList;

    move-object v3, p0

    move v7, p1

    move v8, p2

    move-object v6, p3

    invoke-virtual/range {v3 .. v8}, Landroidx/fragment/app/FragmentManager;->M(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 779
    iput-boolean v1, v3, Landroidx/fragment/app/FragmentManager;->b:Z

    .line 781
    :try_start_0
    iget-object p2, v3, Landroidx/fragment/app/FragmentManager;->H:Ljava/util/ArrayList;

    iget-object p3, v3, Landroidx/fragment/app/FragmentManager;->I:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/FragmentManager;->O(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->f()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->f()V

    .line 784
    throw p1

    .line 787
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->Y()V

    .line 2553
    iget-boolean p2, v3, Landroidx/fragment/app/FragmentManager;->G:Z

    iget-object p3, v3, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    if-eqz p2, :cond_2

    .line 2554
    iput-boolean v0, v3, Landroidx/fragment/app/FragmentManager;->G:Z

    .line 1679
    invoke-virtual {p3}, Landroidx/fragment/app/l0;->d()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/k0;

    .line 1680
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->K(Landroidx/fragment/app/k0;)V

    goto :goto_1

    .line 164
    :cond_2
    iget-object p2, p3, Landroidx/fragment/app/l0;->b:Ljava/util/HashMap;

    .line 164
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    const/4 p3, 0x0

    .line 167
    invoke-static {p3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return p1
.end method

.method public final M(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 5

    .line 2577
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-nez p3, :cond_2

    if-gez p4, :cond_2

    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_2

    .line 2581
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-gez p3, :cond_1

    return v1

    .line 2585
    :cond_1
    iget-object p4, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2586
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_2
    if-nez p3, :cond_4

    if-ltz p4, :cond_3

    goto :goto_0

    :cond_3
    const/4 p3, -0x1

    goto :goto_4

    .line 2592
    :cond_4
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_7

    .line 2594
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    if-eqz p3, :cond_5

    .line 2595
    invoke-virtual {v3}, Landroidx/fragment/app/a;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    if-ltz p4, :cond_6

    .line 2598
    iget v3, v3, Landroidx/fragment/app/a;->v:I

    if-ne p4, v3, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    :goto_2
    if-gez v0, :cond_8

    return v1

    :cond_8
    and-int/2addr p5, v2

    if-eqz p5, :cond_b

    :cond_9
    :goto_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_b

    .line 2610
    iget-object p5, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/fragment/app/a;

    if-eqz p3, :cond_a

    .line 2611
    invoke-virtual {p5}, Landroidx/fragment/app/a;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_a
    if-ltz p4, :cond_b

    iget p5, p5, Landroidx/fragment/app/a;->v:I

    if-ne p4, p5, :cond_b

    goto :goto_3

    :cond_b
    move p3, v0

    .line 2620
    :goto_4
    iget-object p4, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    sub-int/2addr p4, v2

    if-ne p3, p4, :cond_c

    return v1

    .line 2623
    :cond_c
    iget-object p4, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    sub-int/2addr p4, v2

    :goto_5
    if-le p4, p3, :cond_d

    .line 2624
    iget-object p5, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2625
    sget-object p5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, -0x1

    goto :goto_5

    :cond_d
    :goto_6
    return v2
.end method

.method public final N(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x2

    .line 1726
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1727
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remove: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroidx/fragment/app/Fragment;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->f()Z

    move-result v0

    .line 1730
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->A:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 1731
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    .line 132
    iget-object v1, v0, Landroidx/fragment/app/l0;->a:Ljava/util/ArrayList;

    .line 132
    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, v0, Landroidx/fragment/app/l0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 134
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->l:Z

    .line 1732
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->E(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 1733
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->C:Z

    .line 1735
    :cond_3
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->m:Z

    .line 1736
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->V(Landroidx/fragment/app/Fragment;)V

    return-void

    :catchall_0
    move-exception p1

    .line 134
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final O(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 2070
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2074
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 2079
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/FragmentManager;->y(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2081
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 2084
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/FragmentTransaction;->r:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    .line 2088
    invoke-virtual {p0, p1, p2, v2, v1}, Landroidx/fragment/app/FragmentManager;->x(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 2093
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    .line 2095
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2096
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/FragmentTransaction;->r:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2100
    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/fragment/app/FragmentManager;->x(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    .line 2106
    invoke-virtual {p0, p1, p2, v2, v0}, Landroidx/fragment/app/FragmentManager;->x(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    :goto_2
    return-void

    .line 2075
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final P(Landroid/os/Parcelable;)V
    .locals 13

    if-nez p1, :cond_0

    goto :goto_0

    .line 2708
    :cond_0
    check-cast p1, Landroidx/fragment/app/g0;

    .line 2709
    iget-object v0, p1, Landroidx/fragment/app/g0;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    iget-object v1, v0, Landroidx/fragment/app/l0;->b:Ljava/util/HashMap;

    .line 51
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2714
    iget-object v1, p1, Landroidx/fragment/app/g0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->o:Landroidx/fragment/app/z;

    const-string v4, "): "

    const/4 v5, 0x2

    const-string v6, "FragmentManager"

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/fragment/app/i0;

    if-eqz v12, :cond_2

    .line 2717
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    .line 129
    iget-object v2, v2, Landroidx/fragment/app/h0;->d:Ljava/util/HashMap;

    .line 129
    iget-object v7, v12, Landroidx/fragment/app/i0;->b:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_4

    .line 2719
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2720
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "restoreSaveState: re-attaching retained "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    :cond_3
    new-instance v7, Landroidx/fragment/app/k0;

    invoke-direct {v7, v3, v0, v2, v12}, Landroidx/fragment/app/k0;-><init>(Landroidx/fragment/app/z;Landroidx/fragment/app/l0;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/i0;)V

    goto :goto_2

    .line 2726
    :cond_4
    new-instance v7, Landroidx/fragment/app/k0;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 247
    iget-object v2, v2, Landroidx/fragment/app/FragmentHostCallback;->b:Landroid/content/Context;

    .line 2727
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 2728
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v11

    iget-object v8, p0, Landroidx/fragment/app/FragmentManager;->o:Landroidx/fragment/app/z;

    iget-object v9, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    invoke-direct/range {v7 .. v12}, Landroidx/fragment/app/k0;-><init>(Landroidx/fragment/app/z;Landroidx/fragment/app/l0;Ljava/lang/ClassLoader;Landroidx/fragment/app/FragmentFactory;Landroidx/fragment/app/i0;)V

    .line 2731
    :goto_2
    iget-object v2, v7, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    iput-object p0, v2, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    .line 2732
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2733
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "restoreSaveState: active ("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    :cond_5
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 247
    iget-object v2, v2, Landroidx/fragment/app/FragmentHostCallback;->b:Landroid/content/Context;

    .line 2735
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroidx/fragment/app/k0;->m(Ljava/lang/ClassLoader;)V

    .line 2736
    invoke-virtual {v0, v7}, Landroidx/fragment/app/l0;->g(Landroidx/fragment/app/k0;)V

    .line 2740
    iget v2, p0, Landroidx/fragment/app/FragmentManager;->q:I

    .line 159
    iput v2, v7, Landroidx/fragment/app/k0;->e:I

    goto/16 :goto_1

    .line 2746
    :cond_6
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Landroidx/fragment/app/h0;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2746
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v7, 0x0

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 2747
    iget-object v8, v2, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    .line 291
    iget-object v9, v0, Landroidx/fragment/app/l0;->b:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_8

    const/4 v7, 0x1

    :cond_8
    if-nez v7, :cond_7

    .line 2748
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2749
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Discarding retained Fragment "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " that was not found in the set of active Fragments "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Landroidx/fragment/app/g0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    :cond_9
    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    invoke-virtual {v7, v2}, Landroidx/fragment/app/h0;->e(Landroidx/fragment/app/Fragment;)V

    .line 2756
    iput-object p0, v2, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    .line 2757
    new-instance v7, Landroidx/fragment/app/k0;

    invoke-direct {v7, v3, v0, v2}, Landroidx/fragment/app/k0;-><init>(Landroidx/fragment/app/z;Landroidx/fragment/app/l0;Landroidx/fragment/app/Fragment;)V

    .line 159
    iput v9, v7, Landroidx/fragment/app/k0;->e:I

    .line 2760
    invoke-virtual {v7}, Landroidx/fragment/app/k0;->k()V

    .line 2761
    iput-boolean v9, v2, Landroidx/fragment/app/Fragment;->m:Z

    .line 2762
    invoke-virtual {v7}, Landroidx/fragment/app/k0;->k()V

    goto :goto_3

    .line 2767
    :cond_a
    iget-object v1, p1, Landroidx/fragment/app/g0;->b:Ljava/util/ArrayList;

    .line 55
    iget-object v2, v0, Landroidx/fragment/app/l0;->a:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz v1, :cond_d

    .line 57
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v2}, Landroidx/fragment/app/l0;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 62
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 63
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "restoreSaveState: added ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_b
    invoke-virtual {v0, v3}, Landroidx/fragment/app/l0;->a(Landroidx/fragment/app/Fragment;)V

    goto :goto_4

    .line 60
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No instantiated fragment for ("

    const-string v1, ")"

    .line 0
    invoke-static {v0, v2, v1}, L_COROUTINE/a;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2770
    :cond_d
    iget-object v1, p1, Landroidx/fragment/app/g0;->c:[Landroidx/fragment/app/b;

    if-eqz v1, :cond_f

    .line 2771
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Landroidx/fragment/app/g0;->c:[Landroidx/fragment/app/b;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 2772
    :goto_5
    iget-object v2, p1, Landroidx/fragment/app/g0;->c:[Landroidx/fragment/app/b;

    array-length v3, v2

    if-ge v1, v3, :cond_10

    .line 2773
    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Landroidx/fragment/app/b;->instantiate(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v2

    .line 2774
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2775
    const-string v3, "restoreAllState: back stack #"

    const-string v8, " (index "

    .line 0
    invoke-static {v1, v3, v8}, L_COROUTINE/a;->o(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2775
    iget v8, v2, Landroidx/fragment/app/a;->v:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    new-instance v3, Landroidx/fragment/app/y0;

    invoke-direct {v3}, Landroidx/fragment/app/y0;-><init>()V

    .line 2778
    new-instance v8, Ljava/io/PrintWriter;

    invoke-direct {v8, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2779
    const-string v3, "  "

    invoke-virtual {v2, v3, v8, v7}, Landroidx/fragment/app/a;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 2780
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    .line 2782
    :cond_e
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    const/4 v1, 0x0

    .line 2785
    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 2787
    :cond_10
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v2, p1, Landroidx/fragment/app/g0;->d:I

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2789
    iget-object v1, p1, Landroidx/fragment/app/g0;->e:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 1839
    invoke-virtual {v0, v1}, Landroidx/fragment/app/l0;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 2790
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/Fragment;

    .line 2791
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->p(Landroidx/fragment/app/Fragment;)V

    .line 2795
    :cond_11
    iget-object v0, p1, Landroidx/fragment/app/g0;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    .line 2796
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_12

    .line 2797
    iget-object v1, p1, Landroidx/fragment/app/g0;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 2798
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 247
    iget-object v2, v2, Landroidx/fragment/app/FragmentHostCallback;->b:Landroid/content/Context;

    .line 2798
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2799
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->j:Ljava/util/Map;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 2802
    :cond_12
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object p1, p1, Landroidx/fragment/app/g0;->h:Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->B:Ljava/util/ArrayDeque;

    return-void
.end method

.method public final Q()Landroid/os/Parcelable;
    .locals 10

    .line 2647
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->z()V

    .line 2648
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->s()V

    const/4 v0, 0x1

    .line 2649
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->v(Z)Z

    .line 2651
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->D:Z

    .line 2652
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    .line 96
    iput-boolean v0, v1, Landroidx/fragment/app/h0;->j:Z

    .line 2655
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v0, Landroidx/fragment/app/l0;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/k0;

    if-eqz v2, :cond_0

    .line 646
    new-instance v4, Landroidx/fragment/app/i0;

    iget-object v5, v2, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    invoke-direct {v4, v5}, Landroidx/fragment/app/i0;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 648
    iget v6, v5, Landroidx/fragment/app/Fragment;->a:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_2

    iget-object v6, v4, Landroidx/fragment/app/i0;->m:Landroid/os/Bundle;

    if-nez v6, :cond_2

    .line 649
    invoke-virtual {v2}, Landroidx/fragment/app/k0;->o()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v4, Landroidx/fragment/app/i0;->m:Landroid/os/Bundle;

    .line 651
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    if-eqz v6, :cond_3

    if-nez v2, :cond_1

    .line 653
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v4, Landroidx/fragment/app/i0;->m:Landroid/os/Bundle;

    .line 655
    :cond_1
    iget-object v2, v4, Landroidx/fragment/app/i0;->m:Landroid/os/Bundle;

    const-string v6, "android:target_state"

    iget-object v7, v5, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget v2, v5, Landroidx/fragment/app/Fragment;->j:I

    if-eqz v2, :cond_3

    .line 659
    iget-object v6, v4, Landroidx/fragment/app/i0;->m:Landroid/os/Bundle;

    const-string v7, "android:target_req_state"

    invoke-virtual {v6, v7, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 666
    :cond_2
    iget-object v2, v5, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    iput-object v2, v4, Landroidx/fragment/app/i0;->m:Landroid/os/Bundle;

    .line 178
    :cond_3
    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Saved state of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Landroidx/fragment/app/i0;->m:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2657
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 2658
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "FragmentManager"

    const-string v1, "saveAllState: no fragments!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v2

    .line 2663
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    .line 190
    iget-object v4, v0, Landroidx/fragment/app/l0;->a:Ljava/util/ArrayList;

    .line 190
    monitor-enter v4

    .line 191
    :try_start_0
    iget-object v5, v0, Landroidx/fragment/app/l0;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 192
    monitor-exit v4

    move-object v5, v2

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 194
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v0, Landroidx/fragment/app/l0;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    iget-object v0, v0, Landroidx/fragment/app/l0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    .line 196
    iget-object v7, v6, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 198
    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveAllState: adding fragment ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 202
    :cond_9
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2667
    :goto_3
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 2668
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 2670
    new-array v2, v0, [Landroidx/fragment/app/b;

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v0, :cond_b

    .line 2672
    new-instance v6, Landroidx/fragment/app/b;

    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/a;

    invoke-direct {v6, v7}, Landroidx/fragment/app/b;-><init>(Landroidx/fragment/app/a;)V

    aput-object v6, v2, v4

    .line 2673
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2674
    const-string v6, "FragmentManager"

    const-string v7, "saveAllState: adding back stack #"

    const-string v8, ": "

    .line 0
    invoke-static {v4, v7, v8}, L_COROUTINE/a;->o(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2674
    iget-object v8, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 2675
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2674
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2681
    :cond_b
    new-instance v0, Landroidx/fragment/app/g0;

    invoke-direct {v0}, Landroidx/fragment/app/g0;-><init>()V

    .line 2682
    iput-object v1, v0, Landroidx/fragment/app/g0;->a:Ljava/util/ArrayList;

    .line 2683
    iput-object v5, v0, Landroidx/fragment/app/g0;->b:Ljava/util/ArrayList;

    .line 2684
    iput-object v2, v0, Landroidx/fragment/app/g0;->c:[Landroidx/fragment/app/b;

    .line 2685
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iput v1, v0, Landroidx/fragment/app/g0;->d:I

    .line 2686
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_c

    .line 2687
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    iput-object v1, v0, Landroidx/fragment/app/g0;->e:Ljava/lang/String;

    .line 2689
    :cond_c
    iget-object v1, v0, Landroidx/fragment/app/g0;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2690
    iget-object v1, v0, Landroidx/fragment/app/g0;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2691
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->B:Ljava/util/ArrayDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/fragment/app/g0;->h:Ljava/util/ArrayList;

    return-object v0

    .line 203
    :goto_5
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final R()V
    .locals 5

    .line 1907
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1908
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->K:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1909
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 1910
    :goto_0
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 1912
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 252
    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->c:Landroid/os/Handler;

    .line 1912
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->M:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1913
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 252
    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->c:Landroid/os/Handler;

    .line 1913
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->M:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1914
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->Y()V

    .line 1916
    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final S(Landroidx/fragment/app/Fragment;Z)V
    .locals 1

    .line 1501
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->A(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1503
    instance-of v0, p1, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v0, :cond_0

    .line 1504
    check-cast p1, Landroidx/fragment/app/FragmentContainerView;

    xor-int/lit8 p2, p2, 0x1

    .line 296
    iput-boolean p2, p1, Landroidx/fragment/app/FragmentContainerView;->d:Z

    :cond_0
    return-void
.end method

.method public final T(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 2

    .line 3301
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    .line 1839
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/l0;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 3301
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    if-ne v0, p0, :cond_1

    .line 3306
    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->R:Landroidx/lifecycle/Lifecycle$State;

    return-void

    .line 3303
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final U(Landroidx/fragment/app/Fragment;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 3260
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    .line 1839
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/l0;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 3260
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 3262
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3265
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/Fragment;

    .line 3266
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/Fragment;

    .line 3267
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->p(Landroidx/fragment/app/Fragment;)V

    .line 3268
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->p(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final V(Landroidx/fragment/app/Fragment;)V
    .locals 5

    .line 2416
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->A(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3280
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 3283
    :cond_0
    iget v3, v1, Landroidx/fragment/app/Fragment$e;->d:I

    :goto_0
    if-nez v1, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    .line 3290
    :cond_1
    iget v4, v1, Landroidx/fragment/app/Fragment$e;->e:I

    :goto_1
    add-int/2addr v4, v3

    if-nez v1, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    .line 3297
    :cond_2
    iget v3, v1, Landroidx/fragment/app/Fragment$e;->f:I

    :goto_2
    add-int/2addr v3, v4

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    .line 3304
    :cond_3
    iget v1, v1, Landroidx/fragment/app/Fragment$e;->g:I

    :goto_3
    add-int/2addr v1, v3

    if-lez v1, :cond_7

    .line 2420
    sget v1, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 2421
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2423
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 3308
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    if-nez p1, :cond_5

    goto :goto_4

    .line 3311
    :cond_5
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment$e;->c:Z

    .line 3315
    :goto_4
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    if-nez p1, :cond_6

    goto :goto_5

    .line 3318
    :cond_6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->c()Landroidx/fragment/app/Fragment$e;

    move-result-object p1

    iput-boolean v2, p1, Landroidx/fragment/app/Fragment$e;->c:Z

    :cond_7
    :goto_5
    return-void
.end method

.method public final X(Ljava/lang/IllegalStateException;)V
    .locals 7

    .line 529
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string v0, "Activity state:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    new-instance v0, Landroidx/fragment/app/y0;

    invoke-direct {v0}, Landroidx/fragment/app/y0;-><init>()V

    .line 532
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 533
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    const-string v3, "Failed dumping state"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "  "

    if-eqz v0, :cond_0

    .line 535
    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v6, v5, v2, v4}, Landroidx/fragment/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 537
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 541
    :cond_0
    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {p0, v6, v5, v2, v0}, Landroidx/fragment/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 543
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    :goto_0
    throw p1
.end method

.method public final Y()V
    .locals 3

    .line 609
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 610
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 611
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->h:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v1, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 612
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 614
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->h:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->t:Landroidx/fragment/app/Fragment;

    .line 619
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->F(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 618
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    return-void

    .line 614
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final a(Landroidx/collection/ArraySet;)V
    .locals 4

    .line 2458
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->q:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x5

    .line 2462
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2463
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v1}, Landroidx/fragment/app/l0;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 2464
    iget v3, v2, Landroidx/fragment/app/Fragment;->a:I

    if-ge v3, v0, :cond_1

    .line 2465
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/FragmentManager;->H(ILandroidx/fragment/app/Fragment;)V

    .line 2466
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->z:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->M:Z

    if-eqz v3, :cond_1

    .line 2467
    invoke-virtual {p1, v2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public addFragmentOnAttachListener(Landroidx/fragment/app/FragmentOnAttachListener;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentOnAttachListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3417
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 813
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->l:Ljava/util/ArrayList;

    .line 816
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k0;
    .locals 3

    const/4 v0, 0x2

    .line 1708
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k0;

    move-result-object v0

    .line 1710
    iput-object p0, p1, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    .line 1711
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/l0;->g(Landroidx/fragment/app/k0;)V

    .line 1712
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->A:Z

    if-nez v2, :cond_2

    .line 1713
    invoke-virtual {v1, p1}, Landroidx/fragment/app/l0;->a(Landroidx/fragment/app/Fragment;)V

    const/4 v1, 0x0

    .line 1714
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->m:Z

    .line 1715
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1716
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->N:Z

    .line 1718
    :cond_1
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->E(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 1719
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->C:Z

    :cond_2
    return-object v0
.end method

.method public beginTransaction()Landroidx/fragment/app/FragmentTransaction;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 575
    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-object v0
.end method

.method public final c(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 2829
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_a

    .line 2830
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 2831
    iput-object p2, p0, Landroidx/fragment/app/FragmentManager;->s:Landroidx/fragment/app/FragmentContainer;

    .line 2832
    iput-object p3, p0, Landroidx/fragment/app/FragmentManager;->t:Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_0

    .line 2837
    new-instance p2, Landroidx/fragment/app/d0;

    invoke-direct {p2, p3}, Landroidx/fragment/app/d0;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentManager;->addFragmentOnAttachListener(Landroidx/fragment/app/FragmentOnAttachListener;)V

    goto :goto_0

    .line 2845
    :cond_0
    instance-of p2, p1, Landroidx/fragment/app/FragmentOnAttachListener;

    if-eqz p2, :cond_1

    .line 2846
    move-object p2, p1

    check-cast p2, Landroidx/fragment/app/FragmentOnAttachListener;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentManager;->addFragmentOnAttachListener(Landroidx/fragment/app/FragmentOnAttachListener;)V

    .line 2849
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->t:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_2

    .line 2853
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->Y()V

    .line 2856
    :cond_2
    instance-of p2, p1, Landroidx/activity/OnBackPressedDispatcherOwner;

    if-eqz p2, :cond_4

    .line 2857
    move-object p2, p1

    check-cast p2, Landroidx/activity/OnBackPressedDispatcherOwner;

    .line 2858
    invoke-interface {p2}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->g:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz p3, :cond_3

    move-object p2, p3

    .line 2860
    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->h:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0, p2, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    :cond_4
    if-eqz p3, :cond_6

    .line 2865
    iget-object p1, p3, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    .line 1100
    iget-object p1, p1, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    .line 168
    iget-object p2, p1, Landroidx/fragment/app/h0;->e:Ljava/util/HashMap;

    .line 168
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/h0;

    if-nez v0, :cond_5

    .line 170
    new-instance v0, Landroidx/fragment/app/h0;

    iget-boolean p1, p1, Landroidx/fragment/app/h0;->g:Z

    invoke-direct {v0, p1}, Landroidx/fragment/app/h0;-><init>(Z)V

    .line 171
    iget-object p1, p3, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2865
    :cond_5
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    goto :goto_1

    .line 2866
    :cond_6
    instance-of p2, p1, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz p2, :cond_7

    .line 2867
    check-cast p1, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-interface {p1}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object p1

    .line 52
    new-instance p2, Landroidx/lifecycle/ViewModelProvider;

    sget-object v0, Landroidx/fragment/app/h0;->k:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {p2, p1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 54
    const-class p1, Landroidx/fragment/app/h0;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/h0;

    .line 2868
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    goto :goto_1

    .line 2870
    :cond_7
    new-instance p1, Landroidx/fragment/app/h0;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/fragment/app/h0;-><init>(Z)V

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    .line 2873
    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result p2

    .line 96
    iput-boolean p2, p1, Landroidx/fragment/app/h0;->j:Z

    .line 2874
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    .line 43
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    iput-object p1, p2, Landroidx/fragment/app/l0;->c:Landroidx/fragment/app/h0;

    .line 2876
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    instance-of p2, p1, Landroidx/activity/result/ActivityResultRegistryOwner;

    if-eqz p2, :cond_9

    .line 2877
    check-cast p1, Landroidx/activity/result/ActivityResultRegistryOwner;

    .line 2878
    invoke-interface {p1}, Landroidx/activity/result/ActivityResultRegistryOwner;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object p1

    if-eqz p3, :cond_8

    .line 2880
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    const-string v0, ":"

    .line 0
    invoke-static {p2, p3, v0}, L_COROUTINE/a;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 2880
    :cond_8
    const-string p2, ""

    .line 2881
    :goto_2
    const-string p3, "FragmentManager:"

    .line 0
    invoke-static {p3, p2}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2883
    const-string p3, "StartActivityForResult"

    .line 0
    invoke-static {p2, p3}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2883
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Landroidx/fragment/app/e0;

    invoke-direct {v1, p0}, Landroidx/fragment/app/e0;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p1, p3, v0, v1}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p3

    iput-object p3, p0, Landroidx/fragment/app/FragmentManager;->y:Landroidx/activity/result/ActivityResultLauncher;

    .line 2910
    const-string p3, "StartIntentSenderForResult"

    .line 0
    invoke-static {p2, p3}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2910
    new-instance v0, Landroidx/fragment/app/FragmentManager$g;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentManager$g;-><init>()V

    new-instance v1, Landroidx/fragment/app/a0;

    invoke-direct {v1, p0}, Landroidx/fragment/app/a0;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p1, p3, v0, v1}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p3

    iput-object p3, p0, Landroidx/fragment/app/FragmentManager;->z:Landroidx/activity/result/ActivityResultLauncher;

    .line 2937
    const-string p3, "RequestPermissions"

    .line 0
    invoke-static {p2, p3}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2937
    new-instance p3, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {p3}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    new-instance v0, Landroidx/fragment/app/b0;

    invoke-direct {v0, p0}, Landroidx/fragment/app/b0;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p1, p2, p3, v0}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->A:Landroidx/activity/result/ActivityResultLauncher;

    :cond_9
    return-void

    .line 2829
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final clearFragmentResult(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 874
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final clearFragmentResultListener(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 918
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentManager$i;

    if-eqz p1, :cond_0

    .line 920
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager$i;->removeObserver()V

    :cond_0
    return-void
.end method

.method public final d(Landroidx/fragment/app/Fragment;)V
    .locals 4

    const/4 v0, 0x2

    .line 1790
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "attach: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->A:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 1792
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->A:Z

    .line 1793
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->l:Z

    if-nez v1, :cond_2

    .line 1794
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/l0;->a(Landroidx/fragment/app/Fragment;)V

    .line 1795
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add from attach: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    :cond_1
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->E(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 1797
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->C:Z

    :cond_2
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1208
    const-string v0, "    "

    .line 0
    invoke-static {p1, v0}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1210
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 373
    iget-object v3, v1, Landroidx/fragment/app/l0;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 374
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 375
    const-string v4, "Active Fragments:"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/k0;

    .line 377
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    .line 380
    iget-object v4, v4, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 381
    invoke-virtual {v4, v2, p2, p3, p4}, Landroidx/fragment/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_0
    const-string v4, "null"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_1
    iget-object p2, v1, Landroidx/fragment/app/l0;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 v1, 0x0

    if-lez p4, :cond_2

    .line 390
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Added Fragments:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p4, :cond_2

    .line 392
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 393
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 394
    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 396
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1213
    :cond_2
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    .line 1214
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 1216
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Fragments Created Menus:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_2
    if-ge p4, p2, :cond_3

    .line 1218
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 1219
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1220
    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 1222
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 1228
    :cond_3
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    .line 1229
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 1231
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_3
    if-ge p4, p2, :cond_4

    .line 1233
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    .line 1234
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1235
    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1236
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 1237
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {v2}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {v2, v0, p3}, Landroidx/fragment/app/a;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 1244
    :cond_4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1245
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Back Stack Index: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1247
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    monitor-enter p2

    .line 1248
    :try_start_0
    iget-object p4, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_5

    .line 1250
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    if-ge v1, p4, :cond_5

    .line 1252
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$j;

    .line 1253
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1254
    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1255
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1256
    const-string v2, ": "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    .line 1260
    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1263
    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1265
    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1266
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1267
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1268
    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1269
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->s:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1270
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->t:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_6

    .line 1271
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1272
    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1273
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->t:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1275
    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1276
    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1277
    iget p2, p0, Landroidx/fragment/app/FragmentManager;->q:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 1278
    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1279
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->D:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1280
    const-string p2, " mStopped="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1281
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->E:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1282
    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1283
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->F:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1284
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->C:Z

    if-eqz p2, :cond_7

    .line 1285
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1286
    const-string p1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1287
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->C:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_7
    return-void

    .line 1260
    :goto_5
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 1485
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    if-eqz v1, :cond_1

    .line 1487
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/os/CancellationSignal;

    .line 1488
    invoke-virtual {v3}, Landroidx/core/os/CancellationSignal;->cancel()V

    goto :goto_0

    .line 1490
    :cond_0
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1510
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->j()V

    .line 1511
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->o:Landroidx/fragment/app/z;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/z;->n(Landroidx/fragment/app/Fragment;Z)V

    const/4 v1, 0x0

    .line 1512
    iput-object v1, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    .line 1513
    iput-object v1, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    .line 1516
    iput-object v1, p1, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/x0;

    .line 1517
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->U:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 1518
    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->o:Z

    .line 1492
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public executePendingTransactions()Z
    .locals 1

    const/4 v0, 0x1

    .line 600
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->v(Z)Z

    move-result v0

    .line 601
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->z()V

    return v0
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    .line 1987
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    .line 1988
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1989
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public findFragmentById(I)Landroidx/fragment/app/Fragment;
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 247
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    iget-object v1, v0, Landroidx/fragment/app/l0;->a:Ljava/util/ArrayList;

    .line 247
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 248
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_0

    .line 249
    iget v4, v3, Landroidx/fragment/app/Fragment;->w:I

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/l0;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/k0;

    if-eqz v1, :cond_2

    .line 257
    iget-object v1, v1, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    iget v2, v1, Landroidx/fragment/app/Fragment;->w:I

    if-ne v2, p1, :cond_2

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 267
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    if-eqz p1, :cond_1

    .line 269
    iget-object v1, v0, Landroidx/fragment/app/l0;->a:Ljava/util/ArrayList;

    .line 269
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 270
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_0

    .line 271
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->y:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 278
    iget-object v0, v0, Landroidx/fragment/app/l0;->b:Ljava/util/HashMap;

    .line 278
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/k0;

    if-eqz v1, :cond_2

    .line 281
    iget-object v1, v1, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->y:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 1830
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public final g()Ljava/util/HashSet;
    .locals 4

    .line 2512
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2514
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v1}, Landroidx/fragment/app/l0;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/k0;

    .line 149
    iget-object v2, v2, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    .line 2515
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 2518
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->B()Landroidx/fragment/app/d1;

    move-result-object v3

    .line 2517
    invoke-static {v2, v3}, Landroidx/fragment/app/b1;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/d1;)Landroidx/fragment/app/b1;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 806
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentManager$BackStackEntry;

    return-object p1
.end method

.method public getBackStackEntryCount()I
    .locals 1

    .line 797
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 954
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1839
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/l0;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 960
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment no longer exists for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": unique id "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->X(Ljava/lang/IllegalStateException;)V

    throw v0
.end method

.method public getFragmentFactory()Landroidx/fragment/app/FragmentFactory;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3334
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/FragmentFactory;

    if-eqz v0, :cond_0

    return-object v0

    .line 3337
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->t:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 3342
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v0

    return-object v0

    .line 3344
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/FragmentFactory;

    return-object v0
.end method

.method public getFragments()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1090
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3297
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public final h(Landroidx/fragment/app/a;ZZZ)V
    .locals 9

    if-eqz p2, :cond_0

    .line 2346
    invoke-virtual {p1, p4}, Landroidx/fragment/app/a;->g(Z)V

    goto :goto_0

    .line 2348
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/a;->f()V

    .line 2350
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2351
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2352
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2353
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    .line 2354
    iget p2, p0, Landroidx/fragment/app/FragmentManager;->q:I

    if-lt p2, v8, :cond_1

    .line 2355
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 247
    iget-object v0, p2, Landroidx/fragment/app/FragmentHostCallback;->b:Landroid/content/Context;

    .line 2355
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->s:Landroidx/fragment/app/FragmentContainer;

    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/FragmentManager$b;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Landroidx/fragment/app/s0;->l(Landroid/content/Context;Landroidx/fragment/app/FragmentContainer;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/FragmentManager$b;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 2360
    iget p2, p0, Landroidx/fragment/app/FragmentManager;->q:I

    invoke-virtual {p0, p2, v8}, Landroidx/fragment/app/FragmentManager;->I(IZ)V

    .line 2363
    :cond_2
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    invoke-virtual {p2}, Landroidx/fragment/app/l0;->e()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_3

    .line 2367
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, p3, Landroidx/fragment/app/Fragment;->M:Z

    if-eqz v0, :cond_3

    iget v0, p3, Landroidx/fragment/app/Fragment;->x:I

    .line 2368
    invoke-virtual {p1, v0}, Landroidx/fragment/app/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2369
    iget v0, p3, Landroidx/fragment/app/Fragment;->O:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_4

    .line 2370
    iget-object v2, p3, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    if-eqz p4, :cond_5

    .line 2373
    iput v1, p3, Landroidx/fragment/app/Fragment;->O:F

    goto :goto_1

    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    .line 2375
    iput v0, p3, Landroidx/fragment/app/Fragment;->O:F

    const/4 v0, 0x0

    .line 2376
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->M:Z

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k0;
    .locals 3

    .line 1694
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    .line 296
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    iget-object v2, v1, Landroidx/fragment/app/l0;->b:Ljava/util/HashMap;

    .line 296
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/k0;

    if-eqz v0, :cond_0

    return-object v0

    .line 1698
    :cond_0
    new-instance v0, Landroidx/fragment/app/k0;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->o:Landroidx/fragment/app/z;

    invoke-direct {v0, v2, v1, p1}, Landroidx/fragment/app/k0;-><init>(Landroidx/fragment/app/z;Landroidx/fragment/app/l0;Landroidx/fragment/app/Fragment;)V

    .line 1701
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 247
    iget-object p1, p1, Landroidx/fragment/app/FragmentHostCallback;->b:Landroid/content/Context;

    .line 1701
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/k0;->m(Ljava/lang/ClassLoader;)V

    .line 1703
    iget p1, p0, Landroidx/fragment/app/FragmentManager;->q:I

    .line 159
    iput p1, v0, Landroidx/fragment/app/k0;->e:I

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 1169
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->F:Z

    return v0
.end method

.method public isStateSaved()Z
    .locals 1

    .line 1864
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->D:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->E:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final j(Landroidx/fragment/app/Fragment;)V
    .locals 4

    const/4 v0, 0x2

    .line 1774
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "detach: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->A:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 1776
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->A:Z

    .line 1777
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz v3, :cond_3

    .line 1779
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "remove from detach: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    .line 132
    iget-object v2, v0, Landroidx/fragment/app/l0;->a:Ljava/util/ArrayList;

    .line 132
    monitor-enter v2

    .line 133
    :try_start_0
    iget-object v0, v0, Landroidx/fragment/app/l0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 134
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->l:Z

    .line 1781
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->E(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1782
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->C:Z

    .line 1784
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->V(Landroidx/fragment/app/Fragment;)V

    return-void

    :catchall_0
    move-exception p1

    .line 134
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    return-void
.end method

.method public final k(Landroid/view/MenuItem;)Z
    .locals 5

    .line 3235
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->q:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    .line 3238
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    .line 3132
    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->z:Z

    if-nez v4, :cond_3

    .line 3133
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    .line 3136
    :cond_2
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, p1}, Landroidx/fragment/app/FragmentManager;->k(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    return v2

    :cond_4
    return v1
.end method

.method public final l(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 8

    .line 3174
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->q:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    .line 3179
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_1

    .line 652
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isMenuVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3097
    iget-boolean v6, v5, Landroidx/fragment/app/Fragment;->z:Z

    const/4 v7, 0x0

    if-nez v6, :cond_3

    .line 3098
    iget-boolean v6, v5, Landroidx/fragment/app/Fragment;->D:Z

    if-eqz v6, :cond_2

    iget-boolean v6, v5, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v6, :cond_2

    .line 3100
    invoke-virtual {v5, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v7, 0x1

    .line 3102
    :cond_2
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v6, p1, p2}, Landroidx/fragment/app/FragmentManager;->l(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    or-int/2addr v7, v6

    :cond_3
    if-eqz v7, :cond_1

    if-nez v3, :cond_4

    .line 3184
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3186
    :cond_4
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_0

    .line 3191
    :cond_5
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->e:Ljava/util/ArrayList;

    if-eqz p1, :cond_8

    .line 3192
    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_8

    .line 3193
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_6

    .line 3194
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 3195
    :cond_6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3200
    :cond_8
    iput-object v3, p0, Landroidx/fragment/app/FragmentManager;->e:Ljava/util/ArrayList;

    return v4
.end method

.method public final m()V
    .locals 2

    const/4 v0, 0x1

    .line 3104
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->F:Z

    .line 3105
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->v(Z)Z

    .line 3106
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->s()V

    const/4 v0, -0x1

    .line 3107
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->r(I)V

    const/4 v0, 0x0

    .line 3108
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 3109
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->s:Landroidx/fragment/app/FragmentContainer;

    .line 3110
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->t:Landroidx/fragment/app/Fragment;

    .line 3111
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->g:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz v1, :cond_0

    .line 3114
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->h:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->remove()V

    .line 3115
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->g:Landroidx/activity/OnBackPressedDispatcher;

    .line 3117
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->y:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_1

    .line 3118
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    .line 3119
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->z:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    .line 3120
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->A:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    :cond_1
    return-void
.end method

.method public final n(Landroid/view/MenuItem;)Z
    .locals 5

    .line 3221
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->q:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    .line 3224
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    .line 3120
    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->z:Z

    if-nez v4, :cond_3

    .line 3121
    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->D:Z

    if-eqz v4, :cond_2

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v4, :cond_2

    .line 3122
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    .line 3126
    :cond_2
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, p1}, Landroidx/fragment/app/FragmentManager;->n(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    return v2

    :cond_4
    return v1
.end method

.method public final o(Landroid/view/Menu;)V
    .locals 3

    .line 3249
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->q:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 3252
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 3142
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->z:Z

    if-nez v2, :cond_1

    .line 3143
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->D:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v2, :cond_2

    .line 3144
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3146
    :cond_2
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentManager;->o(Landroid/view/Menu;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public openTransaction()Landroidx/fragment/app/FragmentTransaction;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 557
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public final p(Landroidx/fragment/app/Fragment;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 3272
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    .line 1839
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/l0;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 3272
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3056
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->F(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    .line 3058
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->k:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 3059
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 3060
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p1, Landroidx/fragment/app/Fragment;->k:Ljava/lang/Boolean;

    .line 3061
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->onPrimaryNavigationFragmentChanged(Z)V

    .line 3062
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    .line 3278
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->Y()V

    .line 3280
    iget-object v0, p1, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->p(Landroidx/fragment/app/Fragment;)V

    :cond_1
    return-void
.end method

.method public popBackStack()V
    .locals 4

    .line 682
    new-instance v0, Landroidx/fragment/app/FragmentManager$k;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/fragment/app/FragmentManager$k;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/FragmentManager;->t(Landroidx/fragment/app/FragmentManager$j;Z)V

    return-void
.end method

.method public popBackStack(II)V
    .locals 2

    if-ltz p1, :cond_0

    .line 740
    new-instance v0, Landroidx/fragment/app/FragmentManager$k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/fragment/app/FragmentManager$k;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentManager;->t(Landroidx/fragment/app/FragmentManager$j;Z)V

    return-void

    .line 738
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad id: "

    .line 0
    invoke-static {p1, v0}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 738
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 709
    new-instance v0, Landroidx/fragment/app/FragmentManager$k;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, v1, p2}, Landroidx/fragment/app/FragmentManager$k;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentManager;->t(Landroidx/fragment/app/FragmentManager$j;Z)V

    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 692
    invoke-virtual {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->L(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    .line 753
    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/FragmentManager;->L(IILjava/lang/String;)Z

    move-result p1

    return p1

    .line 751
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad id: "

    .line 0
    invoke-static {p1, v0}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 751
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 719
    invoke-virtual {p0, v0, p2, p1}, Landroidx/fragment/app/FragmentManager;->L(IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 936
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    if-ne v0, p0, :cond_0

    .line 940
    iget-object p3, p3, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 937
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    const-string v0, " is not currently in the FragmentManager"

    .line 0
    invoke-static {p2, p3, v0}, L_COROUTINE/a;->h(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 937
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->X(Ljava/lang/IllegalStateException;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final q(Landroid/view/Menu;)Z
    .locals 6

    .line 3206
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->q:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    .line 3210
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    .line 652
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isMenuVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3109
    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->z:Z

    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 3110
    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->D:Z

    if-eqz v4, :cond_2

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v4, :cond_2

    .line 3112
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 v5, 0x1

    .line 3114
    :cond_2
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, p1}, Landroidx/fragment/app/FragmentManager;->q(Landroid/view/Menu;)Z

    move-result v3

    or-int/2addr v5, v3

    :cond_3
    if-eqz v5, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public final r(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3126
    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    .line 3127
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    .line 100
    iget-object v2, v2, Landroidx/fragment/app/l0;->b:Ljava/util/HashMap;

    .line 100
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/k0;

    if-eqz v3, :cond_0

    .line 159
    iput p1, v3, Landroidx/fragment/app/k0;->e:I

    goto :goto_0

    .line 3128
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentManager;->I(IZ)V

    .line 3129
    sget-boolean p1, Landroidx/fragment/app/FragmentManager;->O:Z

    if-eqz p1, :cond_2

    .line 3130
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->g()Ljava/util/HashSet;

    move-result-object p1

    .line 3131
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/b1;

    .line 3132
    invoke-virtual {v2}, Landroidx/fragment/app/b1;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 3136
    :cond_2
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    .line 3138
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->v(Z)Z

    return-void

    .line 3136
    :goto_2
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    .line 3137
    throw p1
.end method

.method public registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3395
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->o:Landroidx/fragment/app/z;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/z;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    return-void
.end method

.method public removeFragmentOnAttachListener(Landroidx/fragment/app/FragmentOnAttachListener;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentOnAttachListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3440
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 824
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 825
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 3

    .line 2496
    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->O:Z

    if-eqz v0, :cond_0

    .line 2497
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->g()Ljava/util/HashSet;

    move-result-object v0

    .line 2498
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/b1;

    .line 2499
    invoke-virtual {v1}, Landroidx/fragment/app/b1;->e()V

    goto :goto_0

    .line 2502
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2503
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2504
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->e(Landroidx/fragment/app/Fragment;)V

    .line 1522
    iget v2, p0, Landroidx/fragment/app/FragmentManager;->q:I

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/FragmentManager;->H(ILandroidx/fragment/app/Fragment;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public saveFragmentInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;
    .locals 4
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1155
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    .line 296
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    iget-object v1, v1, Landroidx/fragment/app/l0;->b:Ljava/util/HashMap;

    .line 296
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/k0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1157
    iget-object v2, v0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 673
    iget p1, v2, Landroidx/fragment/app/Fragment;->a:I

    const/4 v2, -0x1

    if-le p1, v2, :cond_0

    .line 674
    invoke-virtual {v0}, Landroidx/fragment/app/k0;->o()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 675
    new-instance v0, Landroidx/fragment/app/Fragment$SavedState;

    invoke-direct {v0, p1}, Landroidx/fragment/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    return-object v1

    .line 1158
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Fragment "

    const-string v3, " is not currently in the FragmentManager"

    .line 0
    invoke-static {v2, p1, v3}, L_COROUTINE/a;->h(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1158
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->X(Ljava/lang/IllegalStateException;)V

    throw v1
.end method

.method public setFragmentFactory(Landroidx/fragment/app/FragmentFactory;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/FragmentFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3320
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/FragmentFactory;

    return-void
.end method

.method public final setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 862
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$i;

    if-eqz v0, :cond_0

    .line 864
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager$i;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentManager$i;->onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 868
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->j:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/fragment/app/FragmentResultListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 882
    invoke-interface {p2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    .line 883
    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 887
    :cond_0
    new-instance v0, Landroidx/fragment/app/FragmentManager$f;

    invoke-direct {v0, p0, p1, p3, p2}, Landroidx/fragment/app/FragmentManager$f;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Landroidx/fragment/app/FragmentResultListener;Landroidx/lifecycle/Lifecycle;)V

    .line 908
    invoke-virtual {p2, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 909
    new-instance v1, Landroidx/fragment/app/FragmentManager$i;

    invoke-direct {v1, p2, p3, v0}, Landroidx/fragment/app/FragmentManager$i;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentResultListener;Landroidx/lifecycle/LifecycleEventObserver;)V

    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->k:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentManager$i;

    if-eqz p1, :cond_1

    .line 912
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager$i;->removeObserver()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final t(Landroidx/fragment/app/FragmentManager$j;Z)V
    .locals 2

    if-nez p2, :cond_3

    .line 1876
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_1

    .line 1877
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->F:Z

    if-eqz p1, :cond_0

    .line 1878
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1880
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has not been attached to a host."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1843
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1844
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1886
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1887
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v1, :cond_5

    if-eqz p2, :cond_4

    .line 1890
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1892
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1894
    :cond_5
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1895
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->R()V

    .line 1896
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1176
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->t:Landroidx/fragment/app/Fragment;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_0

    .line 1180
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1181
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->t:Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1185
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v1, :cond_1

    .line 1186
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1187
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1192
    :cond_1
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Z)V
    .locals 2

    .line 1930
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    if-nez v0, :cond_6

    .line 1934
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_1

    .line 1935
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->F:Z

    if-eqz p1, :cond_0

    .line 1936
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1938
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has not been attached to a host."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1942
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 252
    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->c:Landroid/os/Handler;

    .line 1942
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    if-nez p1, :cond_3

    .line 1843
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 1844
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1950
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->H:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    .line 1951
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->H:Ljava/util/ArrayList;

    .line 1952
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->I:Ljava/util/ArrayList;

    :cond_4
    const/4 p1, 0x1

    .line 1954
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1956
    :try_start_0
    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/FragmentManager;->y(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1958
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    .line 1959
    throw p1

    .line 1943
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1931
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3406
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->o:Landroidx/fragment/app/z;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/z;->unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    return-void
.end method

.method public final v(Z)Z
    .locals 8

    .line 1996
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->u(Z)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1999
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->H:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->I:Ljava/util/ArrayList;

    .line 2537
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2538
    :try_start_0
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2539
    monitor-exit v3

    const/4 v6, 0x0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 2542
    :cond_0
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    .line 2544
    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/FragmentManager$j;

    invoke-interface {v7, v1, v2}, Landroidx/fragment/app/FragmentManager$j;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v7

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2546
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2547
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 252
    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->c:Landroid/os/Handler;

    .line 2547
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->M:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2548
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-eqz v6, :cond_2

    const/4 v0, 0x1

    .line 2000
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    .line 2002
    :try_start_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->H:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->I:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/FragmentManager;->O(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2004
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->f()V

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->f()V

    .line 2005
    throw p1

    .line 2009
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->Y()V

    .line 2553
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->G:Z

    if-eqz v1, :cond_3

    .line 2554
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->G:Z

    .line 1679
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    invoke-virtual {p1}, Landroidx/fragment/app/l0;->d()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/k0;

    .line 1680
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->K(Landroidx/fragment/app/k0;)V

    goto :goto_3

    .line 2011
    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    .line 164
    iget-object p1, p1, Landroidx/fragment/app/l0;->b:Ljava/util/HashMap;

    .line 164
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const/4 v1, 0x0

    .line 167
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return v0

    .line 2548
    :goto_4
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final w(Landroidx/fragment/app/a;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 1963
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->F:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 1967
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentManager;->u(Z)V

    .line 1968
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->H:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->I:Ljava/util/ArrayList;

    invoke-interface {p1, p2, v0}, Landroidx/fragment/app/FragmentManager$j;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 1969
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    .line 1971
    :try_start_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->H:Ljava/util/ArrayList;

    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->I:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/FragmentManager;->O(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1973
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->f()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->f()V

    .line 1974
    throw p1

    .line 1977
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->Y()V

    .line 2553
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->G:Z

    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 2554
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->G:Z

    .line 1679
    invoke-virtual {p2}, Landroidx/fragment/app/l0;->d()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/k0;

    .line 1680
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->K(Landroidx/fragment/app/k0;)V

    goto :goto_1

    .line 164
    :cond_3
    iget-object p1, p2, Landroidx/fragment/app/l0;->b:Ljava/util/HashMap;

    .line 164
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const/4 p2, 0x0

    .line 167
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final x(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 2120
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    iget-boolean v9, v1, Landroidx/fragment/app/FragmentTransaction;->r:Z

    .line 2122
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->J:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 2123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/fragment/app/FragmentManager;->J:Ljava/util/ArrayList;

    goto :goto_0

    .line 2125
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2127
    :goto_0
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->J:Ljava/util/ArrayList;

    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v2}, Landroidx/fragment/app/l0;->f()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2128
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    move v7, v5

    const/4 v11, 0x0

    :goto_1
    const/4 v12, 0x1

    if-ge v7, v6, :cond_12

    .line 2130
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/a;

    .line 2131
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_c

    .line 2133
    iget-object v13, v0, Landroidx/fragment/app/FragmentManager;->J:Ljava/util/ArrayList;

    const/4 v15, 0x0

    .line 555
    :goto_2
    iget-object v10, v8, Landroidx/fragment/app/FragmentTransaction;->c:Ljava/util/ArrayList;

    .line 555
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v15, v14, :cond_b

    .line 556
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/FragmentTransaction$a;

    .line 557
    iget v4, v14, Landroidx/fragment/app/FragmentTransaction$a;->a:I

    if-eq v4, v12, :cond_3

    const/16 v16, 0x1

    const/4 v12, 0x2

    const/16 v5, 0x9

    if-eq v4, v12, :cond_5

    const/4 v12, 0x3

    if-eq v4, v12, :cond_4

    const/4 v12, 0x6

    if-eq v4, v12, :cond_4

    const/4 v12, 0x7

    if-eq v4, v12, :cond_3

    const/16 v12, 0x8

    if-eq v4, v12, :cond_1

    goto :goto_3

    .line 612
    :cond_1
    new-instance v4, Landroidx/fragment/app/FragmentTransaction$a;

    invoke-direct {v4, v5, v1}, Landroidx/fragment/app/FragmentTransaction$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v10, v15, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    .line 615
    iget-object v1, v14, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    :cond_2
    :goto_3
    move/from16 v18, v7

    :goto_4
    const/4 v5, 0x1

    goto/16 :goto_8

    :cond_3
    move/from16 v18, v7

    const/4 v5, 0x1

    goto/16 :goto_7

    .line 564
    :cond_4
    iget-object v4, v14, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 565
    iget-object v4, v14, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    if-ne v4, v1, :cond_2

    .line 566
    new-instance v1, Landroidx/fragment/app/FragmentTransaction$a;

    invoke-direct {v1, v5, v4}, Landroidx/fragment/app/FragmentTransaction$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v10, v15, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v18, v7

    const/4 v1, 0x0

    goto :goto_4

    .line 573
    :cond_5
    iget-object v4, v14, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    .line 574
    iget v12, v4, Landroidx/fragment/app/Fragment;->x:I

    .line 576
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v5, v17

    const/16 v17, 0x0

    :goto_5
    if-ltz v5, :cond_9

    .line 577
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v5

    move-object/from16 v5, v18

    check-cast v5, Landroidx/fragment/app/Fragment;

    move/from16 v18, v7

    .line 578
    iget v7, v5, Landroidx/fragment/app/Fragment;->x:I

    if-ne v7, v12, :cond_8

    if-ne v5, v4, :cond_6

    const/16 v17, 0x1

    goto :goto_6

    :cond_6
    if-ne v5, v1, :cond_7

    .line 585
    new-instance v1, Landroidx/fragment/app/FragmentTransaction$a;

    const/16 v7, 0x9

    invoke-direct {v1, v7, v5}, Landroidx/fragment/app/FragmentTransaction$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v10, v15, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    const/4 v1, 0x0

    .line 589
    :cond_7
    new-instance v7, Landroidx/fragment/app/FragmentTransaction$a;

    move-object/from16 v20, v1

    const/4 v1, 0x3

    invoke-direct {v7, v1, v5}, Landroidx/fragment/app/FragmentTransaction$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 590
    iget v1, v14, Landroidx/fragment/app/FragmentTransaction$a;->c:I

    iput v1, v7, Landroidx/fragment/app/FragmentTransaction$a;->c:I

    .line 591
    iget v1, v14, Landroidx/fragment/app/FragmentTransaction$a;->e:I

    iput v1, v7, Landroidx/fragment/app/FragmentTransaction$a;->e:I

    .line 592
    iget v1, v14, Landroidx/fragment/app/FragmentTransaction$a;->d:I

    iput v1, v7, Landroidx/fragment/app/FragmentTransaction$a;->d:I

    .line 593
    iget v1, v14, Landroidx/fragment/app/FragmentTransaction$a;->f:I

    iput v1, v7, Landroidx/fragment/app/FragmentTransaction$a;->f:I

    .line 594
    invoke-virtual {v10, v15, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 595
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v20

    :cond_8
    :goto_6
    add-int/lit8 v5, v19, -0x1

    move/from16 v7, v18

    goto :goto_5

    :cond_9
    move/from16 v18, v7

    if-eqz v17, :cond_a

    .line 601
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_4

    :cond_a
    const/4 v5, 0x1

    .line 604
    iput v5, v14, Landroidx/fragment/app/FragmentTransaction$a;->a:I

    .line 605
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 560
    :goto_7
    iget-object v4, v14, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/2addr v15, v5

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, v18

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_b
    move/from16 v18, v7

    goto :goto_b

    :cond_c
    move/from16 v18, v7

    const/4 v5, 0x1

    .line 2135
    iget-object v4, v0, Landroidx/fragment/app/FragmentManager;->J:Ljava/util/ArrayList;

    .line 634
    iget-object v7, v8, Landroidx/fragment/app/FragmentTransaction;->c:Ljava/util/ArrayList;

    .line 634
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v5

    :goto_9
    if-ltz v10, :cond_f

    .line 635
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/FragmentTransaction$a;

    .line 636
    iget v13, v12, Landroidx/fragment/app/FragmentTransaction$a;->a:I

    if-eq v13, v5, :cond_e

    const/4 v5, 0x3

    if-eq v13, v5, :cond_d

    packed-switch v13, :pswitch_data_0

    goto :goto_a

    .line 652
    :pswitch_0
    iget-object v13, v12, Landroidx/fragment/app/FragmentTransaction$a;->g:Landroidx/lifecycle/Lifecycle$State;

    iput-object v13, v12, Landroidx/fragment/app/FragmentTransaction$a;->h:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_a

    .line 646
    :pswitch_1
    iget-object v1, v12, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    goto :goto_a

    :pswitch_2
    const/4 v1, 0x0

    goto :goto_a

    .line 643
    :cond_d
    :pswitch_3
    iget-object v12, v12, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_e
    const/4 v5, 0x3

    .line 639
    :pswitch_4
    iget-object v12, v12, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v10, v10, -0x1

    const/4 v5, 0x1

    goto :goto_9

    :cond_f
    :goto_b
    if-nez v11, :cond_11

    .line 2137
    iget-boolean v4, v8, Landroidx/fragment/app/FragmentTransaction;->i:Z

    if-eqz v4, :cond_10

    goto :goto_c

    :cond_10
    const/4 v11, 0x0

    goto :goto_d

    :cond_11
    :goto_c
    const/4 v11, 0x1

    :goto_d
    add-int/lit8 v7, v18, 0x1

    move-object/from16 v4, p2

    move/from16 v5, p3

    goto/16 :goto_1

    .line 2139
    :cond_12
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2141
    iget-object v8, v0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/FragmentManager$b;

    if-nez v9, :cond_15

    iget v1, v0, Landroidx/fragment/app/FragmentManager;->q:I

    const/4 v5, 0x1

    if-lt v1, v5, :cond_15

    .line 2142
    sget-boolean v1, Landroidx/fragment/app/FragmentManager;->O:Z

    if-eqz v1, :cond_16

    move/from16 v1, p3

    :goto_e
    if-ge v1, v6, :cond_15

    .line 2146
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/a;

    .line 2147
    iget-object v4, v4, Landroidx/fragment/app/FragmentTransaction;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentTransaction$a;

    .line 2148
    iget-object v5, v5, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_13

    .line 2149
    iget-object v7, v5, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    if-eqz v7, :cond_13

    .line 2151
    invoke-virtual {v0, v5}, Landroidx/fragment/app/FragmentManager;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k0;

    move-result-object v5

    .line 2152
    invoke-virtual {v2, v5}, Landroidx/fragment/app/l0;->g(Landroidx/fragment/app/k0;)V

    goto :goto_f

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_15
    move-object/from16 v4, p2

    move/from16 v5, p3

    :goto_10
    move v10, v6

    goto :goto_11

    .line 2157
    :cond_16
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 247
    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->b:Landroid/content/Context;

    .line 2157
    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->s:Landroidx/fragment/app/FragmentContainer;

    const/4 v7, 0x0

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-static/range {v1 .. v8}, Landroidx/fragment/app/s0;->l(Landroid/content/Context;Landroidx/fragment/app/FragmentContainer;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/FragmentManager$b;)V

    goto :goto_10

    :goto_11
    move v1, v5

    :goto_12
    const/4 v12, -0x1

    if-ge v1, v10, :cond_19

    .line 2394
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    .line 2395
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 2397
    invoke-virtual {v2, v12}, Landroidx/fragment/app/a;->d(I)V

    add-int/lit8 v6, v10, -0x1

    if-ne v1, v6, :cond_17

    const/4 v6, 0x1

    goto :goto_13

    :cond_17
    const/4 v6, 0x0

    .line 2401
    :goto_13
    invoke-virtual {v2, v6}, Landroidx/fragment/app/a;->g(Z)V

    goto :goto_14

    :cond_18
    const/4 v6, 0x1

    .line 2403
    invoke-virtual {v2, v6}, Landroidx/fragment/app/a;->d(I)V

    .line 2404
    invoke-virtual {v2}, Landroidx/fragment/app/a;->f()V

    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 2164
    :cond_19
    sget-boolean v1, Landroidx/fragment/app/FragmentManager;->O:Z

    if-eqz v1, :cond_23

    add-int/lit8 v1, v10, -0x1

    .line 2167
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v2, v5

    :goto_15
    if-ge v2, v10, :cond_1e

    .line 2171
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/a;

    if-eqz v1, :cond_1b

    .line 2174
    iget-object v7, v6, Landroidx/fragment/app/FragmentTransaction;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v16, 0x1

    add-int/lit8 v7, v7, -0x1

    :goto_16
    if-ltz v7, :cond_1d

    .line 2175
    iget-object v8, v6, Landroidx/fragment/app/FragmentTransaction;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/FragmentTransaction$a;

    .line 2176
    iget-object v8, v8, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v8, :cond_1a

    .line 2179
    invoke-virtual {v0, v8}, Landroidx/fragment/app/FragmentManager;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k0;

    move-result-object v8

    .line 2180
    invoke-virtual {v8}, Landroidx/fragment/app/k0;->k()V

    :cond_1a
    add-int/lit8 v7, v7, -0x1

    goto :goto_16

    .line 2184
    :cond_1b
    iget-object v6, v6, Landroidx/fragment/app/FragmentTransaction;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1c
    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/FragmentTransaction$a;

    .line 2185
    iget-object v7, v7, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v7, :cond_1c

    .line 2188
    invoke-virtual {v0, v7}, Landroidx/fragment/app/FragmentManager;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k0;

    move-result-object v7

    .line 2189
    invoke-virtual {v7}, Landroidx/fragment/app/k0;->k()V

    goto :goto_17

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 2196
    :cond_1e
    iget v2, v0, Landroidx/fragment/app/FragmentManager;->q:I

    const/4 v6, 0x1

    invoke-virtual {v0, v2, v6}, Landroidx/fragment/app/FragmentManager;->I(IZ)V

    .line 2240
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move v6, v5

    :goto_18
    if-ge v6, v10, :cond_21

    .line 2242
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/a;

    .line 2243
    iget-object v7, v7, Landroidx/fragment/app/FragmentTransaction;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1f
    :goto_19
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/FragmentTransaction$a;

    .line 2244
    iget-object v8, v8, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v8, :cond_1f

    .line 2246
    iget-object v8, v8, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eqz v8, :cond_1f

    .line 55
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->B()Landroidx/fragment/app/d1;

    move-result-object v9

    .line 56
    invoke-static {v8, v9}, Landroidx/fragment/app/b1;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/d1;)Landroidx/fragment/app/b1;

    move-result-object v8

    .line 2248
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_20
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 2199
    :cond_21
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/b1;

    .line 228
    iput-boolean v1, v6, Landroidx/fragment/app/b1;->d:Z

    .line 2201
    invoke-virtual {v6}, Landroidx/fragment/app/b1;->h()V

    .line 2202
    invoke-virtual {v6}, Landroidx/fragment/app/b1;->c()V

    goto :goto_1a

    :cond_22
    const/4 v12, 0x0

    goto/16 :goto_22

    :cond_23
    if-eqz v9, :cond_2d

    .line 2207
    new-instance v1, Landroidx/collection/ArraySet;

    invoke-direct {v1}, Landroidx/collection/ArraySet;-><init>()V

    .line 2208
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->a(Landroidx/collection/ArraySet;)V

    add-int/lit8 v2, v10, -0x1

    move v6, v10

    :goto_1b
    if-lt v2, v5, :cond_2b

    .line 2293
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/a;

    .line 2294
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const/4 v14, 0x0

    .line 660
    :goto_1c
    iget-object v15, v7, Landroidx/fragment/app/FragmentTransaction;->c:Ljava/util/ArrayList;

    .line 660
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v14, v12, :cond_29

    .line 661
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/FragmentTransaction$a;

    .line 662
    invoke-static {v12}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/FragmentTransaction$a;)Z

    move-result v12

    if-eqz v12, :cond_2a

    add-int/lit8 v12, v2, 0x1

    .line 2296
    invoke-virtual {v7, v3, v12, v10}, Landroidx/fragment/app/a;->i(Ljava/util/ArrayList;II)Z

    move-result v12

    if-nez v12, :cond_29

    .line 2298
    iget-object v12, v0, Landroidx/fragment/app/FragmentManager;->K:Ljava/util/ArrayList;

    if-nez v12, :cond_24

    .line 2299
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Landroidx/fragment/app/FragmentManager;->K:Ljava/util/ArrayList;

    .line 2301
    :cond_24
    new-instance v12, Landroidx/fragment/app/FragmentManager$l;

    invoke-direct {v12, v7, v13}, Landroidx/fragment/app/FragmentManager$l;-><init>(Landroidx/fragment/app/a;Z)V

    .line 2303
    iget-object v14, v0, Landroidx/fragment/app/FragmentManager;->K:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    .line 670
    :goto_1d
    iget-object v15, v7, Landroidx/fragment/app/FragmentTransaction;->c:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_26

    .line 671
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentTransaction$a;

    .line 672
    invoke-static {v4}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/FragmentTransaction$a;)Z

    move-result v15

    if-eqz v15, :cond_25

    .line 673
    iget-object v4, v4, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v12}, Landroidx/fragment/app/Fragment;->p(Landroidx/fragment/app/FragmentManager$l;)V

    :cond_25
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, p2

    goto :goto_1d

    :cond_26
    if-eqz v13, :cond_27

    .line 2308
    invoke-virtual {v7}, Landroidx/fragment/app/a;->f()V

    const/4 v12, 0x0

    goto :goto_1e

    :cond_27
    const/4 v12, 0x0

    .line 2310
    invoke-virtual {v7, v12}, Landroidx/fragment/app/a;->g(Z)V

    :goto_1e
    add-int/lit8 v6, v6, -0x1

    if-eq v2, v6, :cond_28

    .line 2316
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2317
    invoke-virtual {v3, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2321
    :cond_28
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->a(Landroidx/collection/ArraySet;)V

    goto :goto_1f

    :cond_29
    const/4 v12, 0x0

    goto :goto_1f

    :cond_2a
    const/4 v12, 0x0

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, p2

    const/4 v12, -0x1

    goto :goto_1c

    :goto_1f
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v4, p2

    const/4 v12, -0x1

    goto/16 :goto_1b

    :cond_2b
    const/4 v12, 0x0

    .line 2265
    invoke-virtual {v1}, Landroidx/collection/ArraySet;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v2, :cond_2e

    .line 2267
    invoke-virtual {v1, v4}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/Fragment;

    .line 2268
    iget-boolean v13, v7, Landroidx/fragment/app/Fragment;->l:Z

    if-nez v13, :cond_2c

    .line 2269
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v13

    .line 2270
    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v14

    iput v14, v7, Landroidx/fragment/app/Fragment;->O:F

    const/4 v7, 0x0

    .line 2271
    invoke-virtual {v13, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_2d
    const/4 v12, 0x0

    move v6, v10

    :cond_2e
    if-eq v6, v5, :cond_30

    if-eqz v9, :cond_30

    .line 2216
    iget v1, v0, Landroidx/fragment/app/FragmentManager;->q:I

    const/4 v9, 0x1

    if-lt v1, v9, :cond_2f

    .line 2217
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 247
    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->b:Landroid/content/Context;

    .line 2217
    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->s:Landroidx/fragment/app/FragmentContainer;

    const/4 v7, 0x1

    move-object/from16 v4, p2

    invoke-static/range {v1 .. v8}, Landroidx/fragment/app/s0;->l(Landroid/content/Context;Landroidx/fragment/app/FragmentContainer;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/FragmentManager$b;)V

    goto :goto_21

    :cond_2f
    move-object/from16 v4, p2

    .line 2221
    :goto_21
    iget v1, v0, Landroidx/fragment/app/FragmentManager;->q:I

    invoke-virtual {v0, v1, v9}, Landroidx/fragment/app/FragmentManager;->I(IZ)V

    goto :goto_22

    :cond_30
    move-object/from16 v4, p2

    :goto_22
    move/from16 v1, p3

    :goto_23
    if-ge v1, v10, :cond_32

    .line 2226
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    .line 2227
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 2228
    iget v5, v2, Landroidx/fragment/app/a;->v:I

    if-ltz v5, :cond_31

    const/4 v5, -0x1

    .line 2229
    iput v5, v2, Landroidx/fragment/app/a;->v:I

    goto :goto_24

    :cond_31
    const/4 v5, -0x1

    .line 2231
    :goto_24
    invoke-virtual {v2}, Landroidx/fragment/app/a;->runOnCommitRunnables()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_32
    if-eqz v11, :cond_33

    .line 2560
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->l:Ljava/util/ArrayList;

    if-eqz v1, :cond_33

    const/4 v10, 0x0

    .line 2561
    :goto_25
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_33

    .line 2562
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_25

    :cond_33
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final y(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8

    .line 2022
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->K:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    .line 2024
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->K:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentManager$l;

    const/4 v4, -0x1

    if-eqz p1, :cond_1

    .line 2025
    iget-boolean v5, v3, Landroidx/fragment/app/FragmentManager$l;->a:Z

    if-nez v5, :cond_1

    .line 2026
    iget-object v5, v3, Landroidx/fragment/app/FragmentManager$l;->b:Landroidx/fragment/app/a;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v4, :cond_1

    if-eqz p2, :cond_1

    .line 2027
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2028
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->K:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    .line 3612
    iget-object v4, v5, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/FragmentManager;

    iget-boolean v3, v3, Landroidx/fragment/app/FragmentManager$l;->a:Z

    invoke-virtual {v4, v5, v3, v1, v1}, Landroidx/fragment/app/FragmentManager;->h(Landroidx/fragment/app/a;ZZZ)V

    goto :goto_2

    .line 2035
    :cond_1
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager$l;->isReady()Z

    move-result v5

    iget-object v6, v3, Landroidx/fragment/app/FragmentManager$l;->b:Landroidx/fragment/app/a;

    if-nez v5, :cond_2

    if-eqz p1, :cond_4

    .line 2036
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v6, p1, v1, v5}, Landroidx/fragment/app/a;->i(Ljava/util/ArrayList;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2037
    :cond_2
    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->K:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    if-eqz p1, :cond_3

    .line 2041
    iget-boolean v5, v3, Landroidx/fragment/app/FragmentManager$l;->a:Z

    if-nez v5, :cond_3

    .line 2042
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-eq v7, v4, :cond_3

    if-eqz p2, :cond_3

    .line 2044
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3612
    iget-object v3, v6, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v6, v5, v1, v1}, Landroidx/fragment/app/FragmentManager;->h(Landroidx/fragment/app/a;ZZZ)V

    goto :goto_2

    .line 2048
    :cond_3
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager$l;->a()V

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final z()V
    .locals 4

    .line 2477
    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->O:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2478
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->g()Ljava/util/HashSet;

    move-result-object v0

    .line 2479
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/b1;

    .line 253
    iget-boolean v3, v2, Landroidx/fragment/app/b1;->e:Z

    if-eqz v3, :cond_0

    .line 254
    iput-boolean v1, v2, Landroidx/fragment/app/b1;->e:Z

    .line 255
    invoke-virtual {v2}, Landroidx/fragment/app/b1;->c()V

    goto :goto_0

    .line 2483
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->K:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2484
    :goto_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2485
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$l;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager$l;->a()V

    goto :goto_1

    :cond_2
    return-void
.end method
