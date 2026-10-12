.class public final Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->b:Ljava/util/ArrayList;

    .line 39
    new-instance v1, Lcom/google/zxing/common/reedsolomon/a;

    const/4 v2, 0x1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/google/zxing/common/reedsolomon/a;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only QR Code is supported at this time"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public encode([II)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_6

    .line 58
    array-length v2, p1

    sub-int/2addr v2, p2

    if-lez v2, :cond_5

    .line 43
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    if-lt p2, v4, :cond_0

    .line 44
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/common/reedsolomon/a;

    .line 45
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_0
    if-gt v6, p2, :cond_0

    .line 46
    new-instance v7, Lcom/google/zxing/common/reedsolomon/a;

    add-int/lit8 v8, v6, -0x1

    .line 136
    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->b()V

    .line 138
    iget-object v9, v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->a:[I

    aget v8, v9, v8

    .line 46
    filled-new-array {v1, v8}, [I

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lcom/google/zxing/common/reedsolomon/a;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    invoke-virtual {v4, v7}, Lcom/google/zxing/common/reedsolomon/a;->g(Lcom/google/zxing/common/reedsolomon/a;)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v4

    .line 47
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v1

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/common/reedsolomon/a;

    .line 63
    new-array v4, v2, [I

    .line 64
    invoke-static {p1, v0, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    new-instance v6, Lcom/google/zxing/common/reedsolomon/a;

    invoke-direct {v6, v5, v4}, Lcom/google/zxing/common/reedsolomon/a;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 66
    invoke-virtual {v6, p2, v1}, Lcom/google/zxing/common/reedsolomon/a;->h(II)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v4

    .line 67
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    iget-object v5, v3, Lcom/google/zxing/common/reedsolomon/a;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v6, v4, Lcom/google/zxing/common/reedsolomon/a;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 204
    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/a;->e()Z

    move-result v5

    if-nez v5, :cond_3

    .line 95
    invoke-virtual {v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->b()V

    .line 97
    iget-object v5, v6, Lcom/google/zxing/common/reedsolomon/GenericGF;->c:Lcom/google/zxing/common/reedsolomon/a;

    .line 211
    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/a;->d()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/google/zxing/common/reedsolomon/a;->c(I)I

    move-result v7

    .line 212
    invoke-virtual {v6, v7}, Lcom/google/zxing/common/reedsolomon/GenericGF;->d(I)I

    move-result v7

    .line 214
    :goto_1
    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/a;->d()I

    move-result v8

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/a;->d()I

    move-result v9

    if-lt v8, v9, :cond_1

    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/a;->e()Z

    move-result v8

    if-nez v8, :cond_1

    .line 215
    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/a;->d()I

    move-result v8

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/a;->d()I

    move-result v9

    sub-int/2addr v8, v9

    .line 216
    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/a;->d()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/google/zxing/common/reedsolomon/a;->c(I)I

    move-result v9

    invoke-virtual {v6, v9, v7}, Lcom/google/zxing/common/reedsolomon/GenericGF;->e(II)I

    move-result v9

    .line 217
    invoke-virtual {v3, v8, v9}, Lcom/google/zxing/common/reedsolomon/a;->h(II)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v10

    .line 218
    invoke-virtual {v6, v8, v9}, Lcom/google/zxing/common/reedsolomon/GenericGF;->a(II)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v8

    .line 219
    invoke-virtual {v5, v8}, Lcom/google/zxing/common/reedsolomon/a;->a(Lcom/google/zxing/common/reedsolomon/a;)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v5

    .line 220
    invoke-virtual {v4, v10}, Lcom/google/zxing/common/reedsolomon/a;->a(Lcom/google/zxing/common/reedsolomon/a;)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    .line 223
    new-array v3, v3, [Lcom/google/zxing/common/reedsolomon/a;

    aput-object v5, v3, v0

    aput-object v4, v3, v1

    .line 67
    aget-object v3, v3, v1

    .line 70
    iget-object v3, v3, Lcom/google/zxing/common/reedsolomon/a;->b:[I

    .line 69
    array-length v4, v3

    sub-int/2addr p2, v4

    const/4 v4, 0x0

    :goto_2
    if-ge v4, p2, :cond_2

    add-int v5, v2, v4

    .line 71
    aput v0, p1, v5

    add-int/2addr v4, v1

    goto :goto_2

    :cond_2
    add-int/2addr v2, p2

    .line 73
    array-length p2, v3

    invoke-static {v3, v0, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 205
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Divide by 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No data bytes provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No error correction bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
