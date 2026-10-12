.class Landroidx/recyclerview/widget/q$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/q$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/q$b;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/q$b;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/q$b$a;->a:Landroidx/recyclerview/widget/q$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 140
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/q$b$a;->a:Landroidx/recyclerview/widget/q$b;

    iget-object v1, v0, Landroidx/recyclerview/widget/q$b;->a:Landroidx/recyclerview/widget/q$c;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/q$c;->a()Landroidx/recyclerview/widget/q$d;

    move-result-object v1

    if-nez v1, :cond_0

    .line 167
    iget-object v0, v0, Landroidx/recyclerview/widget/q$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 144
    :cond_0
    iget v2, v1, Landroidx/recyclerview/widget/q$d;->b:I

    iget-object v3, v0, Landroidx/recyclerview/widget/q$b;->a:Landroidx/recyclerview/widget/q$c;

    iget-object v4, v0, Landroidx/recyclerview/widget/q$b;->e:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    const/4 v5, 0x1

    if-eq v2, v5, :cond_4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    const/4 v0, 0x4

    if-eq v2, v0, :cond_1

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported message, what="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Landroidx/recyclerview/widget/q$d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThreadUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, v1, Landroidx/recyclerview/widget/q$d;->h:Landroidx/recyclerview/widget/TileList$Tile;

    .line 161
    invoke-interface {v4, v0}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V

    goto :goto_0

    .line 156
    :cond_2
    iget v0, v1, Landroidx/recyclerview/widget/q$d;->c:I

    iget v1, v1, Landroidx/recyclerview/widget/q$d;->d:I

    invoke-interface {v4, v0, v1}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->loadTile(II)V

    goto :goto_0

    .line 150
    :cond_3
    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/q$c;->b(I)V

    .line 151
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/q$c;->b(I)V

    .line 152
    iget v6, v1, Landroidx/recyclerview/widget/q$d;->c:I

    iget v7, v1, Landroidx/recyclerview/widget/q$d;->d:I

    iget v8, v1, Landroidx/recyclerview/widget/q$d;->e:I

    iget v9, v1, Landroidx/recyclerview/widget/q$d;->f:I

    iget v10, v1, Landroidx/recyclerview/widget/q$d;->g:I

    iget-object v5, v0, Landroidx/recyclerview/widget/q$b;->e:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    invoke-interface/range {v5 .. v10}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->updateRange(IIIII)V

    goto :goto_0

    .line 146
    :cond_4
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/q$c;->b(I)V

    .line 147
    iget v0, v1, Landroidx/recyclerview/widget/q$d;->c:I

    invoke-interface {v4, v0}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->refresh(I)V

    goto :goto_0
.end method
