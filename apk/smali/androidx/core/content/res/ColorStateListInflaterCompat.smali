.class public final Landroidx/core/content/res/ColorStateListInflaterCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/content/res/ColorStateListInflaterCompat;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 95
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    .line 104
    invoke-static {p0, p1, v0, p2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 101
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 35
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 119
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 120
    const-string v4, "selector"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 134
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/16 v5, 0x14

    .line 138
    new-array v6, v5, [[I

    .line 139
    new-array v5, v5, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 142
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v4, :cond_1e

    .line 143
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-ge v10, v3, :cond_0

    const/4 v11, 0x3

    if-eq v9, v11, :cond_1e

    :cond_0
    const/4 v11, 0x2

    if-ne v9, v11, :cond_1

    if-gt v10, v3, :cond_1

    .line 145
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "item"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    move/from16 v32, v3

    const/16 v16, 0x1

    goto/16 :goto_17

    .line 149
    :cond_2
    sget-object v9, Landroidx/core/R$styleable;->ColorStateListItem:[I

    if-nez v2, :cond_3

    .line 234
    invoke-virtual {v0, v1, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    goto :goto_1

    .line 235
    :cond_3
    invoke-virtual {v2, v1, v9, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 150
    :goto_1
    sget v10, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    const/4 v12, -0x1

    invoke-virtual {v9, v10, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    const v14, -0xff01

    const/16 v15, 0x1f

    if-eq v13, v12, :cond_6

    .line 224
    sget-object v12, Landroidx/core/content/res/ColorStateListInflaterCompat;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v12}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/TypedValue;

    if-nez v16, :cond_4

    const/16 v17, 0x2

    .line 226
    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 227
    invoke-virtual {v12, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    const/16 v17, 0x2

    move-object/from16 v11, v16

    .line 217
    :goto_2
    invoke-virtual {v0, v13, v11, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 218
    iget v11, v11, Landroid/util/TypedValue;->type:I

    const/16 v12, 0x1c

    if-lt v11, v12, :cond_5

    if-gt v11, v15, :cond_5

    goto :goto_3

    .line 154
    :cond_5
    :try_start_0
    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    invoke-static {v0, v10, v2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 156
    :catch_0
    sget v10, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    invoke-virtual {v9, v10, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    goto :goto_4

    :cond_6
    const/16 v17, 0x2

    .line 160
    :goto_3
    invoke-virtual {v9, v10, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 164
    :goto_4
    sget v11, Landroidx/core/R$styleable;->ColorStateListItem_android_alpha:I

    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v12, :cond_7

    .line 165
    invoke-virtual {v9, v11, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    goto :goto_5

    .line 166
    :cond_7
    sget v11, Landroidx/core/R$styleable;->ColorStateListItem_alpha:I

    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 167
    invoke-virtual {v9, v11, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    goto :goto_5

    :cond_8
    const/high16 v11, 0x3f800000    # 1.0f

    .line 171
    :goto_5
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v14, -0x40800000    # -1.0f

    if-lt v12, v15, :cond_9

    sget v12, Landroidx/core/R$styleable;->ColorStateListItem_android_lStar:I

    .line 172
    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 173
    invoke-virtual {v9, v12, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    goto :goto_6

    .line 175
    :cond_9
    sget v12, Landroidx/core/R$styleable;->ColorStateListItem_lStar:I

    invoke-virtual {v9, v12, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    .line 178
    :goto_6
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    invoke-interface {v1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v9

    .line 183
    new-array v14, v9, [I

    const/4 v4, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    :goto_7
    if-ge v15, v9, :cond_c

    const/high16 v18, 0x3f800000    # 1.0f

    .line 185
    invoke-interface {v1, v15}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v13

    const v7, 0x10101a5

    if-eq v13, v7, :cond_b

    const v7, 0x101031f

    if-eq v13, v7, :cond_b

    .line 186
    sget v7, Landroidx/core/R$attr;->alpha:I

    if-eq v13, v7, :cond_b

    sget v7, Landroidx/core/R$attr;->lStar:I

    if-eq v13, v7, :cond_b

    add-int/lit8 v7, v4, 0x1

    const/4 v0, 0x0

    .line 191
    invoke-interface {v1, v15, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v20

    if-eqz v20, :cond_a

    goto :goto_8

    :cond_a
    neg-int v13, v13

    .line 192
    :goto_8
    aput v13, v14, v4

    move v4, v7

    :cond_b
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    const/4 v7, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_c
    const/high16 v18, 0x3f800000    # 1.0f

    .line 195
    invoke-static {v14, v4}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v0

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v7, 0x0

    cmpl-float v9, v12, v7

    if-ltz v9, :cond_d

    cmpg-float v9, v12, v4

    if-gtz v9, :cond_d

    const/4 v9, 0x1

    goto :goto_9

    :cond_d
    const/4 v9, 0x0

    :goto_9
    cmpl-float v13, v11, v18

    if-nez v13, :cond_e

    if-nez v9, :cond_e

    move/from16 v32, v3

    goto/16 :goto_16

    .line 247
    :cond_e
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v11

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v13, v11

    float-to-int v11, v13

    const/16 v13, 0xff

    const/4 v14, 0x0

    .line 248
    invoke-static {v11, v14, v13}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v11

    if-eqz v9, :cond_1d

    .line 251
    invoke-static {v10}, Landroidx/core/content/res/a;->a(I)Landroidx/core/content/res/a;

    move-result-object v9

    .line 149
    sget-object v10, Landroidx/core/content/res/h;->k:Landroidx/core/content/res/h;

    .line 414
    iget v13, v9, Landroidx/core/content/res/a;->b:F

    float-to-double v14, v13

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpg-double v22, v14, v20

    if-ltz v22, :cond_f

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-double v14, v14

    const-wide/16 v20, 0x0

    cmpg-double v22, v14, v20

    if-lez v22, :cond_f

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-double v14, v14

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    cmpl-double v22, v14, v20

    if-ltz v22, :cond_10

    :cond_f
    move/from16 v32, v3

    move/from16 v34, v11

    move/from16 v33, v12

    goto/16 :goto_14

    .line 418
    :cond_10
    iget v9, v9, Landroidx/core/content/res/a;->a:F

    cmpg-float v14, v9, v7

    if-gez v14, :cond_11

    const/4 v9, 0x0

    goto :goto_a

    :cond_11
    const/high16 v14, 0x43b40000    # 360.0f

    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    :goto_a
    move v4, v13

    move v15, v4

    const/4 v7, 0x0

    const/4 v13, 0x1

    const/high16 v20, 0x42c80000    # 100.0f

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_b
    sub-float v23, v21, v15

    .line 431
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v23

    const v24, 0x3ecccccd    # 0.4f

    cmpl-float v23, v23, v24

    if-ltz v23, :cond_1b

    const/high16 v23, 0x447a0000    # 1000.0f

    const/high16 v24, 0x447a0000    # 1000.0f

    const/16 v25, 0x0

    const/high16 v26, 0x42c80000    # 100.0f

    const/16 v27, 0x0

    :goto_c
    sub-float v28, v25, v26

    .line 490
    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v28

    const v29, 0x3c23d70a    # 0.01f

    const/high16 v30, 0x40000000    # 2.0f

    cmpl-float v28, v28, v29

    if-lez v28, :cond_17

    sub-float v28, v26, v25

    div-float v28, v28, v30

    add-float v14, v28, v25

    .line 493
    invoke-static {v14, v4, v9}, Landroidx/core/content/res/a;->b(FFF)Landroidx/core/content/res/a;

    move-result-object v1

    .line 301
    sget-object v2, Landroidx/core/content/res/h;->k:Landroidx/core/content/res/h;

    invoke-virtual {v1, v2}, Landroidx/core/content/res/a;->c(Landroidx/core/content/res/h;)I

    move-result v1

    .line 127
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v2}, Landroidx/core/content/res/b;->b(I)F

    move-result v2

    .line 128
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v28

    invoke-static/range {v28 .. v28}, Landroidx/core/content/res/b;->b(I)F

    move-result v28

    .line 129
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v31

    invoke-static/range {v31 .. v31}, Landroidx/core/content/res/b;->b(I)F

    move-result v31

    .line 130
    sget-object v32, Landroidx/core/content/res/b;->d:[[F

    .line 131
    aget-object v32, v32, v16

    const/16 v19, 0x0

    aget v33, v32, v19

    mul-float v2, v2, v33

    aget v33, v32, v16

    mul-float v28, v28, v33

    add-float v28, v28, v2

    aget v2, v32, v17

    mul-float v31, v31, v2

    add-float v31, v31, v28

    div-float v2, v31, v20

    const v28, 0x3c111aa7

    cmpg-float v28, v2, v28

    if-gtz v28, :cond_12

    const v28, 0x4461d2f7

    mul-float v2, v2, v28

    move/from16 v28, v1

    goto :goto_d

    :cond_12
    move/from16 v28, v1

    float-to-double v1, v2

    .line 121
    invoke-static {v1, v2}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x42e80000    # 116.0f

    mul-float v1, v1, v2

    const/high16 v2, 0x41800000    # 16.0f

    sub-float v2, v1, v2

    :goto_d
    sub-float v1, v12, v2

    .line 499
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v31, 0x3e4ccccd    # 0.2f

    cmpg-float v31, v1, v31

    if-gez v31, :cond_13

    move/from16 v31, v1

    .line 507
    invoke-static/range {v28 .. v28}, Landroidx/core/content/res/a;->a(I)Landroidx/core/content/res/a;

    move-result-object v1

    move/from16 v28, v2

    .line 509
    iget v2, v1, Landroidx/core/content/res/a;->c:F

    move/from16 v32, v3

    iget v3, v1, Landroidx/core/content/res/a;->b:F

    invoke-static {v2, v3, v9}, Landroidx/core/content/res/a;->b(FFF)Landroidx/core/content/res/a;

    move-result-object v2

    .line 290
    iget v3, v1, Landroidx/core/content/res/a;->d:F

    move/from16 v33, v3

    iget v3, v2, Landroidx/core/content/res/a;->d:F

    sub-float v3, v33, v3

    move/from16 v33, v3

    .line 291
    iget v3, v1, Landroidx/core/content/res/a;->e:F

    move/from16 v34, v3

    iget v3, v2, Landroidx/core/content/res/a;->e:F

    sub-float v3, v34, v3

    move/from16 v34, v3

    .line 292
    iget v3, v1, Landroidx/core/content/res/a;->f:F

    iget v2, v2, Landroidx/core/content/res/a;->f:F

    sub-float/2addr v3, v2

    mul-float v2, v33, v33

    mul-float v33, v34, v34

    add-float v33, v33, v2

    mul-float v3, v3, v3

    add-float v3, v3, v33

    float-to-double v2, v3

    .line 293
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    move/from16 v34, v11

    move/from16 v33, v12

    const-wide v11, 0x3fe428f5c28f5c29L    # 0.63

    .line 294
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v11, 0x3ff68f5c28f5c28fL    # 1.41

    mul-double v2, v2, v11

    double-to-float v2, v2

    cmpg-float v3, v2, v18

    if-gtz v3, :cond_14

    move-object/from16 v27, v1

    move/from16 v24, v2

    move/from16 v23, v31

    goto :goto_e

    :cond_13
    move/from16 v28, v2

    move/from16 v32, v3

    move/from16 v34, v11

    move/from16 v33, v12

    :cond_14
    :goto_e
    cmpl-float v1, v23, v22

    if-nez v1, :cond_15

    cmpl-float v1, v24, v22

    if-nez v1, :cond_15

    :goto_f
    move-object/from16 v1, v27

    goto :goto_11

    :cond_15
    cmpg-float v1, v28, v33

    if-gez v1, :cond_16

    move/from16 v25, v14

    goto :goto_10

    :cond_16
    move/from16 v26, v14

    :goto_10
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v32

    move/from16 v12, v33

    move/from16 v11, v34

    goto/16 :goto_c

    :cond_17
    move/from16 v32, v3

    move/from16 v34, v11

    move/from16 v33, v12

    goto :goto_f

    :goto_11
    if-eqz v13, :cond_19

    if-eqz v1, :cond_18

    .line 438
    invoke-virtual {v1, v10}, Landroidx/core/content/res/a;->c(Landroidx/core/content/res/h;)I

    move-result v1

    :goto_12
    move v10, v1

    goto :goto_15

    :cond_18
    sub-float v1, v15, v21

    div-float v1, v1, v30

    add-float v4, v1, v21

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v32

    move/from16 v12, v33

    move/from16 v11, v34

    const/4 v13, 0x0

    goto/16 :goto_b

    :cond_19
    if-nez v1, :cond_1a

    move v15, v4

    goto :goto_13

    :cond_1a
    move-object v7, v1

    move/from16 v21, v4

    :goto_13
    sub-float v1, v15, v21

    div-float v1, v1, v30

    add-float v4, v1, v21

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v32

    move/from16 v12, v33

    move/from16 v11, v34

    goto/16 :goto_b

    :cond_1b
    move/from16 v32, v3

    move/from16 v34, v11

    move/from16 v33, v12

    if-nez v7, :cond_1c

    .line 468
    invoke-static/range {v33 .. v33}, Landroidx/core/content/res/b;->a(F)I

    move-result v1

    goto :goto_12

    .line 471
    :cond_1c
    invoke-virtual {v7, v10}, Landroidx/core/content/res/a;->c(Landroidx/core/content/res/h;)I

    move-result v1

    goto :goto_12

    .line 415
    :goto_14
    invoke-static/range {v33 .. v33}, Landroidx/core/content/res/b;->a(F)I

    move-result v1

    goto :goto_12

    :cond_1d
    move/from16 v32, v3

    move/from16 v34, v11

    :goto_15
    const v1, 0xffffff

    and-int/2addr v1, v10

    shl-int/lit8 v2, v34, 0x18

    or-int v10, v1, v2

    .line 202
    :goto_16
    invoke-static {v5, v8, v10}, Landroidx/core/content/res/d;->append([III)[I

    move-result-object v5

    .line 203
    invoke-static {v6, v8, v0}, Landroidx/core/content/res/d;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [[I

    add-int/lit8 v8, v8, 0x1

    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v32

    const/4 v4, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 207
    :cond_1e
    new-array v0, v8, [I

    .line 208
    new-array v1, v8, [[I

    const/4 v14, 0x0

    .line 209
    invoke-static {v5, v14, v0, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    invoke-static {v6, v14, v1, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    .line 121
    :cond_1f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": invalid color state list tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 0
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 71
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 72
    invoke-static {p0, p1, p2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 74
    const-string p1, "CSLCompat"

    const-string p2, "Failed to inflate ColorStateList."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method
