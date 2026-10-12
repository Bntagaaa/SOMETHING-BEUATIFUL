.class Landroidx/fragment/app/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentTransitionImpl;

.field public final synthetic b:Landroidx/collection/ArrayMap;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroidx/fragment/app/s0$b;

.field public final synthetic e:Ljava/util/ArrayList;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Landroidx/fragment/app/Fragment;

.field public final synthetic h:Landroidx/fragment/app/Fragment;

.field public final synthetic i:Z

.field public final synthetic j:Ljava/util/ArrayList;

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/s0$b;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/r0;->a:Landroidx/fragment/app/FragmentTransitionImpl;

    iput-object p2, p0, Landroidx/fragment/app/r0;->b:Landroidx/collection/ArrayMap;

    iput-object p3, p0, Landroidx/fragment/app/r0;->c:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/fragment/app/r0;->d:Landroidx/fragment/app/s0$b;

    iput-object p5, p0, Landroidx/fragment/app/r0;->e:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/fragment/app/r0;->f:Landroid/view/View;

    iput-object p7, p0, Landroidx/fragment/app/r0;->g:Landroidx/fragment/app/Fragment;

    iput-object p8, p0, Landroidx/fragment/app/r0;->h:Landroidx/fragment/app/Fragment;

    iput-boolean p9, p0, Landroidx/fragment/app/r0;->i:Z

    iput-object p10, p0, Landroidx/fragment/app/r0;->j:Ljava/util/ArrayList;

    iput-object p11, p0, Landroidx/fragment/app/r0;->k:Ljava/lang/Object;

    iput-object p12, p0, Landroidx/fragment/app/r0;->l:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 786
    iget-object v0, p0, Landroidx/fragment/app/r0;->a:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v1, p0, Landroidx/fragment/app/r0;->b:Landroidx/collection/ArrayMap;

    iget-object v2, p0, Landroidx/fragment/app/r0;->d:Landroidx/fragment/app/s0$b;

    iget-object v3, p0, Landroidx/fragment/app/r0;->c:Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Landroidx/fragment/app/s0;->d(Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/s0$b;)Landroidx/collection/ArrayMap;

    move-result-object v1

    .line 789
    iget-object v4, p0, Landroidx/fragment/app/r0;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 790
    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 791
    iget-object v5, p0, Landroidx/fragment/app/r0;->f:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    :cond_0
    iget-object v5, p0, Landroidx/fragment/app/r0;->g:Landroidx/fragment/app/Fragment;

    iget-object v6, p0, Landroidx/fragment/app/r0;->h:Landroidx/fragment/app/Fragment;

    iget-boolean v7, p0, Landroidx/fragment/app/r0;->i:Z

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v1, v8}, Landroidx/fragment/app/s0;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    if-eqz v3, :cond_1

    .line 797
    iget-object v5, p0, Landroidx/fragment/app/r0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v5, v4}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 801
    iget-object v3, p0, Landroidx/fragment/app/r0;->k:Ljava/lang/Object;

    invoke-static {v1, v2, v3, v7}, Landroidx/fragment/app/s0;->i(Landroidx/collection/ArrayMap;Landroidx/fragment/app/s0$b;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 804
    iget-object v2, p0, Landroidx/fragment/app/r0;->l:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
