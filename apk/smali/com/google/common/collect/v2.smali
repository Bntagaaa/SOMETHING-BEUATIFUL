.class Lcom/google/common/collect/v2;
.super Lcom/google/common/collect/m2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/m2<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/ImmutableSortedMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/google/common/collect/v2;->c:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-direct {p0}, Lcom/google/common/collect/m2;-><init>()V

    return-void
.end method


# virtual methods
.method public final g()Lcom/google/common/collect/ImmutableList;
    .locals 1

    .line 592
    new-instance v0, Lcom/google/common/collect/u2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/u2;-><init>(Lcom/google/common/collect/v2;)V

    return-object v0
.end method

.method public final i()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/google/common/collect/v2;->c:Lcom/google/common/collect/ImmutableSortedMap;

    return-object v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 587
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 584
    invoke-virtual {p0}, Lcom/google/common/collect/v2;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
