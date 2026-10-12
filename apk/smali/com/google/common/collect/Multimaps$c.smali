.class Lcom/google/common/collect/Multimaps$c;
.super Lcom/google/common/collect/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/g<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient h:Lcom/google/common/base/Supplier;


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/google/common/collect/g;->h()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/google/common/collect/g;->i()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public createCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$c;->h:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final k(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    .line 137
    instance-of v0, p1, Ljava/util/NavigableSet;

    if-eqz v0, :cond_0

    .line 138
    check-cast p1, Ljava/util/NavigableSet;

    invoke-static {p1}, Lcom/google/common/collect/Sets;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1

    .line 139
    :cond_0
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_1

    .line 140
    check-cast p1, Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1

    .line 141
    :cond_1
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 142
    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 143
    :cond_2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 144
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 146
    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final m(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2

    .line 152
    instance-of v0, p2, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 153
    check-cast p2, Ljava/util/List;

    .line 302
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/g$f;

    .line 886
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/g$j;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/g$i;)V

    return-object v0

    .line 302
    :cond_0
    new-instance v0, Lcom/google/common/collect/g$j;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/g$j;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/g$i;)V

    return-object v0

    .line 154
    :cond_1
    instance-of v0, p2, Ljava/util/NavigableSet;

    if-eqz v0, :cond_2

    .line 155
    new-instance v0, Lcom/google/common/collect/g$k;

    check-cast p2, Ljava/util/NavigableSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/g$k;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/NavigableSet;Lcom/google/common/collect/g$i;)V

    return-object v0

    .line 156
    :cond_2
    instance-of v0, p2, Ljava/util/SortedSet;

    if-eqz v0, :cond_3

    .line 157
    new-instance v0, Lcom/google/common/collect/g$m;

    check-cast p2, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/g$m;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/g$i;)V

    return-object v0

    .line 158
    :cond_3
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_4

    .line 159
    new-instance v0, Lcom/google/common/collect/g$l;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/g$l;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/Set;)V

    return-object v0

    .line 161
    :cond_4
    new-instance v0, Lcom/google/common/collect/g$i;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/g$i;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/g$i;)V

    return-object v0
.end method
