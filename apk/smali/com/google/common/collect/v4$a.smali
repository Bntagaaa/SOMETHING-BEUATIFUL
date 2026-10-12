.class Lcom/google/common/collect/v4$a;
.super Lcom/google/common/collect/AbstractSequentialIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/v4;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractSequentialIterator<",
        "TC;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Comparable;

.field public final synthetic c:Lcom/google/common/collect/v4;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/v4;Ljava/lang/Comparable;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/google/common/collect/v4$a;->c:Lcom/google/common/collect/v4;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractSequentialIterator;-><init>(Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p1}, Lcom/google/common/collect/v4;->last()Ljava/lang/Comparable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/v4$a;->b:Ljava/lang/Comparable;

    return-void
.end method


# virtual methods
.method public computeNext(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TC;"
        }
    .end annotation

    .line 85
    sget v0, Lcom/google/common/collect/v4;->g:I

    .line 104
    iget-object v0, p0, Lcom/google/common/collect/v4$a;->b:Ljava/lang/Comparable;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/Range;

    .line 695
    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/v4$a;->c:Lcom/google/common/collect/v4;

    iget-object v0, v0, Lcom/google/common/collect/ContiguousSet;->e:Lcom/google/common/collect/DiscreteDomain;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/DiscreteDomain;->next(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic computeNext(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 80
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/v4$a;->computeNext(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method
