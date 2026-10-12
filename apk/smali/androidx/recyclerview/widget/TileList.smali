.class Landroidx/recyclerview/widget/TileList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/TileList$Tile;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroid/util/SparseArray;

.field public c:Landroidx/recyclerview/widget/TileList$Tile;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/TileList;->b:Landroid/util/SparseArray;

    .line 38
    iput p1, p0, Landroidx/recyclerview/widget/TileList;->a:I

    return-void
.end method


# virtual methods
.method public addOrReplace(Landroidx/recyclerview/widget/TileList$Tile;)Landroidx/recyclerview/widget/TileList$Tile;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;)",
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Landroidx/recyclerview/widget/TileList;->b:Landroid/util/SparseArray;

    iget v1, p1, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 75
    iget v1, p1, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 78
    :cond_0
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/TileList$Tile;

    .line 79
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 80
    iget-object v0, p0, Landroidx/recyclerview/widget/TileList;->c:Landroidx/recyclerview/widget/TileList$Tile;

    if-ne v0, v2, :cond_1

    .line 81
    iput-object p1, p0, Landroidx/recyclerview/widget/TileList;->c:Landroidx/recyclerview/widget/TileList$Tile;

    :cond_1
    return-object v2
.end method

.method public clear()V
    .locals 1

    .line 58
    iget-object v0, p0, Landroidx/recyclerview/widget/TileList;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public getAtIndex(I)Landroidx/recyclerview/widget/TileList$Tile;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 66
    iget-object v0, p0, Landroidx/recyclerview/widget/TileList;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/TileList$Tile;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemAt(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Landroidx/recyclerview/widget/TileList;->c:Landroidx/recyclerview/widget/TileList$Tile;

    if-eqz v0, :cond_0

    .line 108
    iget v1, v0, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    if-gt v1, p1, :cond_0

    .line 108
    iget v0, v0, Landroidx/recyclerview/widget/TileList$Tile;->mItemCount:I

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/TileList;->a:I

    rem-int v0, p1, v0

    sub-int v0, p1, v0

    .line 44
    iget-object v1, p0, Landroidx/recyclerview/widget/TileList;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 48
    :cond_1
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/TileList$Tile;

    iput-object v0, p0, Landroidx/recyclerview/widget/TileList;->c:Landroidx/recyclerview/widget/TileList$Tile;

    .line 50
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/TileList;->c:Landroidx/recyclerview/widget/TileList$Tile;

    .line 112
    iget-object v1, v0, Landroidx/recyclerview/widget/TileList$Tile;->mItems:[Ljava/lang/Object;

    .line 112
    iget v0, v0, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    sub-int/2addr p1, v0

    aget-object p1, v1, p1

    return-object p1
.end method

.method public removeAtPos(I)Landroidx/recyclerview/widget/TileList$Tile;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Landroidx/recyclerview/widget/TileList;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/TileList$Tile;

    .line 88
    iget-object v2, p0, Landroidx/recyclerview/widget/TileList;->c:Landroidx/recyclerview/widget/TileList$Tile;

    if-ne v2, v1, :cond_0

    const/4 v2, 0x0

    .line 89
    iput-object v2, p0, Landroidx/recyclerview/widget/TileList;->c:Landroidx/recyclerview/widget/TileList$Tile;

    .line 91
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 54
    iget-object v0, p0, Landroidx/recyclerview/widget/TileList;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method
