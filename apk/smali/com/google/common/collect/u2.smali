.class Lcom/google/common/collect/u2;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/v2;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/v2;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/google/common/collect/u2;->c:Lcom/google/common/collect/v2;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 592
    invoke-virtual {p0, p1}, Lcom/google/common/collect/u2;->get(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 595
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v1, p0, Lcom/google/common/collect/u2;->c:Lcom/google/common/collect/v2;

    iget-object v2, v1, Lcom/google/common/collect/v2;->c:Lcom/google/common/collect/ImmutableSortedMap;

    .line 54
    iget-object v2, v2, Lcom/google/common/collect/ImmutableSortedMap;->f:Lcom/google/common/collect/f5;

    .line 596
    invoke-virtual {v2}, Lcom/google/common/collect/f5;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v1, v1, Lcom/google/common/collect/v2;->c:Lcom/google/common/collect/ImmutableSortedMap;

    .line 54
    iget-object v1, v1, Lcom/google/common/collect/ImmutableSortedMap;->g:Lcom/google/common/collect/ImmutableList;

    .line 596
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/google/common/collect/u2;->c:Lcom/google/common/collect/v2;

    iget-object v0, v0, Lcom/google/common/collect/v2;->c:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->size()I

    move-result v0

    return v0
.end method
