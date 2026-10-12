.class public final Lcom/google/common/collect/EnumMultiset;
.super Lcom/google/common/collect/m;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/EnumMultiset$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Lcom/google/common/collect/m<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final transient c:Ljava/lang/Class;

.field public final transient d:[Ljava/lang/Enum;

.field public final transient e:[I

.field public transient f:I

.field public transient g:J


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/google/common/collect/m;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/google/common/collect/EnumMultiset;->c:Ljava/lang/Class;

    .line 91
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 92
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Enum;

    iput-object p1, p0, Lcom/google/common/collect/EnumMultiset;->d:[Ljava/lang/Enum;

    .line 93
    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/common/collect/EnumMultiset;->e:[I

    return-void
.end method

.method public static create(Ljava/lang/Class;)Lcom/google/common/collect/EnumMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcom/google/common/collect/EnumMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/google/common/collect/EnumMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EnumMultiset;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/EnumMultiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Lcom/google/common/collect/EnumMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 63
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "EnumMultiset constructor passed empty Iterable"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 65
    new-instance v1, Lcom/google/common/collect/EnumMultiset;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/common/collect/EnumMultiset;-><init>(Ljava/lang/Class;)V

    .line 66
    invoke-static {v1, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v1
.end method

.method public static create(Ljava/lang/Iterable;Ljava/lang/Class;)Lcom/google/common/collect/EnumMultiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcom/google/common/collect/EnumMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 77
    invoke-static {p1}, Lcom/google/common/collect/EnumMultiset;->create(Ljava/lang/Class;)Lcom/google/common/collect/EnumMultiset;

    move-result-object p1

    .line 78
    invoke-static {p1, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object p1
.end method


# virtual methods
.method public add(Ljava/lang/Enum;I)I
    .locals 9
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 139
    invoke-virtual {p0, p1}, Lcom/google/common/collect/EnumMultiset;->e(Ljava/lang/Enum;)V

    .line 140
    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lcom/google/common/collect/g0;->b(ILjava/lang/String;)V

    if-nez p2, :cond_0

    .line 142
    invoke-virtual {p0, p1}, Lcom/google/common/collect/EnumMultiset;->count(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 144
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    .line 145
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset;->e:[I

    aget v1, v0, p1

    int-to-long v2, v1

    int-to-long v4, p2

    add-long/2addr v2, v4

    const-wide/32 v6, 0x7fffffff

    const/4 p2, 0x1

    cmp-long v8, v2, v6

    if-gtz v8, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 147
    :goto_0
    const-string v7, "too many occurrences: %s"

    invoke-static {v6, v7, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    long-to-int v3, v2

    .line 148
    aput v3, v0, p1

    if-nez v1, :cond_2

    .line 150
    iget p1, p0, Lcom/google/common/collect/EnumMultiset;->f:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/common/collect/EnumMultiset;->f:I

    .line 152
    :cond_2
    iget-wide p1, p0, Lcom/google/common/collect/EnumMultiset;->g:J

    add-long/2addr p1, v4

    iput-wide p1, p0, Lcom/google/common/collect/EnumMultiset;->g:J

    return v1
.end method

.method public bridge synthetic add(Ljava/lang/Object;I)I
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 46
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EnumMultiset;->add(Ljava/lang/Enum;I)I

    move-result p1

    return p1
.end method

.method public final b()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/google/common/collect/EnumMultiset;->f:I

    return v0
.end method

.method public final c()Ljava/util/Iterator;
    .locals 1

    .line 249
    new-instance v0, Lcom/google/common/collect/g1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/g1;-><init>(Lcom/google/common/collect/EnumMultiset;)V

    return-object v0
.end method

.method public clear()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset;->e:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const-wide/16 v2, 0x0

    .line 204
    iput-wide v2, p0, Lcom/google/common/collect/EnumMultiset;->g:J

    .line 205
    iput v1, p0, Lcom/google/common/collect/EnumMultiset;->f:I

    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 46
    invoke-super {p0, p1}, Lcom/google/common/collect/m;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public count(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 128
    invoke-virtual {p0, p1}, Lcom/google/common/collect/EnumMultiset;->f(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 131
    :cond_0
    check-cast p1, Ljava/lang/Enum;

    .line 132
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset;->e:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public final d()Ljava/util/Iterator;
    .locals 1

    .line 259
    new-instance v0, Lcom/google/common/collect/i1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/i1;-><init>(Lcom/google/common/collect/EnumMultiset;)V

    return-object v0
.end method

.method public final e(Ljava/lang/Enum;)V
    .locals 3

    .line 110
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-virtual {p0, p1}, Lcom/google/common/collect/EnumMultiset;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected an "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/common/collect/EnumMultiset;->c:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/google/common/collect/m;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/google/common/collect/m;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/Object;)Z
    .locals 4

    .line 97
    instance-of v0, p1, Ljava/lang/Enum;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 98
    check-cast p1, Ljava/lang/Enum;

    .line 99
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 100
    iget-object v2, p0, Lcom/google/common/collect/EnumMultiset;->d:[Ljava/lang/Enum;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v0, v2, v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/google/common/collect/m;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 279
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->c(Lcom/google/common/collect/Multiset;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 160
    invoke-virtual {p0, p1}, Lcom/google/common/collect/EnumMultiset;->f(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    .line 164
    const-string v2, "occurrences"

    invoke-static {p2, v2}, Lcom/google/common/collect/g0;->b(ILjava/lang/String;)V

    if-nez p2, :cond_1

    .line 166
    invoke-virtual {p0, p1}, Lcom/google/common/collect/EnumMultiset;->count(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 168
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    .line 169
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset;->e:[I

    aget v2, v0, p1

    if-nez v2, :cond_2

    :goto_0
    return v1

    :cond_2
    if-gt v2, p2, :cond_3

    .line 173
    aput v1, v0, p1

    .line 174
    iget p1, p0, Lcom/google/common/collect/EnumMultiset;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/EnumMultiset;->f:I

    .line 175
    iget-wide p1, p0, Lcom/google/common/collect/EnumMultiset;->g:J

    int-to-long v0, v2

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/common/collect/EnumMultiset;->g:J

    return v2

    :cond_3
    sub-int v1, v2, p2

    .line 177
    aput v1, v0, p1

    .line 178
    iget-wide v0, p0, Lcom/google/common/collect/EnumMultiset;->g:J

    int-to-long p1, p2

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/EnumMultiset;->g:J

    return v2
.end method

.method public setCount(Ljava/lang/Enum;I)I
    .locals 6
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 187
    invoke-virtual {p0, p1}, Lcom/google/common/collect/EnumMultiset;->e(Ljava/lang/Enum;)V

    .line 188
    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/g0;->b(ILjava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    .line 190
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset;->e:[I

    aget v1, v0, p1

    .line 191
    aput p2, v0, p1

    .line 192
    iget-wide v2, p0, Lcom/google/common/collect/EnumMultiset;->g:J

    sub-int p1, p2, v1

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/EnumMultiset;->g:J

    if-nez v1, :cond_0

    if-lez p2, :cond_0

    .line 194
    iget p1, p0, Lcom/google/common/collect/EnumMultiset;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/EnumMultiset;->f:I

    return v1

    :cond_0
    if-lez v1, :cond_1

    if-nez p2, :cond_1

    .line 196
    iget p1, p0, Lcom/google/common/collect/EnumMultiset;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/EnumMultiset;->f:I

    :cond_1
    return v1
.end method

.method public bridge synthetic setCount(Ljava/lang/Object;I)I
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 46
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EnumMultiset;->setCount(Ljava/lang/Enum;I)I

    move-result p1

    return p1
.end method

.method public size()I
    .locals 2

    .line 123
    iget-wide v0, p0, Lcom/google/common/collect/EnumMultiset;->g:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method
