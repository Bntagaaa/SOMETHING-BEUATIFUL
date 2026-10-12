.class public Lcom/google/common/collect/LinkedListMultimap;
.super Lcom/google/common/collect/l;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ListMultimap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/LinkedListMultimap$f;,
        Lcom/google/common/collect/LinkedListMultimap$b;,
        Lcom/google/common/collect/LinkedListMultimap$e;,
        Lcom/google/common/collect/LinkedListMultimap$c;,
        Lcom/google/common/collect/LinkedListMultimap$d;
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
        "Lcom/google/common/collect/ListMultimap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public transient f:Lcom/google/common/collect/LinkedListMultimap$d;

.field public transient g:Lcom/google/common/collect/LinkedListMultimap$d;

.field public final transient h:Ljava/util/Map;

.field public transient i:I

.field public transient j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xc

    .line 192
    invoke-direct {p0, v0}, Lcom/google/common/collect/LinkedListMultimap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 195
    invoke-direct {p0}, Lcom/google/common/collect/l;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/google/common/collect/k0;->createWithExpectedSize(I)Lcom/google/common/collect/k0;

    move-result-object p1

    .line 196
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap;->h:Ljava/util/Map;

    return-void
.end method

.method public static create()Lcom/google/common/collect/LinkedListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/LinkedListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 165
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/LinkedListMultimap;-><init>()V

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/LinkedListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/LinkedListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 176
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap;-><init>(I)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/LinkedListMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multimap<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/LinkedListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 188
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    .line 200
    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;-><init>(I)V

    .line 201
    invoke-virtual {v0, p0}, Lcom/google/common/collect/LinkedListMultimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    return-object v0
.end method

.method public static g(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$d;)V
    .locals 3

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$d;->d:Lcom/google/common/collect/LinkedListMultimap$d;

    if-eqz v0, :cond_0

    .line 262
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$d;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$d;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    goto :goto_0

    .line 264
    :cond_0
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$d;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->f:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 266
    :goto_0
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$d;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    if-eqz v1, :cond_1

    .line 267
    iput-object v0, v1, Lcom/google/common/collect/LinkedListMultimap$d;->d:Lcom/google/common/collect/LinkedListMultimap$d;

    goto :goto_1

    .line 269
    :cond_1
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->g:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 271
    :goto_1
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$d;->f:Lcom/google/common/collect/LinkedListMultimap$d;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->h:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/common/collect/LinkedListMultimap$d;->a:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$d;->e:Lcom/google/common/collect/LinkedListMultimap$d;

    if-nez v0, :cond_2

    .line 272
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/LinkedListMultimap$c;

    const/4 v0, 0x0

    .line 273
    iput v0, p1, Lcom/google/common/collect/LinkedListMultimap$c;->c:I

    .line 274
    iget p1, p0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    goto :goto_3

    .line 276
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$c;

    .line 277
    iget v1, v0, Lcom/google/common/collect/LinkedListMultimap$c;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/common/collect/LinkedListMultimap$c;->c:I

    .line 279
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$d;->f:Lcom/google/common/collect/LinkedListMultimap$d;

    if-nez v1, :cond_3

    .line 280
    iget-object v2, p1, Lcom/google/common/collect/LinkedListMultimap$d;->e:Lcom/google/common/collect/LinkedListMultimap$d;

    iput-object v2, v0, Lcom/google/common/collect/LinkedListMultimap$c;->a:Lcom/google/common/collect/LinkedListMultimap$d;

    goto :goto_2

    .line 282
    :cond_3
    iget-object v2, p1, Lcom/google/common/collect/LinkedListMultimap$d;->e:Lcom/google/common/collect/LinkedListMultimap$d;

    iput-object v2, v1, Lcom/google/common/collect/LinkedListMultimap$d;->e:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 285
    :goto_2
    iget-object p1, p1, Lcom/google/common/collect/LinkedListMultimap$d;->e:Lcom/google/common/collect/LinkedListMultimap$d;

    if-nez p1, :cond_4

    .line 286
    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$c;->b:Lcom/google/common/collect/LinkedListMultimap$d;

    goto :goto_3

    .line 288
    :cond_4
    iput-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$d;->f:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 291
    :goto_3
    iget p1, p0, Lcom/google/common/collect/LinkedListMultimap;->i:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/LinkedListMultimap;->i:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1

    .line 811
    new-instance v0, Lcom/google/common/collect/Multimaps$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$a;-><init>(Lcom/google/common/collect/Multimap;)V

    return-object v0
.end method

.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/google/common/collect/l;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/util/Collection;
    .locals 1

    .line 801
    new-instance v0, Lcom/google/common/collect/h3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/h3;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1

    .line 717
    new-instance v0, Lcom/google/common/collect/i3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/i3;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-object v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 659
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->f:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 660
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->g:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 661
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 662
    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap;->i:I

    .line 663
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    return-void
.end method

.method public bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 96
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/l;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 579
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 584
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->values()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d()Lcom/google/common/collect/Multiset;
    .locals 1

    .line 722
    new-instance v0, Lcom/google/common/collect/Multimaps$g;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$g;-><init>(Lcom/google/common/collect/Multimap;)V

    return-object v0
.end method

.method public final e()Ljava/util/Collection;
    .locals 1

    .line 763
    new-instance v0, Lcom/google/common/collect/j3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/j3;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->entries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 784
    invoke-super {p0}, Lcom/google/common/collect/l;->entries()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 96
    invoke-super {p0, p1}, Lcom/google/common/collect/l;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Ljava/util/Iterator;
    .locals 2

    .line 806
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 96
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 679
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$a;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final h(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$d;)Lcom/google/common/collect/LinkedListMultimap$d;
    .locals 3

    .line 212
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$d;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/LinkedListMultimap$d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    iget-object p2, p0, Lcom/google/common/collect/LinkedListMultimap;->f:Lcom/google/common/collect/LinkedListMultimap$d;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->h:Ljava/util/Map;

    if-nez p2, :cond_0

    .line 214
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->g:Lcom/google/common/collect/LinkedListMultimap$d;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->f:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 215
    new-instance p2, Lcom/google/common/collect/LinkedListMultimap$c;

    invoke-direct {p2, v0}, Lcom/google/common/collect/LinkedListMultimap$c;-><init>(Lcom/google/common/collect/LinkedListMultimap$d;)V

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget p1, p0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    goto :goto_2

    :cond_0
    if-nez p3, :cond_2

    .line 218
    iget-object p2, p0, Lcom/google/common/collect/LinkedListMultimap;->g:Lcom/google/common/collect/LinkedListMultimap$d;

    iput-object v0, p2, Lcom/google/common/collect/LinkedListMultimap$d;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 219
    iput-object p2, v0, Lcom/google/common/collect/LinkedListMultimap$d;->d:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 220
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->g:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 221
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/collect/LinkedListMultimap$c;

    if-nez p2, :cond_1

    .line 223
    new-instance p2, Lcom/google/common/collect/LinkedListMultimap$c;

    invoke-direct {p2, v0}, Lcom/google/common/collect/LinkedListMultimap$c;-><init>(Lcom/google/common/collect/LinkedListMultimap$d;)V

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget p1, p0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    goto :goto_2

    .line 226
    :cond_1
    iget p1, p2, Lcom/google/common/collect/LinkedListMultimap$c;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p2, Lcom/google/common/collect/LinkedListMultimap$c;->c:I

    .line 227
    iget-object p1, p2, Lcom/google/common/collect/LinkedListMultimap$c;->b:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 228
    iput-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$d;->e:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 229
    iput-object p1, v0, Lcom/google/common/collect/LinkedListMultimap$d;->f:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 230
    iput-object v0, p2, Lcom/google/common/collect/LinkedListMultimap$c;->b:Lcom/google/common/collect/LinkedListMultimap$d;

    goto :goto_2

    .line 233
    :cond_2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/collect/LinkedListMultimap$c;

    .line 234
    iget v2, p2, Lcom/google/common/collect/LinkedListMultimap$c;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p2, Lcom/google/common/collect/LinkedListMultimap$c;->c:I

    .line 235
    iget-object p2, p3, Lcom/google/common/collect/LinkedListMultimap$d;->d:Lcom/google/common/collect/LinkedListMultimap$d;

    iput-object p2, v0, Lcom/google/common/collect/LinkedListMultimap$d;->d:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 236
    iget-object p2, p3, Lcom/google/common/collect/LinkedListMultimap$d;->f:Lcom/google/common/collect/LinkedListMultimap$d;

    iput-object p2, v0, Lcom/google/common/collect/LinkedListMultimap$d;->f:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 237
    iput-object p3, v0, Lcom/google/common/collect/LinkedListMultimap$d;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 238
    iput-object p3, v0, Lcom/google/common/collect/LinkedListMultimap$d;->e:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 239
    iget-object p2, p3, Lcom/google/common/collect/LinkedListMultimap$d;->f:Lcom/google/common/collect/LinkedListMultimap$d;

    if-nez p2, :cond_3

    .line 240
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/LinkedListMultimap$c;

    iput-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$c;->a:Lcom/google/common/collect/LinkedListMultimap$d;

    goto :goto_0

    .line 242
    :cond_3
    iput-object v0, p2, Lcom/google/common/collect/LinkedListMultimap$d;->e:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 244
    :goto_0
    iget-object p1, p3, Lcom/google/common/collect/LinkedListMultimap$d;->d:Lcom/google/common/collect/LinkedListMultimap$d;

    if-nez p1, :cond_4

    .line 245
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->f:Lcom/google/common/collect/LinkedListMultimap$d;

    goto :goto_1

    .line 247
    :cond_4
    iput-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$d;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 249
    :goto_1
    iput-object v0, p3, Lcom/google/common/collect/LinkedListMultimap$d;->d:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 250
    iput-object v0, p3, Lcom/google/common/collect/LinkedListMultimap$d;->f:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 252
    :goto_2
    iget p1, p0, Lcom/google/common/collect/LinkedListMultimap;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/LinkedListMultimap;->i:I

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/google/common/collect/l;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->f:Lcom/google/common/collect/LinkedListMultimap$d;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/google/common/collect/l;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lcom/google/common/collect/Multiset;
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/google/common/collect/l;->keys()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
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
            "(TK;TV;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 599
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/LinkedListMultimap;->h(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$d;)Lcom/google/common/collect/LinkedListMultimap$d;

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic putAll(Lcom/google/common/collect/Multimap;)Z
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 96
    invoke-super {p0, p1}, Lcom/google/common/collect/l;->putAll(Lcom/google/common/collect/Multimap;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 96
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/l;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
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

    .line 96
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/l;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 96
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
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
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 641
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$f;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$f;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 296
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$f;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$f;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/google/common/collect/Iterators;->b(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/LinkedListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 641
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$f;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$f;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 617
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$f;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$f;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .line 618
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 621
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 622
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 623
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 627
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 628
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 629
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 633
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 634
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 569
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->i:I

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/google/common/collect/l;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->values()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 735
    invoke-super {p0}, Lcom/google/common/collect/l;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
