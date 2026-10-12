.class Landroidx/fragment/app/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/fragment/app/z;

.field public final b:Landroidx/fragment/app/l0;

.field public final c:Landroidx/fragment/app/Fragment;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/z;Landroidx/fragment/app/l0;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Landroidx/fragment/app/k0;->d:Z

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Landroidx/fragment/app/k0;->e:I

    .line 63
    iput-object p1, p0, Landroidx/fragment/app/k0;->a:Landroidx/fragment/app/z;

    .line 64
    iput-object p2, p0, Landroidx/fragment/app/k0;->b:Landroidx/fragment/app/l0;

    .line 65
    iput-object p3, p0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/z;Landroidx/fragment/app/l0;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/i0;)V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Landroidx/fragment/app/k0;->d:Z

    const/4 v1, -0x1

    .line 52
    iput v1, p0, Landroidx/fragment/app/k0;->e:I

    .line 127
    iput-object p1, p0, Landroidx/fragment/app/k0;->a:Landroidx/fragment/app/z;

    .line 128
    iput-object p2, p0, Landroidx/fragment/app/k0;->b:Landroidx/fragment/app/l0;

    .line 129
    iput-object p3, p0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    .line 130
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->c:Landroid/util/SparseArray;

    .line 131
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->d:Landroid/os/Bundle;

    .line 132
    iput v0, p3, Landroidx/fragment/app/Fragment;->r:I

    .line 133
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->o:Z

    .line 134
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->l:Z

    .line 135
    iget-object p2, p3, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p3, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    .line 136
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    .line 137
    iget-object p1, p4, Landroidx/fragment/app/i0;->m:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 138
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    return-void

    .line 143
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p3, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/z;Landroidx/fragment/app/l0;Ljava/lang/ClassLoader;Landroidx/fragment/app/FragmentFactory;Landroidx/fragment/app/i0;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Landroidx/fragment/app/k0;->d:Z

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Landroidx/fragment/app/k0;->e:I

    .line 83
    iput-object p1, p0, Landroidx/fragment/app/k0;->a:Landroidx/fragment/app/z;

    .line 84
    iput-object p2, p0, Landroidx/fragment/app/k0;->b:Landroidx/fragment/app/l0;

    .line 85
    iget-object p1, p5, Landroidx/fragment/app/i0;->a:Ljava/lang/String;

    invoke-virtual {p4, p3, p1}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    .line 86
    iget-object p2, p5, Landroidx/fragment/app/i0;->j:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 89
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 90
    iget-object p2, p5, Landroidx/fragment/app/i0;->b:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    .line 91
    iget-boolean p2, p5, Landroidx/fragment/app/i0;->c:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->n:Z

    const/4 p2, 0x1

    .line 92
    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->p:Z

    .line 93
    iget p2, p5, Landroidx/fragment/app/i0;->d:I

    iput p2, p1, Landroidx/fragment/app/Fragment;->w:I

    .line 94
    iget p2, p5, Landroidx/fragment/app/i0;->e:I

    iput p2, p1, Landroidx/fragment/app/Fragment;->x:I

    .line 95
    iget-object p2, p5, Landroidx/fragment/app/i0;->f:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->y:Ljava/lang/String;

    .line 96
    iget-boolean p2, p5, Landroidx/fragment/app/i0;->g:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->B:Z

    .line 97
    iget-boolean p2, p5, Landroidx/fragment/app/i0;->h:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->m:Z

    .line 98
    iget-boolean p2, p5, Landroidx/fragment/app/i0;->i:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->A:Z

    .line 99
    iget-boolean p2, p5, Landroidx/fragment/app/i0;->k:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->z:Z

    .line 100
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object p2

    iget p3, p5, Landroidx/fragment/app/i0;->l:I

    aget-object p2, p2, p3

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->R:Landroidx/lifecycle/Lifecycle$State;

    .line 101
    iget-object p2, p5, Landroidx/fragment/app/i0;->m:Landroid/os/Bundle;

    if-eqz p2, :cond_1

    .line 102
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    goto :goto_0

    .line 107
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    :goto_0
    const/4 p2, 0x2

    .line 109
    invoke-static {p2}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Instantiated fragment "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v0, 0x3

    .line 577
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    iget-object v3, p0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "moveto ACTIVITY_CREATED: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_0
    iget-object v1, v3, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    .line 2993
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    .line 2993
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->J()V

    .line 2994
    iput v0, v3, Landroidx/fragment/app/Fragment;->a:I

    const/4 v4, 0x0

    .line 2995
    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->F:Z

    .line 2996
    invoke-virtual {v3, v1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2997
    iget-boolean v1, v3, Landroidx/fragment/app/Fragment;->F:Z

    const-string v5, "Fragment "

    if-eqz v1, :cond_6

    .line 3006
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3007
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto RESTORE_VIEW_STATE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    :cond_1
    iget-object v0, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 3010
    iget-object v2, v3, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    .line 638
    iget-object v6, v3, Landroidx/fragment/app/Fragment;->c:Landroid/util/SparseArray;

    if-eqz v6, :cond_2

    .line 639
    invoke-virtual {v0, v6}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 640
    iput-object v1, v3, Landroidx/fragment/app/Fragment;->c:Landroid/util/SparseArray;

    .line 642
    :cond_2
    iget-object v0, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 643
    iget-object v0, v3, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/x0;

    iget-object v6, v3, Landroidx/fragment/app/Fragment;->d:Landroid/os/Bundle;

    .line 137
    iget-object v0, v0, Landroidx/fragment/app/x0;->e:Landroidx/savedstate/SavedStateRegistryController;

    .line 137
    invoke-virtual {v0, v6}, Landroidx/savedstate/SavedStateRegistryController;->performRestore(Landroid/os/Bundle;)V

    .line 644
    iput-object v1, v3, Landroidx/fragment/app/Fragment;->d:Landroid/os/Bundle;

    .line 646
    :cond_3
    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->F:Z

    .line 647
    invoke-virtual {v3, v2}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 648
    iget-boolean v0, v3, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v0, :cond_4

    .line 652
    iget-object v0, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 653
    iget-object v0, v3, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/x0;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/x0;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    goto :goto_0

    .line 649
    :cond_4
    new-instance v0, Landroidx/fragment/app/e1;

    const-string v1, " did not call through to super.onViewStateRestored()"

    .line 0
    invoke-static {v5, v3, v1}, L_COROUTINE/a;->h(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 649
    invoke-direct {v0, v1}, Landroidx/fragment/app/e1;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3012
    :cond_5
    :goto_0
    iput-object v1, v3, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    .line 3002
    iget-object v0, v3, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    .line 3069
    iput-boolean v4, v0, Landroidx/fragment/app/FragmentManager;->D:Z

    .line 3070
    iput-boolean v4, v0, Landroidx/fragment/app/FragmentManager;->E:Z

    .line 3071
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    .line 96
    iput-boolean v4, v1, Landroidx/fragment/app/h0;->j:Z

    const/4 v1, 0x4

    .line 3072
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->r(I)V

    .line 581
    iget-object v0, p0, Landroidx/fragment/app/k0;->a:Landroidx/fragment/app/z;

    iget-object v1, v3, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v3, v1, v4}, Landroidx/fragment/app/z;->a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    return-void

    .line 2998
    :cond_6
    new-instance v0, Landroidx/fragment/app/e1;

    const-string v1, " did not call through to super.onActivityCreated()"

    .line 0
    invoke-static {v5, v3, v1}, L_COROUTINE/a;->h(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2998
    invoke-direct {v0, v1}, Landroidx/fragment/app/e1;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 8

    .line 832
    iget-object v0, p0, Landroidx/fragment/app/k0;->b:Landroidx/fragment/app/l0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    iget-object v1, p0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    if-nez v2, :cond_0

    goto :goto_2

    .line 344
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/l0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    :goto_0
    if-ltz v5, :cond_2

    .line 347
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    .line 348
    iget-object v7, v6, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-ne v7, v2, :cond_1

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 350
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 356
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 357
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 358
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-ne v6, v2, :cond_3

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 361
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    goto :goto_2

    :cond_3
    goto :goto_1

    .line 833
    :cond_4
    :goto_2
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final c()V
    .locals 7

    const/4 v0, 0x3

    .line 428
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveto ATTACHED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    const-string v3, " that does not belong to this FragmentManager!"

    const-string v4, " declared target fragment "

    iget-object v5, p0, Landroidx/fragment/app/k0;->b:Landroidx/fragment/app/l0;

    const-string v6, "Fragment "

    if-eqz v0, :cond_2

    .line 435
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    .line 296
    iget-object v5, v5, Landroidx/fragment/app/l0;->b:Ljava/util/HashMap;

    .line 296
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/k0;

    if-eqz v0, :cond_1

    .line 442
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    iput-object v3, v1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    .line 443
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    move-object v2, v0

    goto :goto_0

    .line 438
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_2
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 296
    iget-object v2, v5, Landroidx/fragment/app/l0;->b:Ljava/util/HashMap;

    .line 296
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/k0;

    if-eqz v2, :cond_3

    goto :goto_0

    .line 448
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    .line 0
    invoke-static {v2, v1, v3}, L_COROUTINE/a;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-eqz v2, :cond_6

    .line 456
    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->O:Z

    if-nez v0, :cond_5

    .line 457
    iget-object v0, v2, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    iget v0, v0, Landroidx/fragment/app/Fragment;->a:I

    const/4 v3, 0x1

    if-ge v0, v3, :cond_6

    .line 458
    :cond_5
    invoke-virtual {v2}, Landroidx/fragment/app/k0;->k()V

    .line 461
    :cond_6
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    .line 2807
    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 461
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentHostCallback;

    .line 2812
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->t:Landroidx/fragment/app/Fragment;

    .line 462
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/Fragment;

    .line 463
    iget-object v0, p0, Landroidx/fragment/app/k0;->a:Landroidx/fragment/app/z;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/z;->g(Landroidx/fragment/app/Fragment;Z)V

    .line 2915
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->Z:Ljava/util/ArrayList;

    .line 2915
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment$f;

    .line 2916
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment$f;->a()V

    goto :goto_1

    .line 2918
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2919
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    iget-object v4, v1, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->b()Landroidx/fragment/app/FragmentContainer;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Landroidx/fragment/app/FragmentManager;->c(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V

    .line 2920
    iput v2, v1, Landroidx/fragment/app/Fragment;->a:I

    .line 2921
    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->F:Z

    .line 2922
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentHostCallback;

    .line 247
    iget-object v3, v3, Landroidx/fragment/app/FragmentHostCallback;->b:Landroid/content/Context;

    .line 2922
    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2923
    iget-boolean v3, v1, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v3, :cond_9

    .line 2927
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    .line 3427
    iget-object v4, v3, Landroidx/fragment/app/FragmentManager;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3427
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentOnAttachListener;

    .line 3428
    invoke-interface {v5, v3, v1}, Landroidx/fragment/app/FragmentOnAttachListener;->onAttachFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    .line 2928
    :cond_8
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    .line 3051
    iput-boolean v2, v3, Landroidx/fragment/app/FragmentManager;->D:Z

    .line 3052
    iput-boolean v2, v3, Landroidx/fragment/app/FragmentManager;->E:Z

    .line 3053
    iget-object v4, v3, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    .line 96
    iput-boolean v2, v4, Landroidx/fragment/app/h0;->j:Z

    .line 3054
    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->r(I)V

    .line 465
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/z;->b(Landroidx/fragment/app/Fragment;Z)V

    return-void

    .line 2924
    :cond_9
    new-instance v0, Landroidx/fragment/app/e1;

    const-string v2, " did not call through to super.onAttach()"

    .line 0
    invoke-static {v6, v1, v2}, L_COROUTINE/a;->h(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2924
    invoke-direct {v0, v1}, Landroidx/fragment/app/e1;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()I
    .locals 13

    .line 170
    iget-object v0, p0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    if-nez v1, :cond_0

    .line 171
    iget v0, v0, Landroidx/fragment/app/Fragment;->a:I

    return v0

    .line 174
    :cond_0
    iget v1, p0, Landroidx/fragment/app/k0;->e:I

    .line 177
    sget-object v2, Landroidx/fragment/app/k0$a;->a:[I

    iget-object v3, v0, Landroidx/fragment/app/Fragment;->R:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x5

    const/4 v4, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v2, v8, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v6, :cond_1

    .line 191
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 188
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 185
    :cond_2
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 182
    :cond_3
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 195
    :cond_4
    :goto_0
    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->n:Z

    if-eqz v2, :cond_7

    .line 196
    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->o:Z

    if-eqz v2, :cond_5

    .line 199
    iget v1, p0, Landroidx/fragment/app/k0;->e:I

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 202
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_7

    .line 203
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 206
    :cond_5
    iget v2, p0, Landroidx/fragment/app/k0;->e:I

    if-ge v2, v6, :cond_6

    .line 211
    iget v2, v0, Landroidx/fragment/app/Fragment;->a:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 216
    :cond_6
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 221
    :cond_7
    :goto_1
    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->l:Z

    if-nez v2, :cond_8

    .line 222
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 225
    :cond_8
    sget-boolean v2, Landroidx/fragment/app/FragmentManager;->O:Z

    const/4 v9, 0x0

    if-eqz v2, :cond_e

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eqz v2, :cond_e

    .line 227
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v10

    .line 226
    invoke-static {v2, v10}, Landroidx/fragment/app/b1;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/b1;

    move-result-object v2

    .line 228
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    invoke-virtual {v2, v0}, Landroidx/fragment/app/b1;->d(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/b1$c;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 552
    iget-object v10, v10, Landroidx/fragment/app/b1$c;->b:Landroidx/fragment/app/b1$c$a;

    goto :goto_2

    :cond_9
    move-object v10, v9

    .line 145
    :goto_2
    iget-object v2, v2, Landroidx/fragment/app/b1;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/b1$c;

    .line 146
    invoke-virtual {v11}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 565
    iget-boolean v12, v11, Landroidx/fragment/app/b1$c;->f:Z

    if-nez v12, :cond_a

    move-object v9, v11

    :cond_b
    if-eqz v9, :cond_d

    if-eqz v10, :cond_c

    .line 126
    sget-object v2, Landroidx/fragment/app/b1$c$a;->a:Landroidx/fragment/app/b1$c$a;

    if-ne v10, v2, :cond_d

    .line 552
    :cond_c
    iget-object v2, v9, Landroidx/fragment/app/b1$c;->b:Landroidx/fragment/app/b1$c$a;

    move-object v9, v2

    goto :goto_3

    :cond_d
    move-object v9, v10

    .line 230
    :cond_e
    :goto_3
    sget-object v2, Landroidx/fragment/app/b1$c$a;->b:Landroidx/fragment/app/b1$c$a;

    if-ne v9, v2, :cond_f

    const/4 v2, 0x6

    .line 232
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_4

    .line 233
    :cond_f
    sget-object v2, Landroidx/fragment/app/b1$c$a;->c:Landroidx/fragment/app/b1$c$a;

    if-ne v9, v2, :cond_10

    .line 235
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_4

    .line 236
    :cond_10
    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->m:Z

    if-eqz v2, :cond_12

    .line 237
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->f()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 239
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_4

    .line 242
    :cond_11
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 247
    :cond_12
    :goto_4
    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->I:Z

    if-eqz v2, :cond_13

    iget v2, v0, Landroidx/fragment/app/Fragment;->a:I

    if-ge v2, v3, :cond_13

    .line 248
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 250
    :cond_13
    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "computeExpectedState() of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return v1
.end method

.method public final e()V
    .locals 7

    const/4 v0, 0x3

    .line 469
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveto CREATED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    iget-boolean v0, v1, Landroidx/fragment/app/Fragment;->Q:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 473
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    iget-object v4, p0, Landroidx/fragment/app/k0;->a:Landroidx/fragment/app/z;

    invoke-virtual {v4, v1, v0, v2}, Landroidx/fragment/app/z;->h(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 475
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    .line 2932
    iget-object v5, v1, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    .line 2932
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->J()V

    .line 2933
    iput v3, v1, Landroidx/fragment/app/Fragment;->a:I

    .line 2934
    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->F:Z

    .line 2936
    iget-object v5, v1, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/LifecycleRegistry;

    new-instance v6, Landroidx/fragment/app/p;

    invoke-direct {v6, v1}, Landroidx/fragment/app/p;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v5, v6}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 2948
    iget-object v5, v1, Landroidx/fragment/app/Fragment;->W:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v5, v0}, Landroidx/savedstate/SavedStateRegistryController;->performRestore(Landroid/os/Bundle;)V

    .line 2949
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2950
    iput-boolean v3, v1, Landroidx/fragment/app/Fragment;->Q:Z

    .line 2951
    iget-boolean v0, v1, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v0, :cond_1

    .line 2955
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 476
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {v4, v1, v0, v2}, Landroidx/fragment/app/z;->c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    return-void

    .line 2952
    :cond_1
    new-instance v0, Landroidx/fragment/app/e1;

    const-string v2, "Fragment "

    const-string v3, " did not call through to super.onCreate()"

    .line 0
    invoke-static {v2, v1, v3}, L_COROUTINE/a;->h(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2952
    invoke-direct {v0, v1}, Landroidx/fragment/app/e1;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_2
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 1887
    const-string v4, "android:support:fragments"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1890
    iget-object v4, v1, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v0}, Landroidx/fragment/app/FragmentManager;->P(Landroid/os/Parcelable;)V

    .line 1891
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    .line 3058
    iput-boolean v2, v0, Landroidx/fragment/app/FragmentManager;->D:Z

    .line 3059
    iput-boolean v2, v0, Landroidx/fragment/app/FragmentManager;->E:Z

    .line 3060
    iget-object v4, v0, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    .line 96
    iput-boolean v2, v4, Landroidx/fragment/app/h0;->j:Z

    .line 3061
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->r(I)V

    .line 480
    :cond_3
    iput v3, v1, Landroidx/fragment/app/Fragment;->a:I

    return-void
.end method

.method public final f()V
    .locals 7

    .line 485
    iget-object v0, p0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->n:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 490
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_1

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "moveto CREATE_VIEW: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_1
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    .line 1654
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1654
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->P:Landroid/view/LayoutInflater;

    .line 496
    iget-object v3, v0, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    goto :goto_1

    .line 498
    :cond_2
    iget v3, v0, Landroidx/fragment/app/Fragment;->x:I

    if-eqz v3, :cond_5

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 503
    iget-object v4, v0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    .line 2817
    iget-object v4, v4, Landroidx/fragment/app/FragmentManager;->s:Landroidx/fragment/app/FragmentContainer;

    .line 504
    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_6

    .line 505
    iget-boolean v4, v0, Landroidx/fragment/app/Fragment;->p:Z

    if-eqz v4, :cond_3

    goto :goto_1

    .line 508
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroidx/fragment/app/Fragment;->x:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 510
    :catch_0
    const-string v1, "unknown"

    .line 512
    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No view found for id 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroidx/fragment/app/Fragment;->x:I

    .line 513
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") for fragment "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 500
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create fragment "

    const-string v3, " for a container view with no id"

    .line 0
    invoke-static {v2, v0, v3}, L_COROUTINE/a;->h(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const/4 v3, 0x0

    .line 517
    :cond_6
    :goto_1
    iput-object v3, v0, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    .line 518
    iget-object v4, v0, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v3, v4}, Landroidx/fragment/app/Fragment;->i(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 519
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    const/4 v4, 0x2

    if-eqz v1, :cond_d

    const/4 v5, 0x0

    .line 520
    invoke-virtual {v1, v5}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 521
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    sget v6, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    invoke-virtual {v1, v6, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v3, :cond_7

    .line 523
    invoke-virtual {p0}, Landroidx/fragment/app/k0;->b()V

    .line 525
    :cond_7
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v1, :cond_8

    .line 526
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 529
    :cond_8
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 530
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_2

    .line 532
    :cond_9
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    .line 533
    new-instance v3, Landroidx/fragment/app/j0;

    invoke-direct {v3, v1}, Landroidx/fragment/app/j0;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2987
    :goto_2
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    iget-object v3, v0, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2988
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    .line 3065
    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentManager;->r(I)V

    .line 547
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    iget-object v3, v0, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    iget-object v6, p0, Landroidx/fragment/app/k0;->a:Landroidx/fragment/app/z;

    invoke-virtual {v6, v0, v1, v3, v5}, Landroidx/fragment/app/z;->m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 549
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 550
    iget-object v3, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    .line 551
    sget-boolean v6, Landroidx/fragment/app/FragmentManager;->O:Z

    if-eqz v6, :cond_b

    .line 3396
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->c()Landroidx/fragment/app/Fragment$e;

    move-result-object v5

    .line 3396
    iput v3, v5, Landroidx/fragment/app/Fragment$e;->u:F

    .line 553
    iget-object v3, v0, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eqz v3, :cond_d

    if-nez v1, :cond_d

    .line 555
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 3407
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->c()Landroidx/fragment/app/Fragment$e;

    move-result-object v3

    iput-object v1, v3, Landroidx/fragment/app/Fragment$e;->v:Landroid/view/View;

    .line 558
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 559
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "requestFocus: Saved focused view "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for Fragment "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_a
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    :cond_b
    if-nez v1, :cond_c

    .line 569
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    const/4 v5, 0x1

    :cond_c
    iput-boolean v5, v0, Landroidx/fragment/app/Fragment;->M:Z

    .line 573
    :cond_d
    :goto_3
    iput v4, v0, Landroidx/fragment/app/Fragment;->a:I

    return-void
.end method

.method public final g()V
    .locals 10

    const/4 v0, 0x3

    .line 754
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    iget-object v3, p0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "movefrom CREATED: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_0
    iget-boolean v1, v3, Landroidx/fragment/app/Fragment;->m:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->f()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 758
    :goto_0
    iget-object v6, p0, Landroidx/fragment/app/k0;->b:Landroidx/fragment/app/l0;

    if-nez v1, :cond_6

    .line 47
    iget-object v7, v6, Landroidx/fragment/app/l0;->c:Landroidx/fragment/app/h0;

    .line 138
    iget-object v8, v7, Landroidx/fragment/app/h0;->d:Ljava/util/HashMap;

    .line 138
    iget-object v9, v3, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    .line 142
    :cond_2
    iget-boolean v8, v7, Landroidx/fragment/app/h0;->g:Z

    if-eqz v8, :cond_3

    .line 145
    iget-boolean v7, v7, Landroidx/fragment/app/h0;->h:Z

    goto :goto_1

    .line 149
    :cond_3
    iget-boolean v7, v7, Landroidx/fragment/app/h0;->i:Z

    xor-int/2addr v7, v4

    :goto_1
    if-eqz v7, :cond_4

    goto :goto_2

    .line 795
    :cond_4
    iget-object v0, v3, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 796
    invoke-virtual {v6, v0}, Landroidx/fragment/app/l0;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 797
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->B:Z

    if-eqz v1, :cond_5

    .line 801
    iput-object v0, v3, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    .line 804
    :cond_5
    iput v5, v3, Landroidx/fragment/app/Fragment;->a:I

    return-void

    .line 761
    :cond_6
    :goto_2
    iget-object v7, v3, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentHostCallback;

    .line 763
    instance-of v8, v7, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v8, :cond_7

    .line 47
    iget-object v4, v6, Landroidx/fragment/app/l0;->c:Landroidx/fragment/app/h0;

    .line 108
    iget-boolean v4, v4, Landroidx/fragment/app/h0;->h:Z

    goto :goto_3

    .line 247
    :cond_7
    iget-object v7, v7, Landroidx/fragment/app/FragmentHostCallback;->b:Landroid/content/Context;

    .line 765
    instance-of v8, v7, Landroid/app/Activity;

    if-eqz v8, :cond_8

    .line 766
    check-cast v7, Landroid/app/Activity;

    .line 767
    invoke-virtual {v7}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v7

    xor-int/2addr v4, v7

    :cond_8
    :goto_3
    if-nez v1, :cond_9

    if-eqz v4, :cond_c

    .line 47
    :cond_9
    iget-object v1, v6, Landroidx/fragment/app/l0;->c:Landroidx/fragment/app/h0;

    .line 772
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Clearing non-config state for "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_a
    iget-object v0, v1, Landroidx/fragment/app/h0;->e:Ljava/util/HashMap;

    iget-object v2, v3, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/h0;

    if-eqz v2, :cond_b

    .line 193
    invoke-virtual {v2}, Landroidx/fragment/app/h0;->onCleared()V

    .line 194
    iget-object v2, v3, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_b
    iget-object v0, v1, Landroidx/fragment/app/h0;->f:Ljava/util/HashMap;

    iget-object v1, v3, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ViewModelStore;

    if-eqz v1, :cond_c

    .line 199
    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelStore;->clear()V

    .line 200
    iget-object v1, v3, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3214
    :cond_c
    iget-object v0, v3, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    .line 3214
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()V

    .line 3215
    iget-object v0, v3, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 3216
    iput v5, v3, Landroidx/fragment/app/Fragment;->a:I

    .line 3217
    iput-boolean v5, v3, Landroidx/fragment/app/Fragment;->F:Z

    .line 3218
    iput-boolean v5, v3, Landroidx/fragment/app/Fragment;->Q:Z

    .line 3219
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 3220
    iget-boolean v0, v3, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v0, :cond_10

    .line 775
    iget-object v0, p0, Landroidx/fragment/app/k0;->a:Landroidx/fragment/app/z;

    invoke-virtual {v0, v3, v5}, Landroidx/fragment/app/z;->d(Landroidx/fragment/app/Fragment;Z)V

    .line 779
    invoke-virtual {v6}, Landroidx/fragment/app/l0;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/k0;

    if-eqz v1, :cond_d

    .line 782
    iget-object v2, v3, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    iget-object v1, v1, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    iget-object v4, v1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 783
    iput-object v3, v1, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    .line 784
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    goto :goto_4

    .line 788
    :cond_e
    iget-object v0, v3, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 791
    invoke-virtual {v6, v0}, Landroidx/fragment/app/l0;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, v3, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    .line 793
    :cond_f
    invoke-virtual {v6, p0}, Landroidx/fragment/app/l0;->h(Landroidx/fragment/app/k0;)V

    return-void

    .line 3221
    :cond_10
    new-instance v0, Landroidx/fragment/app/e1;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onDestroy()"

    .line 0
    invoke-static {v1, v3, v2}, L_COROUTINE/a;->h(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3221
    invoke-direct {v0, v1}, Landroidx/fragment/app/e1;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()V
    .locals 4

    const/4 v0, 0x3

    .line 733
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "movefrom CREATE_VIEW: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 740
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 742
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->j()V

    .line 743
    iget-object v0, p0, Landroidx/fragment/app/k0;->a:Landroidx/fragment/app/z;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/z;->n(Landroidx/fragment/app/Fragment;Z)V

    const/4 v0, 0x0

    .line 744
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    .line 745
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    .line 748
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/x0;

    .line 749
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->U:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 750
    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->o:Z

    return-void
.end method

.method public final i()V
    .locals 8

    const/4 v0, 0x3

    .line 809
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    iget-object v3, p0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "movefrom ATTACHED: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, -0x1

    .line 3227
    iput v1, v3, Landroidx/fragment/app/Fragment;->a:I

    const/4 v4, 0x0

    .line 3228
    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->F:Z

    .line 3229
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v5, 0x0

    .line 3230
    iput-object v5, v3, Landroidx/fragment/app/Fragment;->P:Landroid/view/LayoutInflater;

    .line 3231
    iget-boolean v6, v3, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v6, :cond_7

    .line 3239
    iget-object v6, v3, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3240
    iget-object v6, v3, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManager;->m()V

    .line 3241
    new-instance v6, Landroidx/fragment/app/f0;

    invoke-direct {v6}, Landroidx/fragment/app/f0;-><init>()V

    iput-object v6, v3, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    .line 813
    :cond_1
    iget-object v6, p0, Landroidx/fragment/app/k0;->a:Landroidx/fragment/app/z;

    invoke-virtual {v6, v3, v4}, Landroidx/fragment/app/z;->e(Landroidx/fragment/app/Fragment;Z)V

    .line 815
    iput v1, v3, Landroidx/fragment/app/Fragment;->a:I

    .line 816
    iput-object v5, v3, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentHostCallback;

    .line 817
    iput-object v5, v3, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/Fragment;

    .line 818
    iput-object v5, v3, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    .line 819
    iget-boolean v1, v3, Landroidx/fragment/app/Fragment;->m:Z

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->f()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 47
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/k0;->b:Landroidx/fragment/app/l0;

    iget-object v1, v1, Landroidx/fragment/app/l0;->c:Landroidx/fragment/app/h0;

    .line 138
    iget-object v6, v1, Landroidx/fragment/app/h0;->d:Ljava/util/HashMap;

    .line 138
    iget-object v7, v3, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_3

    goto :goto_0

    .line 142
    :cond_3
    iget-boolean v6, v1, Landroidx/fragment/app/h0;->g:Z

    if-eqz v6, :cond_4

    .line 145
    iget-boolean v7, v1, Landroidx/fragment/app/h0;->h:Z

    goto :goto_0

    .line 149
    :cond_4
    iget-boolean v1, v1, Landroidx/fragment/app/h0;->i:Z

    xor-int/2addr v7, v1

    :goto_0
    if-eqz v7, :cond_6

    .line 821
    :goto_1
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initState called for fragment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_5
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, v3}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, v3, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/LifecycleRegistry;

    .line 569
    invoke-static {v3}, Landroidx/savedstate/SavedStateRegistryController;->create(Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/savedstate/SavedStateRegistryController;

    move-result-object v0

    iput-object v0, v3, Landroidx/fragment/app/Fragment;->W:Landroidx/savedstate/SavedStateRegistryController;

    .line 572
    iput-object v5, v3, Landroidx/fragment/app/Fragment;->V:Landroidx/lifecycle/SavedStateViewModelFactory;

    .line 2165
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    .line 2166
    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->l:Z

    .line 2167
    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->m:Z

    .line 2168
    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->n:Z

    .line 2169
    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->o:Z

    .line 2170
    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->p:Z

    .line 2171
    iput v4, v3, Landroidx/fragment/app/Fragment;->r:I

    .line 2172
    iput-object v5, v3, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    .line 2173
    new-instance v0, Landroidx/fragment/app/f0;

    invoke-direct {v0}, Landroidx/fragment/app/f0;-><init>()V

    iput-object v0, v3, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    .line 2174
    iput-object v5, v3, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentHostCallback;

    .line 2175
    iput v4, v3, Landroidx/fragment/app/Fragment;->w:I

    .line 2176
    iput v4, v3, Landroidx/fragment/app/Fragment;->x:I

    .line 2177
    iput-object v5, v3, Landroidx/fragment/app/Fragment;->y:Ljava/lang/String;

    .line 2178
    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->z:Z

    .line 2179
    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->A:Z

    :cond_6
    return-void

    .line 3232
    :cond_7
    new-instance v0, Landroidx/fragment/app/e1;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onDetach()"

    .line 0
    invoke-static {v1, v3, v2}, L_COROUTINE/a;->h(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3232
    invoke-direct {v0, v1}, Landroidx/fragment/app/e1;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()V
    .locals 6

    .line 382
    iget-object v0, p0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->n:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->o:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->q:Z

    if-nez v1, :cond_2

    const/4 v1, 0x3

    .line 383
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto CREATE_VIEW: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    .line 1654
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1654
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->P:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    .line 386
    iget-object v3, v0, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/Fragment;->i(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 388
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 389
    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 390
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    sget v3, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    invoke-virtual {v1, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 391
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2987
    :cond_1
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    iget-object v3, v0, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2988
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    const/4 v3, 0x2

    .line 3065
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->r(I)V

    .line 393
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    iget-object v4, v0, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    iget-object v5, p0, Landroidx/fragment/app/k0;->a:Landroidx/fragment/app/z;

    invoke-virtual {v5, v0, v1, v4, v2}, Landroidx/fragment/app/z;->m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 395
    iput v3, v0, Landroidx/fragment/app/Fragment;->a:I

    :cond_2
    return-void
.end method

.method public final k()V
    .locals 9

    .line 258
    iget-boolean v0, p0, Landroidx/fragment/app/k0;->d:Z

    const-string v1, "FragmentManager"

    const/4 v2, 0x2

    iget-object v3, p0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 259
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring re-entrant call to moveToExpectedState() for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 266
    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/k0;->d:Z

    .line 269
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/k0;->d()I

    move-result v5

    iget v6, v3, Landroidx/fragment/app/Fragment;->a:I

    if-eq v5, v6, :cond_9

    if-le v5, v6, :cond_4

    add-int/lit8 v6, v6, 0x1

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 306
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/k0;->n()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :pswitch_1
    const/4 v5, 0x6

    .line 303
    iput v5, v3, Landroidx/fragment/app/Fragment;->a:I

    goto :goto_0

    .line 300
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/k0;->q()V

    goto :goto_0

    .line 288
    :pswitch_3
    iget-object v5, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v5, v3, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    .line 291
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    .line 290
    invoke-static {v5, v6}, Landroidx/fragment/app/b1;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/b1;

    move-result-object v5

    .line 292
    iget-object v6, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    .line 294
    invoke-static {v6}, Landroidx/fragment/app/b1$c$b;->b(I)Landroidx/fragment/app/b1$c$b;

    move-result-object v6

    .line 295
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 156
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SpecialEffectsController: Enqueuing add operation for fragment "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 156
    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_2
    sget-object v7, Landroidx/fragment/app/b1$c$a;->b:Landroidx/fragment/app/b1$c$a;

    invoke-virtual {v5, v6, v7, p0}, Landroidx/fragment/app/b1;->a(Landroidx/fragment/app/b1$c$b;Landroidx/fragment/app/b1$c$a;Landroidx/fragment/app/k0;)V

    :cond_3
    const/4 v5, 0x4

    .line 297
    iput v5, v3, Landroidx/fragment/app/Fragment;->a:I

    goto :goto_0

    .line 285
    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/k0;->a()V

    goto :goto_0

    .line 281
    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/k0;->j()V

    .line 282
    invoke-virtual {p0}, Landroidx/fragment/app/k0;->f()V

    goto :goto_0

    .line 278
    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/k0;->e()V

    goto :goto_0

    .line 275
    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/k0;->c()V

    goto :goto_0

    :cond_4
    add-int/lit8 v6, v6, -0x1

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 314
    :pswitch_8
    invoke-virtual {p0}, Landroidx/fragment/app/k0;->l()V

    goto :goto_0

    :pswitch_9
    const/4 v5, 0x5

    .line 317
    iput v5, v3, Landroidx/fragment/app/Fragment;->a:I

    goto :goto_0

    .line 320
    :pswitch_a
    invoke-virtual {p0}, Landroidx/fragment/app/k0;->r()V

    goto/16 :goto_0

    :pswitch_b
    const/4 v5, 0x3

    .line 323
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 324
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_5
    iget-object v6, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v6, :cond_6

    .line 329
    iget-object v6, v3, Landroidx/fragment/app/Fragment;->c:Landroid/util/SparseArray;

    if-nez v6, :cond_6

    .line 330
    invoke-virtual {p0}, Landroidx/fragment/app/k0;->p()V

    .line 333
    :cond_6
    iget-object v6, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v6, :cond_8

    iget-object v6, v3, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eqz v6, :cond_8

    .line 336
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v7

    .line 335
    invoke-static {v6, v7}, Landroidx/fragment/app/b1;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/b1;

    move-result-object v6

    .line 337
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 183
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SpecialEffectsController: Enqueuing remove operation for fragment "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 183
    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_7
    sget-object v7, Landroidx/fragment/app/b1$c$b;->a:Landroidx/fragment/app/b1$c$b;

    sget-object v8, Landroidx/fragment/app/b1$c$a;->c:Landroidx/fragment/app/b1$c$a;

    invoke-virtual {v6, v7, v8, p0}, Landroidx/fragment/app/b1;->a(Landroidx/fragment/app/b1$c$b;Landroidx/fragment/app/b1$c$a;Landroidx/fragment/app/k0;)V

    .line 339
    :cond_8
    iput v5, v3, Landroidx/fragment/app/Fragment;->a:I

    goto/16 :goto_0

    .line 342
    :pswitch_c
    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->o:Z

    .line 343
    iput v2, v3, Landroidx/fragment/app/Fragment;->a:I

    goto/16 :goto_0

    .line 346
    :pswitch_d
    invoke-virtual {p0}, Landroidx/fragment/app/k0;->h()V

    .line 347
    iput v0, v3, Landroidx/fragment/app/Fragment;->a:I

    goto/16 :goto_0

    .line 350
    :pswitch_e
    invoke-virtual {p0}, Landroidx/fragment/app/k0;->g()V

    goto/16 :goto_0

    .line 353
    :pswitch_f
    invoke-virtual {p0}, Landroidx/fragment/app/k0;->i()V

    goto/16 :goto_0

    .line 358
    :cond_9
    sget-boolean v5, Landroidx/fragment/app/FragmentManager;->O:Z

    if-eqz v5, :cond_f

    iget-boolean v5, v3, Landroidx/fragment/app/Fragment;->N:Z

    if-eqz v5, :cond_f

    .line 359
    iget-object v5, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v5, :cond_d

    iget-object v5, v3, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eqz v5, :cond_d

    .line 363
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    .line 362
    invoke-static {v5, v6}, Landroidx/fragment/app/b1;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/b1;

    move-result-object v5

    .line 364
    iget-boolean v6, v3, Landroidx/fragment/app/Fragment;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v7, Landroidx/fragment/app/b1$c$a;->a:Landroidx/fragment/app/b1$c$a;

    if-eqz v6, :cond_b

    .line 365
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "SpecialEffectsController: Enqueuing hide operation for fragment "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_a
    sget-object v1, Landroidx/fragment/app/b1$c$b;->c:Landroidx/fragment/app/b1$c$b;

    invoke-virtual {v5, v1, v7, p0}, Landroidx/fragment/app/b1;->a(Landroidx/fragment/app/b1$c$b;Landroidx/fragment/app/b1$c$a;Landroidx/fragment/app/k0;)V

    goto :goto_1

    .line 367
    :cond_b
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "SpecialEffectsController: Enqueuing show operation for fragment "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_c
    sget-object v1, Landroidx/fragment/app/b1$c$b;->b:Landroidx/fragment/app/b1$c$b;

    invoke-virtual {v5, v1, v7, p0}, Landroidx/fragment/app/b1;->a(Landroidx/fragment/app/b1$c$b;Landroidx/fragment/app/b1$c$a;Landroidx/fragment/app/k0;)V

    .line 370
    :cond_d
    :goto_1
    iget-object v1, v3, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    if-eqz v1, :cond_e

    .line 3463
    iget-boolean v2, v3, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz v2, :cond_e

    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->E(Landroidx/fragment/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3464
    iput-boolean v0, v1, Landroidx/fragment/app/FragmentManager;->C:Z

    .line 373
    :cond_e
    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->N:Z

    .line 374
    iget-boolean v0, v3, Landroidx/fragment/app/Fragment;->z:Z

    invoke-virtual {v3, v0}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    :cond_f
    iput-boolean v4, p0, Landroidx/fragment/app/k0;->d:Z

    return-void

    :goto_2
    iput-boolean v4, p0, Landroidx/fragment/app/k0;->d:Z

    .line 378
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final l()V
    .locals 4

    const/4 v0, 0x3

    .line 629
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "movefrom RESUMED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3161
    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    const/4 v2, 0x5

    .line 3090
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->r(I)V

    .line 3162
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3163
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/x0;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/x0;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 3165
    :cond_1
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x6

    .line 3166
    iput v0, v1, Landroidx/fragment/app/Fragment;->a:I

    const/4 v0, 0x0

    .line 3167
    iput-boolean v0, v1, Landroidx/fragment/app/Fragment;->F:Z

    .line 3168
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 3169
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v2, :cond_2

    .line 633
    iget-object v2, p0, Landroidx/fragment/app/k0;->a:Landroidx/fragment/app/z;

    invoke-virtual {v2, v1, v0}, Landroidx/fragment/app/z;->f(Landroidx/fragment/app/Fragment;Z)V

    return-void

    .line 3170
    :cond_2
    new-instance v0, Landroidx/fragment/app/e1;

    const-string v2, "Fragment "

    const-string v3, " did not call through to super.onPause()"

    .line 0
    invoke-static {v2, v1, v3}, L_COROUTINE/a;->h(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3170
    invoke-direct {v0, v1}, Landroidx/fragment/app/e1;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 401
    iget-object v0, p0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_1

    .line 404
    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 405
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, v0, Landroidx/fragment/app/Fragment;->c:Landroid/util/SparseArray;

    .line 407
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    const-string v1, "android:view_registry_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, v0, Landroidx/fragment/app/Fragment;->d:Landroid/os/Bundle;

    .line 409
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    .line 411
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 412
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Landroidx/fragment/app/Fragment;->j:I

    .line 415
    :cond_1
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->e:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 416
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Landroidx/fragment/app/Fragment;->J:Z

    const/4 p1, 0x0

    .line 417
    iput-object p1, v0, Landroidx/fragment/app/Fragment;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 419
    :cond_2
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    const-string v2, "android:user_visible_hint"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Landroidx/fragment/app/Fragment;->J:Z

    .line 422
    :goto_0
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->J:Z

    if-nez p1, :cond_3

    .line 423
    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->I:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final n()V
    .locals 7

    const/4 v0, 0x3

    .line 594
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    const-string v1, "FragmentManager"

    iget-object v2, p0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "moveto RESUMED: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    :cond_0
    iget-object v0, v2, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_0

    .line 3414
    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/Fragment$e;->v:Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_5

    .line 615
    iget-object v4, v2, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-ne v0, v4, :cond_2

    goto :goto_2

    .line 618
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_5

    .line 620
    iget-object v5, v2, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-ne v4, v5, :cond_4

    .line 599
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v4

    const/4 v5, 0x2

    .line 600
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 601
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "requestFocus: Restoring focused view "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_3

    .line 602
    const-string v0, "succeeded"

    goto :goto_3

    :cond_3
    const-string v0, "failed"

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on Fragment "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " resulting in focused view "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    .line 603
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 623
    :cond_4
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_1

    .line 3407
    :cond_5
    :goto_4
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->c()Landroidx/fragment/app/Fragment$e;

    move-result-object v0

    iput-object v3, v0, Landroidx/fragment/app/Fragment$e;->v:Landroid/view/View;

    .line 3035
    iget-object v0, v2, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    .line 3035
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()V

    .line 3036
    iget-object v0, v2, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->v(Z)Z

    const/4 v0, 0x7

    .line 3037
    iput v0, v2, Landroidx/fragment/app/Fragment;->a:I

    const/4 v1, 0x0

    .line 3038
    iput-boolean v1, v2, Landroidx/fragment/app/Fragment;->F:Z

    .line 3039
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 3040
    iget-boolean v4, v2, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v4, :cond_7

    .line 3044
    iget-object v4, v2, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v5, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v4, v5}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 3045
    iget-object v4, v2, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v4, :cond_6

    .line 3046
    iget-object v4, v2, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/x0;

    invoke-virtual {v4, v5}, Landroidx/fragment/app/x0;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 3048
    :cond_6
    iget-object v4, v2, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    .line 3083
    iput-boolean v1, v4, Landroidx/fragment/app/FragmentManager;->D:Z

    .line 3084
    iput-boolean v1, v4, Landroidx/fragment/app/FragmentManager;->E:Z

    .line 3085
    iget-object v5, v4, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    .line 96
    iput-boolean v1, v5, Landroidx/fragment/app/h0;->j:Z

    .line 3086
    invoke-virtual {v4, v0}, Landroidx/fragment/app/FragmentManager;->r(I)V

    .line 608
    iget-object v0, p0, Landroidx/fragment/app/k0;->a:Landroidx/fragment/app/z;

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/z;->i(Landroidx/fragment/app/Fragment;Z)V

    .line 609
    iput-object v3, v2, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    .line 610
    iput-object v3, v2, Landroidx/fragment/app/Fragment;->c:Landroid/util/SparseArray;

    .line 611
    iput-object v3, v2, Landroidx/fragment/app/Fragment;->d:Landroid/os/Bundle;

    return-void

    .line 3041
    :cond_7
    new-instance v0, Landroidx/fragment/app/e1;

    const-string v1, "Fragment "

    const-string v3, " did not call through to super.onResume()"

    .line 0
    invoke-static {v1, v2, v3}, L_COROUTINE/a;->h(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3041
    invoke-direct {v0, v1}, Landroidx/fragment/app/e1;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o()Landroid/os/Bundle;
    .locals 4

    .line 681
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 683
    iget-object v1, p0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    .line 3151
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3152
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->W:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v2, v0}, Landroidx/savedstate/SavedStateRegistryController;->performSave(Landroid/os/Bundle;)V

    .line 3153
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->Q()Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3155
    const-string v3, "android:support:fragments"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 684
    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/k0;->a:Landroidx/fragment/app/z;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Landroidx/fragment/app/z;->j(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 685
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 689
    :cond_1
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 690
    invoke-virtual {p0}, Landroidx/fragment/app/k0;->p()V

    .line 692
    :cond_2
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->c:Landroid/util/SparseArray;

    if-eqz v2, :cond_4

    if-nez v0, :cond_3

    .line 694
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 696
    :cond_3
    const-string v2, "android:view_state"

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 699
    :cond_4
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->d:Landroid/os/Bundle;

    if-eqz v2, :cond_6

    if-nez v0, :cond_5

    .line 701
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 703
    :cond_5
    const-string v2, "android:view_registry_state"

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 705
    :cond_6
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->J:Z

    if-nez v2, :cond_8

    if-nez v0, :cond_7

    .line 707
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 710
    :cond_7
    const-string v2, "android:user_visible_hint"

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->J:Z

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    return-object v0
.end method

.method public final p()V
    .locals 3

    .line 717
    iget-object v0, p0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    .line 720
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 721
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 722
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 723
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->c:Landroid/util/SparseArray;

    .line 725
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 726
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/x0;

    .line 141
    iget-object v2, v2, Landroidx/fragment/app/x0;->e:Landroidx/savedstate/SavedStateRegistryController;

    .line 141
    invoke-virtual {v2, v1}, Landroidx/savedstate/SavedStateRegistryController;->performSave(Landroid/os/Bundle;)V

    .line 727
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 728
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->d:Landroid/os/Bundle;

    :cond_2
    :goto_0
    return-void
.end method

.method public final q()V
    .locals 5

    const/4 v0, 0x3

    .line 586
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveto STARTED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3017
    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    .line 3017
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()V

    .line 3018
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->v(Z)Z

    const/4 v0, 0x5

    .line 3019
    iput v0, v1, Landroidx/fragment/app/Fragment;->a:I

    const/4 v2, 0x0

    .line 3020
    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->F:Z

    .line 3021
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 3022
    iget-boolean v3, v1, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v3, :cond_2

    .line 3026
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v4, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 3027
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 3028
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/x0;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/x0;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 3030
    :cond_1
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    .line 3076
    iput-boolean v2, v3, Landroidx/fragment/app/FragmentManager;->D:Z

    .line 3077
    iput-boolean v2, v3, Landroidx/fragment/app/FragmentManager;->E:Z

    .line 3078
    iget-object v4, v3, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    .line 96
    iput-boolean v2, v4, Landroidx/fragment/app/h0;->j:Z

    .line 3079
    invoke-virtual {v3, v0}, Landroidx/fragment/app/FragmentManager;->r(I)V

    .line 590
    iget-object v0, p0, Landroidx/fragment/app/k0;->a:Landroidx/fragment/app/z;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/z;->k(Landroidx/fragment/app/Fragment;Z)V

    return-void

    .line 3023
    :cond_2
    new-instance v0, Landroidx/fragment/app/e1;

    const-string v2, "Fragment "

    const-string v3, " did not call through to super.onStart()"

    .line 0
    invoke-static {v2, v1, v3}, L_COROUTINE/a;->h(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3023
    invoke-direct {v0, v1}, Landroidx/fragment/app/e1;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r()V
    .locals 4

    const/4 v0, 0x3

    .line 637
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "movefrom STARTED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/FragmentManager;

    const/4 v2, 0x1

    .line 3094
    iput-boolean v2, v0, Landroidx/fragment/app/FragmentManager;->E:Z

    .line 3095
    iget-object v3, v0, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    .line 96
    iput-boolean v2, v3, Landroidx/fragment/app/h0;->j:Z

    const/4 v2, 0x4

    .line 3096
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->r(I)V

    .line 3178
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3179
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/x0;

    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v3}, Landroidx/fragment/app/x0;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 3181
    :cond_1
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 3182
    iput v2, v1, Landroidx/fragment/app/Fragment;->a:I

    const/4 v0, 0x0

    .line 3183
    iput-boolean v0, v1, Landroidx/fragment/app/Fragment;->F:Z

    .line 3184
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 3185
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v2, :cond_2

    .line 641
    iget-object v2, p0, Landroidx/fragment/app/k0;->a:Landroidx/fragment/app/z;

    invoke-virtual {v2, v1, v0}, Landroidx/fragment/app/z;->l(Landroidx/fragment/app/Fragment;Z)V

    return-void

    .line 3186
    :cond_2
    new-instance v0, Landroidx/fragment/app/e1;

    const-string v2, "Fragment "

    const-string v3, " did not call through to super.onStop()"

    .line 0
    invoke-static {v2, v1, v3}, L_COROUTINE/a;->h(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3186
    invoke-direct {v0, v1}, Landroidx/fragment/app/e1;-><init>(Ljava/lang/String;)V

    throw v0
.end method
