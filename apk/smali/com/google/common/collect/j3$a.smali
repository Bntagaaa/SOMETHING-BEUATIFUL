.class Lcom/google/common/collect/j3$a;
.super Lcom/google/common/collect/d6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/j3;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/d6<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/LinkedListMultimap$e;


# direct methods
.method public constructor <init>(Ljava/util/ListIterator;Lcom/google/common/collect/LinkedListMultimap$e;)V
    .locals 0

    .line 750
    iput-object p2, p0, Lcom/google/common/collect/j3$a;->b:Lcom/google/common/collect/LinkedListMultimap$e;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/common/collect/c6;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 750
    check-cast p1, Ljava/util/Map$Entry;

    .line 753
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/google/common/collect/j3$a;->b:Lcom/google/common/collect/LinkedListMultimap$e;

    iget-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$e;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 408
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 409
    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$e;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    iput-object p1, v0, Lcom/google/common/collect/LinkedListMultimap$d;->b:Ljava/lang/Object;

    return-void
.end method
