.class Lcom/google/common/collect/g6;
.super Lcom/google/common/collect/Multisets$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$e<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/TreeMultiset$c;

.field public final synthetic b:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$c;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/google/common/collect/g6;->b:Lcom/google/common/collect/TreeMultiset;

    iput-object p2, p0, Lcom/google/common/collect/g6;->a:Lcom/google/common/collect/TreeMultiset$c;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$e;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 968
    iget-object v0, p0, Lcom/google/common/collect/g6;->a:Lcom/google/common/collect/TreeMultiset$c;

    iget v0, v0, Lcom/google/common/collect/TreeMultiset$c;->b:I

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/google/common/collect/g6;->b:Lcom/google/common/collect/TreeMultiset;

    invoke-virtual {p0}, Lcom/google/common/collect/g6;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 964
    iget-object v0, p0, Lcom/google/common/collect/g6;->a:Lcom/google/common/collect/TreeMultiset$c;

    iget-object v0, v0, Lcom/google/common/collect/TreeMultiset$c;->a:Ljava/lang/Object;

    return-object v0
.end method
