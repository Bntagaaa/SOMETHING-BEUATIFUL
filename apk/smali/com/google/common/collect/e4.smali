.class Lcom/google/common/collect/e4;
.super Lcom/google/common/collect/c6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c6<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "Ljava/lang/Object;",
        ">;>;",
        "Lcom/google/common/collect/Multiset$Entry<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1581
    check-cast p1, Ljava/util/Map$Entry;

    .line 1584
    new-instance v0, Lcom/google/common/collect/d4;

    invoke-direct {v0, p1}, Lcom/google/common/collect/d4;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method
