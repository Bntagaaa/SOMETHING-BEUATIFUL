.class Lcom/google/common/collect/g$j$a;
.super Lcom/google/common/collect/g$i$a;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/g<",
        "TK;TV;>.i.a;",
        "Ljava/util/ListIterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/common/collect/g$j;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/g$j;)V
    .locals 0

    .line 832
    iput-object p1, p0, Lcom/google/common/collect/g$j$a;->d:Lcom/google/common/collect/g$j;

    invoke-direct {p0, p1}, Lcom/google/common/collect/g$i$a;-><init>(Lcom/google/common/collect/g$i;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/g$j;I)V
    .locals 1

    .line 834
    iput-object p1, p0, Lcom/google/common/collect/g$j$a;->d:Lcom/google/common/collect/g$j;

    .line 416
    iget-object v0, p1, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    .line 745
    check-cast v0, Ljava/util/List;

    .line 835
    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/g$i$a;-><init>(Lcom/google/common/collect/g$i;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 869
    iget-object v0, p0, Lcom/google/common/collect/g$j$a;->d:Lcom/google/common/collect/g$j;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    .line 870
    invoke-virtual {p0}, Lcom/google/common/collect/g$j$a;->b()Ljava/util/ListIterator;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 85
    iget-object p1, v0, Lcom/google/common/collect/g$j;->f:Lcom/google/common/collect/g;

    iget v2, p1, Lcom/google/common/collect/g;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/google/common/collect/g;->g:I

    if-eqz v1, :cond_0

    .line 873
    invoke-virtual {v0}, Lcom/google/common/collect/g$i;->a()V

    :cond_0
    return-void
.end method

.method public final b()Ljava/util/ListIterator;
    .locals 1

    .line 468
    invoke-virtual {p0}, Lcom/google/common/collect/g$i$a;->a()V

    .line 839
    iget-object v0, p0, Lcom/google/common/collect/g$i$a;->a:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 844
    invoke-virtual {p0}, Lcom/google/common/collect/g$j$a;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .locals 1

    .line 854
    invoke-virtual {p0}, Lcom/google/common/collect/g$j$a;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 849
    invoke-virtual {p0}, Lcom/google/common/collect/g$j$a;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 859
    invoke-virtual {p0}, Lcom/google/common/collect/g$j$a;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 864
    invoke-virtual {p0}, Lcom/google/common/collect/g$j$a;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
