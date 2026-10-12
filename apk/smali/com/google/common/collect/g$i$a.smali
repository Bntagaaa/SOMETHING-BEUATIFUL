.class Lcom/google/common/collect/g$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Iterator;

.field public final b:Ljava/util/Collection;

.field public final synthetic c:Lcom/google/common/collect/g$i;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/g$i;)V
    .locals 1

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/g$i$a;->c:Lcom/google/common/collect/g$i;

    .line 428
    iget-object p1, p1, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/common/collect/g$i$a;->b:Ljava/util/Collection;

    .line 574
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    .line 575
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    goto :goto_0

    .line 576
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 431
    :goto_0
    iput-object p1, p0, Lcom/google/common/collect/g$i$a;->a:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/g$i;Ljava/util/Iterator;)V
    .locals 0

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/g$i$a;->c:Lcom/google/common/collect/g$i;

    .line 428
    iget-object p1, p1, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/common/collect/g$i$a;->b:Ljava/util/Collection;

    .line 435
    iput-object p2, p0, Lcom/google/common/collect/g$i$a;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/google/common/collect/g$i$a;->c:Lcom/google/common/collect/g$i;

    invoke-virtual {v0}, Lcom/google/common/collect/g$i;->b()V

    .line 443
    iget-object v0, v0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/g$i$a;->b:Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    return-void

    .line 444
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 450
    invoke-virtual {p0}, Lcom/google/common/collect/g$i$a;->a()V

    .line 451
    iget-object v0, p0, Lcom/google/common/collect/g$i$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 456
    invoke-virtual {p0}, Lcom/google/common/collect/g$i$a;->a()V

    .line 457
    iget-object v0, p0, Lcom/google/common/collect/g$i$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 462
    iget-object v0, p0, Lcom/google/common/collect/g$i$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 463
    iget-object v0, p0, Lcom/google/common/collect/g$i$a;->c:Lcom/google/common/collect/g$i;

    iget-object v1, v0, Lcom/google/common/collect/g$i;->e:Lcom/google/common/collect/g;

    .line 85
    iget v2, v1, Lcom/google/common/collect/g;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/google/common/collect/g;->g:I

    .line 464
    invoke-virtual {v0}, Lcom/google/common/collect/g$i;->c()V

    return-void
.end method
