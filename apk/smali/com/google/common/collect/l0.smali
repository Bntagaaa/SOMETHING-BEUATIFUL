.class Lcom/google/common/collect/l0;
.super Ljava/util/AbstractSet;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public transient a:Ljava/lang/Object;

.field public transient b:[I

.field public transient c:[Ljava/lang/Object;

.field public transient d:I

.field public transient e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 164
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    const/4 v0, 0x3

    .line 165
    invoke-virtual {p0, v0}, Lcom/google/common/collect/l0;->e(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 174
    invoke-virtual {p0, p1}, Lcom/google/common/collect/l0;->e(I)V

    return-void
.end method

.method public static create()Lcom/google/common/collect/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/l0<",
            "TE;>;"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/google/common/collect/l0;

    invoke-direct {v0}, Lcom/google/common/collect/l0;-><init>()V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/l0<",
            "TE;>;"
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/google/common/collect/l0;

    invoke-direct {v0, p0}, Lcom/google/common/collect/l0;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public a(II)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/google/common/collect/l0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/google/common/collect/l0;->b()I

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/l0;->b:[I

    .line 230
    iget-object v1, p0, Lcom/google/common/collect/l0;->c:[Ljava/lang/Object;

    .line 232
    iget v2, p0, Lcom/google/common/collect/l0;->e:I

    add-int/lit8 v3, v2, 0x1

    .line 234
    invoke-static {p1}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v4

    .line 216
    iget v5, p0, Lcom/google/common/collect/l0;->d:I

    and-int/lit8 v5, v5, 0x1f

    const/4 v6, 0x1

    shl-int v5, v6, v5

    sub-int/2addr v5, v6

    and-int v7, v4, v5

    .line 237
    iget-object v8, p0, Lcom/google/common/collect/l0;->a:Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/common/collect/m0;->e(ILjava/lang/Object;)I

    move-result v8

    if-nez v8, :cond_2

    if-le v3, v5, :cond_1

    .line 241
    invoke-static {v5}, Lcom/google/common/collect/m0;->c(I)I

    move-result v0

    invoke-virtual {p0, v5, v0, v4, v2}, Lcom/google/common/collect/l0;->j(IIII)I

    move-result v5

    goto :goto_1

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/l0;->a:Ljava/lang/Object;

    invoke-static {v0, v7, v3}, Lcom/google/common/collect/m0;->f(Ljava/lang/Object;II)V

    goto :goto_1

    :cond_2
    not-int v7, v5

    and-int v9, v4, v7

    :goto_0
    sub-int/2addr v8, v6

    .line 251
    aget v10, v0, v8

    and-int v11, v10, v7

    if-ne v11, v9, :cond_3

    .line 252
    aget-object v11, v1, v8

    .line 253
    invoke-static {p1, v11}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    and-int v11, v10, v5

    if-nez v11, :cond_6

    if-le v3, v5, :cond_4

    .line 260
    invoke-static {v5}, Lcom/google/common/collect/m0;->c(I)I

    move-result v0

    invoke-virtual {p0, v5, v0, v4, v2}, Lcom/google/common/collect/l0;->j(IIII)I

    move-result v5

    goto :goto_1

    .line 262
    :cond_4
    invoke-static {v10, v3, v5}, Lcom/google/common/collect/m0;->b(III)I

    move-result v1

    aput v1, v0, v8

    .line 282
    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/l0;->b:[I

    array-length v0, v0

    if-le v3, v0, :cond_5

    ushr-int/lit8 v1, v0, 0x1

    .line 286
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    or-int/2addr v1, v6

    const v7, 0x3fffffff    # 1.9999999f

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eq v1, v0, :cond_5

    .line 288
    invoke-virtual {p0, v1}, Lcom/google/common/collect/l0;->i(I)V

    .line 266
    :cond_5
    invoke-virtual {p0, v2, v4, v5, p1}, Lcom/google/common/collect/l0;->f(IIILjava/lang/Object;)V

    .line 267
    iput v3, p0, Lcom/google/common/collect/l0;->e:I

    .line 220
    iget p1, p0, Lcom/google/common/collect/l0;->d:I

    add-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/common/collect/l0;->d:I

    return v6

    :cond_6
    move v8, v11

    goto :goto_0
.end method

.method public b()I
    .locals 4

    .line 194
    invoke-virtual {p0}, Lcom/google/common/collect/l0;->h()Z

    move-result v0

    const-string v1, "Arrays already allocated"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 196
    iget v0, p0, Lcom/google/common/collect/l0;->d:I

    add-int/lit8 v1, v0, 0x1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 70
    invoke-static {v1, v2, v3}, Lcom/google/common/collect/e2;->a(ID)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 198
    invoke-static {v1}, Lcom/google/common/collect/m0;->a(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/l0;->a:Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x20

    .line 210
    iget v2, p0, Lcom/google/common/collect/l0;->d:I

    const/16 v3, 0x1f

    .line 211
    invoke-static {v2, v1, v3}, Lcom/google/common/collect/m0;->b(III)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/l0;->d:I

    .line 201
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/common/collect/l0;->b:[I

    .line 202
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/l0;->c:[Ljava/lang/Object;

    return v0
.end method

.method public c()I
    .locals 1

    .line 425
    invoke-virtual {p0}, Lcom/google/common/collect/l0;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 4

    .line 539
    invoke-virtual {p0}, Lcom/google/common/collect/l0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 220
    :cond_0
    iget v0, p0, Lcom/google/common/collect/l0;->d:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/collect/l0;->d:I

    .line 543
    iget-object v0, p0, Lcom/google/common/collect/l0;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/l0;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 544
    iget-object v0, p0, Lcom/google/common/collect/l0;->a:Ljava/lang/Object;

    .line 90
    instance-of v1, v0, [B

    if-eqz v1, :cond_1

    .line 91
    check-cast v0, [B

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_0

    .line 92
    :cond_1
    instance-of v1, v0, [S

    if-eqz v1, :cond_2

    .line 93
    check-cast v0, [S

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([SS)V

    goto :goto_0

    .line 95
    :cond_2
    check-cast v0, [I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 545
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/l0;->b:[I

    iget v1, p0, Lcom/google/common/collect/l0;->e:I

    invoke-static {v0, v3, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 546
    iput v3, p0, Lcom/google/common/collect/l0;->e:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 341
    invoke-virtual {p0}, Lcom/google/common/collect/l0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v0

    .line 216
    iget v1, p0, Lcom/google/common/collect/l0;->d:I

    and-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x1

    shl-int v1, v2, v1

    sub-int/2addr v1, v2

    .line 346
    iget-object v3, p0, Lcom/google/common/collect/l0;->a:Ljava/lang/Object;

    and-int v4, v0, v1

    invoke-static {v4, v3}, Lcom/google/common/collect/m0;->e(ILjava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    not-int v4, v1

    and-int/2addr v0, v4

    :cond_2
    sub-int/2addr v3, v2

    .line 353
    iget-object v5, p0, Lcom/google/common/collect/l0;->b:[I

    aget v5, v5, v3

    and-int v6, v5, v4

    if-ne v6, v0, :cond_3

    .line 354
    iget-object v6, p0, Lcom/google/common/collect/l0;->c:[Ljava/lang/Object;

    aget-object v3, v6, v3

    .line 355
    invoke-static {p1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    and-int v3, v5, v1

    if-nez v3, :cond_2

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 429
    iget v0, p0, Lcom/google/common/collect/l0;->e:I

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public e(I)V
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 179
    :goto_0
    const-string v2, "Expected size must be >= 0"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const v1, 0x3fffffff    # 1.9999999f

    .line 182
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/l0;->d:I

    return-void
.end method

.method public f(IIILjava/lang/Object;)V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/google/common/collect/l0;->b:[I

    const/4 v1, 0x0

    invoke-static {p2, v1, p3}, Lcom/google/common/collect/m0;->b(III)I

    move-result p2

    aput p2, v0, p1

    .line 277
    iget-object p2, p0, Lcom/google/common/collect/l0;->c:[Ljava/lang/Object;

    aput-object p4, p2, p1

    return-void
.end method

.method public g(II)V
    .locals 6

    .line 388
    invoke-virtual {p0}, Lcom/google/common/collect/l0;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ge p1, v1, :cond_2

    .line 391
    iget-object v4, p0, Lcom/google/common/collect/l0;->c:[Ljava/lang/Object;

    aget-object v5, v4, v1

    .line 392
    aput-object v5, v4, p1

    .line 393
    aput-object v3, v4, v1

    .line 396
    iget-object v3, p0, Lcom/google/common/collect/l0;->b:[I

    aget v4, v3, v1

    aput v4, v3, p1

    .line 397
    aput v2, v3, v1

    .line 400
    invoke-static {v5}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v1

    and-int/2addr v1, p2

    .line 401
    iget-object v2, p0, Lcom/google/common/collect/l0;->a:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/m0;->e(ILjava/lang/Object;)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 405
    iget-object p2, p0, Lcom/google/common/collect/l0;->a:Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, v1, p1}, Lcom/google/common/collect/m0;->f(Ljava/lang/Object;II)V

    return-void

    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 412
    iget-object v1, p0, Lcom/google/common/collect/l0;->b:[I

    aget v3, v1, v2

    and-int v4, v3, p2

    if-ne v4, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 416
    invoke-static {v3, p1, p2}, Lcom/google/common/collect/m0;->b(III)I

    move-result p1

    aput p1, v1, v2

    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    .line 419
    :cond_2
    iget-object p2, p0, Lcom/google/common/collect/l0;->c:[Ljava/lang/Object;

    aput-object v3, p2, p1

    .line 420
    iget-object p2, p0, Lcom/google/common/collect/l0;->b:[I

    aput v2, p2, p1

    return-void
.end method

.method public final h()Z
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/google/common/collect/l0;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i(I)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/google/common/collect/l0;->b:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/l0;->b:[I

    .line 299
    iget-object v0, p0, Lcom/google/common/collect/l0;->c:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/l0;->c:[Ljava/lang/Object;

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 495
    iget v0, p0, Lcom/google/common/collect/l0;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

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

    .line 443
    new-instance v0, Lcom/google/common/collect/l0$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/l0$a;-><init>(Lcom/google/common/collect/l0;)V

    return-object v0
.end method

.method public final j(IIII)I
    .locals 8

    .line 304
    invoke-static {p2}, Lcom/google/common/collect/m0;->a(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p2, p2, -0x1

    if-eqz p4, :cond_0

    and-int/2addr p3, p2

    add-int/lit8 p4, p4, 0x1

    .line 309
    invoke-static {v0, p3, p4}, Lcom/google/common/collect/m0;->f(Ljava/lang/Object;II)V

    .line 312
    :cond_0
    iget-object p3, p0, Lcom/google/common/collect/l0;->a:Ljava/lang/Object;

    .line 313
    iget-object p4, p0, Lcom/google/common/collect/l0;->b:[I

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_2

    .line 317
    invoke-static {v1, p3}, Lcom/google/common/collect/m0;->e(ILjava/lang/Object;)I

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    .line 320
    aget v4, p4, v3

    not-int v5, p1

    and-int/2addr v5, v4

    or-int/2addr v5, v1

    and-int v6, v5, p2

    .line 326
    invoke-static {v6, v0}, Lcom/google/common/collect/m0;->e(ILjava/lang/Object;)I

    move-result v7

    .line 327
    invoke-static {v0, v6, v2}, Lcom/google/common/collect/m0;->f(Ljava/lang/Object;II)V

    .line 328
    invoke-static {v5, v7, p2}, Lcom/google/common/collect/m0;->b(III)I

    move-result v2

    aput v2, p4, v3

    and-int v2, v4, p1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    :cond_2
    iput-object v0, p0, Lcom/google/common/collect/l0;->a:Ljava/lang/Object;

    .line 209
    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    .line 210
    iget p3, p0, Lcom/google/common/collect/l0;->d:I

    const/16 p4, 0x1f

    .line 211
    invoke-static {p3, p1, p4}, Lcom/google/common/collect/m0;->b(III)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/l0;->d:I

    return p2
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 366
    invoke-virtual {p0}, Lcom/google/common/collect/l0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    iget v0, p0, Lcom/google/common/collect/l0;->d:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    add-int/lit8 v4, v0, -0x1

    .line 370
    iget-object v5, p0, Lcom/google/common/collect/l0;->a:Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/common/collect/l0;->b:[I

    iget-object v7, p0, Lcom/google/common/collect/l0;->c:[Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    .line 371
    invoke-static/range {v2 .. v8}, Lcom/google/common/collect/m0;->d(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :goto_0
    const/4 p1, 0x0

    return p1

    .line 377
    :cond_1
    invoke-virtual {p0, p1, v4}, Lcom/google/common/collect/l0;->g(II)V

    .line 378
    iget p1, p0, Lcom/google/common/collect/l0;->e:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/common/collect/l0;->e:I

    .line 220
    iget p1, p0, Lcom/google/common/collect/l0;->d:I

    add-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/common/collect/l0;->d:I

    return v1
.end method

.method public size()I
    .locals 1

    .line 490
    iget v0, p0, Lcom/google/common/collect/l0;->e:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 500
    invoke-virtual {p0}, Lcom/google/common/collect/l0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 501
    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/l0;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/l0;->e:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 509
    invoke-virtual {p0}, Lcom/google/common/collect/l0;->h()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 510
    array-length v0, p1

    if-lez v0, :cond_0

    .line 511
    aput-object v1, p1, v2

    :cond_0
    return-object p1

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/l0;->c:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/l0;->e:I

    .line 151
    array-length v4, v0

    invoke-static {v2, v3, v4}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 152
    array-length v4, p1

    if-ge v4, v3, :cond_2

    .line 153
    invoke-static {p1, v3}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 154
    :cond_2
    array-length v4, p1

    if-le v4, v3, :cond_3

    .line 155
    aput-object v1, p1, v3

    .line 157
    :cond_3
    :goto_0
    invoke-static {v0, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method
