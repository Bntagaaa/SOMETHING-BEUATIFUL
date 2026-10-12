.class Landroidx/constraintlayout/utils/widget/ImageFilterView$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/utils/widget/ImageFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:[F

.field public final b:Landroid/graphics/ColorMatrix;

.field public final c:Landroid/graphics/ColorMatrix;

.field public d:F

.field public e:F

.field public f:F

.field public g:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 87
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->a:[F

    .line 88
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b:Landroid/graphics/ColorMatrix;

    .line 89
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c:Landroid/graphics/ColorMatrix;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 90
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->d:F

    .line 91
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->e:F

    .line 92
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->f:F

    .line 93
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->g:F

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;)V
    .locals 36

    move-object/from16 v0, p0

    .line 251
    iget-object v1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->reset()V

    .line 253
    iget v2, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->e:F

    iget-object v3, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->a:[F

    const/16 v6, 0x11

    const/16 v7, 0x10

    const/16 v8, 0xf

    const/16 v9, 0xe

    const/16 v10, 0xd

    const/16 v11, 0xc

    const/16 v12, 0xb

    const/16 v13, 0xa

    const/16 v14, 0x9

    const/16 v15, 0x8

    const/16 v16, 0x7

    const/16 v17, 0x6

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x13

    const/4 v4, 0x0

    const/16 v21, 0x3

    const/16 v22, 0x2

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x12

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v26, v2, v5

    if-eqz v26, :cond_0

    sub-float v26, v5, v2

    const v27, 0x3e998c7e    # 0.2999f

    mul-float v27, v27, v26

    const v28, 0x3f1645a2    # 0.587f

    mul-float v28, v28, v26

    const v29, 0x3de978d5    # 0.114f

    mul-float v26, v26, v29

    add-float v29, v27, v2

    .line 106
    aput v29, v3, v24

    .line 107
    aput v28, v3, v23

    .line 108
    aput v26, v3, v22

    .line 109
    aput v4, v3, v21

    .line 110
    aput v4, v3, v19

    .line 112
    aput v27, v3, v18

    add-float v29, v28, v2

    .line 113
    aput v29, v3, v17

    .line 114
    aput v26, v3, v16

    .line 115
    aput v4, v3, v15

    .line 116
    aput v4, v3, v14

    .line 118
    aput v27, v3, v13

    .line 119
    aput v28, v3, v12

    add-float v26, v26, v2

    .line 120
    aput v26, v3, v11

    .line 121
    aput v4, v3, v10

    .line 122
    aput v4, v3, v9

    .line 124
    aput v4, v3, v8

    .line 125
    aput v4, v3, v7

    .line 126
    aput v4, v3, v6

    .line 127
    aput v5, v3, v25

    .line 128
    aput v4, v3, v20

    .line 255
    invoke-virtual {v1, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    const/4 v2, 0x1

    :goto_0
    const/16 v26, 0x11

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 258
    :goto_1
    iget v6, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->f:F

    const/16 v27, 0x10

    iget-object v7, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c:Landroid/graphics/ColorMatrix;

    cmpl-float v28, v6, v5

    if-eqz v28, :cond_1

    .line 259
    invoke-virtual {v7, v6, v6, v6, v5}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 260
    invoke-virtual {v1, v7}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    const/4 v2, 0x1

    .line 263
    :cond_1
    iget v6, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->g:F

    cmpl-float v28, v6, v5

    if-eqz v28, :cond_6

    cmpg-float v2, v6, v4

    if-gtz v2, :cond_2

    const v6, 0x3c23d70a    # 0.01f

    :cond_2
    const v2, 0x459c4000    # 5000.0f

    div-float/2addr v2, v6

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v2, v6

    const v28, 0x42c6f10d

    const/high16 v29, 0x42840000    # 66.0f

    const/high16 v30, 0x3f800000    # 1.0f

    const/high16 v5, 0x437f0000    # 255.0f

    cmpl-float v31, v2, v29

    if-lez v31, :cond_3

    const/high16 v31, 0x42700000    # 60.0f

    const v32, 0x43211e9c

    sub-float v6, v2, v31

    const/16 v31, 0xf

    const/16 v33, 0xe

    float-to-double v8, v6

    const/16 v6, 0xd

    const/16 v34, 0xc

    const-wide v10, -0x403ef32580000000L    # -0.13320475816726685

    .line 144
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v10, v10

    const v11, 0x43a4d970

    mul-float v10, v10, v11

    const/16 v11, 0xb

    const/16 v35, 0xa

    const-wide v12, 0x3fb354f0e0000000L

    .line 145
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    const v9, 0x43900fa3

    mul-float v8, v8, v9

    goto :goto_2

    :cond_3
    const/16 v6, 0xd

    const/16 v11, 0xb

    const/16 v31, 0xf

    const v32, 0x43211e9c

    const/16 v33, 0xe

    const/16 v34, 0xc

    const/16 v35, 0xa

    float-to-double v8, v2

    .line 148
    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v8, v8, v28

    sub-float v8, v8, v32

    const/high16 v10, 0x437f0000    # 255.0f

    :goto_2
    const v9, 0x439885bc

    cmpg-float v13, v2, v29

    if-gez v13, :cond_5

    const/high16 v13, 0x41980000    # 19.0f

    cmpl-float v13, v2, v13

    if-lez v13, :cond_4

    const/high16 v13, 0x41200000    # 10.0f

    sub-float/2addr v2, v13

    const/16 v13, 0xb

    const v29, 0x430a848a

    float-to-double v11, v2

    .line 153
    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    double-to-float v2, v11

    mul-float v2, v2, v29

    sub-float/2addr v2, v9

    goto :goto_3

    :cond_4
    const/16 v13, 0xb

    const v29, 0x430a848a

    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    const/16 v13, 0xb

    const v29, 0x430a848a

    const/high16 v2, 0x437f0000    # 255.0f

    .line 160
    :goto_3
    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 161
    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 162
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v11, 0x42480000    # 50.0f

    float-to-double v11, v11

    .line 178
    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float v11, v11, v28

    sub-float v11, v11, v32

    const/high16 v12, 0x42200000    # 40.0f

    move/from16 v32, v10

    const v28, 0x439885bc

    float-to-double v9, v12

    .line 183
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float v9, v9, v29

    sub-float v9, v9, v28

    .line 190
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 191
    invoke-static {v11, v4}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 192
    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float v10, v32, v10

    div-float/2addr v8, v11

    div-float/2addr v2, v5

    .line 198
    aput v10, v3, v24

    .line 199
    aput v4, v3, v23

    .line 200
    aput v4, v3, v22

    .line 201
    aput v4, v3, v21

    .line 202
    aput v4, v3, v19

    .line 204
    aput v4, v3, v18

    .line 205
    aput v8, v3, v17

    .line 206
    aput v4, v3, v16

    .line 207
    aput v4, v3, v15

    .line 208
    aput v4, v3, v14

    .line 210
    aput v4, v3, v35

    .line 211
    aput v4, v3, v13

    .line 212
    aput v2, v3, v34

    .line 213
    aput v4, v3, v6

    .line 214
    aput v4, v3, v33

    .line 216
    aput v4, v3, v31

    .line 217
    aput v4, v3, v27

    .line 218
    aput v4, v3, v26

    .line 219
    aput v30, v3, v25

    .line 220
    aput v4, v3, v20

    .line 265
    invoke-virtual {v7, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 266
    invoke-virtual {v1, v7}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/16 v6, 0xd

    const/16 v13, 0xb

    const/high16 v30, 0x3f800000    # 1.0f

    const/16 v31, 0xf

    const/16 v33, 0xe

    const/16 v34, 0xc

    const/16 v35, 0xa

    .line 269
    :goto_4
    iget v5, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->d:F

    cmpl-float v8, v5, v30

    if-eqz v8, :cond_7

    .line 225
    aput v5, v3, v24

    .line 226
    aput v4, v3, v23

    .line 227
    aput v4, v3, v22

    .line 228
    aput v4, v3, v21

    .line 229
    aput v4, v3, v19

    .line 231
    aput v4, v3, v18

    .line 232
    aput v5, v3, v17

    .line 233
    aput v4, v3, v16

    .line 234
    aput v4, v3, v15

    .line 235
    aput v4, v3, v14

    .line 237
    aput v4, v3, v35

    .line 238
    aput v4, v3, v13

    .line 239
    aput v5, v3, v34

    .line 240
    aput v4, v3, v6

    .line 241
    aput v4, v3, v33

    .line 243
    aput v4, v3, v31

    .line 244
    aput v4, v3, v27

    .line 245
    aput v4, v3, v26

    .line 246
    aput v30, v3, v25

    .line 247
    aput v4, v3, v20

    .line 271
    invoke-virtual {v7, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 272
    invoke-virtual {v1, v7}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    goto :goto_5

    :cond_7
    move/from16 v23, v2

    :goto_5
    if-eqz v23, :cond_8

    .line 277
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v1, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_8
    move-object/from16 v1, p1

    .line 279
    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    return-void
.end method
