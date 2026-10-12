.class Lcom/google/common/collect/j3;
.super Ljava/util/AbstractSequentialList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSequentialList<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 0

    .line 741
    iput-object p1, p0, Lcom/google/common/collect/j3;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 749
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$e;

    iget-object v1, p0, Lcom/google/common/collect/j3;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/LinkedListMultimap$e;-><init>(Lcom/google/common/collect/LinkedListMultimap;I)V

    .line 750
    new-instance p1, Lcom/google/common/collect/j3$a;

    invoke-direct {p1, v0, v0}, Lcom/google/common/collect/j3$a;-><init>(Ljava/util/ListIterator;Lcom/google/common/collect/LinkedListMultimap$e;)V

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/common/collect/j3;->a:Lcom/google/common/collect/LinkedListMultimap;

    iget v0, v0, Lcom/google/common/collect/LinkedListMultimap;->i:I

    return v0
.end method
