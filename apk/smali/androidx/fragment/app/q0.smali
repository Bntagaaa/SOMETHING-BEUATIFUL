.class Landroidx/fragment/app/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;

.field public final synthetic b:Landroidx/fragment/app/Fragment;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/collection/ArrayMap;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Landroidx/fragment/app/FragmentTransitionImpl;

.field public final synthetic g:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Landroid/view/View;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/graphics/Rect;)V
    .locals 0

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/q0;->a:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/q0;->b:Landroidx/fragment/app/Fragment;

    iput-boolean p3, p0, Landroidx/fragment/app/q0;->c:Z

    iput-object p4, p0, Landroidx/fragment/app/q0;->d:Landroidx/collection/ArrayMap;

    iput-object p5, p0, Landroidx/fragment/app/q0;->e:Landroid/view/View;

    iput-object p6, p0, Landroidx/fragment/app/q0;->f:Landroidx/fragment/app/FragmentTransitionImpl;

    iput-object p7, p0, Landroidx/fragment/app/q0;->g:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 674
    iget-object v0, p0, Landroidx/fragment/app/q0;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v1, p0, Landroidx/fragment/app/q0;->c:Z

    iget-object v2, p0, Landroidx/fragment/app/q0;->a:Landroidx/fragment/app/Fragment;

    iget-object v3, p0, Landroidx/fragment/app/q0;->d:Landroidx/collection/ArrayMap;

    const/4 v4, 0x0

    invoke-static {v2, v0, v1, v3, v4}, Landroidx/fragment/app/s0;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    .line 676
    iget-object v0, p0, Landroidx/fragment/app/q0;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 677
    iget-object v1, p0, Landroidx/fragment/app/q0;->f:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v2, p0, Landroidx/fragment/app/q0;->g:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
