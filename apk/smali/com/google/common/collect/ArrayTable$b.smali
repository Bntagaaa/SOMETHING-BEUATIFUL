.class Lcom/google/common/collect/ArrayTable$b;
.super Lcom/google/common/collect/ArrayTable$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ArrayTable$a<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field public final b:I

.field public final synthetic c:Lcom/google/common/collect/ArrayTable;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ArrayTable;I)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$b;->c:Lcom/google/common/collect/ArrayTable;

    .line 583
    iget-object p1, p1, Lcom/google/common/collect/ArrayTable;->e:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ArrayTable$a;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    .line 584
    iput p2, p0, Lcom/google/common/collect/ArrayTable$b;->b:I

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 589
    const-string v0, "Row"

    return-object v0
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$b;->c:Lcom/google/common/collect/ArrayTable;

    iget v1, p0, Lcom/google/common/collect/ArrayTable$b;->b:I

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/ArrayTable;->at(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$b;->c:Lcom/google/common/collect/ArrayTable;

    iget v1, p0, Lcom/google/common/collect/ArrayTable$b;->b:I

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/common/collect/ArrayTable;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
