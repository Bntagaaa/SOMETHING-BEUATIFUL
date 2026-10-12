.class final Lcom/google/zxing/common/reedsolomon/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public final b:[I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V
    .locals 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    array-length v0, p2

    if-eqz v0, :cond_3

    .line 46
    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/a;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 47
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v2, 0x0

    .line 48
    aget v3, p2, v2

    if-nez v3, :cond_2

    :goto_0
    if-ge v1, v0, :cond_0

    .line 51
    aget v3, p2, v1

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    .line 95
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->b()V

    .line 97
    iget-object p1, p1, Lcom/google/zxing/common/reedsolomon/GenericGF;->c:Lcom/google/zxing/common/reedsolomon/a;

    .line 55
    iget-object p1, p1, Lcom/google/zxing/common/reedsolomon/a;->b:[I

    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/a;->b:[I

    return-void

    :cond_1
    sub-int/2addr v0, v1

    .line 57
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/a;->b:[I

    .line 58
    array-length v0, p1

    invoke-static {p2, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 65
    :cond_2
    iput-object p2, p0, Lcom/google/zxing/common/reedsolomon/a;->b:[I

    return-void

    .line 44
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final a(Lcom/google/zxing/common/reedsolomon/a;)Lcom/google/zxing/common/reedsolomon/a;
    .locals 8

    .line 119
    iget-object v0, p1, Lcom/google/zxing/common/reedsolomon/a;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/a;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/a;->b:[I

    array-length v2, v0

    iget-object p1, p1, Lcom/google/zxing/common/reedsolomon/a;->b:[I

    array-length v3, p1

    if-le v2, v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    .line 136
    :goto_0
    array-length v2, v0

    new-array v2, v2, [I

    .line 137
    array-length v3, v0

    array-length v4, p1

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    .line 139
    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v3

    .line 141
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_3

    sub-int v5, v4, v3

    .line 142
    aget v5, p1, v5

    aget v6, v0, v4

    xor-int/2addr v5, v6

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 145
    :cond_3
    new-instance p1, Lcom/google/zxing/common/reedsolomon/a;

    invoke-direct {p1, v1, v2}, Lcom/google/zxing/common/reedsolomon/a;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    return-object p1

    .line 120
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(I)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 100
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/reedsolomon/a;->c(I)I

    move-result p1

    return p1

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/a;->b:[I

    array-length v3, v2

    if-ne p1, v0, :cond_2

    .line 106
    array-length p1, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget v4, v2, v1

    .line 107
    sget-object v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    xor-int/2addr v3, v4

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    return v3

    .line 111
    :cond_2
    aget v1, v2, v1

    const/4 v4, 0x1

    :goto_1
    if-ge v4, v3, :cond_3

    .line 113
    iget-object v5, p0, Lcom/google/zxing/common/reedsolomon/a;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v5, p1, v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->e(II)I

    move-result v1

    aget v5, v2, v4

    xor-int/2addr v1, v5

    add-int/2addr v4, v0

    goto :goto_1

    :cond_3
    return v1
.end method

.method public final c(I)I
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/a;->b:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget p1, v0, v1

    return p1
.end method

.method public final d()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/a;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final e()Z
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/a;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public final f(I)Lcom/google/zxing/common/reedsolomon/a;
    .locals 6

    .line 171
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/a;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    if-nez p1, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->b()V

    .line 97
    iget-object p1, v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->c:Lcom/google/zxing/common/reedsolomon/a;

    return-object p1

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    return-object p0

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/a;->b:[I

    array-length v2, v1

    .line 178
    new-array v3, v2, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 180
    aget v5, v1, v4

    invoke-virtual {v0, v5, p1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->e(II)I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 182
    :cond_2
    new-instance p1, Lcom/google/zxing/common/reedsolomon/a;

    invoke-direct {p1, v0, v3}, Lcom/google/zxing/common/reedsolomon/a;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    return-object p1
.end method

.method public final g(Lcom/google/zxing/common/reedsolomon/a;)Lcom/google/zxing/common/reedsolomon/a;
    .locals 12

    .line 149
    iget-object v0, p1, Lcom/google/zxing/common/reedsolomon/a;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/a;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/a;->e()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/a;->b:[I

    array-length v2, v0

    .line 158
    iget-object p1, p1, Lcom/google/zxing/common/reedsolomon/a;->b:[I

    array-length v3, p1

    add-int v4, v2, v3

    add-int/lit8 v4, v4, -0x1

    .line 159
    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_2

    .line 161
    aget v7, v0, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v3, :cond_1

    add-int v9, v6, v8

    .line 163
    aget v10, v4, v9

    aget v11, p1, v8

    invoke-virtual {v1, v7, v11}, Lcom/google/zxing/common/reedsolomon/GenericGF;->e(II)I

    move-result v11

    xor-int/2addr v10, v11

    aput v10, v4, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 167
    :cond_2
    new-instance p1, Lcom/google/zxing/common/reedsolomon/a;

    invoke-direct {p1, v1, v4}, Lcom/google/zxing/common/reedsolomon/a;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    return-object p1

    .line 95
    :cond_3
    :goto_2
    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->b()V

    .line 97
    iget-object p1, v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->c:Lcom/google/zxing/common/reedsolomon/a;

    return-object p1

    .line 150
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(II)Lcom/google/zxing/common/reedsolomon/a;
    .locals 5

    if-ltz p1, :cond_2

    .line 189
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/a;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    if-nez p2, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->b()V

    .line 97
    iget-object p1, v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->c:Lcom/google/zxing/common/reedsolomon/a;

    return-object p1

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/a;->b:[I

    array-length v2, v1

    add-int/2addr p1, v2

    .line 193
    new-array p1, p1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 195
    aget v4, v1, v3

    invoke-virtual {v0, v4, p2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->e(II)I

    move-result v4

    aput v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    :cond_1
    new-instance p2, Lcom/google/zxing/common/reedsolomon/a;

    invoke-direct {p2, v0, p1}, Lcom/google/zxing/common/reedsolomon/a;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    return-object p2

    .line 187
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/a;->d()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 229
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/a;->d()I

    move-result v1

    :goto_0
    if-ltz v1, :cond_9

    .line 230
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/reedsolomon/a;->c(I)I

    move-result v2

    if-eqz v2, :cond_8

    if-gez v2, :cond_0

    .line 233
    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v2, v2

    goto :goto_1

    .line 236
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 237
    const-string v3, " + "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v2, v3, :cond_5

    .line 145
    :cond_2
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/a;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->b()V

    if-eqz v2, :cond_7

    .line 150
    iget-object v4, v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->b:[I

    aget v2, v4, v2

    if-nez v2, :cond_3

    const/16 v2, 0x31

    .line 243
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-ne v2, v3, :cond_4

    const/16 v2, 0x61

    .line 245
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 247
    :cond_4
    const-string v4, "a^"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    if-eqz v1, :cond_8

    if-ne v1, v3, :cond_6

    const/16 v2, 0x78

    .line 253
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 255
    :cond_6
    const-string v2, "x^"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 148
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 261
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
