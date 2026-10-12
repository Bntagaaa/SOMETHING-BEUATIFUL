.class Lcom/google/common/collect/a0;
.super Lcom/google/common/collect/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/ArrayTable;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ArrayTable;I)V
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/google/common/collect/a0;->c:Lcom/google/common/collect/ArrayTable;

    invoke-direct {p0, p2}, Lcom/google/common/collect/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/google/common/collect/a0;->c:Lcom/google/common/collect/ArrayTable;

    iget-object v1, v0, Lcom/google/common/collect/ArrayTable;->d:Lcom/google/common/collect/ImmutableList;

    .line 556
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    div-int v2, p1, v2

    .line 557
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    rem-int/2addr p1, v1

    .line 558
    invoke-virtual {v0, v2, p1}, Lcom/google/common/collect/ArrayTable;->at(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
