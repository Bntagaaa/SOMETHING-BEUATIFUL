.class Lcom/google/common/collect/b0;
.super Lcom/google/common/collect/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/k<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/common/collect/ArrayTable$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ArrayTable$a;I)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/google/common/collect/b0;->b:Lcom/google/common/collect/ArrayTable$a;

    iput p2, p0, Lcom/google/common/collect/b0;->a:I

    invoke-direct {p0}, Lcom/google/common/collect/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/google/common/collect/b0;->b:Lcom/google/common/collect/ArrayTable$a;

    iget v1, p0, Lcom/google/common/collect/b0;->a:I

    .line 187
    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$a;->a:Lcom/google/common/collect/ImmutableMap;

    .line 187
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/google/common/collect/b0;->b:Lcom/google/common/collect/ArrayTable$a;

    iget v1, p0, Lcom/google/common/collect/b0;->a:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ArrayTable$a;->c(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/google/common/collect/b0;->b:Lcom/google/common/collect/ArrayTable$a;

    iget v1, p0, Lcom/google/common/collect/b0;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/ArrayTable$a;->d(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
