.class Lcom/google/common/collect/g$g;
.super Lcom/google/common/collect/g$a;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/g<",
        "TK;TV;>.a;",
        "Ljava/util/SortedMap<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public f:Ljava/util/SortedSet;

.field public final synthetic g:Lcom/google/common/collect/g;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/g;Ljava/util/SortedMap;)V
    .locals 0

    .line 1394
    iput-object p1, p0, Lcom/google/common/collect/g$g;->g:Lcom/google/common/collect/g;

    .line 1395
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/g$a;-><init>(Lcom/google/common/collect/g;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/util/SortedSet;
    .locals 3

    .line 1444
    new-instance v0, Lcom/google/common/collect/g$h;

    iget-object v1, p0, Lcom/google/common/collect/g$g;->g:Lcom/google/common/collect/g;

    invoke-virtual {p0}, Lcom/google/common/collect/g$g;->d()Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/g$h;-><init>(Lcom/google/common/collect/g;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 1404
    invoke-virtual {p0}, Lcom/google/common/collect/g$g;->d()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createKeySet()Ljava/util/Set;
    .locals 1

    .line 1392
    invoke-virtual {p0}, Lcom/google/common/collect/g$g;->c()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/SortedMap;
    .locals 1

    .line 1399
    iget-object v0, p0, Lcom/google/common/collect/g$a;->d:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1409
    invoke-virtual {p0}, Lcom/google/common/collect/g$g;->d()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1419
    new-instance v0, Lcom/google/common/collect/g$g;

    invoke-virtual {p0}, Lcom/google/common/collect/g$g;->d()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/g$g;->g:Lcom/google/common/collect/g;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/g$g;-><init>(Lcom/google/common/collect/g;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 1392
    invoke-virtual {p0}, Lcom/google/common/collect/g$g;->keySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 1438
    iget-object v0, p0, Lcom/google/common/collect/g$g;->f:Ljava/util/SortedSet;

    if-nez v0, :cond_0

    .line 1439
    invoke-virtual {p0}, Lcom/google/common/collect/g$g;->c()Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/g$g;->f:Ljava/util/SortedSet;

    :cond_0
    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1414
    invoke-virtual {p0}, Lcom/google/common/collect/g$g;->d()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1424
    new-instance v0, Lcom/google/common/collect/g$g;

    invoke-virtual {p0}, Lcom/google/common/collect/g$g;->d()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/g$g;->g:Lcom/google/common/collect/g;

    invoke-direct {v0, p2, p1}, Lcom/google/common/collect/g$g;-><init>(Lcom/google/common/collect/g;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1429
    new-instance v0, Lcom/google/common/collect/g$g;

    invoke-virtual {p0}, Lcom/google/common/collect/g$g;->d()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/g$g;->g:Lcom/google/common/collect/g;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/g$g;-><init>(Lcom/google/common/collect/g;Ljava/util/SortedMap;)V

    return-object v0
.end method
