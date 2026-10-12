.class Lcom/google/common/collect/b$c;
.super Lcom/google/common/collect/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/b<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/b;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/b;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 412
    invoke-super {p0}, Lcom/google/common/collect/b;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 412
    invoke-super {p0}, Lcom/google/common/collect/b;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
