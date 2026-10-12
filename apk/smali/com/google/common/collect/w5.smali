.class Lcom/google/common/collect/w5;
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
.field public final synthetic a:Ljava/util/Iterator;

.field public final synthetic b:Lcom/google/common/collect/v5$g;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/v5$g;Ljava/util/Iterator;)V
    .locals 0

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/w5;->b:Lcom/google/common/collect/v5$g;

    iput-object p2, p0, Lcom/google/common/collect/w5;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/google/common/collect/w5;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 351
    invoke-virtual {p0}, Lcom/google/common/collect/w5;->next()Ljava/util/Map$Entry;

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

    .line 359
    iget-object v0, p0, Lcom/google/common/collect/w5;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/common/collect/w5;->b:Lcom/google/common/collect/v5$g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    new-instance v1, Lcom/google/common/collect/x5;

    invoke-direct {v1, v0}, Lcom/google/common/collect/x5;-><init>(Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public remove()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/google/common/collect/w5;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 365
    iget-object v0, p0, Lcom/google/common/collect/w5;->b:Lcom/google/common/collect/v5$g;

    invoke-virtual {v0}, Lcom/google/common/collect/v5$g;->d()V

    return-void
.end method
