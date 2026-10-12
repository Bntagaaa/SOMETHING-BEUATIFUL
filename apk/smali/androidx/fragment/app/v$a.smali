.class Landroidx/fragment/app/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/v;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/v;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/v;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/v$a;->a:Landroidx/fragment/app/v;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 179
    iget-object v0, p0, Landroidx/fragment/app/v$a;->a:Landroidx/fragment/app/v;

    .line 3374
    iget-object v1, v0, Landroidx/fragment/app/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 3377
    :cond_0
    iget-object v2, v2, Landroidx/fragment/app/Fragment$e;->a:Landroid/view/View;

    :goto_0
    if-eqz v2, :cond_1

    .line 3381
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->c()Landroidx/fragment/app/Fragment$e;

    move-result-object v2

    .line 3381
    iput-object v3, v2, Landroidx/fragment/app/Fragment$e;->a:Landroid/view/View;

    .line 181
    iget-object v2, v0, Landroidx/fragment/app/v;->c:Landroidx/fragment/app/FragmentManager$b;

    iget-object v0, v0, Landroidx/fragment/app/v;->d:Landroidx/core/os/CancellationSignal;

    invoke-interface {v2, v1, v0}, Landroidx/fragment/app/s0$a;->onComplete(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    :cond_1
    return-void
.end method
