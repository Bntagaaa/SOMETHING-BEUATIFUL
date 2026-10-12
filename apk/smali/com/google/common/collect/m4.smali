.class Lcom/google/common/collect/m4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "Lcom/google/common/collect/Multiset$Entry<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/Multisets$i;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Multisets$i;)V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/m4;->a:Lcom/google/common/collect/Multisets$i;

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/common/collect/Multiset$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset$Entry<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/google/common/collect/m4;->a:Lcom/google/common/collect/Multisets$i;

    iget-object v0, v0, Lcom/google/common/collect/Multisets$i;->d:Lcom/google/common/base/Predicate;

    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 309
    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/m4;->apply(Lcom/google/common/collect/Multiset$Entry;)Z

    move-result p1

    return p1
.end method
