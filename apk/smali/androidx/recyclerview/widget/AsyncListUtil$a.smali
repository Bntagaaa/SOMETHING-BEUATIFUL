.class Landroidx/recyclerview/widget/AsyncListUtil$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/AsyncListUtil;
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
.field public final synthetic a:Landroidx/recyclerview/widget/AsyncListUtil;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/AsyncListUtil;)V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$a;->a:Landroidx/recyclerview/widget/AsyncListUtil;

    return-void
.end method


# virtual methods
.method public addTile(ILandroidx/recyclerview/widget/TileList$Tile;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$a;->a:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v1, v0, Landroidx/recyclerview/widget/AsyncListUtil;->o:I

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 233
    :goto_0
    iget-object v1, v0, Landroidx/recyclerview/widget/AsyncListUtil;->g:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    if-nez p1, :cond_1

    .line 237
    invoke-interface {v1, p2}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V

    return-void

    .line 240
    :cond_1
    iget-object p1, v0, Landroidx/recyclerview/widget/AsyncListUtil;->e:Landroidx/recyclerview/widget/TileList;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/TileList;->addOrReplace(Landroidx/recyclerview/widget/TileList$Tile;)Landroidx/recyclerview/widget/TileList$Tile;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "duplicate tile @"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AsyncListUtil"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-interface {v1, p1}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V

    .line 249
    :cond_2
    iget p1, p2, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    iget v1, p2, Landroidx/recyclerview/widget/TileList$Tile;->mItemCount:I

    add-int/2addr p1, v1

    .line 251
    :goto_1
    iget-object v1, v0, Landroidx/recyclerview/widget/AsyncListUtil;->p:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 252
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 253
    iget v4, p2, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    if-gt v4, v3, :cond_3

    if-ge v3, p1, :cond_3

    .line 254
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 255
    iget-object v1, v0, Landroidx/recyclerview/widget/AsyncListUtil;->d:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;->onItemLoaded(I)V

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public removeTile(II)V
    .locals 2

    .line 289
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$a;->a:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v1, v0, Landroidx/recyclerview/widget/AsyncListUtil;->o:I

    if-ne p1, v1, :cond_1

    .line 267
    iget-object p1, v0, Landroidx/recyclerview/widget/AsyncListUtil;->e:Landroidx/recyclerview/widget/TileList;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/TileList;->removeAtPos(I)Landroidx/recyclerview/widget/TileList$Tile;

    move-result-object p1

    if-nez p1, :cond_0

    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "tile not found @"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AsyncListUtil"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 275
    :cond_0
    iget-object p2, v0, Landroidx/recyclerview/widget/AsyncListUtil;->g:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    invoke-interface {p2, p1}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V

    :cond_1
    return-void
.end method

.method public updateItemCount(II)V
    .locals 3

    .line 289
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$a;->a:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v1, v0, Landroidx/recyclerview/widget/AsyncListUtil;->o:I

    if-ne p1, v1, :cond_1

    .line 221
    iput p2, v0, Landroidx/recyclerview/widget/AsyncListUtil;->m:I

    .line 222
    iget-object p1, v0, Landroidx/recyclerview/widget/AsyncListUtil;->d:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;->onDataRefresh()V

    .line 223
    iget p1, v0, Landroidx/recyclerview/widget/AsyncListUtil;->o:I

    iput p1, v0, Landroidx/recyclerview/widget/AsyncListUtil;->n:I

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 282
    :goto_0
    iget-object v1, v0, Landroidx/recyclerview/widget/AsyncListUtil;->e:Landroidx/recyclerview/widget/TileList;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/TileList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 283
    iget-object v2, v0, Landroidx/recyclerview/widget/AsyncListUtil;->g:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/TileList;->getAtIndex(I)Landroidx/recyclerview/widget/TileList$Tile;

    move-result-object v1

    invoke-interface {v2, v1}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/TileList;->clear()V

    .line 226
    iput-boolean p1, v0, Landroidx/recyclerview/widget/AsyncListUtil;->k:Z

    .line 228
    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncListUtil;->a()V

    :cond_1
    return-void
.end method
