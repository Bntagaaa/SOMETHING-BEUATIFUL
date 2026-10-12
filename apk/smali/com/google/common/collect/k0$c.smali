.class Lcom/google/common/collect/k0$c;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/k0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/k0;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lcom/google/common/collect/k0$c;->a:Lcom/google/common/collect/k0;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/google/common/collect/k0$c;->a:Lcom/google/common/collect/k0;

    invoke-virtual {v0}, Lcom/google/common/collect/k0;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/google/common/collect/k0$c;->a:Lcom/google/common/collect/k0;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/k0;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 643
    iget-object v0, p0, Lcom/google/common/collect/k0$c;->a:Lcom/google/common/collect/k0;

    invoke-virtual {v0}, Lcom/google/common/collect/k0;->f()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 645
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 647
    :cond_0
    new-instance v1, Lcom/google/common/collect/h0;

    invoke-direct {v1, v0}, Lcom/google/common/collect/h0;-><init>(Lcom/google/common/collect/k0;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 625
    iget-object v0, p0, Lcom/google/common/collect/k0$c;->a:Lcom/google/common/collect/k0;

    invoke-virtual {v0}, Lcom/google/common/collect/k0;->f()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 627
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 76
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/common/collect/k0;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 628
    sget-object v0, Lcom/google/common/collect/k0;->j:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/google/common/collect/k0$c;->a:Lcom/google/common/collect/k0;

    invoke-virtual {v0}, Lcom/google/common/collect/k0;->size()I

    move-result v0

    return v0
.end method
