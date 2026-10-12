.class final Lcom/google/common/collect/ImmutableRangeSet$c;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "Lcom/google/common/collect/Range<",
        "TC;>;>;"
    }
.end annotation


# instance fields
.field public final c:Z

.field public final d:Z

.field public final e:I

.field public final synthetic f:Lcom/google/common/collect/ImmutableRangeSet;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableRangeSet;)V
    .locals 3

    .line 300
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$c;->f:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    const/4 v0, 0x0

    .line 301
    iget-object p1, p1, Lcom/google/common/collect/ImmutableRangeSet;->a:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableRangeSet$c;->c:Z

    .line 302
    invoke-static {p1}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    invoke-virtual {v1}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/common/collect/ImmutableRangeSet$c;->d:Z

    .line 304
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    add-int/lit8 v2, p1, -0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 311
    :cond_1
    iput p1, p0, Lcom/google/common/collect/ImmutableRangeSet$c;->e:I

    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/common/collect/Range;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 321
    iget v0, p0, Lcom/google/common/collect/ImmutableRangeSet$c;->e:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 324
    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet$c;->f:Lcom/google/common/collect/ImmutableRangeSet;

    iget-boolean v2, p0, Lcom/google/common/collect/ImmutableRangeSet$c;->c:Z

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    .line 119
    sget-object v3, Lcom/google/common/collect/w0$d;->b:Lcom/google/common/collect/w0$d;

    goto :goto_0

    .line 49
    :cond_0
    iget-object v3, v1, Lcom/google/common/collect/ImmutableRangeSet;->a:Lcom/google/common/collect/ImmutableList;

    add-int/lit8 v4, p1, -0x1

    .line 325
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/Range;

    iget-object v3, v3, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    goto :goto_0

    .line 49
    :cond_1
    iget-object v3, v1, Lcom/google/common/collect/ImmutableRangeSet;->a:Lcom/google/common/collect/ImmutableList;

    .line 327
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/Range;

    iget-object v3, v3, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    .line 331
    :goto_0
    iget-boolean v4, p0, Lcom/google/common/collect/ImmutableRangeSet$c;->d:Z

    if-eqz v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    .line 218
    sget-object p1, Lcom/google/common/collect/w0$b;->b:Lcom/google/common/collect/w0$b;

    goto :goto_1

    .line 49
    :cond_2
    iget-object v0, v1, Lcom/google/common/collect/ImmutableRangeSet;->a:Lcom/google/common/collect/ImmutableList;

    xor-int/lit8 v1, v2, 0x1

    add-int/2addr p1, v1

    .line 334
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Range;

    iget-object p1, p1, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    .line 155
    :goto_1
    new-instance v0, Lcom/google/common/collect/Range;

    invoke-direct {v0, v3, p1}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/w0;Lcom/google/common/collect/w0;)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 291
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableRangeSet$c;->get(I)Lcom/google/common/collect/Range;

    move-result-object p1

    return-object p1
.end method

.method public final isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 316
    iget v0, p0, Lcom/google/common/collect/ImmutableRangeSet$c;->e:I

    return v0
.end method
