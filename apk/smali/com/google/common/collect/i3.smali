.class Lcom/google/common/collect/i3;
.super Lcom/google/common/collect/Sets$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Sets$k<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 0

    .line 696
    iput-object p1, p0, Lcom/google/common/collect/i3;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/Sets$k;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/google/common/collect/i3;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/LinkedListMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 704
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$b;

    iget-object v1, p0, Lcom/google/common/collect/i3;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/LinkedListMultimap$b;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/google/common/collect/i3;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public size()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/common/collect/i3;->a:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap;->h:Ljava/util/Map;

    .line 699
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
