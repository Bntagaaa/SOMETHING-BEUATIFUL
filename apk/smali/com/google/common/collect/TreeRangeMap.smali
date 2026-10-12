.class public final Lcom/google/common/collect/TreeRangeMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/RangeMap;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/TreeRangeMap$d;,
        Lcom/google/common/collect/TreeRangeMap$b;,
        Lcom/google/common/collect/TreeRangeMap$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/RangeMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final b:Lcom/google/common/collect/RangeMap;


# instance fields
.field public final a:Ljava/util/TreeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 305
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$a;

    invoke-direct {v0}, Lcom/google/common/collect/TreeRangeMap$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/TreeRangeMap;->b:Lcom/google/common/collect/RangeMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Lcom/google/common/collect/Maps;->newTreeMap()Ljava/util/TreeMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/TreeMap;

    return-void
.end method

.method public static a(Lcom/google/common/collect/Range;Ljava/lang/Object;Ljava/util/Map$Entry;)Lcom/google/common/collect/Range;
    .locals 1

    if-eqz p2, :cond_0

    .line 160
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$c;->getKey()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$c;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 162
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/TreeRangeMap$c;

    invoke-virtual {p1}, Lcom/google/common/collect/TreeRangeMap$c;->getKey()Lcom/google/common/collect/Range;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range;->span(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static create()Lcom/google/common/collect/TreeRangeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/TreeRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/google/common/collect/TreeRangeMap;

    invoke-direct {v0}, Lcom/google/common/collect/TreeRangeMap;-><init>()V

    return-object v0
.end method


# virtual methods
.method public asDescendingMapOfRanges()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 251
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$b;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/TreeMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/TreeRangeMap$b;-><init>(Lcom/google/common/collect/TreeRangeMap;Ljava/util/Collection;)V

    return-object v0
.end method

.method public asMapOfRanges()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 246
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$b;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/TreeMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/TreeRangeMap$b;-><init>(Lcom/google/common/collect/TreeRangeMap;Ljava/util/Collection;)V

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 697
    instance-of v0, p1, Lcom/google/common/collect/RangeMap;

    if-eqz v0, :cond_0

    .line 698
    check-cast p1, Lcom/google/common/collect/RangeMap;

    .line 699
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeMap;->getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 106
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 113
    invoke-static {p1}, Lcom/google/common/collect/w0;->a(Ljava/lang/Comparable;)Lcom/google/common/collect/w0$e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/TreeMap;

    invoke-interface {v1, v0}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/TreeRangeMap$c;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/TreeRangeMap$c;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 706
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public put(Lcom/google/common/collect/Range;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;)V"
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeMap;->remove(Lcom/google/common/collect/Range;)V

    .line 127
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$c;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeRangeMap$c;-><init>(Lcom/google/common/collect/Range;Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    iget-object p2, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/TreeMap;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public putAll(Lcom/google/common/collect/RangeMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 169
    invoke-interface {p1}, Lcom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 170
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/TreeRangeMap;->put(Lcom/google/common/collect/Range;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putCoalescing(Lcom/google/common/collect/Range;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeRangeMap;->put(Lcom/google/common/collect/Range;Ljava/lang/Object;)V

    return-void

    .line 138
    :cond_0
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 145
    iget-object v2, p1, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    .line 146
    invoke-interface {v0, v2}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 147
    invoke-static {p1, v1, v2}, Lcom/google/common/collect/TreeRangeMap;->a(Lcom/google/common/collect/Range;Ljava/lang/Object;Ljava/util/Map$Entry;)Lcom/google/common/collect/Range;

    move-result-object v2

    .line 149
    iget-object p1, p1, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    .line 150
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    .line 151
    invoke-static {v2, v1, p1}, Lcom/google/common/collect/TreeRangeMap;->a(Lcom/google/common/collect/Range;Ljava/lang/Object;Ljava/util/Map$Entry;)Lcom/google/common/collect/Range;

    move-result-object p1

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeRangeMap;->put(Lcom/google/common/collect/Range;Ljava/lang/Object;)V

    return-void
.end method

.method public remove(Lcom/google/common/collect/Range;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TK;>;)V"
        }
    .end annotation

    .line 196
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/TreeMap;

    iget-object v1, p1, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 206
    iget-object p1, p1, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    if-eqz v2, :cond_2

    .line 208
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/TreeRangeMap$c;

    .line 98
    iget-object v4, v3, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/Range;

    .line 98
    iget-object v4, v4, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    .line 209
    invoke-virtual {v4, v1}, Lcom/google/common/collect/w0;->compareTo(Lcom/google/common/collect/w0;)I

    move-result v4

    if-lez v4, :cond_2

    .line 98
    iget-object v3, v3, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/Range;

    iget-object v4, v3, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    .line 211
    invoke-virtual {v4, p1}, Lcom/google/common/collect/w0;->compareTo(Lcom/google/common/collect/w0;)I

    move-result v4

    if-lez v4, :cond_1

    .line 217
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/TreeRangeMap$c;

    invoke-virtual {v4}, Lcom/google/common/collect/TreeRangeMap$c;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 191
    new-instance v5, Lcom/google/common/collect/TreeRangeMap$c;

    .line 155
    new-instance v6, Lcom/google/common/collect/Range;

    iget-object v7, v3, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    invoke-direct {v6, p1, v7}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/w0;Lcom/google/common/collect/w0;)V

    .line 71
    invoke-direct {v5, v6, v4}, Lcom/google/common/collect/TreeRangeMap$c;-><init>(Lcom/google/common/collect/Range;Ljava/lang/Object;)V

    .line 191
    invoke-interface {v0, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/TreeRangeMap$c;

    invoke-virtual {v2}, Lcom/google/common/collect/TreeRangeMap$c;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 191
    new-instance v4, Lcom/google/common/collect/TreeRangeMap$c;

    .line 155
    new-instance v5, Lcom/google/common/collect/Range;

    iget-object v3, v3, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    invoke-direct {v5, v3, v1}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/w0;Lcom/google/common/collect/w0;)V

    .line 71
    invoke-direct {v4, v5, v2}, Lcom/google/common/collect/TreeRangeMap$c;-><init>(Lcom/google/common/collect/Range;Ljava/lang/Object;)V

    .line 191
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 231
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/TreeRangeMap$c;

    .line 98
    iget-object v4, v3, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/Range;

    .line 98
    iget-object v4, v4, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    .line 232
    invoke-virtual {v4, p1}, Lcom/google/common/collect/w0;->compareTo(Lcom/google/common/collect/w0;)I

    move-result v4

    if-lez v4, :cond_3

    .line 98
    iget-object v3, v3, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/Range;

    iget-object v3, v3, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    .line 238
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/TreeRangeMap$c;

    invoke-virtual {v2}, Lcom/google/common/collect/TreeRangeMap$c;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 191
    new-instance v4, Lcom/google/common/collect/TreeRangeMap$c;

    .line 155
    new-instance v5, Lcom/google/common/collect/Range;

    invoke-direct {v5, p1, v3}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/w0;Lcom/google/common/collect/w0;)V

    .line 71
    invoke-direct {v4, v5, v2}, Lcom/google/common/collect/TreeRangeMap$c;-><init>(Lcom/google/common/collect/Range;Ljava/lang/Object;)V

    .line 191
    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_3
    invoke-interface {v0, v1, p1}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public span()Lcom/google/common/collect/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range<",
            "TK;>;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    .line 182
    invoke-interface {v0}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v1, :cond_0

    .line 187
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/TreeRangeMap$c;

    invoke-virtual {v1}, Lcom/google/common/collect/TreeRangeMap$c;->getKey()Lcom/google/common/collect/Range;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$c;->getKey()Lcom/google/common/collect/Range;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    .line 155
    new-instance v2, Lcom/google/common/collect/Range;

    invoke-direct {v2, v1, v0}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/w0;Lcom/google/common/collect/w0;)V

    return-object v2

    .line 184
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TK;>;)",
            "Lcom/google/common/collect/RangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 293
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 296
    :cond_0
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/TreeRangeMap$d;-><init>(Lcom/google/common/collect/TreeRangeMap;Lcom/google/common/collect/Range;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
