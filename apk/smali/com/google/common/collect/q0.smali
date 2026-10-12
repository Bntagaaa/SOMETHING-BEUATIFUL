.class final Lcom/google/common/collect/q0;
.super Lcom/google/common/collect/Ordering;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Ordering<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:[Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Ordering;Ljava/util/Comparator;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [Ljava/util/Comparator;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    check-cast v0, [Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/q0;->a:[Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    const/4 v0, 0x0

    .line 34
    new-array v0, v0, [Ljava/util/Comparator;

    .line 342
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/util/Collection;

    goto :goto_0

    .line 344
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 323
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 34
    check-cast p1, [Ljava/util/Comparator;

    iput-object p1, p0, Lcom/google/common/collect/q0;->a:[Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 39
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/q0;->a:[Ljava/util/Comparator;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 40
    aget-object v2, v2, v1

    invoke-interface {v2, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 53
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/q0;

    if-eqz v0, :cond_1

    .line 54
    check-cast p1, Lcom/google/common/collect/q0;

    .line 55
    iget-object v0, p0, Lcom/google/common/collect/q0;->a:[Ljava/util/Comparator;

    iget-object p1, p1, Lcom/google/common/collect/q0;->a:[Ljava/util/Comparator;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/common/collect/q0;->a:[Ljava/util/Comparator;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ordering.compound("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/common/collect/q0;->a:[Ljava/util/Comparator;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ")"

    .line 0
    invoke-static {v0, v1, v2}, L_COROUTINE/a;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
