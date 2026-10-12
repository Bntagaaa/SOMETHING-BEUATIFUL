.class Lcom/google/common/collect/Maps$j;
.super Lcom/google/common/collect/Maps$h;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Maps$j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$h<",
        "TK;TV;>;",
        "Ljava/util/SortedMap<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 2828
    iget-object v0, p0, Lcom/google/common/collect/Maps$a;->d:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 2876
    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final createKeySet()Ljava/util/Set;
    .locals 1

    .line 2838
    new-instance v0, Lcom/google/common/collect/Maps$j$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$j$a;-><init>(Lcom/google/common/collect/Maps$j;)V

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2882
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$j;->keySet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2900
    new-instance v0, Lcom/google/common/collect/Maps$j;

    .line 2828
    iget-object v1, p0, Lcom/google/common/collect/Maps$a;->d:Ljava/util/Map;

    check-cast v1, Ljava/util/SortedMap;

    .line 2900
    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 2824
    iget-object v1, p0, Lcom/google/common/collect/Maps$a;->e:Lcom/google/common/base/Predicate;

    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/Maps$h;-><init>(Ljava/util/Map;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 2819
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$j;->keySet()Ljava/util/SortedSet;

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

    .line 2833
    invoke-super {p0}, Lcom/google/common/collect/Maps$d0;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2828
    iget-object v0, p0, Lcom/google/common/collect/Maps$a;->d:Ljava/util/Map;

    move-object v1, v0

    check-cast v1, Ljava/util/SortedMap;

    .line 2890
    :goto_0
    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    .line 2891
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/Maps$a;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 2828
    :cond_0
    move-object v2, v0

    check-cast v2, Ljava/util/SortedMap;

    .line 2894
    invoke-interface {v2, v1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    goto :goto_0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2905
    new-instance v0, Lcom/google/common/collect/Maps$j;

    .line 2828
    iget-object v1, p0, Lcom/google/common/collect/Maps$a;->d:Ljava/util/Map;

    check-cast v1, Ljava/util/SortedMap;

    .line 2905
    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 2824
    iget-object p2, p0, Lcom/google/common/collect/Maps$a;->e:Lcom/google/common/base/Predicate;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/Maps$h;-><init>(Ljava/util/Map;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2910
    new-instance v0, Lcom/google/common/collect/Maps$j;

    .line 2828
    iget-object v1, p0, Lcom/google/common/collect/Maps$a;->d:Ljava/util/Map;

    check-cast v1, Ljava/util/SortedMap;

    .line 2910
    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 2824
    iget-object v1, p0, Lcom/google/common/collect/Maps$a;->e:Lcom/google/common/base/Predicate;

    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/Maps$h;-><init>(Ljava/util/Map;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method
