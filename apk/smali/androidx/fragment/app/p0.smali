.class Landroidx/fragment/app/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Landroidx/fragment/app/FragmentTransitionImpl;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroidx/fragment/app/Fragment;

.field public final synthetic e:Ljava/util/ArrayList;

.field public final synthetic f:Ljava/util/ArrayList;

.field public final synthetic g:Ljava/util/ArrayList;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/p0;->a:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/p0;->b:Landroidx/fragment/app/FragmentTransitionImpl;

    iput-object p3, p0, Landroidx/fragment/app/p0;->c:Landroid/view/View;

    iput-object p4, p0, Landroidx/fragment/app/p0;->d:Landroidx/fragment/app/Fragment;

    iput-object p5, p0, Landroidx/fragment/app/p0;->e:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/fragment/app/p0;->f:Ljava/util/ArrayList;

    iput-object p7, p0, Landroidx/fragment/app/p0;->g:Ljava/util/ArrayList;

    iput-object p8, p0, Landroidx/fragment/app/p0;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 444
    iget-object v0, p0, Landroidx/fragment/app/p0;->b:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v1, p0, Landroidx/fragment/app/p0;->c:Landroid/view/View;

    iget-object v2, p0, Landroidx/fragment/app/p0;->a:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 445
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->removeTarget(Ljava/lang/Object;Landroid/view/View;)V

    .line 447
    iget-object v3, p0, Landroidx/fragment/app/p0;->d:Landroidx/fragment/app/Fragment;

    iget-object v4, p0, Landroidx/fragment/app/p0;->e:Ljava/util/ArrayList;

    invoke-static {v0, v2, v3, v4, v1}, Landroidx/fragment/app/s0;->g(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v2

    .line 449
    iget-object v3, p0, Landroidx/fragment/app/p0;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 452
    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/p0;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 453
    iget-object v3, p0, Landroidx/fragment/app/p0;->h:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 454
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 455
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-virtual {v0, v3, v2, v4}, Landroidx/fragment/app/FragmentTransitionImpl;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 459
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 460
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
