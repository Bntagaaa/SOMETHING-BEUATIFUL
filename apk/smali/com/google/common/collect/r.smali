.class Lcom/google/common/collect/r;
.super Lcom/google/common/collect/c1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/common/collect/s;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/s;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/google/common/collect/r;->d:Lcom/google/common/collect/s;

    invoke-direct {p0}, Lcom/google/common/collect/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/SortedMultiset;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/common/collect/r;->d:Lcom/google/common/collect/s;

    return-object v0
.end method

.method public final entryIterator()Ljava/util/Iterator;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/google/common/collect/r;->d:Lcom/google/common/collect/s;

    invoke-virtual {v0}, Lcom/google/common/collect/s;->e()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/google/common/collect/r;->d:Lcom/google/common/collect/s;

    invoke-virtual {v0}, Lcom/google/common/collect/s;->descendingMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/google/common/collect/Multisets;->c(Lcom/google/common/collect/Multiset;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
