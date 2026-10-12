.class Lcom/google/common/collect/MinMaxPriorityQueue$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MinMaxPriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/util/ArrayDeque;

.field public e:Ljava/util/ArrayList;

.field public f:Ljava/lang/Object;

.field public g:Z

.field public final synthetic h:Lcom/google/common/collect/MinMaxPriorityQueue;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue;)V
    .locals 1

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->h:Lcom/google/common/collect/MinMaxPriorityQueue;

    const/4 v0, -0x1

    .line 750
    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->a:I

    .line 751
    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->b:I

    .line 102
    iget p1, p1, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    .line 752
    iput p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->c:I

    return-void
.end method

.method public static a(Ljava/util/AbstractCollection;Ljava/lang/Object;)Z
    .locals 1

    .line 816
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 817
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 819
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final b(I)V
    .locals 2

    .line 848
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->b:I

    if-ge v0, p1, :cond_1

    .line 849
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 850
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->h:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->e:Ljava/util/ArrayList;

    .line 302
    iget-object v0, v0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    .line 302
    aget-object v0, v0, p1

    .line 850
    invoke-static {v1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$d;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 854
    :cond_0
    iput p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->b:I

    :cond_1
    return-void
.end method

.method public hasNext()Z
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->h:Lcom/google/common/collect/MinMaxPriorityQueue;

    iget v1, v0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    .line 838
    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->c:I

    if-ne v1, v2, :cond_2

    .line 763
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->a:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$d;->b(I)V

    .line 764
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->b:I

    invoke-virtual {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->d:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v2

    .line 839
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->h:Lcom/google/common/collect/MinMaxPriorityQueue;

    iget v1, v0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    .line 838
    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->c:I

    if-ne v1, v2, :cond_2

    .line 770
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->a:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$d;->b(I)V

    .line 771
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->b:I

    invoke-virtual {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 772
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->b:I

    iput v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->a:I

    .line 773
    iput-boolean v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->g:Z

    .line 302
    iget-object v0, v0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    .line 302
    aget-object v0, v0, v1

    return-object v0

    .line 775
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->d:Ljava/util/ArrayDeque;

    if-eqz v1, :cond_1

    .line 776
    invoke-virtual {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->a:I

    .line 777
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->f:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 779
    iput-boolean v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->g:Z

    return-object v0

    .line 783
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "iterator moved past last element in queue."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 6

    .line 788
    iget-boolean v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->g:Z

    invoke-static {v0}, Lcom/google/common/collect/g0;->e(Z)V

    .line 102
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->h:Lcom/google/common/collect/MinMaxPriorityQueue;

    iget v1, v0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    .line 838
    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->c:I

    if-ne v1, v2, :cond_6

    const/4 v1, 0x0

    .line 790
    iput-boolean v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->g:Z

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 791
    iput v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->c:I

    .line 792
    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->a:I

    invoke-virtual {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 793
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->a:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->c(I)Lcom/google/common/collect/MinMaxPriorityQueue$c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 795
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->d:Ljava/util/ArrayDeque;

    if-nez v1, :cond_0

    .line 796
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->d:Ljava/util/ArrayDeque;

    .line 797
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->e:Ljava/util/ArrayList;

    .line 799
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->e:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$d;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 800
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 802
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->d:Ljava/util/ArrayDeque;

    iget-object v0, v0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->b:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$d;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 803
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    :cond_2
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->a:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->a:I

    .line 807
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->b:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->b:I

    return-void

    .line 809
    :cond_3
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->f:Ljava/lang/Object;

    const/4 v4, 0x0

    .line 102
    :goto_0
    iget v5, v0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    if-ge v4, v5, :cond_5

    .line 102
    iget-object v5, v0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    .line 829
    aget-object v5, v5, v4

    if-ne v5, v2, :cond_4

    .line 830
    invoke-virtual {v0, v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->c(I)Lcom/google/common/collect/MinMaxPriorityQueue$c;

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 809
    :cond_5
    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    const/4 v0, 0x0

    .line 810
    iput-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->f:Ljava/lang/Object;

    return-void

    .line 839
    :cond_6
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
