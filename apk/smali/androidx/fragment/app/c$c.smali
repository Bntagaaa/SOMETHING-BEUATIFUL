.class Landroidx/fragment/app/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Landroidx/fragment/app/b1$c;

.field public final b:Landroidx/core/os/CancellationSignal;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/b1$c;Landroidx/core/os/CancellationSignal;)V
    .locals 0

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    iput-object p1, p0, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/b1$c;

    .line 754
    iput-object p2, p0, Landroidx/fragment/app/c$c;->b:Landroidx/core/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 776
    iget-object v0, p0, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/b1$c;

    iget-object v1, p0, Landroidx/fragment/app/c$c;->b:Landroidx/core/os/CancellationSignal;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/b1$c;->completeSpecialEffect(Landroidx/core/os/CancellationSignal;)V

    return-void
.end method

.method public final b()Z
    .locals 3

    .line 769
    iget-object v0, p0, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/b1$c;

    invoke-virtual {v0}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    .line 768
    invoke-static {v1}, Landroidx/fragment/app/b1$c$b;->c(Landroid/view/View;)Landroidx/fragment/app/b1$c$b;

    move-result-object v1

    .line 770
    invoke-virtual {v0}, Landroidx/fragment/app/b1$c;->getFinalState()Landroidx/fragment/app/b1$c$b;

    move-result-object v0

    if-eq v1, v0, :cond_1

    .line 771
    sget-object v2, Landroidx/fragment/app/b1$c$b;->b:Landroidx/fragment/app/b1$c$b;

    if-eq v1, v2, :cond_0

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
