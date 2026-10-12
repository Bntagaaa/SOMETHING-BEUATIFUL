.class Lcom/google/common/collect/f0$a;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/f0;->get(I)Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lcom/google/common/collect/f0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/f0;I)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/google/common/collect/f0$a;->d:Lcom/google/common/collect/f0;

    iput p2, p0, Lcom/google/common/collect/f0$a;->c:I

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/google/common/collect/f0$a;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 104
    iget-object v0, p0, Lcom/google/common/collect/f0$a;->d:Lcom/google/common/collect/f0;

    iget v1, p0, Lcom/google/common/collect/f0$a;->c:I

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/f0;->a(Lcom/google/common/collect/f0;II)I

    move-result v1

    .line 105
    iget-object v0, v0, Lcom/google/common/collect/f0;->a:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/common/collect/f0$a;->d:Lcom/google/common/collect/f0;

    iget-object v0, v0, Lcom/google/common/collect/f0;->a:Lcom/google/common/collect/ImmutableList;

    .line 98
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method
