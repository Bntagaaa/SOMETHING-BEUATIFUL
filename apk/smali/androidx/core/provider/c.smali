.class Landroidx/core/provider/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

.field public final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroidx/core/provider/FontsContractCompat$FontRequestCallback;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/core/provider/c;->a:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    .line 47
    invoke-static {}, Landroidx/core/provider/d;->a()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/provider/c;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroidx/core/provider/FontsContractCompat$FontRequestCallback;Landroid/os/Handler;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroidx/core/provider/c;->a:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    .line 42
    iput-object p2, p0, Landroidx/core/provider/c;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/core/provider/k$a;)V
    .locals 3

    .line 314
    iget v0, p1, Landroidx/core/provider/k$a;->b:I

    .line 314
    iget-object v1, p0, Landroidx/core/provider/c;->b:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/core/provider/c;->a:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Landroidx/core/provider/a;

    iget-object p1, p1, Landroidx/core/provider/k$a;->a:Landroid/graphics/Typeface;

    invoke-direct {v0, v2, p1}, Landroidx/core/provider/a;-><init>(Landroidx/core/provider/FontsContractCompat$FontRequestCallback;Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 68
    :cond_0
    new-instance p1, Landroidx/core/provider/b;

    invoke-direct {p1, v2, v0}, Landroidx/core/provider/b;-><init>(Landroidx/core/provider/FontsContractCompat$FontRequestCallback;I)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
