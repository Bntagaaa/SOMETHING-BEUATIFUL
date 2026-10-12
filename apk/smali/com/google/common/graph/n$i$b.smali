.class final Lcom/google/common/graph/n$i$b;
.super Lcom/google/common/graph/n$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/n$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/n$i<",
        "TN;>;"
    }
.end annotation


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 107
    instance-of v0, p1, Lcom/google/common/graph/n$i$b;

    if-eqz v0, :cond_0

    .line 108
    check-cast p1, Lcom/google/common/graph/n$i$b;

    iget-object p1, p1, Lcom/google/common/graph/n$i;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/graph/n$i;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 117
    const-class v0, Lcom/google/common/graph/n$i$b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/graph/n$i;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
