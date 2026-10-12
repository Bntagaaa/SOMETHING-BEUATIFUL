.class Lcom/google/common/collect/y5$d;
.super Lcom/google/common/collect/y5$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/y5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/y5$f<",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1260
    new-instance v0, Lcom/google/common/collect/y5$d$a;

    invoke-super {p0}, Lcom/google/common/collect/y5$f;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/y5$d$a;-><init>(Lcom/google/common/collect/y5$d;Ljava/util/Iterator;)V

    return-object v0
.end method
