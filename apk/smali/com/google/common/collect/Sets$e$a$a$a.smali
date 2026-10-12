.class Lcom/google/common/collect/Sets$e$a$a$a;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$e$a$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public c:I

.field public final synthetic d:Lcom/google/common/collect/Sets$e$a$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Sets$e$a$a;)V
    .locals 0

    .line 1598
    iput-object p1, p0, Lcom/google/common/collect/Sets$e$a$a$a;->d:Lcom/google/common/collect/Sets$e$a$a;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    const/4 p1, -0x1

    .line 1599
    iput p1, p0, Lcom/google/common/collect/Sets$e$a$a$a;->c:I

    return-void
.end method


# virtual methods
.method public computeNext()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1603
    iget-object v0, p0, Lcom/google/common/collect/Sets$e$a$a$a;->d:Lcom/google/common/collect/Sets$e$a$a;

    iget-object v1, v0, Lcom/google/common/collect/Sets$e$a$a;->a:Ljava/util/BitSet;

    iget v2, p0, Lcom/google/common/collect/Sets$e$a$a$a;->c:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/Sets$e$a$a$a;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1605
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1607
    :cond_0
    iget-object v0, v0, Lcom/google/common/collect/Sets$e$a$a;->b:Lcom/google/common/collect/Sets$e$a;

    iget-object v0, v0, Lcom/google/common/collect/Sets$e$a;->d:Lcom/google/common/collect/Sets$e;

    iget-object v0, v0, Lcom/google/common/collect/Sets$e;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/Sets$e$a$a$a;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
