.class Landroidx/recyclerview/widget/AsyncListUtil$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;


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
        "Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Landroidx/recyclerview/widget/TileList$Tile;

.field public final b:Landroid/util/SparseBooleanArray;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public final synthetic g:Landroidx/recyclerview/widget/AsyncListUtil;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/AsyncListUtil;)V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->g:Landroidx/recyclerview/widget/AsyncListUtil;

    .line 298
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->b:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final a(IIIZ)V
    .locals 4

    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_1

    if-eqz p4, :cond_0

    add-int v1, p2, p1

    sub-int/2addr v1, v0

    goto :goto_1

    :cond_0
    move v1, v0

    .line 360
    :goto_1
    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->g:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v3, v2, Landroidx/recyclerview/widget/AsyncListUtil;->g:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    invoke-interface {v3, v1, p3}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->loadTile(II)V

    .line 355
    iget v1, v2, Landroidx/recyclerview/widget/AsyncListUtil;->b:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public loadTile(II)V
    .locals 9

    .line 401
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 392
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->a:Landroidx/recyclerview/widget/TileList$Tile;

    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->g:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v3, v2, Landroidx/recyclerview/widget/AsyncListUtil;->b:I

    if-eqz v1, :cond_1

    .line 394
    iget-object v4, v1, Landroidx/recyclerview/widget/TileList$Tile;->a:Landroidx/recyclerview/widget/TileList$Tile;

    iput-object v4, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->a:Landroidx/recyclerview/widget/TileList$Tile;

    goto :goto_0

    .line 397
    :cond_1
    new-instance v1, Landroidx/recyclerview/widget/TileList$Tile;

    iget-object v4, v2, Landroidx/recyclerview/widget/AsyncListUtil;->a:Ljava/lang/Class;

    invoke-direct {v1, v4, v3}, Landroidx/recyclerview/widget/TileList$Tile;-><init>(Ljava/lang/Class;I)V

    .line 373
    :goto_0
    iput p1, v1, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    .line 374
    iget v4, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->d:I

    sub-int/2addr v4, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v1, Landroidx/recyclerview/widget/TileList$Tile;->mItemCount:I

    .line 375
    iget-object v3, v1, Landroidx/recyclerview/widget/TileList$Tile;->mItems:[Ljava/lang/Object;

    iget v4, v1, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    iget-object v5, v2, Landroidx/recyclerview/widget/AsyncListUtil;->c:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    invoke-virtual {v5, v3, v4, p1}, Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;->fillData([Ljava/lang/Object;II)V

    .line 421
    invoke-virtual {v5}, Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;->getMaxCachedTiles()I

    move-result p1

    .line 422
    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, p1, :cond_5

    const/4 v3, 0x0

    .line 423
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 424
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 425
    iget v6, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->e:I

    sub-int/2addr v6, v3

    .line 426
    iget v7, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->f:I

    sub-int v7, v5, v7

    if-lez v6, :cond_3

    if-ge v6, v7, :cond_2

    const/4 v8, 0x2

    if-ne p2, v8, :cond_3

    .line 413
    :cond_2
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 414
    iget-object v4, v2, Landroidx/recyclerview/widget/AsyncListUtil;->f:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget v5, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->c:I

    invoke-interface {v4, v5, v3}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->removeTile(II)V

    goto :goto_1

    :cond_3
    if-lez v7, :cond_5

    if-lt v6, v7, :cond_4

    if-ne p2, v4, :cond_5

    .line 413
    :cond_4
    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 414
    iget-object v3, v2, Landroidx/recyclerview/widget/AsyncListUtil;->f:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget v4, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->c:I

    invoke-interface {v3, v4, v5}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->removeTile(II)V

    goto :goto_1

    .line 405
    :cond_5
    iget p1, v1, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 406
    iget-object p1, v2, Landroidx/recyclerview/widget/AsyncListUtil;->f:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget p2, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->c:I

    invoke-interface {p1, p2, v1}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->addTile(ILandroidx/recyclerview/widget/TileList$Tile;)V

    return-void
.end method

.method public recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->g:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->c:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    iget-object v1, p1, Landroidx/recyclerview/widget/TileList$Tile;->mItems:[Ljava/lang/Object;

    iget v2, p1, Landroidx/recyclerview/widget/TileList$Tile;->mItemCount:I

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;->recycleData([Ljava/lang/Object;I)V

    .line 387
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->a:Landroidx/recyclerview/widget/TileList$Tile;

    iput-object v0, p1, Landroidx/recyclerview/widget/TileList$Tile;->a:Landroidx/recyclerview/widget/TileList$Tile;

    .line 388
    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->a:Landroidx/recyclerview/widget/TileList$Tile;

    return-void
.end method

.method public refresh(I)V
    .locals 2

    .line 308
    iput p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->c:I

    .line 309
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 310
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->g:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v0, p1, Landroidx/recyclerview/widget/AsyncListUtil;->c:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;->refreshData()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->d:I

    .line 311
    iget-object p1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->f:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->c:I

    invoke-interface {p1, v1, v0}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->updateItemCount(II)V

    return-void
.end method

.method public updateRange(IIIII)V
    .locals 3

    if-le p1, p2, :cond_0

    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->g:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v1, v0, Landroidx/recyclerview/widget/AsyncListUtil;->b:I

    rem-int v2, p1, v1

    sub-int/2addr p1, v2

    .line 350
    rem-int v2, p2, v1

    sub-int/2addr p2, v2

    .line 350
    rem-int v2, p3, v1

    sub-int/2addr p3, v2

    .line 329
    iput p3, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->e:I

    .line 350
    rem-int v1, p4, v1

    sub-int/2addr p4, v1

    .line 330
    iput p4, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->f:I

    const/4 v1, 0x0

    .line 338
    iget v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->b:I

    const/4 v2, 0x1

    if-ne p5, v2, :cond_1

    .line 339
    invoke-virtual {p0, p3, p2, p5, v2}, Landroidx/recyclerview/widget/AsyncListUtil$b;->a(IIIZ)V

    add-int/2addr p2, v0

    .line 340
    iget p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->f:I

    invoke-virtual {p0, p2, p1, p5, v1}, Landroidx/recyclerview/widget/AsyncListUtil$b;->a(IIIZ)V

    return-void

    .line 343
    :cond_1
    invoke-virtual {p0, p1, p4, p5, v1}, Landroidx/recyclerview/widget/AsyncListUtil$b;->a(IIIZ)V

    .line 344
    iget p2, p0, Landroidx/recyclerview/widget/AsyncListUtil$b;->e:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p2, p1, p5, v2}, Landroidx/recyclerview/widget/AsyncListUtil$b;->a(IIIZ)V

    return-void
.end method
