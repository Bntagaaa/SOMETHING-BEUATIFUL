.class final Lcom/google/common/graph/o;
.super Lcom/google/common/graph/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/b<",
        "TN;TE;>;"
    }
.end annotation


# instance fields
.field public transient d:Ljava/lang/ref/SoftReference;

.field public transient e:Ljava/lang/ref/SoftReference;


# direct methods
.method public static a(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 144
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addInEdge(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TN;Z)V"
        }
    .end annotation

    .line 126
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/graph/b;->addInEdge(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 127
    iget-object p1, p0, Lcom/google/common/graph/o;->d:Ljava/lang/ref/SoftReference;

    invoke-static {p1}, Lcom/google/common/graph/o;->a(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Multiset;

    if-eqz p1, :cond_0

    .line 129
    invoke-interface {p1, p2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    :cond_0
    return-void
.end method

.method public addOutEdge(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TN;)V"
        }
    .end annotation

    .line 135
    invoke-super {p0, p1, p2}, Lcom/google/common/graph/b;->addOutEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    iget-object p1, p0, Lcom/google/common/graph/o;->e:Ljava/lang/ref/SoftReference;

    invoke-static {p1}, Lcom/google/common/graph/o;->a(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Multiset;

    if-eqz p1, :cond_0

    .line 138
    invoke-interface {p1, p2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    :cond_0
    return-void
.end method

.method public edgesConnecting(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/google/common/graph/o$a;

    iget-object v1, p0, Lcom/google/common/graph/b;->b:Ljava/util/Map;

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/common/graph/o$a;-><init>(Lcom/google/common/graph/o;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public predecessors()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/common/graph/o;->d:Ljava/lang/ref/SoftReference;

    invoke-static {v0}, Lcom/google/common/graph/o;->a(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/common/graph/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/HashMultiset;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/HashMultiset;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/common/graph/o;->d:Ljava/lang/ref/SoftReference;

    .line 66
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeInEdge(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)TN;"
        }
    .end annotation

    .line 106
    invoke-super {p0, p1, p2}, Lcom/google/common/graph/b;->removeInEdge(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    .line 107
    iget-object p2, p0, Lcom/google/common/graph/o;->d:Ljava/lang/ref/SoftReference;

    invoke-static {p2}, Lcom/google/common/graph/o;->a(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/collect/Multiset;

    if-eqz p2, :cond_0

    .line 109
    invoke-interface {p2, p1}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    :cond_0
    return-object p1
.end method

.method public removeOutEdge(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TN;"
        }
    .end annotation

    .line 116
    invoke-super {p0, p1}, Lcom/google/common/graph/b;->removeOutEdge(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 117
    iget-object v0, p0, Lcom/google/common/graph/o;->e:Ljava/lang/ref/SoftReference;

    invoke-static {v0}, Lcom/google/common/graph/o;->a(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    :cond_0
    return-object p1
.end method

.method public successors()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/common/graph/o;->e:Ljava/lang/ref/SoftReference;

    invoke-static {v0}, Lcom/google/common/graph/o;->a(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/google/common/graph/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/HashMultiset;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/HashMultiset;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/common/graph/o;->e:Ljava/lang/ref/SoftReference;

    .line 82
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
