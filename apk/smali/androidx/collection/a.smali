.class Landroidx/collection/a;
.super Landroidx/collection/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/d<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Landroidx/collection/ArrayMap;


# direct methods
.method public constructor <init>(Landroidx/collection/ArrayMap;)V
    .locals 0

    .line 76
    iput-object p1, p0, Landroidx/collection/a;->d:Landroidx/collection/ArrayMap;

    invoke-direct {p0}, Landroidx/collection/d;-><init>()V

    return-void
.end method


# virtual methods
.method public colClear()V
    .locals 1

    .line 119
    iget-object v0, p0, Landroidx/collection/a;->d:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    return-void
.end method

.method public colGetEntry(II)Ljava/lang/Object;
    .locals 1

    .line 84
    iget-object v0, p0, Landroidx/collection/a;->d:Landroidx/collection/ArrayMap;

    iget-object v0, v0, Landroidx/collection/SimpleArrayMap;->b:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public colGetMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Landroidx/collection/a;->d:Landroidx/collection/ArrayMap;

    return-object v0
.end method

.method public colGetSize()I
    .locals 1

    .line 79
    iget-object v0, p0, Landroidx/collection/a;->d:Landroidx/collection/ArrayMap;

    iget v0, v0, Landroidx/collection/SimpleArrayMap;->c:I

    return v0
.end method

.method public colIndexOfKey(Ljava/lang/Object;)I
    .locals 1

    .line 89
    iget-object v0, p0, Landroidx/collection/a;->d:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public colIndexOfValue(Ljava/lang/Object;)I
    .locals 1

    .line 94
    iget-object v0, p0, Landroidx/collection/a;->d:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->e(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Landroidx/collection/a;->d:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public colRemoveAt(I)V
    .locals 1

    .line 114
    iget-object v0, p0, Landroidx/collection/a;->d:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

.method public colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Landroidx/collection/a;->d:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
