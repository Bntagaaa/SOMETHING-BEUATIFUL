.class final Lcom/google/common/collect/h5$a;
.super Lcom/google/common/collect/a3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/h5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/a3<",
        "Lcom/google/common/collect/Table$Cell<",
        "TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/h5;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/h5;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/google/common/collect/h5$a;->c:Lcom/google/common/collect/h5;

    invoke-direct {p0}, Lcom/google/common/collect/a3;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 59
    instance-of v0, p1, Lcom/google/common/collect/Table$Cell;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Lcom/google/common/collect/Table$Cell;

    .line 61
    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/h5$a;->c:Lcom/google/common/collect/h5;

    invoke-virtual {v3, v0, v2}, Lcom/google/common/collect/ImmutableTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/common/collect/h5$a;->c:Lcom/google/common/collect/h5;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/h5;->h(I)Lcom/google/common/collect/Table$Cell;

    move-result-object p1

    return-object p1
.end method

.method public final isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/common/collect/h5$a;->c:Lcom/google/common/collect/h5;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->size()I

    move-result v0

    return v0
.end method
