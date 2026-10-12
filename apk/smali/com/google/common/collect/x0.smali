.class final Lcom/google/common/collect/x0;
.super Lcom/google/common/collect/h5;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/Immutable;
    containerOf = {
        "R",
        "C",
        "V"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/x0$c;,
        Lcom/google/common/collect/x0$f;,
        Lcom/google/common/collect/x0$b;,
        Lcom/google/common/collect/x0$e;,
        Lcom/google/common/collect/x0$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/h5<",
        "TR;TC;TV;>;"
    }
.end annotation


# instance fields
.field public final c:Lcom/google/common/collect/ImmutableMap;

.field public final d:Lcom/google/common/collect/ImmutableMap;

.field public final e:Lcom/google/common/collect/ImmutableMap;

.field public final f:Lcom/google/common/collect/ImmutableMap;

.field public final g:[I

.field public final h:[I

.field public final i:[[Ljava/lang/Object;

.field public final j:[I

.field public final k:[I


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)V
    .locals 12

    .line 53
    invoke-direct {p0}, Lcom/google/common/collect/h5;-><init>()V

    .line 55
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    .line 56
    iput-object v0, p0, Lcom/google/common/collect/x0;->i:[[Ljava/lang/Object;

    .line 57
    invoke-static {p2}, Lcom/google/common/collect/Maps;->e(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p2

    iput-object p2, p0, Lcom/google/common/collect/x0;->c:Lcom/google/common/collect/ImmutableMap;

    .line 58
    invoke-static {p3}, Lcom/google/common/collect/Maps;->e(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p3

    iput-object p3, p0, Lcom/google/common/collect/x0;->d:Lcom/google/common/collect/ImmutableMap;

    .line 59
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/common/collect/x0;->g:[I

    .line 60
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/common/collect/x0;->h:[I

    .line 61
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    new-array p2, p2, [I

    .line 62
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    new-array p3, p3, [I

    const/4 v0, 0x0

    .line 63
    :goto_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 64
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Table$Cell;

    .line 65
    invoke-interface {v2}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v6

    .line 66
    invoke-interface {v2}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v7

    .line 67
    iget-object v4, p0, Lcom/google/common/collect/x0;->c:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v4, v6}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 68
    iget-object v4, p0, Lcom/google/common/collect/x0;->d:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v4, v7}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 69
    iget-object v4, p0, Lcom/google/common/collect/x0;->i:[[Ljava/lang/Object;

    aget-object v4, v4, v10

    aget-object v9, v4, v11

    .line 70
    invoke-interface {v2}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v9, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 178
    :goto_1
    const-string v5, "Duplicate key: (row=%s, column=%s), values: [%s, %s]."

    invoke-static/range {v4 .. v9}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    iget-object v4, p0, Lcom/google/common/collect/x0;->i:[[Ljava/lang/Object;

    aget-object v4, v4, v10

    invoke-interface {v2}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v4, v11

    .line 72
    iget-object v2, p0, Lcom/google/common/collect/x0;->g:[I

    aget v4, v2, v10

    add-int/2addr v4, v3

    aput v4, v2, v10

    .line 73
    iget-object v2, p0, Lcom/google/common/collect/x0;->h:[I

    aget v4, v2, v11

    add-int/2addr v4, v3

    aput v4, v2, v11

    .line 74
    aput v10, p2, v0

    .line 75
    aput v11, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    iput-object p2, p0, Lcom/google/common/collect/x0;->j:[I

    .line 78
    iput-object p3, p0, Lcom/google/common/collect/x0;->k:[I

    .line 79
    new-instance p1, Lcom/google/common/collect/x0$f;

    invoke-direct {p1, p0}, Lcom/google/common/collect/x0$f;-><init>(Lcom/google/common/collect/x0;)V

    iput-object p1, p0, Lcom/google/common/collect/x0;->e:Lcom/google/common/collect/ImmutableMap;

    .line 80
    new-instance p1, Lcom/google/common/collect/x0$c;

    invoke-direct {p1, p0}, Lcom/google/common/collect/x0$c;-><init>(Lcom/google/common/collect/x0;)V

    iput-object p1, p0, Lcom/google/common/collect/x0;->f:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method


# virtual methods
.method public columnMap()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/google/common/collect/x0;->f:Lcom/google/common/collect/ImmutableMap;

    .line 237
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic columnMap()Ljava/util/Map;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/google/common/collect/x0;->columnMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/google/common/collect/x0;->c:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 250
    iget-object v0, p0, Lcom/google/common/collect/x0;->d:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/x0;->i:[[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p1, p1, p2

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final h(I)Lcom/google/common/collect/Table$Cell;
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/google/common/collect/x0;->j:[I

    aget v0, v0, p1

    .line 262
    iget-object v1, p0, Lcom/google/common/collect/x0;->k:[I

    aget p1, v1, p1

    .line 263
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->rowKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 264
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->columnKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 265
    iget-object v3, p0, Lcom/google/common/collect/x0;->i:[[Ljava/lang/Object;

    aget-object v0, v3, v0

    aget-object p1, v0, p1

    .line 266
    invoke-static {v1, v2, p1}, Lcom/google/common/collect/ImmutableTable;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object p1

    return-object p1
.end method

.method public final i(I)Ljava/lang/Object;
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/google/common/collect/x0;->j:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/common/collect/x0;->i:[[Ljava/lang/Object;

    aget-object v0, v1, v0

    iget-object v1, p0, Lcom/google/common/collect/x0;->k:[I

    aget p1, v1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public rowMap()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/google/common/collect/x0;->e:Lcom/google/common/collect/ImmutableMap;

    .line 244
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/google/common/collect/x0;->rowMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/google/common/collect/x0;->j:[I

    array-length v0, v0

    return v0
.end method
