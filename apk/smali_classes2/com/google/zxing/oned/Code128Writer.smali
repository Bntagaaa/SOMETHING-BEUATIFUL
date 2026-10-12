.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_0

    .line 61
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Can only encode CODE_128, but got "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 17

    move-object/from16 v0, p1

    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_12

    const/16 v3, 0x50

    if-gt v1, v3, :cond_12

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x20

    if-ge v4, v1, :cond_2

    .line 74
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_0

    const/16 v5, 0x7e

    if-le v6, v5, :cond_1

    :cond_0
    packed-switch v6, :pswitch_data_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad character in input: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 88
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 94
    :goto_1
    sget-object v10, Lcom/google/zxing/oned/Code128Reader;->a:[[I

    if-ge v6, v1, :cond_e

    const/16 v11, 0x63

    if-ne v8, v11, :cond_3

    const/4 v12, 0x2

    goto :goto_2

    :cond_3
    const/4 v12, 0x4

    :goto_2
    add-int/2addr v12, v6

    .line 190
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    move v14, v6

    :goto_3
    const/16 v15, 0x64

    if-ge v14, v12, :cond_7

    if-ge v14, v13, :cond_7

    .line 192
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v16, 0x20

    const/16 v5, 0x30

    if-lt v3, v5, :cond_4

    const/16 v5, 0x39

    if-le v3, v5, :cond_6

    :cond_4
    const/16 v5, 0xf1

    if-eq v3, v5, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v12, v12, 0x1

    :cond_6
    add-int/lit8 v14, v14, 0x1

    const/16 v5, 0x20

    goto :goto_3

    :cond_7
    const/16 v16, 0x20

    if-gt v12, v13, :cond_8

    goto :goto_5

    :cond_8
    :goto_4
    const/16 v11, 0x64

    :goto_5
    if-ne v11, v8, :cond_a

    if-ne v8, v15, :cond_9

    .line 109
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v15, v3, -0x20

    :pswitch_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 112
    :cond_9
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_1

    add-int/lit8 v3, v6, 0x2

    .line 130
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move v6, v3

    goto :goto_7

    :pswitch_2
    add-int/lit8 v6, v6, 0x1

    const/16 v15, 0x60

    goto :goto_7

    :pswitch_3
    add-int/lit8 v6, v6, 0x1

    const/16 v15, 0x61

    goto :goto_7

    :pswitch_4
    add-int/lit8 v6, v6, 0x1

    const/16 v15, 0x66

    goto :goto_7

    :cond_a
    if-nez v8, :cond_c

    if-ne v11, v15, :cond_b

    const/16 v3, 0x68

    const/16 v15, 0x68

    goto :goto_6

    :cond_b
    const/16 v3, 0x69

    const/16 v15, 0x69

    goto :goto_6

    :cond_c
    move v15, v11

    :goto_6
    move v8, v11

    .line 154
    :goto_7
    aget-object v3, v10, v15

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    mul-int v15, v15, v9

    add-int/2addr v7, v15

    if-eqz v6, :cond_d

    add-int/lit8 v9, v9, 0x1

    :cond_d
    const/16 v5, 0x20

    goto/16 :goto_1

    .line 164
    :cond_e
    rem-int/lit8 v7, v7, 0x67

    .line 165
    aget-object v0, v10, v7

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x6a

    .line 168
    aget-object v0, v10, v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 173
    array-length v5, v3

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v5, :cond_f

    aget v7, v3, v6

    add-int/2addr v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 179
    :cond_10
    new-array v0, v1, [Z

    .line 181
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 182
    invoke-static {v0, v3, v4, v2}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_9

    :cond_11
    return-object v0

    .line 69
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Contents length should be between 1 and 80 characters, but got "

    .line 0
    invoke-static {v1, v2}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
