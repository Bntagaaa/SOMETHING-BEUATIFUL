.class Landroidx/recyclerview/widget/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/q;->getMainThreadProxy(Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/recyclerview/widget/q$c;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/lang/Runnable;

.field public final synthetic d:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/q$a;->d:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    .line 31
    new-instance p1, Landroidx/recyclerview/widget/q$c;

    invoke-direct {p1}, Landroidx/recyclerview/widget/q$c;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/q$a;->a:Landroidx/recyclerview/widget/q$c;

    .line 32
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/q$a;->b:Landroid/os/Handler;

    .line 58
    new-instance p1, Landroidx/recyclerview/widget/q$a$a;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/q$a$a;-><init>(Landroidx/recyclerview/widget/q$a;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/q$a;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public addTile(ILandroidx/recyclerview/widget/TileList$Tile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, p1

    move-object v6, p2

    .line 229
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/q$d;->a(IIIIIILandroidx/recyclerview/widget/TileList$Tile;)Landroidx/recyclerview/widget/q$d;

    move-result-object p1

    .line 54
    iget-object p2, p0, Landroidx/recyclerview/widget/q$a;->a:Landroidx/recyclerview/widget/q$c;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/q$c;->c(Landroidx/recyclerview/widget/q$d;)V

    .line 55
    iget-object p1, p0, Landroidx/recyclerview/widget/q$a;->b:Landroid/os/Handler;

    iget-object p2, p0, Landroidx/recyclerview/widget/q$a;->c:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeTile(II)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    .line 225
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/q$d;->a(IIIIIILandroidx/recyclerview/widget/TileList$Tile;)Landroidx/recyclerview/widget/q$d;

    move-result-object p1

    .line 54
    iget-object p2, p0, Landroidx/recyclerview/widget/q$a;->a:Landroidx/recyclerview/widget/q$c;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/q$c;->c(Landroidx/recyclerview/widget/q$d;)V

    .line 55
    iget-object p1, p0, Landroidx/recyclerview/widget/q$a;->b:Landroid/os/Handler;

    iget-object p2, p0, Landroidx/recyclerview/widget/q$a;->c:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateItemCount(II)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    .line 225
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/q$d;->a(IIIIIILandroidx/recyclerview/widget/TileList$Tile;)Landroidx/recyclerview/widget/q$d;

    move-result-object p1

    .line 54
    iget-object p2, p0, Landroidx/recyclerview/widget/q$a;->a:Landroidx/recyclerview/widget/q$c;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/q$c;->c(Landroidx/recyclerview/widget/q$d;)V

    .line 55
    iget-object p1, p0, Landroidx/recyclerview/widget/q$a;->b:Landroid/os/Handler;

    iget-object p2, p0, Landroidx/recyclerview/widget/q$a;->c:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
