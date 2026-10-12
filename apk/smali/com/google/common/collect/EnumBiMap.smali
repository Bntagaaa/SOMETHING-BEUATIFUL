.class public final Lcom/google/common/collect/EnumBiMap;
.super Lcom/google/common/collect/b;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum<",
        "TK;>;V:",
        "Ljava/lang/Enum<",
        "TV;>;>",
        "Lcom/google/common/collect/b<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient f:Ljava/lang/Class;

.field public transient g:Ljava/lang/Class;


# direct methods
.method public static create(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/common/collect/EnumBiMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Enum<",
            "TV;>;>(",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Lcom/google/common/collect/EnumBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/google/common/collect/EnumBiMap;

    .line 72
    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, p0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v2, Ljava/util/EnumMap;

    invoke-direct {v2, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/b;-><init>(Ljava/util/EnumMap;Ljava/util/AbstractMap;)V

    .line 73
    iput-object p0, v0, Lcom/google/common/collect/EnumBiMap;->f:Ljava/lang/Class;

    .line 74
    iput-object p1, v0, Lcom/google/common/collect/EnumBiMap;->g:Ljava/lang/Class;

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/collect/EnumBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Enum<",
            "TV;>;>(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/EnumBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 66
    invoke-static {p0}, Lcom/google/common/collect/EnumBiMap;->d(Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v0

    .line 89
    instance-of v1, p0, Lcom/google/common/collect/EnumBiMap;

    if-eqz v1, :cond_0

    .line 90
    move-object v1, p0

    check-cast v1, Lcom/google/common/collect/EnumBiMap;

    iget-object v1, v1, Lcom/google/common/collect/EnumBiMap;->g:Ljava/lang/Class;

    goto :goto_0

    .line 92
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 93
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 66
    :goto_0
    invoke-static {v0, v1}, Lcom/google/common/collect/EnumBiMap;->create(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/common/collect/EnumBiMap;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p0}, Lcom/google/common/collect/EnumBiMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public static d(Ljava/util/Map;)Ljava/lang/Class;
    .locals 1

    .line 78
    instance-of v0, p0, Lcom/google/common/collect/EnumBiMap;

    if-eqz v0, :cond_0

    .line 79
    check-cast p0, Lcom/google/common/collect/EnumBiMap;

    invoke-virtual {p0}, Lcom/google/common/collect/EnumBiMap;->keyType()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 81
    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/EnumHashBiMap;

    if-eqz v0, :cond_1

    .line 82
    check-cast p0, Lcom/google/common/collect/EnumHashBiMap;

    invoke-virtual {p0}, Lcom/google/common/collect/EnumHashBiMap;->keyType()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 84
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 85
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Ljava/lang/Enum;

    .line 108
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Ljava/lang/Enum;

    .line 113
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    return-object p1
.end method

.method public bridge synthetic clear()V
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/google/common/collect/b;->clear()V

    return-void
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Lcom/google/common/collect/b;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/google/common/collect/b;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/google/common/collect/b;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/google/common/collect/b;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keyType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TK;>;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/google/common/collect/EnumBiMap;->f:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/google/common/collect/b;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public valueType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/google/common/collect/EnumBiMap;->g:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Set;
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/google/common/collect/b;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
