.class Lcom/google/common/collect/a5;
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
.field public final synthetic c:Lcom/google/common/collect/b5$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/b5$a;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/google/common/collect/a5;->c:Lcom/google/common/collect/b5$a;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 294
    invoke-virtual {p0, p1}, Lcom/google/common/collect/a5;->get(I)Ljava/util/Map$Entry;

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

    .line 269
    iget-object v0, p0, Lcom/google/common/collect/a5;->c:Lcom/google/common/collect/b5$a;

    iget v1, v0, Lcom/google/common/collect/b5$a;->f:I

    .line 297
    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    mul-int/lit8 p1, p1, 0x2

    .line 299
    iget v1, v0, Lcom/google/common/collect/b5$a;->e:I

    add-int v2, p1, v1

    iget-object v0, v0, Lcom/google/common/collect/b5$a;->d:[Ljava/lang/Object;

    aget-object v2, v0, v2

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr p1, v1

    .line 301
    aget-object p1, v0, p1

    .line 302
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, v2, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/google/common/collect/a5;->c:Lcom/google/common/collect/b5$a;

    iget v0, v0, Lcom/google/common/collect/b5$a;->f:I

    return v0
.end method
