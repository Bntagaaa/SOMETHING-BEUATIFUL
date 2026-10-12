.class public Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final b:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final c:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final d:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 26
    const-string v9, "chars"

    const-string v10, "markers"

    const-string v0, "w"

    const-string v1, "h"

    const-string v2, "ip"

    const-string v3, "op"

    const-string v4, "fr"

    const-string v5, "v"

    const-string v6, "layers"

    const-string v7, "assets"

    const-string v8, "fonts"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 137
    const-string v5, "p"

    const-string v6, "u"

    const-string v1, "id"

    const-string v2, "layers"

    const-string v3, "w"

    const-string v4, "h"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->b:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 203
    const-string v0, "list"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->c:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 236
    const-string v0, "tm"

    const-string v1, "dr"

    const-string v2, "cm"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->d:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/LottieComposition;
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 41
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v2

    .line 45
    new-instance v9, Landroidx/collection/LongSparseArray;

    invoke-direct {v9}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 46
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 49
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 50
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 51
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 52
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 53
    new-instance v12, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v12}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 55
    new-instance v3, Lcom/airbnb/lottie/LottieComposition;

    invoke-direct {v3}, Lcom/airbnb/lottie/LottieComposition;-><init>()V

    .line 56
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 57
    :goto_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_26

    .line 58
    sget-object v4, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v4

    const/16 v21, 0x0

    packed-switch v4, :pswitch_data_0

    .line 101
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 102
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    move/from16 v22, v2

    :goto_1
    move-object/from16 v23, v12

    move-object/from16 v26, v14

    move v12, v15

    :goto_2
    const/16 v25, 0x1

    goto/16 :goto_13

    .line 244
    :pswitch_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 245
    :goto_3
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 249
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    move-object/from16 v4, v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 250
    :goto_4
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 251
    sget-object v5, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->d:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v5

    if-eqz v5, :cond_2

    if-eq v5, v1, :cond_1

    const/4 v1, 0x2

    if-eq v5, v1, :cond_0

    .line 262
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 263
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    :goto_5
    const/4 v1, 0x1

    goto :goto_4

    :cond_0
    move v5, v2

    .line 259
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v23, v1

    :goto_6
    move v2, v5

    goto :goto_5

    :cond_1
    move v5, v2

    .line 256
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v22, v1

    goto :goto_6

    :cond_2
    move v5, v2

    .line 253
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_3
    move v5, v2

    .line 266
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 267
    new-instance v1, Lcom/airbnb/lottie/model/Marker;

    move/from16 v2, v22

    move/from16 v22, v5

    move/from16 v5, v23

    invoke-direct {v1, v4, v2, v5}, Lcom/airbnb/lottie/model/Marker;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v2, v22

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    move/from16 v22, v2

    .line 269
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    goto :goto_1

    :pswitch_1
    move/from16 v22, v2

    .line 228
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 229
    :goto_7
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 230
    sget-object v1, Lcom/airbnb/lottie/parser/c;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    const-wide/16 v4, 0x0

    move-wide/from16 v29, v4

    move-wide/from16 v31, v29

    move-object/from16 v33, v21

    move-object/from16 v34, v33

    const/16 v28, 0x0

    .line 36
    :goto_8
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 37
    sget-object v2, Lcom/airbnb/lottie/parser/c;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v2

    if-eqz v2, :cond_d

    const/4 v4, 0x1

    if-eq v2, v4, :cond_c

    const/4 v4, 0x2

    if-eq v2, v4, :cond_b

    const/4 v4, 0x3

    if-eq v2, v4, :cond_a

    const/4 v4, 0x4

    if-eq v2, v4, :cond_9

    const/4 v4, 0x5

    if-eq v2, v4, :cond_5

    .line 72
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 73
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_8

    .line 54
    :cond_5
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 55
    :goto_9
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 56
    sget-object v2, Lcom/airbnb/lottie/parser/c;->b:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v2

    if-eqz v2, :cond_6

    .line 65
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 66
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_9

    .line 58
    :cond_6
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 59
    :goto_a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 60
    invoke-static {v0, v3}, Lcom/airbnb/lottie/parser/b;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/content/ShapeGroup;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 62
    :cond_7
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    goto :goto_9

    .line 69
    :cond_8
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    goto :goto_8

    .line 51
    :cond_9
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v34

    goto :goto_8

    .line 48
    :cond_a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v33

    goto :goto_8

    .line 45
    :cond_b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v31

    goto :goto_8

    .line 42
    :cond_c
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v29

    goto :goto_8

    .line 39
    :cond_d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v28

    goto :goto_8

    .line 76
    :cond_e
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 78
    new-instance v26, Lcom/airbnb/lottie/model/FontCharacter;

    move-object/from16 v27, v1

    invoke-direct/range {v26 .. v34}, Lcom/airbnb/lottie/model/FontCharacter;-><init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v26

    .line 231
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/FontCharacter;->hashCode()I

    move-result v2

    invoke-virtual {v12, v2, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 233
    :cond_f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    goto/16 :goto_1

    :pswitch_2
    move/from16 v22, v2

    .line 206
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 207
    :goto_b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 208
    sget-object v1, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->c:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v1

    if-eqz v1, :cond_10

    .line 218
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 219
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_b

    .line 210
    :cond_10
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 211
    :goto_c
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 212
    sget-object v1, Lcom/airbnb/lottie/parser/d;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 25
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    move-object/from16 v1, v21

    move-object v2, v1

    move-object v4, v2

    const/4 v5, 0x0

    .line 26
    :goto_d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_15

    move-object/from16 v23, v12

    .line 27
    sget-object v12, Lcom/airbnb/lottie/parser/d;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v12

    if-eqz v12, :cond_14

    move-object/from16 v26, v14

    const/4 v14, 0x1

    if-eq v12, v14, :cond_13

    const/4 v14, 0x2

    if-eq v12, v14, :cond_12

    const/4 v14, 0x3

    if-eq v12, v14, :cond_11

    .line 41
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 42
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    :goto_e
    move-object/from16 v12, v23

    move-object/from16 v14, v26

    goto :goto_d

    :cond_11
    move v12, v15

    .line 38
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v14

    double-to-float v5, v14

    move v15, v12

    goto :goto_e

    :cond_12
    move v12, v15

    .line 35
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_13
    move v12, v15

    .line 32
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_14
    move-object/from16 v26, v14

    move v12, v15

    .line 29
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v12, v23

    goto :goto_d

    :cond_15
    move-object/from16 v23, v12

    move-object/from16 v26, v14

    move v12, v15

    .line 45
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 47
    new-instance v14, Lcom/airbnb/lottie/model/Font;

    invoke-direct {v14, v1, v2, v4, v5}, Lcom/airbnb/lottie/model/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    .line 213
    invoke-virtual {v14}, Lcom/airbnb/lottie/model/Font;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v15, v12

    move-object/from16 v12, v23

    move-object/from16 v14, v26

    goto :goto_c

    :cond_16
    move-object/from16 v23, v12

    move-object/from16 v26, v14

    move v12, v15

    .line 215
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    move-object/from16 v12, v23

    goto/16 :goto_b

    :cond_17
    move-object/from16 v23, v12

    move-object/from16 v26, v14

    move v12, v15

    .line 222
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    goto/16 :goto_2

    :pswitch_3
    move/from16 v22, v2

    move-object/from16 v23, v12

    move-object/from16 v26, v14

    move v12, v15

    .line 148
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 149
    :goto_f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 159
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    move-object/from16 v30, v21

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    const/16 v28, 0x0

    const/16 v29, 0x0

    .line 160
    :goto_10
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 161
    sget-object v4, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->b:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v14, 0x1

    if-eq v4, v14, :cond_1c

    const/4 v14, 0x2

    if-eq v4, v14, :cond_1b

    const/4 v14, 0x3

    if-eq v4, v14, :cond_1a

    const/4 v5, 0x4

    if-eq v4, v5, :cond_19

    const/4 v5, 0x5

    if-eq v4, v5, :cond_18

    .line 187
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 188
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_10

    .line 184
    :cond_18
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v32

    goto :goto_10

    :cond_19
    const/4 v5, 0x5

    .line 181
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v31

    goto :goto_10

    :cond_1a
    const/4 v5, 0x5

    .line 178
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v29

    goto :goto_10

    :cond_1b
    const/4 v5, 0x5

    const/4 v14, 0x3

    .line 175
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v28

    goto :goto_10

    :cond_1c
    const/4 v5, 0x5

    const/4 v14, 0x3

    .line 166
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 167
    :goto_11
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 168
    invoke-static {v0, v3}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v4

    .line 169
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 170
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x3

    goto :goto_11

    .line 172
    :cond_1d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    goto :goto_10

    :cond_1e
    const/4 v5, 0x5

    .line 163
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v30

    goto :goto_10

    :cond_1f
    const/4 v5, 0x5

    .line 191
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    if-eqz v31, :cond_20

    .line 193
    new-instance v27, Lcom/airbnb/lottie/LottieImageAsset;

    invoke-direct/range {v27 .. v32}, Lcom/airbnb/lottie/LottieImageAsset;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v27

    .line 195
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieImageAsset;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    :cond_20
    move-object/from16 v2, v30

    .line 197
    invoke-virtual {v10, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 200
    :cond_21
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    goto/16 :goto_2

    :pswitch_4
    move/from16 v22, v2

    move-object/from16 v23, v12

    move-object/from16 v26, v14

    move v12, v15

    .line 118
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    const/4 v1, 0x0

    .line 119
    :cond_22
    :goto_12
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 120
    invoke-static {v0, v3}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v4

    sget-object v5, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->IMAGE:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-ne v4, v5, :cond_23

    const/16 v25, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 124
    :cond_23
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    move-result-wide v4

    invoke-virtual {v9, v4, v5, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    const/4 v4, 0x4

    if-le v1, v4, :cond_22

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "You have "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    goto :goto_12

    .line 133
    :cond_24
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    goto/16 :goto_2

    :pswitch_5
    move/from16 v22, v2

    move-object/from16 v23, v12

    move-object/from16 v26, v14

    move v12, v15

    .line 75
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 76
    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v19, 0x0

    .line 77
    aget-object v2, v1, v19

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    const/16 v25, 0x1

    .line 78
    aget-object v2, v1, v25

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    const/16 v24, 0x2

    .line 79
    aget-object v1, v1, v24

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    const/16 v32, 0x0

    const/16 v30, 0x4

    const/16 v31, 0x4

    .line 80
    invoke-static/range {v27 .. v32}, Lcom/airbnb/lottie/utils/Utils;->isAtLeastVersion(IIIIII)Z

    move-result v1

    if-nez v1, :cond_25

    .line 82
    const-string v1, "Lottie only supports bodymovin >= 4.4.0"

    invoke-virtual {v3, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    :cond_25
    :goto_13
    move v15, v12

    move/from16 v2, v22

    move-object/from16 v12, v23

    move-object/from16 v14, v26

    :goto_14
    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_6
    move/from16 v22, v2

    move-object/from16 v23, v12

    move-object/from16 v26, v14

    move v12, v15

    const/16 v25, 0x1

    .line 72
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v17, v1

    :goto_15
    move/from16 v2, v22

    :goto_16
    move-object/from16 v12, v23

    goto :goto_14

    :pswitch_7
    move/from16 v22, v2

    move-object/from16 v23, v12

    move-object/from16 v26, v14

    move v12, v15

    const/16 v25, 0x1

    .line 69
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3c23d70a    # 0.01f

    sub-float v16, v1, v2

    goto :goto_15

    :pswitch_8
    move/from16 v22, v2

    move-object/from16 v23, v12

    move-object/from16 v26, v14

    const/16 v25, 0x1

    .line 66
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v15, v1

    move/from16 v2, v22

    goto :goto_14

    :pswitch_9
    move/from16 v22, v2

    move-object/from16 v23, v12

    move-object/from16 v26, v14

    move v12, v15

    const/16 v25, 0x1

    .line 63
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v7

    goto :goto_16

    :pswitch_a
    move/from16 v22, v2

    move-object/from16 v23, v12

    move-object/from16 v26, v14

    move v12, v15

    const/16 v25, 0x1

    .line 60
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v6

    goto :goto_16

    :cond_26
    move/from16 v22, v2

    move-object/from16 v23, v12

    move-object/from16 v26, v14

    move v12, v15

    int-to-float v0, v6

    mul-float v0, v0, v22

    float-to-int v0, v0

    int-to-float v1, v7

    mul-float v1, v1, v22

    float-to-int v1, v1

    .line 107
    new-instance v4, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v4, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v5, v12

    move/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v12, v23

    .line 109
    invoke-virtual/range {v3 .. v14}, Lcom/airbnb/lottie/LottieComposition;->init(Landroid/graphics/Rect;FFFLjava/util/List;Landroidx/collection/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroidx/collection/SparseArrayCompat;Ljava/util/Map;Ljava/util/List;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
