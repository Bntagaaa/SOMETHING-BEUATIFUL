.class Lcom/google/common/collect/HashBiMap$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/HashBiMap$h;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public final synthetic e:Lcom/google/common/collect/HashBiMap$h;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/HashBiMap$h;)V
    .locals 1

    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$h$a;->e:Lcom/google/common/collect/HashBiMap$h;

    .line 54
    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$h;->a:Lcom/google/common/collect/HashBiMap;

    iget v0, p1, Lcom/google/common/collect/HashBiMap;->i:I

    .line 679
    iput v0, p0, Lcom/google/common/collect/HashBiMap$h$a;->a:I

    const/4 v0, -0x1

    .line 680
    iput v0, p0, Lcom/google/common/collect/HashBiMap$h$a;->b:I

    .line 681
    iget v0, p1, Lcom/google/common/collect/HashBiMap;->d:I

    iput v0, p0, Lcom/google/common/collect/HashBiMap$h$a;->c:I

    .line 685
    iget p1, p1, Lcom/google/common/collect/HashBiMap;->c:I

    iput p1, p0, Lcom/google/common/collect/HashBiMap$h$a;->d:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$h$a;->e:Lcom/google/common/collect/HashBiMap$h;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$h;->a:Lcom/google/common/collect/HashBiMap;

    iget v0, v0, Lcom/google/common/collect/HashBiMap;->d:I

    iget v1, p0, Lcom/google/common/collect/HashBiMap$h$a;->c:I

    if-ne v0, v1, :cond_1

    .line 696
    iget v0, p0, Lcom/google/common/collect/HashBiMap$h$a;->a:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/common/collect/HashBiMap$h$a;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 689
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 701
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$h$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iget v0, p0, Lcom/google/common/collect/HashBiMap$h$a;->a:I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$h$a;->e:Lcom/google/common/collect/HashBiMap$h;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/HashBiMap$h;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 705
    iget v2, p0, Lcom/google/common/collect/HashBiMap$h$a;->a:I

    iput v2, p0, Lcom/google/common/collect/HashBiMap$h$a;->b:I

    .line 54
    iget-object v1, v1, Lcom/google/common/collect/HashBiMap$h;->a:Lcom/google/common/collect/HashBiMap;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap;->l:[I

    .line 706
    aget v1, v1, v2

    iput v1, p0, Lcom/google/common/collect/HashBiMap$h$a;->a:I

    .line 707
    iget v1, p0, Lcom/google/common/collect/HashBiMap$h$a;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/HashBiMap$h$a;->d:I

    return-object v0

    .line 702
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 4

    .line 688
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$h$a;->e:Lcom/google/common/collect/HashBiMap$h;

    iget-object v1, v0, Lcom/google/common/collect/HashBiMap$h;->a:Lcom/google/common/collect/HashBiMap;

    iget v1, v1, Lcom/google/common/collect/HashBiMap;->d:I

    iget v2, p0, Lcom/google/common/collect/HashBiMap$h$a;->c:I

    if-ne v1, v2, :cond_2

    .line 714
    iget v1, p0, Lcom/google/common/collect/HashBiMap$h$a;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/collect/g0;->e(Z)V

    .line 715
    iget v1, p0, Lcom/google/common/collect/HashBiMap$h$a;->b:I

    .line 560
    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$h;->a:Lcom/google/common/collect/HashBiMap;

    iget-object v3, v0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    .line 560
    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/google/common/collect/HashBiMap;->m(II)V

    .line 716
    iget v1, p0, Lcom/google/common/collect/HashBiMap$h$a;->a:I

    iget v3, v0, Lcom/google/common/collect/HashBiMap;->c:I

    if-ne v1, v3, :cond_1

    .line 717
    iget v1, p0, Lcom/google/common/collect/HashBiMap$h$a;->b:I

    iput v1, p0, Lcom/google/common/collect/HashBiMap$h$a;->a:I

    .line 719
    :cond_1
    iput v2, p0, Lcom/google/common/collect/HashBiMap$h$a;->b:I

    .line 720
    iget v0, v0, Lcom/google/common/collect/HashBiMap;->d:I

    iput v0, p0, Lcom/google/common/collect/HashBiMap$h$a;->c:I

    return-void

    .line 689
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
