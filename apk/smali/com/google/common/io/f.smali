.class Lcom/google/common/io/f;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lcom/google/common/io/CharSource$b;)V
    .locals 1

    .line 493
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 453
    sget-object v0, Lcom/google/common/io/CharSource$b;->b:Lcom/google/common/base/Splitter;

    .line 494
    iget-object p1, p1, Lcom/google/common/io/CharSource$b;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/io/f;->c:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 493
    invoke-virtual {p0}, Lcom/google/common/io/f;->computeNext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public computeNext()Ljava/lang/String;
    .locals 2

    .line 498
    iget-object v0, p0, Lcom/google/common/io/f;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 501
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-object v1

    .line 505
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
