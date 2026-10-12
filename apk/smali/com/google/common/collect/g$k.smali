.class Lcom/google/common/collect/g$k;
.super Lcom/google/common/collect/g$m;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/g<",
        "TK;TV;>.m;",
        "Ljava/util/NavigableSet<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic g:Lcom/google/common/collect/g;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/NavigableSet;Lcom/google/common/collect/g$i;)V
    .locals 0

    .line 666
    iput-object p1, p0, Lcom/google/common/collect/g$k;->g:Lcom/google/common/collect/g;

    .line 667
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/g$m;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/g$i;)V

    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 687
    invoke-virtual {p0}, Lcom/google/common/collect/g$k;->e()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d()Ljava/util/SortedSet;
    .locals 1

    .line 663
    invoke-virtual {p0}, Lcom/google/common/collect/g$k;->e()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 716
    new-instance v0, Lcom/google/common/collect/g$i$a;

    invoke-virtual {p0}, Lcom/google/common/collect/g$k;->e()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/g$i$a;-><init>(Lcom/google/common/collect/g$i;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TV;>;"
        }
    .end annotation

    .line 711
    invoke-virtual {p0}, Lcom/google/common/collect/g$k;->e()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/g$k;->f(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/NavigableSet;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    .line 615
    check-cast v0, Ljava/util/SortedSet;

    .line 672
    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method public final f(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 4

    .line 706
    new-instance v0, Lcom/google/common/collect/g$k;

    iget-object v1, p0, Lcom/google/common/collect/g$i;->c:Lcom/google/common/collect/g$i;

    if-nez v1, :cond_0

    move-object v1, p0

    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/g$k;->g:Lcom/google/common/collect/g;

    iget-object v3, p0, Lcom/google/common/collect/g$i;->a:Ljava/lang/Object;

    invoke-direct {v0, v2, v3, p1, v1}, Lcom/google/common/collect/g$k;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/NavigableSet;Lcom/google/common/collect/g$i;)V

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 682
    invoke-virtual {p0}, Lcom/google/common/collect/g$k;->e()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)",
            "Ljava/util/NavigableSet<",
            "TV;>;"
        }
    .end annotation

    .line 728
    invoke-virtual {p0}, Lcom/google/common/collect/g$k;->e()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/g$k;->f(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 692
    invoke-virtual {p0}, Lcom/google/common/collect/g$k;->e()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 677
    invoke-virtual {p0}, Lcom/google/common/collect/g$k;->e()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 697
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->c(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 702
    invoke-virtual {p0}, Lcom/google/common/collect/g$k;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->c(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;ZTV;Z)",
            "Ljava/util/NavigableSet<",
            "TV;>;"
        }
    .end annotation

    .line 723
    invoke-virtual {p0}, Lcom/google/common/collect/g$k;->e()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    .line 722
    invoke-virtual {p0, p1}, Lcom/google/common/collect/g$k;->f(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)",
            "Ljava/util/NavigableSet<",
            "TV;>;"
        }
    .end annotation

    .line 733
    invoke-virtual {p0}, Lcom/google/common/collect/g$k;->e()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/g$k;->f(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method
