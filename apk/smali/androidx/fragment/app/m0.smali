.class Landroidx/fragment/app/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentManager$b;

.field public final synthetic b:Landroidx/fragment/app/Fragment;

.field public final synthetic c:Landroidx/core/os/CancellationSignal;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager$b;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/m0;->a:Landroidx/fragment/app/FragmentManager$b;

    iput-object p2, p0, Landroidx/fragment/app/m0;->b:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Landroidx/fragment/app/m0;->c:Landroidx/core/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 278
    iget-object v0, p0, Landroidx/fragment/app/m0;->c:Landroidx/core/os/CancellationSignal;

    iget-object v1, p0, Landroidx/fragment/app/m0;->a:Landroidx/fragment/app/FragmentManager$b;

    iget-object v2, p0, Landroidx/fragment/app/m0;->b:Landroidx/fragment/app/Fragment;

    invoke-interface {v1, v2, v0}, Landroidx/fragment/app/s0$a;->onComplete(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    return-void
.end method
