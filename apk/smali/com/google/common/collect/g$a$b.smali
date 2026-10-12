.class Lcom/google/common/collect/g$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Iterator;

.field public b:Ljava/util/Collection;

.field public final synthetic c:Lcom/google/common/collect/g$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/g$a;)V
    .locals 0

    .line 1365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/g$a$b;->c:Lcom/google/common/collect/g$a;

    .line 1366
    iget-object p1, p1, Lcom/google/common/collect/g$a;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/g$a$b;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1371
    iget-object v0, p0, Lcom/google/common/collect/g$a$b;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1365
    invoke-virtual {p0}, Lcom/google/common/collect/g$a$b;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1376
    iget-object v0, p0, Lcom/google/common/collect/g$a$b;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1377
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Lcom/google/common/collect/g$a$b;->b:Ljava/util/Collection;

    .line 1378
    iget-object v1, p0, Lcom/google/common/collect/g$a$b;->c:Lcom/google/common/collect/g$a;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/g$a;->b(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 1383
    iget-object v0, p0, Lcom/google/common/collect/g$a$b;->b:Ljava/util/Collection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/g0;->e(Z)V

    .line 1384
    iget-object v0, p0, Lcom/google/common/collect/g$a$b;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1385
    iget-object v0, p0, Lcom/google/common/collect/g$a$b;->c:Lcom/google/common/collect/g$a;

    iget-object v0, v0, Lcom/google/common/collect/g$a;->e:Lcom/google/common/collect/g;

    .line 85
    iget v1, v0, Lcom/google/common/collect/g;->g:I

    .line 1385
    iget-object v2, p0, Lcom/google/common/collect/g$a$b;->b:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    sub-int/2addr v1, v2

    .line 85
    iput v1, v0, Lcom/google/common/collect/g;->g:I

    .line 1386
    iget-object v0, p0, Lcom/google/common/collect/g$a$b;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x0

    .line 1387
    iput-object v0, p0, Lcom/google/common/collect/g$a$b;->b:Ljava/util/Collection;

    return-void
.end method
