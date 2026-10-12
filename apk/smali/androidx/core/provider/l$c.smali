.class Landroidx/core/provider/l$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/Callable;

.field public b:Landroidx/core/util/Consumer;

.field public c:Landroid/os/Handler;


# virtual methods
.method public run()V
    .locals 3

    .line 145
    :try_start_0
    iget-object v0, p0, Landroidx/core/provider/l$c;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 151
    :goto_0
    new-instance v1, Landroidx/core/provider/l$c$a;

    iget-object v2, p0, Landroidx/core/provider/l$c;->b:Landroidx/core/util/Consumer;

    invoke-direct {v1, v2, v0}, Landroidx/core/provider/l$c$a;-><init>(Landroidx/core/util/Consumer;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/core/provider/l$c;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
