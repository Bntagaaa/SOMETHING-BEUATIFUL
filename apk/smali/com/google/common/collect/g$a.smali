.class Lcom/google/common/collect/g$a;
.super Lcom/google/common/collect/Maps$d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/g$a$b;,
        Lcom/google/common/collect/g$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$d0<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final transient d:Ljava/util/Map;

.field public final synthetic e:Lcom/google/common/collect/g;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/g;Ljava/util/Map;)V
    .locals 0

    .line 1254
    iput-object p1, p0, Lcom/google/common/collect/g$a;->e:Lcom/google/common/collect/g;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$d0;-><init>()V

    .line 1255
    iput-object p2, p0, Lcom/google/common/collect/g$a;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 2

    .line 1330
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 1331
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/g$a;->e:Lcom/google/common/collect/g;

    invoke-virtual {v1, v0, p1}, Lcom/google/common/collect/g;->m(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/google/common/collect/g$a;->e:Lcom/google/common/collect/g;

    iget-object v1, v0, Lcom/google/common/collect/g;->f:Ljava/util/Map;

    .line 1322
    iget-object v2, p0, Lcom/google/common/collect/g$a;->d:Ljava/util/Map;

    if-ne v2, v1, :cond_0

    .line 1323
    invoke-virtual {v0}, Lcom/google/common/collect/g;->clear()V

    return-void

    .line 1325
    :cond_0
    new-instance v0, Lcom/google/common/collect/g$a$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/g$a$b;-><init>(Lcom/google/common/collect/g$a;)V

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->b(Ljava/util/Iterator;)V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1267
    iget-object v0, p0, Lcom/google/common/collect/g$a;->d:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->g(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 1260
    new-instance v0, Lcom/google/common/collect/g$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/g$a$a;-><init>(Lcom/google/common/collect/g$a;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    .line 1307
    iget-object v0, p0, Lcom/google/common/collect/g$a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1246
    invoke-virtual {p0, p1}, Lcom/google/common/collect/g$a;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1272
    iget-object v0, p0, Lcom/google/common/collect/g$a;->d:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->h(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1278
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/g$a;->e:Lcom/google/common/collect/g;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/g;->m(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1312
    iget-object v0, p0, Lcom/google/common/collect/g$a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1283
    iget-object v0, p0, Lcom/google/common/collect/g$a;->e:Lcom/google/common/collect/g;

    invoke-virtual {v0}, Lcom/google/common/collect/l;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1246
    invoke-virtual {p0, p1}, Lcom/google/common/collect/g$a;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1293
    iget-object v0, p0, Lcom/google/common/collect/g$a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1298
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/g$a;->e:Lcom/google/common/collect/g;

    invoke-virtual {v0}, Lcom/google/common/collect/g;->createCollection()Ljava/util/Collection;

    move-result-object v1

    .line 1299
    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 85
    iget v2, v0, Lcom/google/common/collect/g;->g:I

    .line 1300
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .line 85
    iput v2, v0, Lcom/google/common/collect/g;->g:I

    .line 1301
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/google/common/collect/g$a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1317
    iget-object v0, p0, Lcom/google/common/collect/g$a;->d:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
