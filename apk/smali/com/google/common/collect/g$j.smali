.class Lcom/google/common/collect/g$j;
.super Lcom/google/common/collect/g$i;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/g$j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/g<",
        "TK;TV;>.i;",
        "Ljava/util/List<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/google/common/collect/g;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/g$i;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcom/google/common/collect/g$j;->f:Lcom/google/common/collect/g;

    .line 741
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/g$i;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/g$i;)V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 779
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->b()V

    .line 416
    iget-object v0, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    .line 780
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 416
    iget-object v1, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    .line 745
    check-cast v1, Ljava/util/List;

    .line 781
    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 85
    iget-object p1, p0, Lcom/google/common/collect/g$j;->f:Lcom/google/common/collect/g;

    iget p2, p1, Lcom/google/common/collect/g;->g:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/common/collect/g;->g:I

    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->a()V

    :cond_0
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 750
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 753
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->size()I

    move-result v0

    .line 416
    iget-object v1, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    .line 745
    check-cast v1, Ljava/util/List;

    .line 754
    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 416
    iget-object p2, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    .line 756
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    .line 85
    iget-object v1, p0, Lcom/google/common/collect/g$j;->f:Lcom/google/common/collect/g;

    iget v2, v1, Lcom/google/common/collect/g;->g:I

    sub-int/2addr p2, v0

    add-int/2addr p2, v2

    .line 85
    iput p2, v1, Lcom/google/common/collect/g;->g:I

    if-nez v0, :cond_1

    .line 759
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->a()V

    :cond_1
    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 767
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->b()V

    .line 416
    iget-object v0, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    .line 745
    check-cast v0, Ljava/util/List;

    .line 768
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 799
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->b()V

    .line 416
    iget-object v0, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    .line 745
    check-cast v0, Ljava/util/List;

    .line 800
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 805
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->b()V

    .line 416
    iget-object v0, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    .line 745
    check-cast v0, Ljava/util/List;

    .line 806
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 811
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->b()V

    .line 812
    new-instance v0, Lcom/google/common/collect/g$j$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/g$j$a;-><init>(Lcom/google/common/collect/g$j;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 817
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->b()V

    .line 818
    new-instance v0, Lcom/google/common/collect/g$j$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/g$j$a;-><init>(Lcom/google/common/collect/g$j;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 790
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->b()V

    .line 416
    iget-object v0, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    .line 745
    check-cast v0, Ljava/util/List;

    .line 791
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/google/common/collect/g$j;->f:Lcom/google/common/collect/g;

    iget v1, v0, Lcom/google/common/collect/g;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/common/collect/g;->g:I

    .line 793
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->c()V

    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 773
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->b()V

    .line 416
    iget-object v0, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    .line 745
    check-cast v0, Ljava/util/List;

    .line 774
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 823
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->b()V

    .line 416
    iget-object v0, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    .line 745
    check-cast v0, Ljava/util/List;

    .line 826
    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 827
    iget-object p2, p0, Lcom/google/common/collect/g$i;->c:Lcom/google/common/collect/g$i;

    if-nez p2, :cond_0

    move-object p2, p0

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/g$j;->f:Lcom/google/common/collect/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    instance-of v1, p1, Ljava/util/RandomAccess;

    iget-object v2, p0, Lcom/google/common/collect/g$i;->a:Ljava/lang/Object;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/common/collect/g$f;

    .line 886
    invoke-direct {v1, v0, v2, p1, p2}, Lcom/google/common/collect/g$j;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/g$i;)V

    return-object v1

    .line 302
    :cond_1
    new-instance v1, Lcom/google/common/collect/g$j;

    invoke-direct {v1, v0, v2, p1, p2}, Lcom/google/common/collect/g$j;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/g$i;)V

    return-object v1
.end method
