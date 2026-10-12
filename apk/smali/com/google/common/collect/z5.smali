.class Lcom/google/common/collect/z5;
.super Lcom/google/common/collect/ForwardingMapEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingMapEntry<",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Map$Entry;

.field public final synthetic b:Lcom/google/common/collect/y5$c$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/y5$c$a;Ljava/util/Map$Entry;)V
    .locals 0

    .line 880
    iput-object p1, p0, Lcom/google/common/collect/z5;->b:Lcom/google/common/collect/y5$c$a;

    iput-object p2, p0, Lcom/google/common/collect/z5;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 880
    invoke-virtual {p0}, Lcom/google/common/collect/z5;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 883
    iget-object v0, p0, Lcom/google/common/collect/z5;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 880
    invoke-virtual {p0}, Lcom/google/common/collect/z5;->getValue()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 888
    iget-object v0, p0, Lcom/google/common/collect/z5;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/z5;->b:Lcom/google/common/collect/y5$c$a;

    iget-object v1, v1, Lcom/google/common/collect/y5$c$a;->b:Lcom/google/common/collect/y5$c;

    iget-object v1, v1, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/common/collect/y5;->b(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
