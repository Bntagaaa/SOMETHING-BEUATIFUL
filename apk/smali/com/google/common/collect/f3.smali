.class Lcom/google/common/collect/f3;
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
.field public a:Lcom/google/common/collect/LinkedHashMultimap$a;

.field public b:Lcom/google/common/collect/LinkedHashMultimap$a;

.field public final synthetic c:Lcom/google/common/collect/LinkedHashMultimap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/LinkedHashMultimap;)V
    .locals 0

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/f3;->c:Lcom/google/common/collect/LinkedHashMultimap;

    .line 77
    iget-object p1, p1, Lcom/google/common/collect/LinkedHashMultimap;->i:Lcom/google/common/collect/LinkedHashMultimap$a;

    .line 507
    iget-object p1, p1, Lcom/google/common/collect/LinkedHashMultimap$a;->h:Lcom/google/common/collect/LinkedHashMultimap$a;

    iput-object p1, p0, Lcom/google/common/collect/f3;->a:Lcom/google/common/collect/LinkedHashMultimap$a;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/google/common/collect/f3;->a:Lcom/google/common/collect/LinkedHashMultimap$a;

    .line 77
    iget-object v1, p0, Lcom/google/common/collect/f3;->c:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap;->i:Lcom/google/common/collect/LinkedHashMultimap$a;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 506
    invoke-virtual {p0}, Lcom/google/common/collect/f3;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 517
    invoke-virtual {p0}, Lcom/google/common/collect/f3;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/google/common/collect/f3;->a:Lcom/google/common/collect/LinkedHashMultimap$a;

    .line 521
    iput-object v0, p0, Lcom/google/common/collect/f3;->b:Lcom/google/common/collect/LinkedHashMultimap$a;

    .line 522
    iget-object v1, v0, Lcom/google/common/collect/LinkedHashMultimap$a;->h:Lcom/google/common/collect/LinkedHashMultimap$a;

    iput-object v1, p0, Lcom/google/common/collect/f3;->a:Lcom/google/common/collect/LinkedHashMultimap$a;

    return-object v0

    .line 518
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 528
    iget-object v0, p0, Lcom/google/common/collect/f3;->b:Lcom/google/common/collect/LinkedHashMultimap$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/g0;->e(Z)V

    .line 529
    iget-object v0, p0, Lcom/google/common/collect/f3;->b:Lcom/google/common/collect/LinkedHashMultimap$a;

    invoke-virtual {v0}, Lcom/google/common/collect/g2;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/f3;->b:Lcom/google/common/collect/LinkedHashMultimap$a;

    invoke-virtual {v1}, Lcom/google/common/collect/g2;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/f3;->c:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 530
    iput-object v0, p0, Lcom/google/common/collect/f3;->b:Lcom/google/common/collect/LinkedHashMultimap$a;

    return-void
.end method
