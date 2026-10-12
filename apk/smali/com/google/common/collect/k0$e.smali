.class Lcom/google/common/collect/k0$e;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/k0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/k0;)V
    .locals 0

    .line 832
    iput-object p1, p0, Lcom/google/common/collect/k0$e;->a:Lcom/google/common/collect/k0;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/google/common/collect/k0$e;->a:Lcom/google/common/collect/k0;

    invoke-virtual {v0}, Lcom/google/common/collect/k0;->clear()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 850
    iget-object v0, p0, Lcom/google/common/collect/k0$e;->a:Lcom/google/common/collect/k0;

    invoke-virtual {v0}, Lcom/google/common/collect/k0;->f()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 852
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 854
    :cond_0
    new-instance v1, Lcom/google/common/collect/j0;

    invoke-direct {v1, v0}, Lcom/google/common/collect/j0;-><init>(Lcom/google/common/collect/k0;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/google/common/collect/k0$e;->a:Lcom/google/common/collect/k0;

    invoke-virtual {v0}, Lcom/google/common/collect/k0;->size()I

    move-result v0

    return v0
.end method
