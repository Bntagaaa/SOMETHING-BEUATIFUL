.class Landroidx/core/provider/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/util/Consumer<",
        "Landroidx/core/provider/k$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/core/provider/c;


# direct methods
.method public constructor <init>(Landroidx/core/provider/c;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/provider/h;->a:Landroidx/core/provider/c;

    return-void
.end method


# virtual methods
.method public accept(Landroidx/core/provider/k$a;)V
    .locals 1

    if-nez p1, :cond_0

    .line 175
    new-instance p1, Landroidx/core/provider/k$a;

    const/4 v0, -0x3

    invoke-direct {p1, v0}, Landroidx/core/provider/k$a;-><init>(I)V

    .line 177
    :cond_0
    iget-object v0, p0, Landroidx/core/provider/h;->a:Landroidx/core/provider/c;

    invoke-virtual {v0, p1}, Landroidx/core/provider/c;->a(Landroidx/core/provider/k$a;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 171
    check-cast p1, Landroidx/core/provider/k$a;

    invoke-virtual {p0, p1}, Landroidx/core/provider/h;->accept(Landroidx/core/provider/k$a;)V

    return-void
.end method
