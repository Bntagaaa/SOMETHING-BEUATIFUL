.class Lcom/airbnb/lottie/parser/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/view/animation/LinearInterpolator;

.field public static b:Landroidx/collection/SparseArrayCompat;

.field public static final c:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final d:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 27
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/h;->a:Landroid/view/animation/LinearInterpolator;

    .line 30
    const-string v5, "i"

    const-string v6, "h"

    const-string v1, "t"

    const-string v2, "s"

    const-string v3, "e"

    const-string v4, "o"

    const-string v7, "to"

    const-string v8, "ti"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/h;->c:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 40
    const-string v0, "x"

    const-string v1, "y"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/h;->d:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;
    .locals 6

    .line 330
    iget v0, p0, Landroid/graphics/PointF;->x:F

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 331
    iget v0, p0, Landroid/graphics/PointF;->y:F

    const/high16 v3, -0x3d380000    # -100.0f

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v0, v3, v4}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 332
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 333
    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v3, v4}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 334
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v3, v4, v0}, Lcom/airbnb/lottie/utils/Utils;->hashFor(FFFF)I

    move-result v0

    .line 57
    const-class v1, Lcom/airbnb/lottie/parser/h;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v3, Lcom/airbnb/lottie/parser/h;->b:Landroidx/collection/SparseArrayCompat;

    if-nez v3, :cond_0

    .line 48
    new-instance v3, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v3}, Landroidx/collection/SparseArrayCompat;-><init>()V

    sput-object v3, Lcom/airbnb/lottie/parser/h;->b:Landroidx/collection/SparseArrayCompat;

    .line 50
    :cond_0
    sget-object v3, Lcom/airbnb/lottie/parser/h;->b:Landroidx/collection/SparseArrayCompat;

    .line 58
    invoke-virtual {v3, v0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 337
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v3, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    return-object v1

    .line 341
    :cond_3
    :goto_1
    :try_start_1
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v3, v4, v5}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 343
    const-string v3, "The Path cannot loop back on itself."

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 347
    iget v1, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v1, p0, v2, p1}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    goto :goto_2

    .line 350
    :cond_4
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 354
    :goto_2
    :try_start_2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lcom/airbnb/lottie/parser/h;->c(ILjava/lang/ref/WeakReference;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-object p0

    :catchall_0
    move-exception p0

    .line 59
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/u;ZZ)Lcom/airbnb/lottie/value/Keyframe;
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 76
    sget-object v3, Lcom/airbnb/lottie/parser/h;->a:Landroid/view/animation/LinearInterpolator;

    sget-object v4, Lcom/airbnb/lottie/parser/h;->c:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    if-eqz p4, :cond_16

    if-eqz p5, :cond_16

    .line 176
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 177
    :goto_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_11

    .line 178
    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v21

    sget-object v5, Lcom/airbnb/lottie/parser/h;->d:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    packed-switch v21, :pswitch_data_0

    .line 298
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 295
    :pswitch_0
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/g;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v8

    goto :goto_0

    .line 292
    :pswitch_1
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/g;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v7

    goto :goto_0

    .line 289
    :pswitch_2
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    :pswitch_3
    move-object/from16 v21, v3

    .line 239
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v3

    move/from16 p4, v9

    sget-object v9, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v3, v9, :cond_8

    .line 240
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    .line 245
    :goto_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    move-object/from16 p5, v13

    .line 246
    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v22, v4

    const/4 v4, 0x1

    if-eq v13, v4, :cond_1

    .line 278
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    move-object/from16 v13, p5

    :goto_2
    move-object/from16 v4, v22

    goto :goto_1

    .line 263
    :cond_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v4

    sget-object v6, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v4, v6, :cond_2

    move-object v4, v7

    .line 264
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v15, v6

    move-object/from16 v13, p5

    move-object v7, v4

    move v6, v15

    goto :goto_2

    :cond_2
    move-object v4, v7

    .line 267
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    move-object/from16 v23, v8

    .line 268
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v7

    double-to-float v7, v7

    .line 269
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v8

    if-ne v8, v6, :cond_3

    move v8, v7

    .line 270
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v6, v6

    move v15, v6

    goto :goto_3

    :cond_3
    move v8, v7

    move v15, v8

    .line 274
    :goto_3
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    move-object/from16 v13, p5

    move-object v7, v4

    move v6, v8

    :goto_4
    move-object/from16 v4, v22

    move-object/from16 v8, v23

    goto :goto_1

    :cond_4
    move-object/from16 v22, v4

    move-object v4, v7

    move-object/from16 v23, v8

    .line 248
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v3

    sget-object v7, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v3, v7, :cond_5

    .line 249
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v7

    double-to-float v9, v7

    move-object/from16 v13, p5

    move-object v7, v4

    move v3, v9

    goto :goto_4

    .line 252
    :cond_5
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 253
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v8

    double-to-float v3, v8

    .line 254
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v8

    if-ne v8, v7, :cond_6

    .line 255
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v7

    double-to-float v7, v7

    move v9, v7

    goto :goto_5

    :cond_6
    move v9, v3

    .line 259
    :goto_5
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    move-object/from16 v13, p5

    move-object v7, v4

    goto :goto_4

    :cond_7
    move-object/from16 v22, v4

    move-object v4, v7

    move-object/from16 v23, v8

    move-object/from16 p5, v13

    .line 281
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v3, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 282
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v9, v15}, Landroid/graphics/PointF;-><init>(FF)V

    .line 283
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    move/from16 v9, p4

    move-object v15, v5

    :goto_6
    move-object/from16 v3, v21

    :goto_7
    move-object/from16 v4, v22

    goto/16 :goto_0

    :cond_8
    move-object/from16 v22, v4

    move-object v4, v7

    move-object/from16 v23, v8

    move-object/from16 p5, v13

    .line 285
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/g;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v11

    move/from16 v9, p4

    goto :goto_6

    :pswitch_4
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object v4, v7

    move-object/from16 v23, v8

    move/from16 p4, v9

    move-object/from16 p5, v13

    .line 189
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v3

    sget-object v7, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v3, v7, :cond_10

    .line 190
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 195
    :goto_8
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 196
    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v12

    if-eqz v12, :cond_c

    const/4 v13, 0x1

    if-eq v12, v13, :cond_9

    .line 228
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_8

    .line 213
    :cond_9
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v7

    sget-object v9, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v7, v9, :cond_a

    .line 214
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v12

    double-to-float v9, v12

    move v7, v9

    goto :goto_8

    .line 217
    :cond_a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 218
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v12

    double-to-float v7, v12

    .line 219
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v12

    if-ne v12, v9, :cond_b

    .line 220
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v12

    double-to-float v9, v12

    goto :goto_9

    :cond_b
    move v9, v7

    .line 224
    :goto_9
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    goto :goto_8

    .line 198
    :cond_c
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v3

    sget-object v8, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v3, v8, :cond_d

    .line 199
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v12

    double-to-float v8, v12

    move v3, v8

    goto :goto_8

    .line 202
    :cond_d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 203
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v12

    double-to-float v3, v12

    .line 204
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v12

    if-ne v12, v8, :cond_e

    .line 205
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v12

    double-to-float v8, v12

    goto :goto_a

    :cond_e
    move v8, v3

    .line 209
    :goto_a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    goto :goto_8

    .line 231
    :cond_f
    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12, v3, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 232
    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 233
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    :goto_b
    move/from16 v9, p4

    move-object/from16 v13, p5

    :goto_c
    move-object v7, v4

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v8, v23

    goto/16 :goto_0

    .line 235
    :cond_10
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/g;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v10

    goto :goto_b

    :pswitch_5
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object v4, v7

    move-object/from16 v23, v8

    move/from16 p4, v9

    move-object/from16 p5, v13

    .line 186
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/u;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    move-result-object v20

    goto/16 :goto_7

    :pswitch_6
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object v4, v7

    move-object/from16 v23, v8

    move/from16 p4, v9

    .line 183
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/u;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_7

    :pswitch_7
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object v4, v7

    move-object/from16 v23, v8

    move/from16 p4, v9

    move-object/from16 p5, v13

    .line 180
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v7

    double-to-float v3, v7

    move/from16 v19, v3

    goto :goto_c

    :cond_11
    move-object/from16 v21, v3

    move-object v4, v7

    move-object/from16 v23, v8

    move/from16 p4, v9

    move-object/from16 p5, v13

    .line 301
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    if-eqz p4, :cond_12

    move-object/from16 v14, p5

    :goto_d
    move-object/from16 v15, v21

    :goto_e
    const/4 v8, 0x0

    const/16 v16, 0x0

    goto :goto_f

    :cond_12
    if-eqz v10, :cond_13

    if-eqz v11, :cond_13

    .line 308
    invoke-static {v10, v11}, Lcom/airbnb/lottie/parser/h;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object v3

    move-object v15, v3

    move-object/from16 v14, v20

    goto :goto_e

    :cond_13
    if-eqz v12, :cond_14

    if-eqz v14, :cond_14

    if-eqz v15, :cond_14

    if-eqz v6, :cond_14

    .line 310
    invoke-static {v12, v15}, Lcom/airbnb/lottie/parser/h;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 311
    invoke-static {v14, v6}, Lcom/airbnb/lottie/parser/h;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object v1

    move-object v8, v0

    move-object/from16 v16, v1

    move-object/from16 v14, v20

    const/4 v15, 0x0

    goto :goto_f

    :cond_14
    move-object/from16 v14, v20

    goto :goto_d

    :goto_f
    if-eqz v8, :cond_15

    if-eqz v16, :cond_15

    .line 318
    new-instance v11, Lcom/airbnb/lottie/value/Keyframe;

    const/16 v18, 0x0

    move-object/from16 v12, p1

    move-object/from16 v13, p5

    move-object v15, v8

    move/from16 v17, v19

    invoke-direct/range {v11 .. v18}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    goto :goto_10

    :cond_15
    move-object/from16 v13, p5

    move/from16 v16, v19

    .line 320
    new-instance v11, Lcom/airbnb/lottie/value/Keyframe;

    const/16 v17, 0x0

    move-object/from16 v12, p1

    invoke-direct/range {v11 .. v17}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 323
    :goto_10
    iput-object v4, v11, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    move-object/from16 v8, v23

    .line 324
    iput-object v8, v11, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    return-object v11

    :cond_16
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    if-eqz p4, :cond_1b

    .line 104
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 105
    :goto_11
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    move-object/from16 v7, v22

    .line 106
    invoke-virtual {v0, v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    packed-switch v9, :pswitch_data_1

    .line 132
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    :goto_12
    move-object/from16 v22, v7

    goto :goto_11

    .line 129
    :pswitch_8
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/g;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v5

    goto :goto_12

    .line 126
    :pswitch_9
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/g;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v4

    goto :goto_12

    .line 123
    :pswitch_a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v6

    const/4 v13, 0x1

    if-ne v6, v13, :cond_17

    const/4 v6, 0x1

    goto :goto_12

    :cond_17
    const/4 v6, 0x0

    goto :goto_12

    :pswitch_b
    const/4 v13, 0x1

    .line 120
    invoke-static {v0, v10}, Lcom/airbnb/lottie/parser/g;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v3

    goto :goto_12

    :pswitch_c
    const/4 v13, 0x1

    .line 117
    invoke-static {v0, v10}, Lcom/airbnb/lottie/parser/g;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v8

    goto :goto_12

    :pswitch_d
    const/4 v13, 0x1

    .line 114
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/u;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    move-result-object v18

    goto :goto_12

    :pswitch_e
    const/4 v13, 0x1

    .line 111
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/u;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    move-result-object v14

    goto :goto_12

    :pswitch_f
    const/4 v13, 0x1

    .line 108
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v9

    double-to-float v9, v9

    move-object/from16 v22, v7

    move/from16 v17, v9

    goto :goto_11

    .line 135
    :cond_18
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    if-eqz v6, :cond_19

    move-object v15, v14

    :goto_13
    move-object/from16 v16, v21

    goto :goto_14

    :cond_19
    if-eqz v8, :cond_1a

    if-eqz v3, :cond_1a

    .line 142
    invoke-static {v8, v3}, Lcom/airbnb/lottie/parser/h;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object v3

    move-object/from16 v16, v3

    move-object/from16 v15, v18

    goto :goto_14

    :cond_1a
    move-object/from16 v15, v18

    goto :goto_13

    .line 147
    :goto_14
    new-instance v12, Lcom/airbnb/lottie/value/Keyframe;

    const/16 v18, 0x0

    move-object/from16 v13, p1

    invoke-direct/range {v12 .. v18}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 149
    iput-object v4, v12, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 150
    iput-object v5, v12, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    return-object v12

    .line 367
    :cond_1b
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/u;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    move-result-object v0

    .line 368
    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public static c(ILjava/lang/ref/WeakReference;)V
    .locals 2

    .line 65
    const-class v0, Lcom/airbnb/lottie/parser/h;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/airbnb/lottie/parser/h;->b:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, p0, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 67
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
