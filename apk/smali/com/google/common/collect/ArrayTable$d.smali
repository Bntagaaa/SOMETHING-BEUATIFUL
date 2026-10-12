.class Lcom/google/common/collect/ArrayTable$d;
.super Lcom/google/common/collect/ArrayTable$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ArrayTable$a<",
        "TC;TV;>;"
    }
.end annotation


# instance fields
.field public final b:I

.field public final synthetic c:Lcom/google/common/collect/ArrayTable;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ArrayTable;I)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$d;->c:Lcom/google/common/collect/ArrayTable;

    .line 671
    iget-object p1, p1, Lcom/google/common/collect/ArrayTable;->f:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ArrayTable$a;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    .line 672
    iput p2, p0, Lcom/google/common/collect/ArrayTable$d;->b:I

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 677
    const-string v0, "Column"

    return-object v0
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 2

    .line 682
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$d;->c:Lcom/google/common/collect/ArrayTable;

    iget v1, p0, Lcom/google/common/collect/ArrayTable$d;->b:I

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/ArrayTable;->at(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$d;->c:Lcom/google/common/collect/ArrayTable;

    iget v1, p0, Lcom/google/common/collect/ArrayTable$d;->b:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/collect/ArrayTable;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
