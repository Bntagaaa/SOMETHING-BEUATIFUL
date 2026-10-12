.class Lcom/google/common/collect/b1;
.super Lcom/google/common/collect/Multisets$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$h<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/c1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/c1;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/google/common/collect/b1;->a:Lcom/google/common/collect/c1;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/Multiset;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/common/collect/b1;->a:Lcom/google/common/collect/c1;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/common/collect/b1;->a:Lcom/google/common/collect/c1;

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/common/collect/b1;->a:Lcom/google/common/collect/c1;

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->a()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
