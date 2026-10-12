.class Lcom/google/common/collect/w4;
.super Lcom/google/common/collect/f2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f2<",
        "Ljava/lang/Comparable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/v4;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/v4;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/google/common/collect/w4;->c:Lcom/google/common/collect/v4;

    invoke-direct {p0}, Lcom/google/common/collect/f2;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/common/collect/w4;->c:Lcom/google/common/collect/v4;

    return-object v0
.end method

.method public get(I)Ljava/lang/Comparable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Comparable;"
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lcom/google/common/collect/f2;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 134
    iget-object v0, p0, Lcom/google/common/collect/w4;->c:Lcom/google/common/collect/v4;

    iget-object v1, v0, Lcom/google/common/collect/ContiguousSet;->e:Lcom/google/common/collect/DiscreteDomain;

    invoke-virtual {v0}, Lcom/google/common/collect/v4;->first()Ljava/lang/Comparable;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/common/collect/DiscreteDomain;->a(Ljava/lang/Comparable;J)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lcom/google/common/collect/w4;->get(I)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method
