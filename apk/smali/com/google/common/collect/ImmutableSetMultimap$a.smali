.class final Lcom/google/common/collect/ImmutableSetMultimap$a;
.super Lcom/google/common/collect/ImmutableSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSetMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final transient c:Lcom/google/common/collect/ImmutableSetMultimap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableSetMultimap;)V
    .locals 0

    .line 427
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 428
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSetMultimap$a;->c:Lcom/google/common/collect/ImmutableSetMultimap;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 433
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 434
    check-cast p1, Ljava/util/Map$Entry;

    .line 435
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSetMultimap$a;->c:Lcom/google/common/collect/ImmutableSetMultimap;

    invoke-virtual {v1, v0, p1}, Lcom/google/common/collect/ImmutableMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap$a;->c:Lcom/google/common/collect/ImmutableSetMultimap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 562
    new-instance v1, Lcom/google/common/collect/p2;

    invoke-direct {v1, v0}, Lcom/google/common/collect/p2;-><init>(Lcom/google/common/collect/ImmutableMultimap;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 424
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSetMultimap$a;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap$a;->c:Lcom/google/common/collect/ImmutableSetMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->size()I

    move-result v0

    return v0
.end method
