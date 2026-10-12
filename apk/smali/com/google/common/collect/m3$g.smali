.class final Lcom/google/common/collect/m3$g;
.super Lcom/google/common/collect/m3$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/m3<",
        "TK;TV;TE;TS;>.i<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2676
    invoke-virtual {p0}, Lcom/google/common/collect/m3$g;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2680
    invoke-virtual {p0}, Lcom/google/common/collect/m3$i;->c()Lcom/google/common/collect/m3$j0;

    move-result-object v0

    return-object v0
.end method
