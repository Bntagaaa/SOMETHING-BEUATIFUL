.class Lcom/google/common/collect/v5$h;
.super Lcom/google/common/collect/Maps$d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/v5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/v5$h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$d0<",
        "TR;",
        "Ljava/util/Map<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/common/collect/v5;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/v5;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcom/google/common/collect/v5$h;->d:Lcom/google/common/collect/v5;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$d0;-><init>()V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/google/common/collect/v5$h;->d:Lcom/google/common/collect/v5;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/v5;->containsRow(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;>;"
        }
    .end annotation

    .line 760
    new-instance v0, Lcom/google/common/collect/v5$h$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/v5$h$a;-><init>(Lcom/google/common/collect/v5$h;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/common/collect/v5$h;->get(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 750
    iget-object v0, p0, Lcom/google/common/collect/v5$h;->d:Lcom/google/common/collect/v5;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/v5;->containsRow(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/v5;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/common/collect/v5$h;->remove(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/v5$h;->d:Lcom/google/common/collect/v5;

    iget-object v0, v0, Lcom/google/common/collect/v5;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method
