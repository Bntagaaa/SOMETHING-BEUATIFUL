.class Lcom/google/common/collect/g$m;
.super Lcom/google/common/collect/g$i;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/g<",
        "TK;TV;>.i;",
        "Ljava/util/SortedSet<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/google/common/collect/g;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/g$i;)V
    .locals 0

    .line 610
    iput-object p1, p0, Lcom/google/common/collect/g$m;->f:Lcom/google/common/collect/g;

    .line 611
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/g$i;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/g$i;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    .line 620
    invoke-virtual {p0}, Lcom/google/common/collect/g$m;->d()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/SortedSet;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    .line 615
    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 625
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->b()V

    .line 626
    invoke-virtual {p0}, Lcom/google/common/collect/g$m;->d()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 637
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->b()V

    .line 638
    new-instance v0, Lcom/google/common/collect/g$m;

    .line 640
    invoke-virtual {p0}, Lcom/google/common/collect/g$m;->d()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    .line 641
    iget-object v1, p0, Lcom/google/common/collect/g$i;->c:Lcom/google/common/collect/g$i;

    if-nez v1, :cond_0

    move-object v1, p0

    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/g$m;->f:Lcom/google/common/collect/g;

    iget-object v3, p0, Lcom/google/common/collect/g$i;->a:Ljava/lang/Object;

    invoke-direct {v0, v2, v3, p1, v1}, Lcom/google/common/collect/g$m;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/g$i;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 631
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->b()V

    .line 632
    invoke-virtual {p0}, Lcom/google/common/collect/g$m;->d()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 646
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->b()V

    .line 647
    new-instance v0, Lcom/google/common/collect/g$m;

    .line 649
    invoke-virtual {p0}, Lcom/google/common/collect/g$m;->d()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    .line 650
    iget-object p2, p0, Lcom/google/common/collect/g$i;->c:Lcom/google/common/collect/g$i;

    if-nez p2, :cond_0

    move-object p2, p0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/g$m;->f:Lcom/google/common/collect/g;

    iget-object v2, p0, Lcom/google/common/collect/g$i;->a:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/common/collect/g$m;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/g$i;)V

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 655
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->b()V

    .line 656
    new-instance v0, Lcom/google/common/collect/g$m;

    .line 658
    invoke-virtual {p0}, Lcom/google/common/collect/g$m;->d()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    .line 659
    iget-object v1, p0, Lcom/google/common/collect/g$i;->c:Lcom/google/common/collect/g$i;

    if-nez v1, :cond_0

    move-object v1, p0

    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/g$m;->f:Lcom/google/common/collect/g;

    iget-object v3, p0, Lcom/google/common/collect/g$i;->a:Ljava/lang/Object;

    invoke-direct {v0, v2, v3, p1, v1}, Lcom/google/common/collect/g$m;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/g$i;)V

    return-object v0
.end method
