.class Lcom/google/common/collect/Maps$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/MapDifference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapDifference<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/AbstractMap;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Ljava/util/AbstractMap;)V
    .locals 0

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/AbstractMap;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/Maps$o;->a:Ljava/util/Map;

    .line 521
    invoke-static {p2}, Lcom/google/common/collect/Maps;->a(Ljava/util/AbstractMap;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/Maps$o;->b:Ljava/util/Map;

    .line 522
    invoke-static {p3}, Lcom/google/common/collect/Maps;->a(Ljava/util/AbstractMap;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/Maps$o;->c:Ljava/util/Map;

    .line 523
    invoke-static {p4}, Lcom/google/common/collect/Maps;->a(Ljava/util/AbstractMap;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/Maps$o;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public areEqual()Z
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/google/common/collect/Maps$o;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Maps$o;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Maps$o;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public entriesDiffering()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Lcom/google/common/collect/MapDifference$ValueDifference<",
            "TV;>;>;"
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/google/common/collect/Maps$o;->d:Ljava/util/Map;

    return-object v0
.end method

.method public entriesInCommon()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/google/common/collect/Maps$o;->c:Ljava/util/Map;

    return-object v0
.end method

.method public entriesOnlyOnLeft()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 533
    iget-object v0, p0, Lcom/google/common/collect/Maps$o;->a:Ljava/util/Map;

    return-object v0
.end method

.method public entriesOnlyOnRight()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/google/common/collect/Maps$o;->b:Ljava/util/Map;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 556
    :cond_0
    instance-of v1, p1, Lcom/google/common/collect/MapDifference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 557
    check-cast p1, Lcom/google/common/collect/MapDifference;

    .line 558
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$o;->entriesOnlyOnLeft()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/MapDifference;->entriesOnlyOnLeft()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 559
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$o;->entriesOnlyOnRight()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/MapDifference;->entriesOnlyOnRight()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$o;->entriesInCommon()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/MapDifference;->entriesInCommon()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 561
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$o;->entriesDiffering()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/MapDifference;->entriesDiffering()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 6

    .line 569
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$o;->entriesOnlyOnLeft()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$o;->entriesOnlyOnRight()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$o;->entriesInCommon()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$o;->entriesDiffering()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    .line 568
    invoke-static {v4}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 574
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$o;->areEqual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    const-string v0, "equal"

    return-object v0

    .line 578
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not equal"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    iget-object v1, p0, Lcom/google/common/collect/Maps$o;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 580
    const-string v2, ": only on left="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 582
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/Maps$o;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 583
    const-string v2, ": only on right="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 585
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/Maps$o;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 586
    const-string v2, ": value differences="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 588
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
