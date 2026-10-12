.class public final Lcom/google/common/collect/TreeMultiset;
.super Lcom/google/common/collect/s;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/TreeMultiset$c;,
        Lcom/google/common/collect/TreeMultiset$d;,
        Lcom/google/common/collect/TreeMultiset$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/s<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final synthetic h:I


# instance fields
.field public final transient e:Lcom/google/common/collect/TreeMultiset$d;

.field public final transient f:Lcom/google/common/collect/b2;

.field public final transient g:Lcom/google/common/collect/TreeMultiset$c;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/TreeMultiset$d;Lcom/google/common/collect/b2;Lcom/google/common/collect/TreeMultiset$c;)V
    .locals 1

    .line 114
    iget-object v0, p2, Lcom/google/common/collect/b2;->a:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcom/google/common/collect/s;-><init>(Ljava/util/Comparator;)V

    .line 115
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$d;

    .line 116
    iput-object p2, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/b2;

    .line 117
    iput-object p3, p0, Lcom/google/common/collect/TreeMultiset;->g:Lcom/google/common/collect/TreeMultiset$c;

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 8

    .line 121
    invoke-direct {p0, p1}, Lcom/google/common/collect/s;-><init>(Ljava/util/Comparator;)V

    .line 59
    new-instance v0, Lcom/google/common/collect/b2;

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v7, v4

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/b2;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    .line 122
    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/b2;

    .line 123
    new-instance p1, Lcom/google/common/collect/TreeMultiset$c;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lcom/google/common/collect/TreeMultiset$c;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset;->g:Lcom/google/common/collect/TreeMultiset$c;

    .line 557
    iput-object p1, p1, Lcom/google/common/collect/TreeMultiset$c;->i:Lcom/google/common/collect/TreeMultiset$c;

    .line 557
    iput-object p1, p1, Lcom/google/common/collect/TreeMultiset$c;->h:Lcom/google/common/collect/TreeMultiset$c;

    .line 125
    new-instance p1, Lcom/google/common/collect/TreeMultiset$d;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/common/collect/TreeMultiset$d;-><init>(I)V

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$d;

    return-void
.end method

.method public static create()Lcom/google/common/collect/TreeMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/TreeMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/TreeMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/TreeMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 104
    invoke-static {}, Lcom/google/common/collect/TreeMultiset;->create()Lcom/google/common/collect/TreeMultiset;

    move-result-object v0

    .line 105
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method public static create(Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultiset;
    .locals 1
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Lcom/google/common/collect/TreeMultiset<",
            "TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 89
    new-instance p0, Lcom/google/common/collect/TreeMultiset;

    .line 90
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 248
    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lcom/google/common/collect/g0;->b(ILjava/lang/String;)V

    if-nez p2, :cond_0

    .line 250
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/b2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b2;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 253
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$d;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$d;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/TreeMultiset$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v3, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 256
    new-instance v3, Lcom/google/common/collect/TreeMultiset$c;

    invoke-direct {v3, p1, p2}, Lcom/google/common/collect/TreeMultiset$c;-><init>(Ljava/lang/Object;I)V

    .line 557
    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset;->g:Lcom/google/common/collect/TreeMultiset$c;

    iput-object v3, p1, Lcom/google/common/collect/TreeMultiset$c;->i:Lcom/google/common/collect/TreeMultiset$c;

    .line 557
    iput-object p1, v3, Lcom/google/common/collect/TreeMultiset$c;->h:Lcom/google/common/collect/TreeMultiset$c;

    .line 557
    iput-object p1, v3, Lcom/google/common/collect/TreeMultiset$c;->i:Lcom/google/common/collect/TreeMultiset$c;

    .line 557
    iput-object v3, p1, Lcom/google/common/collect/TreeMultiset$c;->h:Lcom/google/common/collect/TreeMultiset$c;

    .line 258
    invoke-virtual {v0, v1, v3}, Lcom/google/common/collect/TreeMultiset$d;->checkAndSet(Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :cond_1
    const/4 v3, 0x1

    .line 261
    new-array v3, v3, [I

    .line 262
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-virtual {v1, v4, p1, p2, v3}, Lcom/google/common/collect/TreeMultiset$c;->a(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    .line 263
    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/TreeMultiset$d;->checkAndSet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    aget p1, v3, v2

    return p1
.end method

.method public final b()I
    .locals 2

    .line 223
    sget-object v0, Lcom/google/common/collect/TreeMultiset$b;->b:Lcom/google/common/collect/TreeMultiset$b$b;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeMultiset;->h(Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public final c()Ljava/util/Iterator;
    .locals 2

    .line 434
    new-instance v0, Lcom/google/common/collect/h6;

    invoke-direct {v0, p0}, Lcom/google/common/collect/h6;-><init>(Lcom/google/common/collect/TreeMultiset;)V

    .line 951
    new-instance v1, Lcom/google/common/collect/l4;

    .line 951
    invoke-direct {v1, v0}, Lcom/google/common/collect/c6;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method

.method public clear()V
    .locals 5

    .line 139
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/b2;

    iget-boolean v1, v0, Lcom/google/common/collect/b2;->b:Z

    if-nez v1, :cond_1

    .line 143
    iget-boolean v0, v0, Lcom/google/common/collect/b2;->e:Z

    if-nez v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->g:Lcom/google/common/collect/TreeMultiset$c;

    iget-object v1, v0, Lcom/google/common/collect/TreeMultiset$c;->i:Lcom/google/common/collect/TreeMultiset$c;

    :goto_0
    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    .line 557
    iget-object v3, v1, Lcom/google/common/collect/TreeMultiset$c;->i:Lcom/google/common/collect/TreeMultiset$c;

    const/4 v4, 0x0

    .line 557
    iput v4, v1, Lcom/google/common/collect/TreeMultiset$c;->b:I

    .line 557
    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    .line 557
    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    .line 557
    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$c;->h:Lcom/google/common/collect/TreeMultiset$c;

    .line 557
    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$c;->i:Lcom/google/common/collect/TreeMultiset$c;

    move-object v1, v3

    goto :goto_0

    .line 557
    :cond_0
    iput-object v0, v0, Lcom/google/common/collect/TreeMultiset$c;->i:Lcom/google/common/collect/TreeMultiset$c;

    .line 557
    iput-object v0, v0, Lcom/google/common/collect/TreeMultiset$c;->h:Lcom/google/common/collect/TreeMultiset$c;

    .line 553
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$d;

    iput-object v2, v0, Lcom/google/common/collect/TreeMultiset$d;->a:Ljava/lang/Object;

    return-void

    .line 434
    :cond_1
    new-instance v0, Lcom/google/common/collect/h6;

    invoke-direct {v0, p0}, Lcom/google/common/collect/h6;-><init>(Lcom/google/common/collect/TreeMultiset;)V

    .line 357
    invoke-static {v0}, Lcom/google/common/collect/Iterators;->b(Ljava/util/Iterator;)V

    return-void
.end method

.method public bridge synthetic comparator()Ljava/util/Comparator;
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/google/common/collect/s;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 57
    invoke-super {p0, p1}, Lcom/google/common/collect/m;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public count(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$d;

    invoke-virtual {v1}, Lcom/google/common/collect/TreeMultiset$d;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/TreeMultiset$c;

    .line 236
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/b2;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/b2;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/common/collect/TreeMultiset$c;->count(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public final d()Ljava/util/Iterator;
    .locals 1

    .line 434
    new-instance v0, Lcom/google/common/collect/h6;

    invoke-direct {v0, p0}, Lcom/google/common/collect/h6;-><init>(Lcom/google/common/collect/TreeMultiset;)V

    return-object v0
.end method

.method public bridge synthetic descendingMultiset()Lcom/google/common/collect/SortedMultiset;
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/google/common/collect/s;->descendingMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/Iterator;
    .locals 1

    .line 476
    new-instance v0, Lcom/google/common/collect/i6;

    invoke-direct {v0, p0}, Lcom/google/common/collect/i6;-><init>(Lcom/google/common/collect/TreeMultiset;)V

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/NavigableSet;
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/google/common/collect/s;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/google/common/collect/m;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$c;)J
    .locals 4

    if-nez p2, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/b2;

    iget-object v2, v1, Lcom/google/common/collect/b2;->f:Ljava/lang/Object;

    .line 197
    iget-object v3, p2, Lcom/google/common/collect/TreeMultiset$c;->a:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    .line 557
    iget-object p2, p2, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    .line 199
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->f(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$c;)J

    move-result-wide p1

    return-wide p1

    :cond_1
    if-nez v0, :cond_4

    .line 201
    sget-object v0, Lcom/google/common/collect/TreeMultiset$a;->a:[I

    iget-object v1, v1, Lcom/google/common/collect/b2;->g:Lcom/google/common/collect/BoundType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 557
    iget-object p2, p2, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    .line 205
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$b;->b(Lcom/google/common/collect/TreeMultiset$c;)J

    move-result-wide p1

    return-wide p1

    .line 207
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 203
    :cond_3
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$b;->a(Lcom/google/common/collect/TreeMultiset$c;)I

    move-result v0

    int-to-long v0, v0

    .line 557
    iget-object p2, p2, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    .line 203
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$b;->b(Lcom/google/common/collect/TreeMultiset$c;)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0

    .line 557
    :cond_4
    iget-object v0, p2, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    .line 210
    invoke-virtual {p1, v0}, Lcom/google/common/collect/TreeMultiset$b;->b(Lcom/google/common/collect/TreeMultiset$c;)J

    move-result-wide v0

    .line 211
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$b;->a(Lcom/google/common/collect/TreeMultiset$c;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 557
    iget-object p2, p2, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    .line 212
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->f(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$c;)J

    move-result-wide p1

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public bridge synthetic firstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/google/common/collect/s;->firstEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$c;)J
    .locals 4

    if-nez p2, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/b2;

    iget-object v2, v1, Lcom/google/common/collect/b2;->c:Ljava/lang/Object;

    .line 174
    iget-object v3, p2, Lcom/google/common/collect/TreeMultiset$c;->a:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    .line 557
    iget-object p2, p2, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->g(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$c;)J

    move-result-wide p1

    return-wide p1

    :cond_1
    if-nez v0, :cond_4

    .line 178
    sget-object v0, Lcom/google/common/collect/TreeMultiset$a;->a:[I

    iget-object v1, v1, Lcom/google/common/collect/b2;->d:Lcom/google/common/collect/BoundType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 557
    iget-object p2, p2, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    .line 182
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$b;->b(Lcom/google/common/collect/TreeMultiset$c;)J

    move-result-wide p1

    return-wide p1

    .line 184
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 180
    :cond_3
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$b;->a(Lcom/google/common/collect/TreeMultiset$c;)I

    move-result v0

    int-to-long v0, v0

    .line 557
    iget-object p2, p2, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    .line 180
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$b;->b(Lcom/google/common/collect/TreeMultiset$c;)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0

    .line 557
    :cond_4
    iget-object v0, p2, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    .line 187
    invoke-virtual {p1, v0}, Lcom/google/common/collect/TreeMultiset$b;->b(Lcom/google/common/collect/TreeMultiset$c;)J

    move-result-wide v0

    .line 188
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$b;->a(Lcom/google/common/collect/TreeMultiset$c;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 557
    iget-object p2, p2, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->g(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$c;)J

    move-result-wide p1

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final h(Lcom/google/common/collect/TreeMultiset$b;)J
    .locals 6

    .line 159
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$d;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$d;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$c;

    .line 160
    invoke-virtual {p1, v0}, Lcom/google/common/collect/TreeMultiset$b;->b(Lcom/google/common/collect/TreeMultiset$c;)J

    move-result-wide v1

    .line 139
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/b2;

    iget-boolean v4, v3, Lcom/google/common/collect/b2;->b:Z

    if-eqz v4, :cond_0

    .line 162
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->g(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$c;)J

    move-result-wide v4

    sub-long/2addr v1, v4

    .line 164
    :cond_0
    iget-boolean v3, v3, Lcom/google/common/collect/b2;->e:Z

    if-eqz v3, :cond_1

    .line 165
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->f(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$c;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    :cond_1
    return-wide v1
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 523
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    .line 525
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    .line 77
    new-instance v1, Lcom/google/common/collect/b2;

    sget-object v5, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/common/collect/b2;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    .line 525
    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/b2;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/b2;->b(Lcom/google/common/collect/b2;)Lcom/google/common/collect/b2;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/TreeMultiset;->g:Lcom/google/common/collect/TreeMultiset$c;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$d;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/common/collect/TreeMultiset;-><init>(Lcom/google/common/collect/TreeMultiset$d;Lcom/google/common/collect/b2;Lcom/google/common/collect/TreeMultiset$c;)V

    return-object v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 57
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

    .line 518
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->c(Lcom/google/common/collect/Multiset;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/google/common/collect/s;->lastEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pollFirstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/google/common/collect/s;->pollFirstEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pollLastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/google/common/collect/s;->pollLastEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 270
    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lcom/google/common/collect/g0;->b(ILjava/lang/String;)V

    if-nez p2, :cond_0

    .line 272
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$d;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$d;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/TreeMultiset$c;

    const/4 v2, 0x1

    .line 275
    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 280
    :try_start_0
    iget-object v4, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/b2;

    invoke-virtual {v4, p1}, Lcom/google/common/collect/b2;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-virtual {v1, v4, p1, p2, v2}, Lcom/google/common/collect/TreeMultiset$c;->k(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/TreeMultiset$d;->checkAndSet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 288
    aget p1, v2, v3

    return p1

    :catch_0
    :cond_2
    :goto_0
    return v3
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 294
    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/g0;->b(ILjava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/b2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b2;->a(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 296
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    return v2

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$d;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$d;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/TreeMultiset$c;

    if-nez v3, :cond_3

    if-lez p2, :cond_2

    .line 303
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->add(Ljava/lang/Object;I)I

    :cond_2
    return v2

    .line 307
    :cond_3
    new-array v1, v1, [I

    .line 308
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-virtual {v3, v4, p1, p2, v1}, Lcom/google/common/collect/TreeMultiset$c;->q(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    .line 309
    invoke-virtual {v0, v3, p1}, Lcom/google/common/collect/TreeMultiset$d;->checkAndSet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 310
    aget p1, v1, v2

    return p1
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .line 316
    const-string v0, "newCount"

    invoke-static {p3, v0}, Lcom/google/common/collect/g0;->b(ILjava/lang/String;)V

    .line 317
    const-string v0, "oldCount"

    invoke-static {p2, v0}, Lcom/google/common/collect/g0;->b(ILjava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/b2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b2;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 320
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$d;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$d;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/common/collect/TreeMultiset$c;

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-nez v2, :cond_0

    if-nez p2, :cond_2

    if-lez p3, :cond_1

    .line 324
    invoke-virtual {p0, p1, p3}, Lcom/google/common/collect/TreeMultiset;->add(Ljava/lang/Object;I)I

    return v8

    .line 331
    :cond_0
    new-array v7, v8, [I

    .line 332
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/google/common/collect/TreeMultiset$c;->p(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    .line 333
    invoke-virtual {v0, v2, p1}, Lcom/google/common/collect/TreeMultiset$d;->checkAndSet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 334
    aget p1, v7, v1

    if-ne p1, v5, :cond_2

    :cond_1
    return v8

    :cond_2
    return v1
.end method

.method public size()I
    .locals 2

    .line 218
    sget-object v0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$b$a;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeMultiset;->h(Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/s;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 531
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    .line 533
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    .line 68
    new-instance v1, Lcom/google/common/collect/b2;

    sget-object v8, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/common/collect/b2;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    .line 533
    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/b2;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/b2;->b(Lcom/google/common/collect/b2;)Lcom/google/common/collect/b2;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/TreeMultiset;->g:Lcom/google/common/collect/TreeMultiset$c;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$d;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/common/collect/TreeMultiset;-><init>(Lcom/google/common/collect/TreeMultiset$d;Lcom/google/common/collect/b2;Lcom/google/common/collect/TreeMultiset$c;)V

    return-object v0
.end method
