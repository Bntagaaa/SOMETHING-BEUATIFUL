.class public Lcom/google/common/collect/TreeRangeSet;
.super Lcom/google/common/collect/o;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/TreeRangeSet$f;,
        Lcom/google/common/collect/TreeRangeSet$g;,
        Lcom/google/common/collect/TreeRangeSet$c;,
        Lcom/google/common/collect/TreeRangeSet$d;,
        Lcom/google/common/collect/TreeRangeSet$e;,
        Lcom/google/common/collect/TreeRangeSet$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable<",
        "*>;>",
        "Lcom/google/common/collect/o<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/AbstractMap;

.field public transient b:Ljava/util/Set;

.field public transient c:Ljava/util/Set;

.field public transient d:Lcom/google/common/collect/RangeSet;


# direct methods
.method public constructor <init>(Ljava/util/NavigableMap;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/google/common/collect/o;-><init>()V

    .line 77
    check-cast p1, Ljava/util/AbstractMap;

    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/AbstractMap;

    return-void
.end method

.method public static create()Lcom/google/common/collect/TreeRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/collect/TreeRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/google/common/collect/TreeRangeSet;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/common/collect/TreeRangeSet;-><init>(Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/TreeRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)",
            "Lcom/google/common/collect/TreeRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/google/common/collect/TreeRangeSet;->create()Lcom/google/common/collect/TreeRangeSet;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p0}, Lcom/google/common/collect/TreeRangeSet;->addAll(Lcom/google/common/collect/RangeSet;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/TreeRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;)",
            "Lcom/google/common/collect/TreeRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/google/common/collect/TreeRangeSet;->create()Lcom/google/common/collect/TreeRangeSet;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p0}, Lcom/google/common/collect/TreeRangeSet;->addAll(Ljava/lang/Iterable;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/common/collect/Range;)V
    .locals 3

    .line 266
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/AbstractMap;

    iget-object v2, p1, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 269
    :cond_0
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(Lcom/google/common/collect/Range;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 177
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/AbstractMap;

    iget-object v1, p1, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 189
    iget-object p1, p1, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    if-eqz v2, :cond_2

    .line 191
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    .line 192
    iget-object v3, v2, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/w0;->compareTo(Lcom/google/common/collect/w0;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 194
    iget-object v1, v2, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/w0;->compareTo(Lcom/google/common/collect/w0;)I

    move-result v3

    if-ltz v3, :cond_1

    move-object p1, v1

    .line 202
    :cond_1
    iget-object v1, v2, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    .line 206
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 209
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    .line 210
    iget-object v3, v2, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    invoke-virtual {v3, p1}, Lcom/google/common/collect/w0;->compareTo(Lcom/google/common/collect/w0;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 212
    iget-object p1, v2, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    .line 217
    :cond_3
    invoke-interface {v0, v1, p1}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 155
    new-instance v0, Lcom/google/common/collect/Range;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/w0;Lcom/google/common/collect/w0;)V

    .line 219
    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeRangeSet;->a(Lcom/google/common/collect/Range;)V

    return-void
.end method

.method public bridge synthetic addAll(Lcom/google/common/collect/RangeSet;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/google/common/collect/o;->addAll(Lcom/google/common/collect/RangeSet;)V

    return-void
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/google/common/collect/o;->addAll(Ljava/lang/Iterable;)V

    return-void
.end method

.method public asDescendingSetOfRanges()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$b;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/AbstractMap;

    .line 93
    invoke-interface {v1}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/TreeRangeSet$b;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->c:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public asRanges()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->b:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$b;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/AbstractMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/TreeRangeSet$b;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->b:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/google/common/collect/o;->clear()V

    return-void
.end method

.method public complement()Lcom/google/common/collect/RangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->d:Lcom/google/common/collect/RangeSet;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeRangeSet$c;-><init>(Lcom/google/common/collect/TreeRangeSet;)V

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->d:Lcom/google/common/collect/RangeSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/google/common/collect/o;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public encloses(Lcom/google/common/collect/Range;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation

    .line 151
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p1, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/AbstractMap;

    invoke-interface {v1, v0}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic enclosesAll(Lcom/google/common/collect/RangeSet;)Z
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/google/common/collect/o;->enclosesAll(Lcom/google/common/collect/RangeSet;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic enclosesAll(Ljava/lang/Iterable;)Z
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/google/common/collect/o;->enclosesAll(Ljava/lang/Iterable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 42
    invoke-super {p0, p1}, Lcom/google/common/collect/o;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public intersects(Lcom/google/common/collect/Range;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation

    .line 136
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p1, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/AbstractMap;

    invoke-interface {v1, v0}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p1, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    invoke-interface {v1, v0}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/google/common/collect/o;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 124
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {p1}, Lcom/google/common/collect/w0;->a(Ljava/lang/Comparable;)Lcom/google/common/collect/w0$e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/AbstractMap;

    invoke-interface {v1, v0}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 127
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Range;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Lcom/google/common/collect/Range;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 224
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/AbstractMap;

    iget-object v1, p1, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 234
    iget-object v3, p1, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    if-eqz v2, :cond_2

    .line 236
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    .line 237
    iget-object v4, v2, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    invoke-virtual {v4, v1}, Lcom/google/common/collect/w0;->compareTo(Lcom/google/common/collect/w0;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 239
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 240
    iget-object v4, v2, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    invoke-virtual {v4, v3}, Lcom/google/common/collect/w0;->compareTo(Lcom/google/common/collect/w0;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 155
    new-instance v5, Lcom/google/common/collect/Range;

    invoke-direct {v5, v3, v4}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/w0;Lcom/google/common/collect/w0;)V

    .line 242
    invoke-virtual {p0, v5}, Lcom/google/common/collect/TreeRangeSet;->a(Lcom/google/common/collect/Range;)V

    .line 155
    :cond_1
    new-instance v4, Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    invoke-direct {v4, v2, v1}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/w0;Lcom/google/common/collect/w0;)V

    .line 245
    invoke-virtual {p0, v4}, Lcom/google/common/collect/TreeRangeSet;->a(Lcom/google/common/collect/Range;)V

    .line 250
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 253
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    .line 254
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v2, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    .line 255
    invoke-virtual {p1, v3}, Lcom/google/common/collect/w0;->compareTo(Lcom/google/common/collect/w0;)I

    move-result p1

    if-ltz p1, :cond_3

    .line 155
    new-instance p1, Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    invoke-direct {p1, v3, v2}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/w0;Lcom/google/common/collect/w0;)V

    .line 257
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet;->a(Lcom/google/common/collect/Range;)V

    .line 262
    :cond_3
    invoke-interface {v0, v1, v3}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public bridge synthetic removeAll(Lcom/google/common/collect/RangeSet;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/google/common/collect/o;->removeAll(Lcom/google/common/collect/RangeSet;)V

    return-void
.end method

.method public bridge synthetic removeAll(Ljava/lang/Iterable;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/google/common/collect/o;->removeAll(Ljava/lang/Iterable;)V

    return-void
.end method

.method public span()Lcom/google/common/collect/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/AbstractMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    .line 168
    invoke-interface {v0}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v1, :cond_0

    .line 172
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    iget-object v1, v1, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    .line 155
    new-instance v2, Lcom/google/common/collect/Range;

    invoke-direct {v2, v1, v0}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/w0;Lcom/google/common/collect/w0;)V

    return-object v2

    .line 170
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 861
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$f;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/TreeRangeSet$f;-><init>(Lcom/google/common/collect/TreeRangeSet;Lcom/google/common/collect/Range;)V

    return-object v0
.end method
