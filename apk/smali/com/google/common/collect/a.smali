.class Lcom/google/common/collect/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map$Entry;

.field public final synthetic b:Ljava/util/Iterator;

.field public final synthetic c:Lcom/google/common/collect/b;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/b;Ljava/util/Iterator;)V
    .locals 0

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/a;->c:Lcom/google/common/collect/b;

    iput-object p2, p0, Lcom/google/common/collect/a;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/google/common/collect/a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 316
    invoke-virtual {p0}, Lcom/google/common/collect/a;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
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

    .line 326
    iget-object v0, p0, Lcom/google/common/collect/a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/a;->a:Ljava/util/Map$Entry;

    .line 327
    new-instance v1, Lcom/google/common/collect/b$a;

    iget-object v2, p0, Lcom/google/common/collect/a;->c:Lcom/google/common/collect/b;

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/b$a;-><init>(Lcom/google/common/collect/b;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public remove()V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/google/common/collect/a;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/g0;->e(Z)V

    .line 333
    iget-object v0, p0, Lcom/google/common/collect/a;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lcom/google/common/collect/a;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 50
    iget-object v1, p0, Lcom/google/common/collect/a;->c:Lcom/google/common/collect/b;

    .line 165
    iget-object v1, v1, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/b;

    iget-object v1, v1, Lcom/google/common/collect/b;->a:Ljava/util/AbstractMap;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lcom/google/common/collect/a;->a:Ljava/util/Map$Entry;

    return-void
.end method
