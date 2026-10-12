.class Lcom/google/common/collect/y0;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public c:I

.field public final d:I

.field public final synthetic e:Lcom/google/common/collect/x0$d;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/x0$d;)V
    .locals 1

    .line 123
    iput-object p1, p0, Lcom/google/common/collect/y0;->e:Lcom/google/common/collect/x0$d;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Lcom/google/common/collect/y0;->c:I

    .line 125
    invoke-virtual {p1}, Lcom/google/common/collect/x0$d;->j()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/y0;->d:I

    return-void
.end method


# virtual methods
.method public bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/google/common/collect/y0;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public computeNext()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 129
    iget v0, p0, Lcom/google/common/collect/y0;->c:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/y0;->c:I

    iget v0, p0, Lcom/google/common/collect/y0;->c:I

    iget v1, p0, Lcom/google/common/collect/y0;->d:I

    if-ge v0, v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/google/common/collect/y0;->e:Lcom/google/common/collect/x0$d;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/x0$d;->i(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget v2, p0, Lcom/google/common/collect/y0;->c:I

    .line 99
    invoke-virtual {v1}, Lcom/google/common/collect/x0$d;->j()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 132
    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    .line 129
    :cond_0
    iget v0, p0, Lcom/google/common/collect/y0;->c:I

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
