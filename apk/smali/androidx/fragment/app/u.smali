.class Landroidx/fragment/app/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .line 3374
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    .line 3377
    :cond_0
    iget-object v3, v1, Landroidx/fragment/app/Fragment$e;->a:Landroid/view/View;

    :goto_0
    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 3377
    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/Fragment$e;->a:Landroid/view/View;

    .line 3381
    :goto_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->c()Landroidx/fragment/app/Fragment$e;

    move-result-object v3

    iput-object v2, v3, Landroidx/fragment/app/Fragment$e;->a:Landroid/view/View;

    .line 156
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 3385
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->c()Landroidx/fragment/app/Fragment$e;

    move-result-object v0

    iput-object v2, v0, Landroidx/fragment/app/Fragment$e;->b:Landroid/animation/Animator;

    return-void
.end method
