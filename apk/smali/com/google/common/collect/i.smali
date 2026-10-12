.class Lcom/google/common/collect/i;
.super Lcom/google/common/collect/j$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/j<",
        "Ljava/lang/Object;",
        ">.a<",
        "Lcom/google/common/collect/Multiset$Entry<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/collect/j;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/j;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/google/common/collect/i;->e:Lcom/google/common/collect/j;

    invoke-direct {p0, p1}, Lcom/google/common/collect/j$a;-><init>(Lcom/google/common/collect/j;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/google/common/collect/i;->e:Lcom/google/common/collect/j;

    iget-object v0, v0, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/r4;

    .line 199
    iget v1, v0, Lcom/google/common/collect/r4;->c:I

    .line 199
    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 200
    new-instance v1, Lcom/google/common/collect/r4$a;

    invoke-direct {v1, v0, p1}, Lcom/google/common/collect/r4$a;-><init>(Lcom/google/common/collect/r4;I)V

    return-object v1
.end method
