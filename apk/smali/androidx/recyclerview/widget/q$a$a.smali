.class Landroidx/recyclerview/widget/q$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/q$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/q$a;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/q$a;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/q$a$a;->a:Landroidx/recyclerview/widget/q$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 61
    iget-object v0, p0, Landroidx/recyclerview/widget/q$a$a;->a:Landroidx/recyclerview/widget/q$a;

    iget-object v1, v0, Landroidx/recyclerview/widget/q$a;->a:Landroidx/recyclerview/widget/q$c;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/q$c;->a()Landroidx/recyclerview/widget/q$d;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    .line 63
    iget v2, v1, Landroidx/recyclerview/widget/q$d;->b:I

    const/4 v3, 0x1

    iget-object v4, v0, Landroidx/recyclerview/widget/q$a;->d:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported message, what="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Landroidx/recyclerview/widget/q$d;->b:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThreadUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 73
    :cond_0
    iget v2, v1, Landroidx/recyclerview/widget/q$d;->c:I

    iget v1, v1, Landroidx/recyclerview/widget/q$d;->d:I

    invoke-interface {v4, v2, v1}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->removeTile(II)V

    goto :goto_1

    .line 69
    :cond_1
    iget-object v2, v1, Landroidx/recyclerview/widget/q$d;->h:Landroidx/recyclerview/widget/TileList$Tile;

    .line 70
    iget v1, v1, Landroidx/recyclerview/widget/q$d;->c:I

    invoke-interface {v4, v1, v2}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->addTile(ILandroidx/recyclerview/widget/TileList$Tile;)V

    goto :goto_1

    .line 65
    :cond_2
    iget v2, v1, Landroidx/recyclerview/widget/q$d;->c:I

    iget v1, v1, Landroidx/recyclerview/widget/q$d;->d:I

    invoke-interface {v4, v2, v1}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->updateItemCount(II)V

    .line 78
    :goto_1
    iget-object v1, v0, Landroidx/recyclerview/widget/q$a;->a:Landroidx/recyclerview/widget/q$c;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/q$c;->a()Landroidx/recyclerview/widget/q$d;

    move-result-object v1

    goto :goto_0

    :cond_3
    return-void
.end method
