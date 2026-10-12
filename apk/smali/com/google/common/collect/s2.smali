.class Lcom/google/common/collect/s2;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "Lcom/google/common/collect/Range<",
        "Ljava/lang/Comparable;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lcom/google/common/collect/Range;

.field public final synthetic f:Lcom/google/common/collect/ImmutableRangeSet;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableRangeSet;IILcom/google/common/collect/Range;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/google/common/collect/s2;->f:Lcom/google/common/collect/ImmutableRangeSet;

    iput p2, p0, Lcom/google/common/collect/s2;->c:I

    iput p3, p0, Lcom/google/common/collect/s2;->d:I

    iput-object p4, p0, Lcom/google/common/collect/s2;->e:Lcom/google/common/collect/Range;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/common/collect/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Range<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .line 451
    iget v0, p0, Lcom/google/common/collect/s2;->c:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 452
    iget v1, p0, Lcom/google/common/collect/s2;->d:I

    iget-object v2, p0, Lcom/google/common/collect/s2;->f:Lcom/google/common/collect/ImmutableRangeSet;

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, v2, Lcom/google/common/collect/ImmutableRangeSet;->a:Lcom/google/common/collect/ImmutableList;

    add-int/2addr p1, v1

    .line 455
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Range;

    return-object p1

    .line 49
    :cond_1
    :goto_0
    iget-object v0, v2, Lcom/google/common/collect/ImmutableRangeSet;->a:Lcom/google/common/collect/ImmutableList;

    add-int/2addr p1, v1

    .line 453
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Range;

    iget-object v0, p0, Lcom/google/common/collect/s2;->e:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 443
    invoke-virtual {p0, p1}, Lcom/google/common/collect/s2;->get(I)Lcom/google/common/collect/Range;

    move-result-object p1

    return-object p1
.end method

.method public final isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 446
    iget v0, p0, Lcom/google/common/collect/s2;->c:I

    return v0
.end method
