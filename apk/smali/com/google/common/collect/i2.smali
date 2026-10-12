.class final Lcom/google/common/collect/i2;
.super Lcom/google/common/collect/ImmutableSet;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/i2$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Lcom/google/common/collect/ImmutableSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final transient c:Ljava/util/EnumSet;

.field public transient d:I


# direct methods
.method public constructor <init>(Ljava/util/EnumSet;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/common/collect/i2;->c:Ljava/util/EnumSet;

    return-void
.end method

.method public static i(Ljava/util/EnumSet;)Lcom/google/common/collect/ImmutableSet;
    .locals 2

    .line 35
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 41
    new-instance v0, Lcom/google/common/collect/i2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/i2;-><init>(Ljava/util/EnumSet;)V

    return-object v0

    .line 39
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    .line 37
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/common/collect/i2;->c:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 81
    instance-of v0, p1, Lcom/google/common/collect/i2;

    if-eqz v0, :cond_0

    .line 82
    check-cast p1, Lcom/google/common/collect/i2;

    iget-object p1, p1, Lcom/google/common/collect/i2;->c:Ljava/util/EnumSet;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/i2;->c:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 97
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/i2;

    if-eqz v0, :cond_1

    .line 98
    check-cast p1, Lcom/google/common/collect/i2;

    iget-object p1, p1, Lcom/google/common/collect/i2;->c:Ljava/util/EnumSet;

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/i2;->c:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/google/common/collect/i2;->d:I

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/common/collect/i2;->c:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/i2;->d:I

    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/common/collect/i2;->c:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/google/common/collect/i2;->c:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/google/common/collect/i2;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/common/collect/i2;->c:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/common/collect/i2;->c:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
