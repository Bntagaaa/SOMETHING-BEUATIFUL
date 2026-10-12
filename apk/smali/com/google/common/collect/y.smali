.class Lcom/google/common/collect/y;
.super Lcom/google/common/collect/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "Lcom/google/common/collect/Table$Cell<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/ArrayTable;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ArrayTable;I)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/google/common/collect/y;->c:Lcom/google/common/collect/ArrayTable;

    invoke-direct {p0, p2}, Lcom/google/common/collect/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/common/collect/Table$Cell;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Table$Cell<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/common/collect/y;->c:Lcom/google/common/collect/ArrayTable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    new-instance v1, Lcom/google/common/collect/z;

    invoke-direct {v1, v0, p1}, Lcom/google/common/collect/z;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    return-object v1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 525
    invoke-virtual {p0, p1}, Lcom/google/common/collect/y;->get(I)Lcom/google/common/collect/Table$Cell;

    move-result-object p1

    return-object p1
.end method
