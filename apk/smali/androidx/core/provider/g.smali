.class Landroidx/core/provider/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroidx/core/provider/k$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroidx/core/provider/FontRequest;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/provider/g;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/core/provider/g;->b:Landroid/content/Context;

    iput-object p3, p0, Landroidx/core/provider/g;->c:Landroidx/core/provider/FontRequest;

    iput p4, p0, Landroidx/core/provider/g;->d:I

    return-void
.end method


# virtual methods
.method public call()Landroidx/core/provider/k$a;
    .locals 4

    .line 120
    iget-object v0, p0, Landroidx/core/provider/g;->c:Landroidx/core/provider/FontRequest;

    iget v1, p0, Landroidx/core/provider/g;->d:I

    iget-object v2, p0, Landroidx/core/provider/g;->a:Ljava/lang/String;

    iget-object v3, p0, Landroidx/core/provider/g;->b:Landroid/content/Context;

    invoke-static {v2, v3, v0, v1}, Landroidx/core/provider/k;->a(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/k$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Landroidx/core/provider/g;->call()Landroidx/core/provider/k$a;

    move-result-object v0

    return-object v0
.end method
