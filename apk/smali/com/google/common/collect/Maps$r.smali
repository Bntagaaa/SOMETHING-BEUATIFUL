.class Lcom/google/common/collect/Maps$r;
.super Lcom/google/common/collect/Maps$b;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$b<",
        "TK;TV;>;",
        "Ljava/util/SortedMap<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public final b()Ljava/util/Set;
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/google/common/collect/Maps$b;->d:Ljava/util/Set;

    check-cast v0, Ljava/util/SortedSet;

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

    .line 861
    iget-object v0, p0, Lcom/google/common/collect/Maps$b;->d:Ljava/util/Set;

    check-cast v0, Ljava/util/SortedSet;

    .line 866
    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 861
    iget-object v0, p0, Lcom/google/common/collect/Maps$b;->d:Ljava/util/Set;

    check-cast v0, Ljava/util/SortedSet;

    .line 891
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 861
    iget-object v0, p0, Lcom/google/common/collect/Maps$b;->d:Ljava/util/Set;

    check-cast v0, Ljava/util/SortedSet;

    .line 881
    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/Maps$b;->e:Lcom/google/common/base/Function;

    invoke-static {p1, v0}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/SortedSet;Lcom/google/common/base/Function;)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 861
    iget-object v0, p0, Lcom/google/common/collect/Maps$b;->d:Ljava/util/Set;

    check-cast v0, Ljava/util/SortedSet;

    .line 999
    new-instance v1, Lcom/google/common/collect/v3;

    invoke-direct {v1, v0}, Lcom/google/common/collect/v3;-><init>(Ljava/util/SortedSet;)V

    return-object v1
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 861
    iget-object v0, p0, Lcom/google/common/collect/Maps$b;->d:Ljava/util/Set;

    check-cast v0, Ljava/util/SortedSet;

    .line 896
    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 861
    iget-object v0, p0, Lcom/google/common/collect/Maps$b;->d:Ljava/util/Set;

    check-cast v0, Ljava/util/SortedSet;

    .line 876
    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/Maps$b;->e:Lcom/google/common/base/Function;

    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/SortedSet;Lcom/google/common/base/Function;)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 861
    iget-object v0, p0, Lcom/google/common/collect/Maps$b;->d:Ljava/util/Set;

    check-cast v0, Ljava/util/SortedSet;

    .line 886
    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/Maps$b;->e:Lcom/google/common/base/Function;

    invoke-static {p1, v0}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/SortedSet;Lcom/google/common/base/Function;)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method
