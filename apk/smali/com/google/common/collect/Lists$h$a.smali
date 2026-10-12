.class Lcom/google/common/collect/Lists$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Lists$h;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Ljava/util/ListIterator;

.field public final synthetic c:Lcom/google/common/collect/Lists$h;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Lists$h;Ljava/util/ListIterator;)V
    .locals 0

    .line 865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Lists$h$a;->c:Lcom/google/common/collect/Lists$h;

    iput-object p2, p0, Lcom/google/common/collect/Lists$h$a;->b:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 871
    iget-object v0, p0, Lcom/google/common/collect/Lists$h$a;->b:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 872
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    const/4 p1, 0x0

    .line 873
    iput-boolean p1, p0, Lcom/google/common/collect/Lists$h$a;->a:Z

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/google/common/collect/Lists$h$a;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 883
    iget-object v0, p0, Lcom/google/common/collect/Lists$h$a;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 888
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$h$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 891
    iput-boolean v0, p0, Lcom/google/common/collect/Lists$h$a;->a:Z

    .line 892
    iget-object v0, p0, Lcom/google/common/collect/Lists$h$a;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 889
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 2

    .line 897
    iget-object v0, p0, Lcom/google/common/collect/Lists$h$a;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    sget v1, Lcom/google/common/collect/Lists$h;->b:I

    .line 792
    iget-object v1, p0, Lcom/google/common/collect/Lists$h$a;->c:Lcom/google/common/collect/Lists$h;

    .line 810
    invoke-virtual {v1}, Lcom/google/common/collect/Lists$h;->size()I

    move-result v1

    .line 811
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    sub-int/2addr v1, v0

    return v1
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 902
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$h$a;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 905
    iput-boolean v0, p0, Lcom/google/common/collect/Lists$h$a;->a:Z

    .line 906
    iget-object v0, p0, Lcom/google/common/collect/Lists$h$a;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 903
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 911
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$h$a;->nextIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 1

    .line 916
    iget-boolean v0, p0, Lcom/google/common/collect/Lists$h$a;->a:Z

    invoke-static {v0}, Lcom/google/common/collect/g0;->e(Z)V

    .line 917
    iget-object v0, p0, Lcom/google/common/collect/Lists$h$a;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    const/4 v0, 0x0

    .line 918
    iput-boolean v0, p0, Lcom/google/common/collect/Lists$h$a;->a:Z

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 923
    iget-boolean v0, p0, Lcom/google/common/collect/Lists$h$a;->a:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 924
    iget-object v0, p0, Lcom/google/common/collect/Lists$h$a;->b:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
