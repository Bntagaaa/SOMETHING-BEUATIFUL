.class Lcom/google/common/collect/u5$b;
.super Lcom/google/common/collect/v5$h;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/u5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/v5<",
        "TR;TC;TV;>.h;",
        "Ljava/util/SortedMap<",
        "TR;",
        "Ljava/util/Map<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/collect/u5;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/u5;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/google/common/collect/u5$b;->e:Lcom/google/common/collect/u5;

    invoke-direct {p0, p1}, Lcom/google/common/collect/v5$h;-><init>(Lcom/google/common/collect/v5;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TR;>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/google/common/collect/u5$b;->e:Lcom/google/common/collect/u5;

    iget-object v0, v0, Lcom/google/common/collect/v5;->c:Ljava/util/Map;

    .line 62
    check-cast v0, Ljava/util/SortedMap;

    .line 106
    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final createKeySet()Ljava/util/Set;
    .locals 1

    .line 101
    new-instance v0, Lcom/google/common/collect/Maps$s;

    .line 3571
    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$n;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/google/common/collect/u5$b;->e:Lcom/google/common/collect/u5;

    iget-object v0, v0, Lcom/google/common/collect/v5;->c:Ljava/util/Map;

    .line 62
    check-cast v0, Ljava/util/SortedMap;

    .line 111
    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 121
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v0, Lcom/google/common/collect/u5;

    .line 62
    iget-object v1, p0, Lcom/google/common/collect/u5$b;->e:Lcom/google/common/collect/u5;

    iget-object v2, v1, Lcom/google/common/collect/v5;->c:Ljava/util/Map;

    .line 62
    check-cast v2, Ljava/util/SortedMap;

    .line 122
    invoke-interface {v2, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object v1, v1, Lcom/google/common/collect/v5;->d:Lcom/google/common/base/Supplier;

    .line 58
    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/v5;-><init>(Ljava/util/Map;Lcom/google/common/base/Supplier;)V

    .line 123
    invoke-virtual {v0}, Lcom/google/common/collect/u5;->rowMap()Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/google/common/collect/u5$b;->keySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TR;>;"
        }
    .end annotation

    .line 96
    invoke-super {p0}, Lcom/google/common/collect/Maps$d0;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/google/common/collect/u5$b;->e:Lcom/google/common/collect/u5;

    iget-object v0, v0, Lcom/google/common/collect/v5;->c:Ljava/util/Map;

    .line 62
    check-cast v0, Ljava/util/SortedMap;

    .line 116
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TR;)",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 128
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v0, Lcom/google/common/collect/u5;

    .line 62
    iget-object v1, p0, Lcom/google/common/collect/u5$b;->e:Lcom/google/common/collect/u5;

    iget-object v2, v1, Lcom/google/common/collect/v5;->c:Ljava/util/Map;

    .line 62
    check-cast v2, Ljava/util/SortedMap;

    .line 130
    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object p2, v1, Lcom/google/common/collect/v5;->d:Lcom/google/common/base/Supplier;

    .line 58
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/v5;-><init>(Ljava/util/Map;Lcom/google/common/base/Supplier;)V

    .line 131
    invoke-virtual {v0}, Lcom/google/common/collect/u5;->rowMap()Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 136
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v0, Lcom/google/common/collect/u5;

    .line 62
    iget-object v1, p0, Lcom/google/common/collect/u5$b;->e:Lcom/google/common/collect/u5;

    iget-object v2, v1, Lcom/google/common/collect/v5;->c:Ljava/util/Map;

    .line 62
    check-cast v2, Ljava/util/SortedMap;

    .line 137
    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object v1, v1, Lcom/google/common/collect/v5;->d:Lcom/google/common/base/Supplier;

    .line 58
    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/v5;-><init>(Ljava/util/Map;Lcom/google/common/base/Supplier;)V

    .line 138
    invoke-virtual {v0}, Lcom/google/common/collect/u5;->rowMap()Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method
