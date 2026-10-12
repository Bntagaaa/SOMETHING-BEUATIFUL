.class Lcom/google/common/collect/n0;
.super Lcom/google/common/collect/k0;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/k0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient k:[J

.field public transient l:I

.field public transient m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 99
    invoke-direct {p0, v0}, Lcom/google/common/collect/k0;-><init>(I)V

    return-void
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/n0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/n0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/google/common/collect/n0;

    .line 99
    invoke-direct {v0, p0}, Lcom/google/common/collect/k0;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final b(II)I
    .locals 1

    .line 208
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return p2

    :cond_0
    return p1
.end method

.method public final c()I
    .locals 2

    .line 112
    invoke-super {p0}, Lcom/google/common/collect/k0;->c()I

    move-result v0

    .line 113
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/common/collect/n0;->k:[J

    return v0
.end method

.method public clear()V
    .locals 5

    .line 213
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x2

    .line 216
    iput v0, p0, Lcom/google/common/collect/n0;->l:I

    .line 217
    iput v0, p0, Lcom/google/common/collect/n0;->m:I

    .line 218
    iget-object v0, p0, Lcom/google/common/collect/n0;->k:[J

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 221
    :cond_1
    invoke-super {p0}, Lcom/google/common/collect/k0;->clear()V

    return-void
.end method

.method public final d()Ljava/util/Map;
    .locals 2

    .line 125
    invoke-super {p0}, Lcom/google/common/collect/k0;->d()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 126
    iput-object v1, p0, Lcom/google/common/collect/n0;->k:[J

    return-object v0
.end method

.method public final e(I)Ljava/util/LinkedHashMap;
    .locals 3

    .line 119
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-object v0
.end method

.method public final g()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/google/common/collect/n0;->l:I

    return v0
.end method

.method public final h(I)I
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/google/common/collect/n0;->k:[J

    aget-wide v1, v0, p1

    long-to-int p1, v1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public final l(I)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Lcom/google/common/collect/k0;->l(I)V

    const/4 p1, -0x2

    .line 106
    iput p1, p0, Lcom/google/common/collect/n0;->l:I

    .line 107
    iput p1, p0, Lcom/google/common/collect/n0;->m:I

    return-void
.end method

.method public final m(ILjava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 165
    invoke-super/range {p0 .. p5}, Lcom/google/common/collect/k0;->m(ILjava/lang/Object;Ljava/lang/Object;II)V

    move p2, p1

    move-object p1, p0

    .line 166
    iget p3, p1, Lcom/google/common/collect/n0;->m:I

    invoke-virtual {p0, p3, p2}, Lcom/google/common/collect/n0;->s(II)V

    const/4 p3, -0x2

    .line 167
    invoke-virtual {p0, p2, p3}, Lcom/google/common/collect/n0;->s(II)V

    return-void
.end method

.method public final n(II)V
    .locals 4

    .line 184
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 185
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/k0;->n(II)V

    .line 131
    iget-object p2, p0, Lcom/google/common/collect/n0;->k:[J

    aget-wide v1, p2, p1

    const/16 p2, 0x20

    ushr-long/2addr v1, p2

    long-to-int v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 187
    invoke-virtual {p0, p1}, Lcom/google/common/collect/n0;->h(I)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/google/common/collect/n0;->s(II)V

    if-ge p1, v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/google/common/collect/n0;->k:[J

    aget-wide v2, v1, v0

    ushr-long v1, v2, p2

    long-to-int p2, v1

    add-int/lit8 p2, p2, -0x1

    .line 189
    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/n0;->s(II)V

    .line 190
    invoke-virtual {p0, v0}, Lcom/google/common/collect/n0;->h(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/n0;->s(II)V

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/google/common/collect/n0;->k:[J

    const-wide/16 v1, 0x0

    aput-wide v1, p1, v0

    return-void
.end method

.method public final q(I)V
    .locals 1

    .line 197
    invoke-super {p0, p1}, Lcom/google/common/collect/k0;->q(I)V

    .line 198
    iget-object v0, p0, Lcom/google/common/collect/n0;->k:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/n0;->k:[J

    return-void
.end method

.method public final s(II)V
    .locals 8

    const-wide v0, 0xffffffffL

    const/4 v2, -0x2

    if-ne p1, v2, :cond_0

    .line 151
    iput p2, p0, Lcom/google/common/collect/n0;->l:I

    goto :goto_0

    .line 141
    :cond_0
    iget-object v3, p0, Lcom/google/common/collect/n0;->k:[J

    aget-wide v4, v3, p1

    const-wide v6, -0x100000000L

    and-long/2addr v4, v6

    add-int/lit8 v6, p2, 0x1

    int-to-long v6, v6

    and-long/2addr v6, v0

    or-long/2addr v4, v6

    aput-wide v4, v3, p1

    :goto_0
    if-ne p2, v2, :cond_1

    .line 157
    iput p1, p0, Lcom/google/common/collect/n0;->m:I

    return-void

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/n0;->k:[J

    aget-wide v3, v2, p2

    and-long/2addr v0, v3

    add-int/lit8 p1, p1, 0x1

    int-to-long v3, p1

    const/16 p1, 0x20

    shl-long/2addr v3, p1

    or-long/2addr v0, v3

    aput-wide v0, v2, p2

    return-void
.end method
