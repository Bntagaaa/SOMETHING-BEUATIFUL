.class Lcom/google/common/collect/g$l;
.super Lcom/google/common/collect/g$i;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/g<",
        "TK;TV;>.i;",
        "Ljava/util/Set<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/google/common/collect/g;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 1

    .line 582
    iput-object p1, p0, Lcom/google/common/collect/g$l;->f:Lcom/google/common/collect/g;

    const/4 v0, 0x0

    .line 583
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/common/collect/g$i;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/g$i;)V

    return-void
.end method


# virtual methods
.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 588
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 591
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->size()I

    move-result v0

    .line 596
    iget-object v1, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    check-cast v1, Ljava/util/Set;

    invoke-static {v1, p1}, Lcom/google/common/collect/Sets;->c(Ljava/util/Set;Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 598
    iget-object v1, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 85
    iget-object v2, p0, Lcom/google/common/collect/g$l;->f:Lcom/google/common/collect/g;

    iget v3, v2, Lcom/google/common/collect/g;->g:I

    sub-int/2addr v1, v0

    add-int/2addr v1, v3

    .line 85
    iput v1, v2, Lcom/google/common/collect/g;->g:I

    .line 600
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->c()V

    :cond_1
    return p1
.end method
