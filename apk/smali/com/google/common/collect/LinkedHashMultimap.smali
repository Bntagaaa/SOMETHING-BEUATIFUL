.class public final Lcom/google/common/collect/LinkedHashMultimap;
.super Lcom/google/common/collect/g3;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/LinkedHashMultimap$b;,
        Lcom/google/common/collect/LinkedHashMultimap$a;,
        Lcom/google/common/collect/LinkedHashMultimap$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/g3<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final transient h:I

.field public final transient i:Lcom/google/common/collect/LinkedHashMultimap$a;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 45
    invoke-static {p1}, Lcom/google/common/collect/n0;->createWithExpectedSize(I)Lcom/google/common/collect/n0;

    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Lcom/google/common/collect/p;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x2

    .line 215
    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap;->h:I

    .line 220
    const-string p1, "expectedValuesPerKey"

    invoke-static {p2, p1}, Lcom/google/common/collect/g0;->b(ILjava/lang/String;)V

    .line 222
    iput p2, p0, Lcom/google/common/collect/LinkedHashMultimap;->h:I

    .line 223
    new-instance p1, Lcom/google/common/collect/LinkedHashMultimap$a;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, v0}, Lcom/google/common/collect/LinkedHashMultimap$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/LinkedHashMultimap$a;)V

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap;->i:Lcom/google/common/collect/LinkedHashMultimap$a;

    .line 130
    invoke-virtual {p1, p1}, Lcom/google/common/collect/LinkedHashMultimap$a;->setSuccessorInMultimap(Lcom/google/common/collect/LinkedHashMultimap$a;)V

    .line 131
    invoke-virtual {p1, p1}, Lcom/google/common/collect/LinkedHashMultimap$a;->setPredecessorInMultimap(Lcom/google/common/collect/LinkedHashMultimap$a;)V

    return-void
.end method

.method public static create()Lcom/google/common/collect/LinkedHashMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/LinkedHashMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap;

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/LinkedHashMultimap;-><init>(II)V

    return-object v0
.end method

.method public static create(II)Lcom/google/common/collect/LinkedHashMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lcom/google/common/collect/LinkedHashMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap;

    .line 96
    invoke-static {p0}, Lcom/google/common/collect/Maps;->c(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/common/collect/Maps;->c(I)I

    move-result p1

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedHashMultimap;-><init>(II)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/LinkedHashMultimap;
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
            "Lcom/google/common/collect/LinkedHashMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 109
    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->create(II)Lcom/google/common/collect/LinkedHashMultimap;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    return-object v0
.end method

.method public static o(Lcom/google/common/collect/LinkedHashMultimap$a;Lcom/google/common/collect/LinkedHashMultimap$a;)V
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap$a;->setSuccessorInMultimap(Lcom/google/common/collect/LinkedHashMultimap$a;)V

    .line 131
    invoke-virtual {p1, p0}, Lcom/google/common/collect/LinkedHashMultimap$a;->setPredecessorInMultimap(Lcom/google/common/collect/LinkedHashMultimap$a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/google/common/collect/p;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 542
    invoke-super {p0}, Lcom/google/common/collect/g;->clear()V

    .line 543
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->i:Lcom/google/common/collect/LinkedHashMultimap$a;

    invoke-static {v0, v0}, Lcom/google/common/collect/LinkedHashMultimap;->o(Lcom/google/common/collect/LinkedHashMultimap$a;Lcom/google/common/collect/LinkedHashMultimap$a;)V

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

    .line 76
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/l;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 76
    invoke-super {p0, p1}, Lcom/google/common/collect/g;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 76
    invoke-super {p0, p1}, Lcom/google/common/collect/l;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final createCollection()Ljava/util/Collection;
    .locals 1

    .line 58
    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->h:I

    invoke-static {v0}, Lcom/google/common/collect/o0;->createWithExpectedSize(I)Lcom/google/common/collect/o0;

    move-result-object v0

    return-object v0
.end method

.method public final createCollection()Ljava/util/Set;
    .locals 1

    .line 58
    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->h:I

    invoke-static {v0}, Lcom/google/common/collect/o0;->createWithExpectedSize(I)Lcom/google/common/collect/o0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 279
    invoke-super {p0}, Lcom/google/common/collect/p;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 76
    invoke-super {p0, p1}, Lcom/google/common/collect/p;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Ljava/util/Iterator;
    .locals 1

    .line 506
    new-instance v0, Lcom/google/common/collect/f3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/f3;-><init>(Lcom/google/common/collect/LinkedHashMultimap;)V

    return-object v0
.end method

.method public final g(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2

    .line 250
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$b;

    iget v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->h:I

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/collect/LinkedHashMultimap$b;-><init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 76
    invoke-super {p0, p1}, Lcom/google/common/collect/p;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/google/common/collect/l;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/google/common/collect/l;->isEmpty()Z

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

    .line 294
    invoke-super {p0}, Lcom/google/common/collect/l;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lcom/google/common/collect/Multiset;
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/google/common/collect/l;->keys()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/util/Iterator;
    .locals 2

    .line 506
    new-instance v0, Lcom/google/common/collect/f3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/f3;-><init>(Lcom/google/common/collect/LinkedHashMultimap;)V

    .line 122
    new-instance v1, Lcom/google/common/collect/s3;

    .line 122
    invoke-direct {v1, v0}, Lcom/google/common/collect/c6;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
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

    .line 76
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/p;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic putAll(Lcom/google/common/collect/Multimap;)Z
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 76
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

    .line 76
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

    .line 76
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/l;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 76
    invoke-super {p0, p1}, Lcom/google/common/collect/p;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/LinkedHashMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 0
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
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 263
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/p;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic size()I
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/google/common/collect/g;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/google/common/collect/l;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 306
    invoke-super {p0}, Lcom/google/common/collect/g;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
