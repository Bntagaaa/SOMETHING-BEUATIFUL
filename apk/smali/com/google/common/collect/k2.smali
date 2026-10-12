.class Lcom/google/common/collect/k2;
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
.field public final synthetic c:Lcom/google/common/collect/ImmutableMap$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableMap$a;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/google/common/collect/k2;->c:Lcom/google/common/collect/ImmutableMap$a;

    invoke-direct {p0}, Lcom/google/common/collect/m2;-><init>()V

    return-void
.end method


# virtual methods
.method public final i()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/google/common/collect/k2;->c:Lcom/google/common/collect/ImmutableMap$a;

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

    .line 429
    iget-object v0, p0, Lcom/google/common/collect/k2;->c:Lcom/google/common/collect/ImmutableMap$a;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$a;->h()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 421
    invoke-virtual {p0}, Lcom/google/common/collect/k2;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
