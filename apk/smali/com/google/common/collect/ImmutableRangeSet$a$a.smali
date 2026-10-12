.class Lcom/google/common/collect/ImmutableRangeSet$a$a;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableRangeSet$a;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TC;>;"
    }
.end annotation


# instance fields
.field public final c:Lcom/google/common/collect/UnmodifiableIterator;

.field public d:Lcom/google/common/collect/UnmodifiableIterator;

.field public final synthetic e:Lcom/google/common/collect/ImmutableRangeSet$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableRangeSet$a;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$a$a;->e:Lcom/google/common/collect/ImmutableRangeSet$a;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 553
    iget-object p1, p1, Lcom/google/common/collect/ImmutableRangeSet$a;->g:Lcom/google/common/collect/ImmutableRangeSet;

    iget-object p1, p1, Lcom/google/common/collect/ImmutableRangeSet;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$a$a;->c:Lcom/google/common/collect/UnmodifiableIterator;

    .line 88
    sget-object p1, Lcom/google/common/collect/Iterators$j;->d:Lcom/google/common/collect/UnmodifiableListIterator;

    .line 554
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$a$a;->d:Lcom/google/common/collect/UnmodifiableIterator;

    return-void
.end method


# virtual methods
.method public computeNext()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 558
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$a$a;->d:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$a$a;->c:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 523
    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet$a$a;->e:Lcom/google/common/collect/ImmutableRangeSet$a;

    .line 560
    iget-object v1, v1, Lcom/google/common/collect/ImmutableRangeSet$a;->e:Lcom/google/common/collect/DiscreteDomain;

    invoke-static {v0, v1}, Lcom/google/common/collect/ContiguousSet;->create(Lcom/google/common/collect/Range;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/ContiguousSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$a$a;->d:Lcom/google/common/collect/UnmodifiableIterator;

    goto :goto_0

    .line 562
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$a$a;->d:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet$a$a;->computeNext()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method
