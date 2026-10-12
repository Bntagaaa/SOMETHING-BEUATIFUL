.class final Lcom/google/common/collect/Multisets$i;
.super Lcom/google/common/collect/Multisets$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multisets$m<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final c:Lcom/google/common/collect/Multiset;

.field public final d:Lcom/google/common/base/Predicate;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Multiset;Lcom/google/common/base/Predicate;)V
    .locals 1

    const/4 v0, 0x0

    .line 285
    invoke-direct {p0, v0}, Lcom/google/common/collect/Multisets$m;-><init>(I)V

    .line 286
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Multiset;

    iput-object p1, p0, Lcom/google/common/collect/Multisets$i;->c:Lcom/google/common/collect/Multiset;

    .line 287
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Predicate;

    iput-object p1, p0, Lcom/google/common/collect/Multisets$i;->d:Lcom/google/common/base/Predicate;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/google/common/collect/Multisets$i;->c:Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$i;->d:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->filter(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;I)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/google/common/collect/Multisets$i;->d:Lcom/google/common/base/Predicate;

    invoke-interface {v0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Element %s does not match predicate %s"

    .line 335
    invoke-static {v1, v2, p1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 337
    iget-object v0, p0, Lcom/google/common/collect/Multisets$i;->c:Lcom/google/common/collect/Multiset;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final c()Ljava/util/Iterator;
    .locals 2

    .line 302
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 324
    iget-object v0, p0, Lcom/google/common/collect/Multisets$i;->c:Lcom/google/common/collect/Multiset;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 328
    iget-object v2, p0, Lcom/google/common/collect/Multisets$i;->d:Lcom/google/common/base/Predicate;

    invoke-interface {v2, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method public final createEntrySet()Ljava/util/Set;
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/google/common/collect/Multisets$i;->c:Lcom/google/common/collect/Multiset;

    .line 308
    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/m4;

    invoke-direct {v1, p0}, Lcom/google/common/collect/m4;-><init>(Lcom/google/common/collect/Multisets$i;)V

    .line 307
    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->filter(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/Iterator;
    .locals 2

    .line 319
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/google/common/collect/Multisets$i;->c:Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$i;->d:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->filter(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 281
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$i;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 342
    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lcom/google/common/collect/g0;->b(ILjava/lang/String;)V

    if-nez p2, :cond_0

    .line 344
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multisets$i;->count(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 346
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/m;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/Multisets$i;->c:Lcom/google/common/collect/Multiset;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
