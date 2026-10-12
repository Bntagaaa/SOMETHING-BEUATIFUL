.class final Lcom/google/zxing/pdf417/decoder/ec/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

.field public final b:[I


# direct methods
.method public constructor <init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    array-length v0, p2

    if-eqz v0, :cond_3

    .line 32
    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/ec/a;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    .line 33
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v2, 0x0

    .line 34
    aget v3, p2, v2

    if-nez v3, :cond_2

    :goto_0
    if-ge v1, v0, :cond_0

    .line 37
    aget v3, p2, v1

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    .line 54
    iget-object p1, p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->c:Lcom/google/zxing/pdf417/decoder/ec/a;

    .line 41
    iget-object p1, p1, Lcom/google/zxing/pdf417/decoder/ec/a;->b:[I

    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/ec/a;->b:[I

    return-void

    :cond_1
    sub-int/2addr v0, v1

    .line 43
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/ec/a;->b:[I

    .line 44
    array-length v0, p1

    invoke-static {p2, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 51
    :cond_2
    iput-object p2, p0, Lcom/google/zxing/pdf417/decoder/ec/a;->b:[I

    return-void

    .line 30
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final a(Lcom/google/zxing/pdf417/decoder/ec/a;)Lcom/google/zxing/pdf417/decoder/ec/a;
    .locals 8

    .line 105
    iget-object v0, p1, Lcom/google/zxing/pdf417/decoder/ec/a;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/a;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/ec/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 111
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/a;->b:[I

    array-length v2, v0

    iget-object p1, p1, Lcom/google/zxing/pdf417/decoder/ec/a;->b:[I

    array-length v3, p1

    if-le v2, v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    .line 122
    :goto_0
    array-length v2, v0

    new-array v2, v2, [I

    .line 123
    array-length v3, v0

    array-length v4, p1

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    .line 125
    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v3

    .line 127
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_3

    sub-int v5, v4, v3

    .line 128
    aget v5, p1, v5

    aget v6, v0, v4

    add-int/2addr v5, v6

    .line 74
    iget v6, v1, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->e:I

    rem-int/2addr v5, v6

    .line 128
    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 131
    :cond_3
    new-instance p1, Lcom/google/zxing/pdf417/decoder/ec/a;

    invoke-direct {p1, v1, v2}, Lcom/google/zxing/pdf417/decoder/ec/a;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    return-object p1

    .line 106
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(I)I
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 86
    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/decoder/ec/a;->c(I)I

    move-result p1

    return p1

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/a;->b:[I

    array-length v2, v1

    const/4 v3, 0x1

    .line 89
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/a;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    if-ne p1, v3, :cond_2

    .line 92
    array-length p1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget v3, v1, v0

    add-int/2addr v2, v3

    .line 74
    iget v3, v4, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->e:I

    .line 74
    rem-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 97
    :cond_2
    aget v0, v1, v0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 99
    invoke-virtual {v4, p1, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->b(II)I

    move-result v0

    aget v5, v1, v3

    add-int/2addr v0, v5

    .line 74
    iget v5, v4, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->e:I

    rem-int/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public final c(I)I
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/a;->b:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget p1, v0, v1

    return p1
.end method

.method public final d()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/a;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final e()Z
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/a;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public final f(I)Lcom/google/zxing/pdf417/decoder/ec/a;
    .locals 6

    .line 175
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/a;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    if-nez p1, :cond_0

    .line 54
    iget-object p1, v0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->c:Lcom/google/zxing/pdf417/decoder/ec/a;

    return-object p1

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    return-object p0

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/a;->b:[I

    array-length v2, v1

    .line 182
    new-array v3, v2, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 184
    aget v5, v1, v4

    invoke-virtual {v0, v5, p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->b(II)I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 186
    :cond_2
    new-instance p1, Lcom/google/zxing/pdf417/decoder/ec/a;

    invoke-direct {p1, v0, v3}, Lcom/google/zxing/pdf417/decoder/ec/a;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    return-object p1
.end method

.method public final g(Lcom/google/zxing/pdf417/decoder/ec/a;)Lcom/google/zxing/pdf417/decoder/ec/a;
    .locals 12

    .line 145
    iget-object v0, p1, Lcom/google/zxing/pdf417/decoder/ec/a;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/a;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/ec/a;->e()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/a;->b:[I

    array-length v2, v0

    .line 154
    iget-object p1, p1, Lcom/google/zxing/pdf417/decoder/ec/a;->b:[I

    array-length v3, p1

    add-int v4, v2, v3

    add-int/lit8 v4, v4, -0x1

    .line 155
    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_2

    .line 157
    aget v7, v0, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v3, :cond_1

    add-int v9, v6, v8

    .line 159
    aget v10, v4, v9

    aget v11, p1, v8

    invoke-virtual {v1, v7, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->b(II)I

    move-result v11

    add-int/2addr v11, v10

    .line 74
    iget v10, v1, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->e:I

    rem-int/2addr v11, v10

    .line 159
    aput v11, v4, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 162
    :cond_2
    new-instance p1, Lcom/google/zxing/pdf417/decoder/ec/a;

    invoke-direct {p1, v1, v4}, Lcom/google/zxing/pdf417/decoder/ec/a;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    return-object p1

    .line 54
    :cond_3
    :goto_2
    iget-object p1, v1, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->c:Lcom/google/zxing/pdf417/decoder/ec/a;

    return-object p1

    .line 146
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Lcom/google/zxing/pdf417/decoder/ec/a;)Lcom/google/zxing/pdf417/decoder/ec/a;
    .locals 6

    .line 135
    iget-object v0, p1, Lcom/google/zxing/pdf417/decoder/ec/a;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/a;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 166
    :cond_0
    iget-object v0, p1, Lcom/google/zxing/pdf417/decoder/ec/a;->b:[I

    array-length v1, v0

    .line 167
    new-array v2, v1, [I

    const/4 v3, 0x0

    .line 168
    :goto_0
    iget-object v4, p1, Lcom/google/zxing/pdf417/decoder/ec/a;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    if-ge v3, v1, :cond_1

    .line 169
    aget v5, v0, v3

    .line 78
    iget v4, v4, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->e:I

    sub-int v5, v4, v5

    .line 78
    rem-int/2addr v5, v4

    .line 169
    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    :cond_1
    new-instance p1, Lcom/google/zxing/pdf417/decoder/ec/a;

    invoke-direct {p1, v4, v2}, Lcom/google/zxing/pdf417/decoder/ec/a;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/ec/a;->a(Lcom/google/zxing/pdf417/decoder/ec/a;)Lcom/google/zxing/pdf417/decoder/ec/a;

    move-result-object p1

    return-object p1

    .line 136
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/ec/a;->d()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 233
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/ec/a;->d()I

    move-result v1

    :goto_0
    if-ltz v1, :cond_6

    .line 234
    invoke-virtual {p0, v1}, Lcom/google/zxing/pdf417/decoder/ec/a;->c(I)I

    move-result v2

    if-eqz v2, :cond_5

    if-gez v2, :cond_0

    .line 237
    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v2, v2

    goto :goto_1

    .line 240
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 241
    const-string v3, " + "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v2, v3, :cond_3

    .line 245
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v1, :cond_5

    if-ne v1, v3, :cond_4

    const/16 v2, 0x78

    .line 249
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 251
    :cond_4
    const-string v2, "x^"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 257
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
