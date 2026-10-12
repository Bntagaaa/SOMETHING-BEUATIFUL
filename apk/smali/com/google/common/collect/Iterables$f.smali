.class final Lcom/google/common/collect/Iterables$f;
.super Lcom/google/common/collect/FluentIterable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterables;->skip(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/FluentIterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Iterable;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;I)V
    .locals 0

    .line 867
    iput-object p1, p0, Lcom/google/common/collect/Iterables$f;->b:Ljava/lang/Iterable;

    iput p2, p0, Lcom/google/common/collect/Iterables$f;->c:I

    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 870
    iget-object v0, p0, Lcom/google/common/collect/Iterables$f;->b:Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/List;

    iget v2, p0, Lcom/google/common/collect/Iterables$f;->c:I

    if-eqz v1, :cond_0

    .line 871
    check-cast v0, Ljava/util/List;

    .line 872
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 873
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 875
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 877
    invoke-static {v0, v2}, Lcom/google/common/collect/Iterators;->advance(Ljava/util/Iterator;I)I

    .line 884
    new-instance v1, Lcom/google/common/collect/Iterables$f$a;

    invoke-direct {v1, v0}, Lcom/google/common/collect/Iterables$f$a;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method
