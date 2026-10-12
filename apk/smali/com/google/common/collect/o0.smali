.class Lcom/google/common/collect/o0;
.super Lcom/google/common/collect/l0;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/l0<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public transient f:[I

.field public transient g:[I

.field public transient h:I

.field public transient i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/google/common/collect/l0;-><init>()V

    return-void
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/o0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/o0<",
            "TE;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/google/common/collect/o0;

    .line 124
    invoke-direct {v0, p0}, Lcom/google/common/collect/l0;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final a(II)I
    .locals 1

    .line 208
    invoke-virtual {p0}, Lcom/google/common/collect/l0;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return p2

    :cond_0
    return p1
.end method

.method public final b()I
    .locals 2

    .line 136
    invoke-super {p0}, Lcom/google/common/collect/l0;->b()I

    move-result v0

    .line 137
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/common/collect/o0;->f:[I

    .line 138
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/common/collect/o0;->g:[I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/google/common/collect/o0;->h:I

    return v0
.end method

.method public clear()V
    .locals 3

    .line 223
    invoke-virtual {p0}, Lcom/google/common/collect/l0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x2

    .line 226
    iput v0, p0, Lcom/google/common/collect/o0;->h:I

    .line 227
    iput v0, p0, Lcom/google/common/collect/o0;->i:I

    .line 228
    iget-object v0, p0, Lcom/google/common/collect/o0;->f:[I

    invoke-virtual {p0}, Lcom/google/common/collect/l0;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 229
    iget-object v0, p0, Lcom/google/common/collect/o0;->g:[I

    invoke-virtual {p0}, Lcom/google/common/collect/l0;->size()I

    move-result v1

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 230
    invoke-super {p0}, Lcom/google/common/collect/l0;->clear()V

    return-void
.end method

.method public final d(I)I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/common/collect/o0;->g:[I

    aget p1, v0, p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public final e(I)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/google/common/collect/l0;->e(I)V

    const/4 p1, -0x2

    .line 130
    iput p1, p0, Lcom/google/common/collect/o0;->h:I

    .line 131
    iput p1, p0, Lcom/google/common/collect/o0;->i:I

    return-void
.end method

.method public final f(IIILjava/lang/Object;)V
    .locals 0

    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/l0;->f(IIILjava/lang/Object;)V

    .line 176
    iget p2, p0, Lcom/google/common/collect/o0;->i:I

    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/o0;->k(II)V

    const/4 p2, -0x2

    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/o0;->k(II)V

    return-void
.end method

.method public final g(II)V
    .locals 2

    .line 182
    invoke-virtual {p0}, Lcom/google/common/collect/l0;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 183
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/l0;->g(II)V

    .line 143
    iget-object p2, p0, Lcom/google/common/collect/o0;->f:[I

    aget p2, p2, p1

    add-int/lit8 p2, p2, -0x1

    .line 185
    invoke-virtual {p0, p1}, Lcom/google/common/collect/o0;->d(I)I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/o0;->k(II)V

    if-ge p1, v0, :cond_0

    .line 143
    iget-object p2, p0, Lcom/google/common/collect/o0;->f:[I

    aget p2, p2, v0

    add-int/lit8 p2, p2, -0x1

    .line 187
    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/o0;->k(II)V

    .line 188
    invoke-virtual {p0, v0}, Lcom/google/common/collect/o0;->d(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/o0;->k(II)V

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/google/common/collect/o0;->f:[I

    const/4 p2, 0x0

    aput p2, p1, v0

    .line 191
    iget-object p1, p0, Lcom/google/common/collect/o0;->g:[I

    aput p2, p1, v0

    return-void
.end method

.method public final i(I)V
    .locals 1

    .line 196
    invoke-super {p0, p1}, Lcom/google/common/collect/l0;->i(I)V

    .line 197
    iget-object v0, p0, Lcom/google/common/collect/o0;->f:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/o0;->f:[I

    .line 198
    iget-object v0, p0, Lcom/google/common/collect/o0;->g:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/o0;->g:[I

    return-void
.end method

.method public final k(II)V
    .locals 3

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 161
    iput p2, p0, Lcom/google/common/collect/o0;->h:I

    goto :goto_0

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/o0;->g:[I

    add-int/lit8 v2, p2, 0x1

    aput v2, v1, p1

    :goto_0
    if-ne p2, v0, :cond_1

    .line 167
    iput p1, p0, Lcom/google/common/collect/o0;->i:I

    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/o0;->f:[I

    add-int/lit8 p1, p1, 0x1

    aput p1, v0, p2

    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 174
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/google/common/collect/ObjectArrays;->b(Ljava/util/Collection;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 218
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->c(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
