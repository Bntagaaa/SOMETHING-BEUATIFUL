.class Lcom/google/common/collect/c0;
.super Lcom/google/common/collect/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/ArrayTable$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ArrayTable$a;I)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/google/common/collect/c0;->c:Lcom/google/common/collect/ArrayTable$a;

    invoke-direct {p0, p2}, Lcom/google/common/collect/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 230
    invoke-virtual {p0, p1}, Lcom/google/common/collect/c0;->get(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/google/common/collect/c0;->c:Lcom/google/common/collect/ArrayTable$a;

    invoke-virtual {v0}, Lcom/google/common/collect/ArrayTable$a;->size()I

    move-result v1

    .line 209
    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 210
    new-instance v1, Lcom/google/common/collect/b0;

    invoke-direct {v1, v0, p1}, Lcom/google/common/collect/b0;-><init>(Lcom/google/common/collect/ArrayTable$a;I)V

    return-object v1
.end method
