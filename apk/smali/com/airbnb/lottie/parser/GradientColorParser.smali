.class public Lcom/airbnb/lottie/parser/GradientColorParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/parser/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/u<",
        "Lcom/airbnb/lottie/model/content/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->a:I

    return-void
.end method


# virtual methods
.method public parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/content/GradientColor;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 55
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v3, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 61
    :cond_3
    iget v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->a:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->a:I

    .line 65
    :cond_4
    iget v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->a:I

    new-array v3, v2, [F

    .line 66
    new-array v2, v2, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 70
    :goto_2
    iget v9, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->a:I

    mul-int/lit8 v9, v9, 0x4

    const/4 v10, 0x2

    const-wide v11, 0x406fe00000000000L    # 255.0

    if-ge v6, v9, :cond_a

    .line 71
    div-int/lit8 v9, v6, 0x4

    .line 72
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    float-to-double v13, v13

    .line 73
    rem-int/lit8 v15, v6, 0x4

    if-eqz v15, :cond_8

    if-eq v15, v5, :cond_7

    if-eq v15, v10, :cond_6

    const/4 v10, 0x3

    if-eq v15, v10, :cond_5

    goto :goto_3

    :cond_5
    mul-double v13, v13, v11

    double-to-int v10, v13

    const/16 v11, 0xff

    .line 91
    invoke-static {v11, v7, v8, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    aput v10, v2, v9

    goto :goto_3

    :cond_6
    mul-double v13, v13, v11

    double-to-int v8, v13

    goto :goto_3

    :cond_7
    mul-double v13, v13, v11

    double-to-int v7, v13

    goto :goto_3

    :cond_8
    if-lez v9, :cond_9

    add-int/lit8 v10, v9, -0x1

    .line 77
    aget v10, v3, v10

    double-to-float v11, v13

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_9

    const v10, 0x3c23d70a    # 0.01f

    add-float/2addr v11, v10

    .line 78
    aput v11, v3, v9

    goto :goto_3

    :cond_9
    double-to-float v10, v13

    .line 80
    aput v10, v3, v9

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 96
    :cond_a
    new-instance v6, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-direct {v6, v3, v2}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    .line 111
    iget v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->a:I

    mul-int/lit8 v2, v2, 0x4

    .line 112
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v2, :cond_b

    goto/16 :goto_a

    .line 116
    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/2addr v3, v10

    .line 117
    new-array v7, v3, [D

    .line 118
    new-array v8, v3, [D

    const/4 v9, 0x0

    .line 120
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_d

    .line 121
    rem-int/lit8 v10, v2, 0x2

    if-nez v10, :cond_c

    .line 122
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    float-to-double v13, v10

    aput-wide v13, v7, v9

    goto :goto_5

    .line 124
    :cond_c
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    float-to-double v13, v10

    aput-wide v13, v8, v9

    add-int/lit8 v9, v9, 0x1

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 129
    :cond_d
    :goto_6
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/content/GradientColor;->getSize()I

    move-result v1

    if-ge v4, v1, :cond_10

    .line 130
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v1

    aget v1, v1, v4

    .line 132
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v2

    aget v2, v2, v4

    float-to-double v9, v2

    const/4 v2, 0x1

    :goto_7
    if-ge v2, v3, :cond_f

    add-int/lit8 v13, v2, -0x1

    .line 144
    aget-wide v14, v7, v13

    .line 145
    aget-wide v16, v7, v2

    cmpl-double v18, v16, v9

    if-ltz v18, :cond_e

    sub-double/2addr v9, v14

    sub-double v16, v16, v14

    div-double v18, v9, v16

    const-wide/16 v20, 0x0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    .line 147
    invoke-static/range {v18 .. v23}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(DDD)D

    move-result-wide v28

    .line 148
    aget-wide v24, v8, v13

    aget-wide v26, v8, v2

    invoke-static/range {v24 .. v29}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(DDD)D

    move-result-wide v9

    :goto_8
    mul-double v9, v9, v11

    double-to-int v2, v9

    goto :goto_9

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_f
    add-int/lit8 v2, v3, -0x1

    .line 151
    aget-wide v9, v8, v2

    goto :goto_8

    .line 133
    :goto_9
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v9

    .line 134
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v10

    .line 135
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 131
    invoke-static {v2, v9, v10, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 137
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v2

    aput v1, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_10
    :goto_a
    return-object v6
.end method

.method public bridge synthetic parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/parser/GradientColorParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/content/GradientColor;

    move-result-object p1

    return-object p1
.end method
