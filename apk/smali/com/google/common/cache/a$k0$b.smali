.class Lcom/google/common/cache/a$k0$b;
.super Lcom/google/common/collect/AbstractSequentialIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/a$k0;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractSequentialIterator<",
        "Lcom/google/common/cache/f<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/cache/a$k0;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/a$k0;Lcom/google/common/cache/f;)V
    .locals 0

    .line 3634
    iput-object p1, p0, Lcom/google/common/cache/a$k0$b;->b:Lcom/google/common/cache/a$k0;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractSequentialIterator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public computeNext(Lcom/google/common/cache/f;)Lcom/google/common/cache/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/f<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/f<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3637
    invoke-interface {p1}, Lcom/google/common/cache/f;->getNextInWriteQueue()Lcom/google/common/cache/f;

    move-result-object p1

    .line 3638
    iget-object v0, p0, Lcom/google/common/cache/a$k0$b;->b:Lcom/google/common/cache/a$k0;

    iget-object v0, v0, Lcom/google/common/cache/a$k0;->a:Lcom/google/common/cache/a$k0$a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public bridge synthetic computeNext(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3634
    check-cast p1, Lcom/google/common/cache/f;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/a$k0$b;->computeNext(Lcom/google/common/cache/f;)Lcom/google/common/cache/f;

    move-result-object p1

    return-object p1
.end method
