.class final Lcom/google/common/collect/m3$h;
.super Lcom/google/common/collect/m3$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/m3$n<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/m3;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/m3;)V
    .locals 0

    .line 2761
    iput-object p1, p0, Lcom/google/common/collect/m3$h;->a:Lcom/google/common/collect/m3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/collect/m3$n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 2805
    iget-object v0, p0, Lcom/google/common/collect/m3$h;->a:Lcom/google/common/collect/m3;

    invoke-virtual {v0}, Lcom/google/common/collect/m3;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 2770
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2773
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 2774
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2778
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/m3$h;->a:Lcom/google/common/collect/m3;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/m3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2293
    iget-object v1, v1, Lcom/google/common/collect/m3;->f:Lcom/google/common/collect/m3$k;

    invoke-interface {v1}, Lcom/google/common/collect/m3$k;->valueStrength()Lcom/google/common/collect/m3$q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/m3$q;->a()Lcom/google/common/base/Equivalence;

    move-result-object v1

    .line 2780
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 2800
    iget-object v0, p0, Lcom/google/common/collect/m3$h;->a:Lcom/google/common/collect/m3;

    invoke-virtual {v0}, Lcom/google/common/collect/m3;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2765
    new-instance v0, Lcom/google/common/collect/m3$g;

    .line 2676
    iget-object v1, p0, Lcom/google/common/collect/m3$h;->a:Lcom/google/common/collect/m3;

    invoke-direct {v0, v1}, Lcom/google/common/collect/m3$i;-><init>(Lcom/google/common/collect/m3;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 2785
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2788
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 2789
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2790
    iget-object v2, p0, Lcom/google/common/collect/m3$h;->a:Lcom/google/common/collect/m3;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/google/common/collect/m3;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    .line 2795
    iget-object v0, p0, Lcom/google/common/collect/m3$h;->a:Lcom/google/common/collect/m3;

    invoke-virtual {v0}, Lcom/google/common/collect/m3;->size()I

    move-result v0

    return v0
.end method
