.class public Lgnu/math/FixedRealFormat;
.super Ljava/text/Format;
.source "SourceFile"


# instance fields
.field private d:I

.field private i:I

.field public internalPad:Z

.field public overflowChar:C

.field public padChar:C

.field public scale:I

.field public showPlus:Z

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    return-void
.end method

.method private format(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;IIIII)V
    .locals 1

    .line 216
    invoke-virtual {p0}, Lgnu/math/FixedRealFormat;->getMinimumIntegerDigits()I

    move-result p2

    if-ltz p4, :cond_0

    if-le p4, p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p4

    :goto_0
    add-int/2addr p4, p2

    if-gtz p4, :cond_2

    .line 222
    iget p4, p0, Lgnu/math/FixedRealFormat;->width:I

    if-lez p4, :cond_1

    add-int/lit8 v0, p5, 0x1

    add-int/2addr v0, p6

    if-le p4, v0, :cond_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    :cond_2
    add-int/2addr p3, p6

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, 0x1

    .line 226
    iget p4, p0, Lgnu/math/FixedRealFormat;->width:I

    sub-int/2addr p4, p3

    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_3

    add-int p3, p7, p6

    const/16 v0, 0x30

    .line 228
    invoke-virtual {p1, p3, v0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    if-ltz p4, :cond_5

    .line 232
    iget-boolean p2, p0, Lgnu/math/FixedRealFormat;->internalPad:Z

    if-eqz p2, :cond_4

    if-lez p6, :cond_4

    add-int/lit8 p7, p7, 0x1

    :cond_4
    :goto_2
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_7

    .line 235
    iget-char p2, p0, Lgnu/math/FixedRealFormat;->padChar:C

    invoke-virtual {p1, p7, p2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 237
    :cond_5
    iget-char p2, p0, Lgnu/math/FixedRealFormat;->overflowChar:C

    if-eqz p2, :cond_7

    .line 239
    invoke-virtual {p1, p7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 240
    iget p2, p0, Lgnu/math/FixedRealFormat;->width:I

    iput p2, p0, Lgnu/math/FixedRealFormat;->i:I

    :goto_3
    iget p2, p0, Lgnu/math/FixedRealFormat;->i:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lgnu/math/FixedRealFormat;->i:I

    if-ltz p2, :cond_6

    .line 241
    iget-char p2, p0, Lgnu/math/FixedRealFormat;->overflowChar:C

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    return-void

    .line 244
    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    sub-int/2addr p2, p5

    const/16 p3, 0x2e

    .line 245
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 68
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_16

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_d

    .line 70
    :cond_0
    invoke-virtual {v0}, Lgnu/math/FixedRealFormat;->getMaximumFractionDigits()I

    move-result v4

    if-ltz v4, :cond_1

    .line 71
    invoke-static {v1, v2}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v1

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v3, v4}, Lgnu/math/FixedRealFormat;->format(Lgnu/math/RealNum;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    return-object v3

    :cond_1
    move-object/from16 v4, p4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    cmpg-double v9, v1, v5

    if-gez v9, :cond_2

    neg-double v1, v1

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 82
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    const/16 v9, 0x2b

    if-eqz v6, :cond_3

    const/16 v10, 0x2d

    .line 85
    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 86
    :cond_3
    iget-boolean v10, v0, Lgnu/math/FixedRealFormat;->showPlus:Z

    if-eqz v10, :cond_4

    .line 87
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    .line 91
    :goto_2
    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    .line 92
    iget v2, v0, Lgnu/math/FixedRealFormat;->scale:I

    const/16 v11, 0x45

    .line 93
    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ltz v11, :cond_6

    add-int/lit8 v12, v11, 0x1

    .line 97
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v9, :cond_5

    add-int/lit8 v12, v11, 0x2

    .line 99
    :cond_5
    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v2, v9

    .line 100
    invoke-virtual {v1, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_6
    const/16 v9, 0x2e

    .line 102
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 103
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-ltz v9, :cond_7

    sub-int/2addr v11, v9

    sub-int/2addr v11, v8

    sub-int/2addr v2, v11

    .line 108
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v9, v8

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v11, 0x0

    :goto_3
    add-int/lit8 v12, v9, -0x1

    const/16 v13, 0x30

    if-ge v11, v12, :cond_8

    .line 115
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v13, :cond_8

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_8
    if-lez v11, :cond_9

    .line 119
    invoke-virtual {v1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sub-int/2addr v9, v11

    :cond_9
    add-int v11, v9, v2

    .line 125
    iget v12, v0, Lgnu/math/FixedRealFormat;->width:I

    if-lez v12, :cond_c

    :goto_4
    if-gez v11, :cond_a

    .line 131
    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 135
    :cond_a
    iget v9, v0, Lgnu/math/FixedRealFormat;->width:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v8

    :cond_b
    :goto_5
    sub-int/2addr v9, v11

    goto :goto_6

    :cond_c
    const/16 v12, 0x10

    if-le v9, v12, :cond_b

    const/16 v9, 0x10

    goto :goto_5

    :goto_6
    if-gez v9, :cond_d

    const/4 v9, 0x0

    .line 141
    :cond_d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_7
    if-lez v2, :cond_e

    .line 144
    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_e
    add-int v1, v5, v10

    add-int v2, v1, v11

    add-int/2addr v9, v2

    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lt v9, v12, :cond_f

    move v9, v12

    const/16 v12, 0x30

    goto :goto_8

    .line 158
    :cond_f
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v12

    :goto_8
    const/16 v14, 0x35

    if-lt v12, v14, :cond_10

    const/4 v12, 0x1

    goto :goto_9

    :cond_10
    const/4 v12, 0x0

    :goto_9
    if-eqz v12, :cond_11

    const/16 v14, 0x39

    goto :goto_a

    :cond_11
    const/16 v14, 0x30

    :goto_a
    if-le v9, v2, :cond_12

    add-int/lit8 v15, v9, -0x1

    .line 161
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v15

    if-ne v15, v14, :cond_12

    add-int/lit8 v9, v9, -0x1

    goto :goto_a

    :cond_12
    sub-int v2, v9, v1

    sub-int v14, v2, v11

    if-eqz v12, :cond_13

    .line 167
    invoke-static {v3, v1, v9}, Lgnu/math/ExponentialFormat;->addOne(Ljava/lang/StringBuffer;II)Z

    move-result v9

    if-eqz v9, :cond_13

    add-int/lit8 v11, v11, 0x1

    move v2, v11

    goto :goto_b

    :cond_13
    move v7, v14

    :goto_b
    if-nez v7, :cond_15

    .line 174
    iget v9, v0, Lgnu/math/FixedRealFormat;->width:I

    if-lez v9, :cond_14

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    if-ge v10, v9, :cond_15

    :cond_14
    add-int/lit8 v2, v2, 0x1

    add-int v7, v1, v11

    .line 180
    invoke-virtual {v3, v7, v13}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_c

    :cond_15
    move v8, v7

    :goto_c
    add-int/2addr v1, v2

    .line 182
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    move-object v1, v3

    move v7, v5

    move v5, v8

    move v3, v2

    move-object v2, v4

    move v4, v11

    .line 184
    invoke-direct/range {v0 .. v7}, Lgnu/math/FixedRealFormat;->format(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;IIIII)V

    move-object v3, v1

    return-object v3

    .line 69
    :cond_16
    :goto_d
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    return-object v3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    .line 62
    invoke-static {p1, p2}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lgnu/math/FixedRealFormat;->format(Lgnu/math/RealNum;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    return-object p3
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .line 193
    invoke-static {p1}, Lgnu/math/RealNum;->asRealNumOrNull(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v0

    if-nez v0, :cond_2

    .line 196
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 200
    iget p3, p0, Lgnu/math/FixedRealFormat;->width:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p3, v0

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_0

    const/16 v0, 0x20

    .line 202
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2

    .line 206
    :cond_1
    move-object v0, p1

    check-cast v0, Lgnu/math/RealNum;

    .line 208
    :cond_2
    invoke-virtual {v0}, Lgnu/math/Complex;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lgnu/math/FixedRealFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public format(Lgnu/math/RealNum;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V
    .locals 9

    .line 34
    instance-of v0, p1, Lgnu/math/RatNum;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lgnu/math/FixedRealFormat;->getMaximumFractionDigits()I

    move-result v6

    if-ltz v6, :cond_3

    .line 37
    check-cast p1, Lgnu/math/RatNum;

    .line 38
    invoke-virtual {p1}, Lgnu/math/RealNum;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p1}, Lgnu/math/RatNum;->rneg()Lgnu/math/RatNum;

    move-result-object p1

    .line 41
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-eqz v0, :cond_1

    const/16 v0, 0x2d

    .line 44
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 45
    :cond_1
    iget-boolean v0, p0, Lgnu/math/FixedRealFormat;->showPlus:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x2b

    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 49
    :goto_1
    iget v0, p0, Lgnu/math/FixedRealFormat;->scale:I

    add-int/2addr v0, v6

    invoke-static {p1, v0}, Lgnu/math/RealNum;->toScaledInt(Lgnu/math/RatNum;I)Lgnu/math/IntNum;

    move-result-object p1

    invoke-virtual {p1}, Lgnu/math/Numeric;->toString()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v5, v4, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    .line 54
    invoke-direct/range {v1 .. v8}, Lgnu/math/FixedRealFormat;->format(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;IIIII)V

    return-void

    :cond_3
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    .line 57
    invoke-virtual {p1}, Lgnu/math/Complex;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v2, v3}, Lgnu/math/FixedRealFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public getMaximumFractionDigits()I
    .locals 1

    .line 18
    iget v0, p0, Lgnu/math/FixedRealFormat;->d:I

    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 1

    .line 19
    iget v0, p0, Lgnu/math/FixedRealFormat;->i:I

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 0

    .line 267
    new-instance p1, Ljava/lang/Error;

    const-string p2, "RealFixedFormat.parse - not implemented"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 271
    new-instance p1, Ljava/lang/Error;

    const-string p2, "RealFixedFormat.parseObject - not implemented"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaximumFractionDigits(I)V
    .locals 0

    .line 20
    iput p1, p0, Lgnu/math/FixedRealFormat;->d:I

    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 0

    .line 21
    iput p1, p0, Lgnu/math/FixedRealFormat;->i:I

    return-void
.end method
