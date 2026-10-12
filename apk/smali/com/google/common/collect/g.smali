.class abstract Lcom/google/common/collect/g;
.super Lcom/google/common/collect/l;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/g$d;,
        Lcom/google/common/collect/g$g;,
        Lcom/google/common/collect/g$a;,
        Lcom/google/common/collect/g$b;,
        Lcom/google/common/collect/g$e;,
        Lcom/google/common/collect/g$h;,
        Lcom/google/common/collect/g$c;,
        Lcom/google/common/collect/g$f;,
        Lcom/google/common/collect/g$j;,
        Lcom/google/common/collect/g$k;,
        Lcom/google/common/collect/g$m;,
        Lcom/google/common/collect/g$l;,
        Lcom/google/common/collect/g$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/l<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final transient f:Ljava/util/Map;

.field public transient g:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lcom/google/common/collect/l;-><init>()V

    .line 116
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 117
    iput-object p1, p0, Lcom/google/common/collect/g;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 2

    .line 1233
    new-instance v0, Lcom/google/common/collect/g$a;

    iget-object v1, p0, Lcom/google/common/collect/g;->f:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/g$a;-><init>(Lcom/google/common/collect/g;Ljava/util/Map;)V

    return-object v0
.end method

.method public final b()Ljava/util/Collection;
    .locals 1

    .line 1206
    instance-of v0, p0, Lcom/google/common/collect/SetMultimap;

    if-eqz v0, :cond_0

    .line 1207
    new-instance v0, Lcom/google/common/collect/l$b;

    .line 133
    invoke-direct {v0, p0}, Lcom/google/common/collect/l$a;-><init>(Lcom/google/common/collect/l;)V

    return-object v0

    .line 1209
    :cond_0
    new-instance v0, Lcom/google/common/collect/l$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/l$a;-><init>(Lcom/google/common/collect/l;)V

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 2

    .line 892
    new-instance v0, Lcom/google/common/collect/g$c;

    iget-object v1, p0, Lcom/google/common/collect/g;->f:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/g$c;-><init>(Lcom/google/common/collect/g;Ljava/util/Map;)V

    return-object v0
.end method

.method public clear()V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/google/common/collect/g;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 270
    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    goto :goto_0

    .line 272
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 273
    iput v0, p0, Lcom/google/common/collect/g;->g:I

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 176
    iget-object v0, p0, Lcom/google/common/collect/g;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract createCollection()Ljava/util/Collection;
.end method

.method public final d()Lcom/google/common/collect/Multiset;
    .locals 1

    .line 1187
    new-instance v0, Lcom/google/common/collect/Multimaps$g;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$g;-><init>(Lcom/google/common/collect/Multimap;)V

    return-object v0
.end method

.method public final e()Ljava/util/Collection;
    .locals 1

    .line 1166
    new-instance v0, Lcom/google/common/collect/l$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/l$c;-><init>(Lcom/google/common/collect/g;)V

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1201
    invoke-super {p0}, Lcom/google/common/collect/l;->entries()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Iterator;
    .locals 1

    .line 1223
    new-instance v0, Lcom/google/common/collect/f;

    .line 1223
    invoke-direct {v0, p0}, Lcom/google/common/collect/g$b;-><init>(Lcom/google/common/collect/g;)V

    return-object v0
.end method

.method public g(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 160
    invoke-virtual {p0}, Lcom/google/common/collect/g;->createCollection()Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/google/common/collect/g;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 287
    invoke-virtual {p0, p1}, Lcom/google/common/collect/g;->g(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 289
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/g;->m(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final h()Ljava/util/Map;
    .locals 2

    .line 1237
    iget-object v0, p0, Lcom/google/common/collect/g;->f:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    .line 1238
    new-instance v1, Lcom/google/common/collect/g$d;

    check-cast v0, Ljava/util/NavigableMap;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/g$d;-><init>(Lcom/google/common/collect/g;Ljava/util/NavigableMap;)V

    return-object v1

    .line 1239
    :cond_0
    instance-of v1, v0, Ljava/util/SortedMap;

    if-eqz v1, :cond_1

    .line 1240
    new-instance v1, Lcom/google/common/collect/g$g;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/g$g;-><init>(Lcom/google/common/collect/g;Ljava/util/SortedMap;)V

    return-object v1

    .line 1242
    :cond_1
    new-instance v1, Lcom/google/common/collect/g$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/g$a;-><init>(Lcom/google/common/collect/g;Ljava/util/Map;)V

    return-object v1
.end method

.method public final i()Ljava/util/Set;
    .locals 2

    .line 896
    iget-object v0, p0, Lcom/google/common/collect/g;->f:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    .line 897
    new-instance v1, Lcom/google/common/collect/g$e;

    check-cast v0, Ljava/util/NavigableMap;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/g$e;-><init>(Lcom/google/common/collect/g;Ljava/util/NavigableMap;)V

    return-object v1

    .line 898
    :cond_0
    instance-of v1, v0, Ljava/util/SortedMap;

    if-eqz v1, :cond_1

    .line 899
    new-instance v1, Lcom/google/common/collect/g$h;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/g$h;-><init>(Lcom/google/common/collect/g;Ljava/util/SortedMap;)V

    return-object v1

    .line 901
    :cond_1
    new-instance v1, Lcom/google/common/collect/g$c;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/g$c;-><init>(Lcom/google/common/collect/g;Ljava/util/Map;)V

    return-object v1
.end method

.method public j()Ljava/util/Collection;
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/google/common/collect/g;->createCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/g;->k(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 263
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public l()Ljava/util/Iterator;
    .locals 1

    .line 1171
    new-instance v0, Lcom/google/common/collect/e;

    .line 1171
    invoke-direct {v0, p0}, Lcom/google/common/collect/g$b;-><init>(Lcom/google/common/collect/g;)V

    return-object v0
.end method

.method public m(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2

    .line 297
    new-instance v0, Lcom/google/common/collect/g$i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/g$i;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/g$i;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/google/common/collect/g;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 185
    invoke-virtual {p0, p1}, Lcom/google/common/collect/g;->g(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 186
    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 187
    iget p2, p0, Lcom/google/common/collect/g;->g:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/google/common/collect/g;->g:I

    .line 188
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "New Collection violated the Collection spec"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 193
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 194
    iget p1, p0, Lcom/google/common/collect/g;->g:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/collect/g;->g:I

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/google/common/collect/g;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/google/common/collect/g;->j()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/g;->createCollection()Ljava/util/Collection;

    move-result-object v0

    .line 255
    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 256
    iget v1, p0, Lcom/google/common/collect/g;->g:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/common/collect/g;->g:I

    .line 257
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 259
    invoke-virtual {p0, v0}, Lcom/google/common/collect/g;->k(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 219
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 220
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p0, p1}, Lcom/google/common/collect/g;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/g;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-nez v1, :cond_1

    .line 204
    invoke-virtual {p0, p1}, Lcom/google/common/collect/g;->g(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 205
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/g;->createCollection()Ljava/util/Collection;

    move-result-object p1

    .line 227
    invoke-interface {p1, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 229
    iget v0, p0, Lcom/google/common/collect/g;->g:I

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/common/collect/g;->g:I

    .line 230
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 232
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    iget v0, p0, Lcom/google/common/collect/g;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/g;->g:I

    goto :goto_0

    .line 238
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/g;->k(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/google/common/collect/g;->g:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1161
    invoke-super {p0}, Lcom/google/common/collect/l;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
