.class Lcom/google/common/collect/Multimaps$a$a;
.super Lcom/google/common/collect/Maps$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$f<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/Multimaps$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Multimaps$a;)V
    .locals 0

    .line 1723
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$a$a;->a:Lcom/google/common/collect/Multimaps$a;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1

    .line 1726
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$a$a;->a:Lcom/google/common/collect/Multimaps$a;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 1701
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$a$a;->a:Lcom/google/common/collect/Multimaps$a;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$a;->d:Lcom/google/common/collect/Multimap;

    .line 1732
    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Multimaps$a$a$a;

    invoke-direct {v1, p0}, Lcom/google/common/collect/Multimaps$a$a$a;-><init>(Lcom/google/common/collect/Multimaps$a$a;)V

    .line 845
    new-instance v2, Lcom/google/common/collect/t3;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/t3;-><init>(Ljava/util/Iterator;Lcom/google/common/base/Function;)V

    return-object v2
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1743
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$f;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1746
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1747
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    .line 1719
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$a$a;->a:Lcom/google/common/collect/Multimaps$a;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$a;->d:Lcom/google/common/collect/Multimap;

    .line 1719
    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method
