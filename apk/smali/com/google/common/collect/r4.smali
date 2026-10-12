.class Lcom/google/common/collect/r4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/r4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public transient a:[Ljava/lang/Object;

.field public transient b:[I

.field public transient c:I

.field public transient d:I

.field public transient e:[I

.field public transient f:[J

.field public transient g:F

.field public transient h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 113
    invoke-virtual {p0, v0}, Lcom/google/common/collect/r4;->f(I)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-virtual {p0, p1}, Lcom/google/common/collect/r4;->f(I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/r4;)V
    .locals 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iget v0, p1, Lcom/google/common/collect/r4;->c:I

    .line 117
    invoke-virtual {p0, v0}, Lcom/google/common/collect/r4;->f(I)V

    .line 118
    invoke-virtual {p1}, Lcom/google/common/collect/r4;->b()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 119
    invoke-virtual {p1, v0}, Lcom/google/common/collect/r4;->c(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/google/common/collect/r4;->d(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/r4;->put(Ljava/lang/Object;I)I

    .line 118
    invoke-virtual {p1, v0}, Lcom/google/common/collect/r4;->i(I)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static create()Lcom/google/common/collect/r4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/r4<",
            "TK;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/google/common/collect/r4;

    invoke-direct {v0}, Lcom/google/common/collect/r4;-><init>()V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/r4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/r4<",
            "TK;>;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/google/common/collect/r4;

    const/4 v1, 0x0

    .line 129
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/r4;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/google/common/collect/r4;->f:[J

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 265
    invoke-virtual {p0, p1}, Lcom/google/common/collect/r4;->m(I)V

    .line 267
    :cond_0
    iget v0, p0, Lcom/google/common/collect/r4;->h:I

    if-lt p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 268
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    shl-int/lit8 p1, p1, 0x1

    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 269
    invoke-virtual {p0, p1}, Lcom/google/common/collect/r4;->n(I)V

    :cond_1
    return-void
.end method

.method public b()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/google/common/collect/r4;->c:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 1

    .line 184
    iget v0, p0, Lcom/google/common/collect/r4;->c:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 185
    iget-object v0, p0, Lcom/google/common/collect/r4;->a:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public clear()V
    .locals 4

    .line 487
    iget v0, p0, Lcom/google/common/collect/r4;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/r4;->d:I

    .line 488
    iget-object v0, p0, Lcom/google/common/collect/r4;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/r4;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 489
    iget-object v0, p0, Lcom/google/common/collect/r4;->b:[I

    iget v1, p0, Lcom/google/common/collect/r4;->c:I

    invoke-static {v0, v3, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 490
    iget-object v0, p0, Lcom/google/common/collect/r4;->e:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 491
    iget-object v0, p0, Lcom/google/common/collect/r4;->f:[J

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 492
    iput v3, p0, Lcom/google/common/collect/r4;->c:I

    return-void
.end method

.method public final d(I)I
    .locals 1

    .line 189
    iget v0, p0, Lcom/google/common/collect/r4;->c:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 190
    iget-object v0, p0, Lcom/google/common/collect/r4;->b:[I

    aget p1, v0, p1

    return p1
.end method

.method public final e(Ljava/lang/Object;)I
    .locals 7

    .line 381
    invoke-static {p1}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v0

    .line 382
    iget-object v1, p0, Lcom/google/common/collect/r4;->e:[I

    .line 163
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v0

    .line 382
    aget v1, v1, v2

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 384
    iget-object v2, p0, Lcom/google/common/collect/r4;->f:[J

    aget-wide v3, v2, v1

    const/16 v2, 0x20

    ushr-long v5, v3, v2

    long-to-int v2, v5

    if-ne v2, v0, :cond_0

    .line 385
    iget-object v2, p0, Lcom/google/common/collect/r4;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    long-to-int v1, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public f(I)V
    .locals 5

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 137
    :goto_0
    const-string v2, "Initial capacity must be non-negative"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 138
    const-string v1, "Illegal load factor"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/high16 v1, 0x3f800000    # 1.0f

    float-to-double v2, v1

    .line 139
    invoke-static {p1, v2, v3}, Lcom/google/common/collect/e2;->a(ID)I

    move-result v2

    .line 151
    new-array v3, v2, [I

    const/4 v4, -0x1

    .line 152
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 140
    iput-object v3, p0, Lcom/google/common/collect/r4;->e:[I

    .line 141
    iput v1, p0, Lcom/google/common/collect/r4;->g:F

    .line 143
    new-array v3, p1, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/google/common/collect/r4;->a:[Ljava/lang/Object;

    .line 144
    new-array v3, p1, [I

    iput-object v3, p0, Lcom/google/common/collect/r4;->b:[I

    .line 157
    new-array p1, p1, [J

    const-wide/16 v3, -0x1

    .line 158
    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 146
    iput-object p1, p0, Lcom/google/common/collect/r4;->f:[J

    int-to-float p1, v2

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 147
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/r4;->h:I

    return-void
.end method

.method public g(IIILjava/lang/Object;)V
    .locals 5

    .line 320
    iget-object v0, p0, Lcom/google/common/collect/r4;->f:[J

    int-to-long v1, p3

    const/16 p3, 0x20

    shl-long/2addr v1, p3

    const-wide v3, 0xffffffffL

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 321
    iget-object p3, p0, Lcom/google/common/collect/r4;->a:[Ljava/lang/Object;

    aput-object p4, p3, p1

    .line 322
    iget-object p3, p0, Lcom/google/common/collect/r4;->b:[I

    aput p2, p3, p1

    return-void
.end method

.method public get(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 398
    invoke-virtual {p0, p1}, Lcom/google/common/collect/r4;->e(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/r4;->b:[I

    aget p1, v0, p1

    return p1
.end method

.method public h(I)V
    .locals 10

    .line 179
    iget v0, p0, Lcom/google/common/collect/r4;->c:I

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ge p1, v0, :cond_2

    .line 451
    iget-object v5, p0, Lcom/google/common/collect/r4;->a:[Ljava/lang/Object;

    aget-object v6, v5, v0

    aput-object v6, v5, p1

    .line 452
    iget-object v6, p0, Lcom/google/common/collect/r4;->b:[I

    aget v7, v6, v0

    aput v7, v6, p1

    .line 453
    aput-object v4, v5, v0

    .line 454
    aput v3, v6, v0

    .line 457
    iget-object v3, p0, Lcom/google/common/collect/r4;->f:[J

    aget-wide v4, v3, v0

    .line 458
    aput-wide v4, v3, p1

    .line 459
    aput-wide v1, v3, v0

    const/16 v1, 0x20

    ushr-long v1, v4, v1

    long-to-int v2, v1

    .line 163
    iget-object v1, p0, Lcom/google/common/collect/r4;->e:[I

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    .line 464
    aget v3, v1, v2

    if-ne v3, v0, :cond_0

    .line 467
    aput p1, v1, v2

    return-void

    .line 474
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/r4;->f:[J

    aget-wide v4, v1, v3

    long-to-int v2, v4

    if-ne v2, v0, :cond_1

    const-wide v6, -0x100000000L

    and-long/2addr v4, v6

    const-wide v6, 0xffffffffL

    int-to-long v8, p1

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    .line 477
    aput-wide v4, v1, v3

    return-void

    :cond_1
    move v3, v2

    goto :goto_0

    .line 480
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/r4;->a:[Ljava/lang/Object;

    aput-object v4, v0, p1

    .line 481
    iget-object v0, p0, Lcom/google/common/collect/r4;->b:[I

    aput v3, v0, p1

    .line 482
    iget-object v0, p0, Lcom/google/common/collect/r4;->f:[J

    aput-wide v1, v0, p1

    return-void
.end method

.method public i(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 171
    iget v0, p0, Lcom/google/common/collect/r4;->c:I

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public j(II)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public final k(Ljava/lang/Object;I)I
    .locals 9

    .line 163
    iget-object v0, p0, Lcom/google/common/collect/r4;->e:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    .line 409
    aget v0, v0, v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, -0x1

    .line 415
    :goto_0
    iget-object v4, p0, Lcom/google/common/collect/r4;->f:[J

    aget-wide v5, v4, v0

    const/16 v4, 0x20

    ushr-long v4, v5, v4

    long-to-int v5, v4

    if-ne v5, p2, :cond_2

    .line 416
    iget-object v4, p0, Lcom/google/common/collect/r4;->a:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-static {p1, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 417
    iget-object p1, p0, Lcom/google/common/collect/r4;->b:[I

    aget p1, p1, v0

    if-ne v3, v2, :cond_1

    .line 421
    iget-object p2, p0, Lcom/google/common/collect/r4;->e:[I

    iget-object v2, p0, Lcom/google/common/collect/r4;->f:[J

    aget-wide v3, v2, v0

    long-to-int v2, v3

    aput v2, p2, v1

    goto :goto_1

    .line 424
    :cond_1
    iget-object p2, p0, Lcom/google/common/collect/r4;->f:[J

    aget-wide v1, p2, v3

    aget-wide v4, p2, v0

    long-to-int v5, v4

    const-wide v6, -0x100000000L

    and-long/2addr v1, v6

    const-wide v6, 0xffffffffL

    int-to-long v4, v5

    and-long/2addr v4, v6

    or-long/2addr v1, v4

    aput-wide v1, p2, v3

    .line 427
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/common/collect/r4;->h(I)V

    .line 428
    iget p2, p0, Lcom/google/common/collect/r4;->c:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/common/collect/r4;->c:I

    .line 429
    iget p2, p0, Lcom/google/common/collect/r4;->d:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/collect/r4;->d:I

    return p1

    .line 434
    :cond_2
    iget-object v3, p0, Lcom/google/common/collect/r4;->f:[J

    aget-wide v4, v3, v0

    long-to-int v3, v4

    if-ne v3, v2, :cond_3

    :goto_2
    const/4 p1, 0x0

    return p1

    :cond_3
    move v8, v3

    move v3, v0

    move v0, v8

    goto :goto_0
.end method

.method public final l(I)I
    .locals 4

    .line 441
    iget-object v0, p0, Lcom/google/common/collect/r4;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/google/common/collect/r4;->f:[J

    aget-wide v2, v1, p1

    const/16 p1, 0x20

    ushr-long v1, v2, p1

    long-to-int p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/r4;->k(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public m(I)V
    .locals 4

    .line 344
    iget-object v0, p0, Lcom/google/common/collect/r4;->a:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/r4;->a:[Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lcom/google/common/collect/r4;->b:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/r4;->b:[I

    .line 346
    iget-object v0, p0, Lcom/google/common/collect/r4;->f:[J

    .line 347
    array-length v1, v0

    .line 348
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    if-le p1, v1, :cond_0

    const-wide/16 v2, -0x1

    .line 350
    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 352
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/r4;->f:[J

    return-void
.end method

.method public final n(I)V
    .locals 10

    .line 356
    iget-object v0, p0, Lcom/google/common/collect/r4;->e:[I

    .line 357
    array-length v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    if-lt v0, v1, :cond_0

    const p1, 0x7fffffff

    .line 359
    iput p1, p0, Lcom/google/common/collect/r4;->h:I

    return-void

    :cond_0
    int-to-float v0, p1

    .line 362
    iget v1, p0, Lcom/google/common/collect/r4;->g:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 151
    new-array v1, p1, [I

    const/4 v2, -0x1

    .line 152
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 364
    iget-object v2, p0, Lcom/google/common/collect/r4;->f:[J

    add-int/lit8 p1, p1, -0x1

    const/4 v3, 0x0

    .line 367
    :goto_0
    iget v4, p0, Lcom/google/common/collect/r4;->c:I

    if-ge v3, v4, :cond_1

    .line 368
    aget-wide v4, v2, v3

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    long-to-int v5, v4

    and-int v4, v5, p1

    .line 371
    aget v7, v1, v4

    .line 372
    aput v3, v1, v4

    int-to-long v4, v5

    shl-long/2addr v4, v6

    const-wide v8, 0xffffffffL

    int-to-long v6, v7

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    .line 373
    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 376
    :cond_1
    iput v0, p0, Lcom/google/common/collect/r4;->h:I

    .line 377
    iput-object v1, p0, Lcom/google/common/collect/r4;->e:[I

    return-void
.end method

.method public put(Ljava/lang/Object;I)I
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .line 275
    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/g0;->d(ILjava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/google/common/collect/r4;->f:[J

    .line 277
    iget-object v1, p0, Lcom/google/common/collect/r4;->a:[Ljava/lang/Object;

    .line 278
    iget-object v2, p0, Lcom/google/common/collect/r4;->b:[I

    .line 280
    invoke-static {p1}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v3

    .line 163
    iget-object v4, p0, Lcom/google/common/collect/r4;->e:[I

    array-length v5, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    and-int/2addr v5, v3

    .line 282
    iget v7, p0, Lcom/google/common/collect/r4;->c:I

    .line 283
    aget v8, v4, v5

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 285
    aput v7, v4, v5

    goto :goto_1

    .line 291
    :cond_0
    :goto_0
    aget-wide v4, v0, v8

    const/16 v10, 0x20

    ushr-long v10, v4, v10

    long-to-int v11, v10

    if-ne v11, v3, :cond_1

    .line 292
    aget-object v10, v1, v8

    invoke-static {p1, v10}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 293
    aget p1, v2, v8

    .line 295
    aput p2, v2, v8

    return p1

    :cond_1
    long-to-int v10, v4

    if-ne v10, v9, :cond_6

    const-wide v1, -0x100000000L

    and-long/2addr v1, v4

    const-wide v4, 0xffffffffL

    int-to-long v9, v7

    and-long/2addr v4, v9

    or-long/2addr v1, v4

    .line 300
    aput-wide v1, v0, v8

    :goto_1
    const v0, 0x7fffffff

    if-eq v7, v0, :cond_5

    add-int/lit8 v1, v7, 0x1

    .line 327
    iget-object v2, p0, Lcom/google/common/collect/r4;->f:[J

    array-length v2, v2

    if-le v1, v2, :cond_3

    ushr-int/lit8 v4, v2, 0x1

    .line 329
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v4, v2

    if-gez v4, :cond_2

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    if-eq v0, v2, :cond_3

    .line 334
    invoke-virtual {p0, v0}, Lcom/google/common/collect/r4;->m(I)V

    .line 307
    :cond_3
    invoke-virtual {p0, v7, p2, v3, p1}, Lcom/google/common/collect/r4;->g(IIILjava/lang/Object;)V

    .line 308
    iput v1, p0, Lcom/google/common/collect/r4;->c:I

    .line 309
    iget p1, p0, Lcom/google/common/collect/r4;->h:I

    if-lt v7, p1, :cond_4

    .line 310
    iget-object p1, p0, Lcom/google/common/collect/r4;->e:[I

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/r4;->n(I)V

    .line 312
    :cond_4
    iget p1, p0, Lcom/google/common/collect/r4;->d:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/google/common/collect/r4;->d:I

    const/4 p1, 0x0

    return p1

    .line 303
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot contain more than Integer.MAX_VALUE elements!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    move v8, v10

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 404
    invoke-static {p1}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/r4;->k(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method
