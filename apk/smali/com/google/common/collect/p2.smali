.class Lcom/google/common/collect/p2;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/collect/UnmodifiableIterator;

.field public b:Ljava/lang/Object;

.field public c:Lcom/google/common/collect/UnmodifiableIterator;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableMultimap;)V
    .locals 0

    .line 562
    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 563
    iget-object p1, p1, Lcom/google/common/collect/ImmutableMultimap;->f:Lcom/google/common/collect/ImmutableMap;

    .line 564
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/p2;->a:Lcom/google/common/collect/UnmodifiableIterator;

    const/4 p1, 0x0

    .line 565
    iput-object p1, p0, Lcom/google/common/collect/p2;->b:Ljava/lang/Object;

    .line 88
    sget-object p1, Lcom/google/common/collect/Iterators$j;->d:Lcom/google/common/collect/UnmodifiableListIterator;

    .line 566
    iput-object p1, p0, Lcom/google/common/collect/p2;->c:Lcom/google/common/collect/UnmodifiableIterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/google/common/collect/p2;->c:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/p2;->a:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 562
    invoke-virtual {p0}, Lcom/google/common/collect/p2;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/google/common/collect/p2;->c:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/google/common/collect/p2;->a:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 577
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/p2;->b:Ljava/lang/Object;

    .line 578
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/p2;->c:Lcom/google/common/collect/UnmodifiableIterator;

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/p2;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/p2;->c:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
