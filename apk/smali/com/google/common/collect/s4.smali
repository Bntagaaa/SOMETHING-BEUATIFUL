.class Lcom/google/common/collect/s4;
.super Lcom/google/common/collect/r4;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/r4<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public transient i:[J

.field public transient j:I

.field public transient k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 77
    invoke-direct {p0, v1, v0}, Lcom/google/common/collect/r4;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 2

    .line 98
    iget v0, p0, Lcom/google/common/collect/s4;->j:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public clear()V
    .locals 1

    .line 171
    invoke-super {p0}, Lcom/google/common/collect/r4;->clear()V

    const/4 v0, -0x2

    .line 172
    iput v0, p0, Lcom/google/common/collect/s4;->j:I

    .line 173
    iput v0, p0, Lcom/google/common/collect/s4;->k:I

    return-void
.end method

.method public final f(I)V
    .locals 2

    .line 89
    invoke-super {p0, p1}, Lcom/google/common/collect/r4;->f(I)V

    const/4 v0, -0x2

    .line 90
    iput v0, p0, Lcom/google/common/collect/s4;->j:I

    .line 91
    iput v0, p0, Lcom/google/common/collect/s4;->k:I

    .line 92
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/common/collect/s4;->i:[J

    const-wide/16 v0, -0x1

    .line 93
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method public final g(IIILjava/lang/Object;)V
    .locals 0

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/r4;->g(IIILjava/lang/Object;)V

    .line 146
    iget p2, p0, Lcom/google/common/collect/s4;->k:I

    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/s4;->o(II)V

    const/4 p2, -0x2

    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/s4;->o(II)V

    return-void
.end method

.method public final h(I)V
    .locals 6

    .line 179
    iget v0, p0, Lcom/google/common/collect/r4;->c:I

    add-int/lit8 v0, v0, -0x1

    .line 113
    iget-object v1, p0, Lcom/google/common/collect/s4;->i:[J

    aget-wide v2, v1, p1

    const/16 v1, 0x20

    ushr-long v4, v2, v1

    long-to-int v5, v4

    long-to-int v3, v2

    .line 153
    invoke-virtual {p0, v5, v3}, Lcom/google/common/collect/s4;->o(II)V

    if-ge p1, v0, :cond_0

    .line 113
    iget-object v2, p0, Lcom/google/common/collect/s4;->i:[J

    aget-wide v3, v2, v0

    ushr-long v1, v3, v1

    long-to-int v2, v1

    .line 155
    invoke-virtual {p0, v2, p1}, Lcom/google/common/collect/s4;->o(II)V

    .line 117
    iget-object v1, p0, Lcom/google/common/collect/s4;->i:[J

    aget-wide v0, v1, v0

    long-to-int v1, v0

    .line 156
    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/s4;->o(II)V

    .line 158
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/r4;->h(I)V

    return-void
.end method

.method public final i(I)I
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/google/common/collect/s4;->i:[J

    aget-wide v1, v0, p1

    long-to-int p1, v1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1
.end method

.method public final j(II)I
    .locals 1

    .line 179
    iget v0, p0, Lcom/google/common/collect/r4;->c:I

    if-ne p1, v0, :cond_0

    return p2

    :cond_0
    return p1
.end method

.method public final m(I)V
    .locals 4

    .line 163
    invoke-super {p0, p1}, Lcom/google/common/collect/r4;->m(I)V

    .line 164
    iget-object v0, p0, Lcom/google/common/collect/s4;->i:[J

    array-length v1, v0

    .line 165
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/s4;->i:[J

    const-wide/16 v2, -0x1

    .line 166
    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    return-void
.end method

.method public final o(II)V
    .locals 8

    const-wide v0, 0xffffffffL

    const/4 v2, -0x2

    if-ne p1, v2, :cond_0

    .line 132
    iput p2, p0, Lcom/google/common/collect/s4;->j:I

    goto :goto_0

    .line 122
    :cond_0
    iget-object v3, p0, Lcom/google/common/collect/s4;->i:[J

    aget-wide v4, v3, p1

    const-wide v6, -0x100000000L

    and-long/2addr v4, v6

    int-to-long v6, p2

    and-long/2addr v6, v0

    or-long/2addr v4, v6

    aput-wide v4, v3, p1

    :goto_0
    if-ne p2, v2, :cond_1

    .line 137
    iput p1, p0, Lcom/google/common/collect/s4;->k:I

    return-void

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/s4;->i:[J

    aget-wide v3, v2, p2

    and-long/2addr v0, v3

    int-to-long v3, p1

    const/16 p1, 0x20

    shl-long/2addr v3, p1

    or-long/2addr v0, v3

    aput-wide v0, v2, p2

    return-void
.end method
