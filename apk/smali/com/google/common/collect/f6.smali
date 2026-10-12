.class Lcom/google/common/collect/f6;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/Object;

.field public final synthetic d:Lcom/google/common/collect/UnmodifiableIterator;

.field public final synthetic e:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/UnmodifiableIterator;Ljava/util/Comparator;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/google/common/collect/f6;->d:Lcom/google/common/collect/UnmodifiableIterator;

    iput-object p2, p0, Lcom/google/common/collect/f6;->e:Ljava/util/Comparator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public computeNext()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 334
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/f6;->d:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/google/common/collect/f6;->c:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/f6;->e:Ljava/util/Comparator;

    invoke-interface {v2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/f6;->c:Ljava/lang/Object;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 345
    iput-object v0, p0, Lcom/google/common/collect/f6;->c:Ljava/lang/Object;

    .line 346
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
