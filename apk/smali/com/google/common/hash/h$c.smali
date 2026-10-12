.class final Lcom/google/common/hash/h$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicLongArray;

.field public final b:Lcom/google/common/hash/o;


# direct methods
.method public constructor <init>(J)V
    .locals 4

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 154
    :goto_0
    const-string v1, "data length is zero!"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 157
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    const-wide/16 v1, 0x40

    sget-object v3, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 158
    invoke-static {p1, p2, v1, v2, v3}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/hash/h$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 159
    invoke-static {}, Lcom/google/common/hash/p;->create()Lcom/google/common/hash/o;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/hash/h$c;->b:Lcom/google/common/hash/o;

    return-void
.end method

.method public constructor <init>([J)V
    .locals 6

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "data length is zero!"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 165
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>([J)V

    iput-object v0, p0, Lcom/google/common/hash/h$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 166
    invoke-static {}, Lcom/google/common/hash/p;->create()Lcom/google/common/hash/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/h$c;->b:Lcom/google/common/hash/o;

    .line 168
    array-length v0, p1

    const-wide/16 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-wide v4, p1, v1

    .line 169
    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    :cond_1
    iget-object p1, p0, Lcom/google/common/hash/h$c;->b:Lcom/google/common/hash/o;

    invoke-interface {p1, v2, v3}, Lcom/google/common/hash/o;->add(J)V

    return-void
.end method

.method public static toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J
    .locals 5

    .line 208
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v0

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 210
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a()J
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/google/common/hash/h$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x40

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public final b(J)Z
    .locals 4

    const/4 v0, 0x6

    ushr-long v0, p1, v0

    long-to-int v1, v0

    .line 199
    iget-object v0, p0, Lcom/google/common/hash/h$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    long-to-int p2, p1

    shl-long p1, v2, p2

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(J)Z
    .locals 10

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/h$c;->b(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x6

    ushr-long v2, p1, v0

    long-to-int v5, v2

    const-wide/16 v2, 0x1

    long-to-int p2, p1

    shl-long p1, v2, p2

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/google/common/hash/h$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v6

    or-long v8, v6, p1

    cmp-long v0, v6, v8

    if-nez v0, :cond_2

    return v1

    .line 191
    :cond_2
    iget-object v4, p0, Lcom/google/common/hash/h$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual/range {v4 .. v9}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object p1, p0, Lcom/google/common/hash/h$c;->b:Lcom/google/common/hash/o;

    invoke-interface {p1}, Lcom/google/common/hash/o;->increment()V

    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 275
    instance-of v0, p1, Lcom/google/common/hash/h$c;

    if-eqz v0, :cond_0

    .line 276
    check-cast p1, Lcom/google/common/hash/h$c;

    .line 278
    iget-object v0, p0, Lcom/google/common/hash/h$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v0}, Lcom/google/common/hash/h$c;->toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    move-result-object v0

    iget-object p1, p1, Lcom/google/common/hash/h$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {p1}, Lcom/google/common/hash/h$c;->toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/google/common/hash/h$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v0}, Lcom/google/common/hash/h$c;->toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    return v0
.end method
