.class abstract Lcom/google/common/collect/b;
.super Lcom/google/common/collect/ForwardingMap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/b$c;,
        Lcom/google/common/collect/b$b;,
        Lcom/google/common/collect/b$a;,
        Lcom/google/common/collect/b$e;,
        Lcom/google/common/collect/b$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMap<",
        "TK;TV;>;",
        "Lcom/google/common/collect/BiMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final transient a:Ljava/util/AbstractMap;

.field public final transient b:Lcom/google/common/collect/b;

.field public transient c:Ljava/util/Set;

.field public transient d:Ljava/util/Set;

.field public transient e:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/EnumMap;Ljava/util/AbstractMap;)V
    .locals 3

    .line 57
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    .line 89
    iget-object v0, p0, Lcom/google/common/collect/b;->a:Ljava/util/AbstractMap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 90
    iget-object v0, p0, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/b;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 91
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 92
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    if-eq p1, p2, :cond_2

    const/4 v1, 0x1

    .line 93
    :cond_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 94
    iput-object p1, p0, Lcom/google/common/collect/b;->a:Ljava/util/AbstractMap;

    .line 99
    new-instance p1, Lcom/google/common/collect/b$c;

    .line 62
    invoke-direct {p1}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    .line 63
    iput-object p2, p1, Lcom/google/common/collect/b;->a:Ljava/util/AbstractMap;

    .line 64
    iput-object p0, p1, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/b;

    .line 95
    iput-object p1, p0, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    .line 128
    invoke-virtual {p0, p1}, Lcom/google/common/collect/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-virtual {p0, p2}, Lcom/google/common/collect/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ForwardingMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ForwardingMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p2

    :cond_0
    if-eqz p3, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/google/common/collect/b;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p0, p2}, Lcom/google/common/collect/b;->containsValue(Ljava/lang/Object;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    const-string v1, "value already present: %s"

    invoke-static {p3, v1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 139
    :goto_0
    iget-object p3, p0, Lcom/google/common/collect/b;->a:Ljava/util/AbstractMap;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/b;

    iget-object v0, v0, Lcom/google/common/collect/b;->a:Ljava/util/AbstractMap;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/b;

    iget-object v0, v0, Lcom/google/common/collect/b;->a:Ljava/util/AbstractMap;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3
.end method

.method public clear()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/common/collect/b;->a:Ljava/util/AbstractMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 180
    iget-object v0, p0, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/b;

    iget-object v0, v0, Lcom/google/common/collect/b;->a:Ljava/util/AbstractMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 110
    iget-object v0, p0, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/b;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ForwardingMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/google/common/collect/b;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/common/collect/b;->a:Ljava/util/AbstractMap;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/google/common/collect/b;->e:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Lcom/google/common/collect/b$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/b$b;-><init>(Lcom/google/common/collect/b;)V

    iput-object v0, p0, Lcom/google/common/collect/b;->e:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 124
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/b;->c(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public inverse()Lcom/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/b;

    return-object v0
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

    .line 194
    iget-object v0, p0, Lcom/google/common/collect/b;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/google/common/collect/b$d;

    invoke-direct {v0, p0}, Lcom/google/common/collect/b$d;-><init>(Lcom/google/common/collect/b;)V

    iput-object v0, p0, Lcom/google/common/collect/b;->c:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/b;->c(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 172
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

    .line 173
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 154
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ForwardingMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/common/collect/b;->a:Ljava/util/AbstractMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 165
    iget-object v0, p0, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/b;

    iget-object v0, v0, Lcom/google/common/collect/b;->a:Ljava/util/AbstractMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/google/common/collect/b;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/google/common/collect/b;->d:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Lcom/google/common/collect/b$e;

    invoke-direct {v0, p0}, Lcom/google/common/collect/b$e;-><init>(Lcom/google/common/collect/b;)V

    iput-object v0, p0, Lcom/google/common/collect/b;->d:Ljava/util/Set;

    :cond_0
    return-object v0
.end method
