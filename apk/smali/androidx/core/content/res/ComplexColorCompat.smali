.class public final Landroidx/core/content/res/ComplexColorCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Shader;

.field public final b:Landroid/content/res/ColorStateList;

.field public c:I


# direct methods
.method public constructor <init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroidx/core/content/res/ComplexColorCompat;->a:Landroid/graphics/Shader;

    .line 63
    iput-object p2, p0, Landroidx/core/content/res/ComplexColorCompat;->b:Landroid/content/res/ColorStateList;

    .line 64
    iput p3, p0, Landroidx/core/content/res/ComplexColorCompat;->c:I

    return-void
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/content/res/ComplexColorCompat;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 152
    const-string v2, "gradient"

    invoke-virtual/range {p0 .. p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 153
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 155
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v5, v6, :cond_0

    if-eq v5, v7, :cond_0

    goto :goto_0

    :cond_0
    if-ne v5, v6, :cond_15

    .line 162
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 163
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v2, "selector"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    invoke-static {v0, v3, v4, v1}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 72
    new-instance v1, Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-direct {v1, v8, v0, v2}, Landroidx/core/content/res/ComplexColorCompat;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v1

    .line 171
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": unsupported complex color tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 96
    sget-object v2, Landroidx/core/R$styleable;->GradientColor:[I

    invoke-static {v0, v1, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 98
    sget v5, Landroidx/core/R$styleable;->GradientColor_android_startX:I

    const-string v9, "startX"

    const/4 v10, 0x0

    invoke-static {v2, v3, v9, v5, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v12

    .line 100
    const-string v5, "startY"

    sget v9, Landroidx/core/R$styleable;->GradientColor_android_startY:I

    invoke-static {v2, v3, v5, v9, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v13

    .line 102
    const-string v5, "endX"

    sget v9, Landroidx/core/R$styleable;->GradientColor_android_endX:I

    invoke-static {v2, v3, v5, v9, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v14

    .line 104
    const-string v5, "endY"

    sget v9, Landroidx/core/R$styleable;->GradientColor_android_endY:I

    invoke-static {v2, v3, v5, v9, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v15

    .line 106
    const-string v5, "centerX"

    sget v9, Landroidx/core/R$styleable;->GradientColor_android_centerX:I

    invoke-static {v2, v3, v5, v9, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    .line 108
    const-string v9, "centerY"

    sget v11, Landroidx/core/R$styleable;->GradientColor_android_centerY:I

    invoke-static {v2, v3, v9, v11, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    .line 110
    sget v11, Landroidx/core/R$styleable;->GradientColor_android_type:I

    const-string v8, "type"

    const/4 v6, 0x0

    invoke-static {v2, v3, v8, v11, v6}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v8

    .line 112
    const-string v11, "startColor"

    const/16 v17, 0x1

    sget v7, Landroidx/core/R$styleable;->GradientColor_android_startColor:I

    invoke-static {v2, v3, v11, v7, v6}, Landroidx/core/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v7

    .line 114
    const-string v11, "centerColor"

    invoke-static {v3, v11}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v18

    .line 115
    sget v10, Landroidx/core/R$styleable;->GradientColor_android_centerColor:I

    invoke-static {v2, v3, v11, v10, v6}, Landroidx/core/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v10

    .line 117
    const-string v11, "endColor"

    move/from16 v20, v12

    sget v12, Landroidx/core/R$styleable;->GradientColor_android_endColor:I

    invoke-static {v2, v3, v11, v12, v6}, Landroidx/core/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v11

    .line 119
    const-string v12, "tileMode"

    move/from16 v21, v13

    sget v13, Landroidx/core/R$styleable;->GradientColor_android_tileMode:I

    invoke-static {v2, v3, v12, v13, v6}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v12

    .line 121
    const-string v13, "gradientRadius"

    sget v6, Landroidx/core/R$styleable;->GradientColor_android_gradientRadius:I

    move/from16 v22, v14

    const/4 v14, 0x0

    invoke-static {v2, v3, v13, v6, v14}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v6

    .line 123
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 154
    new-instance v13, Ljava/util/ArrayList;

    const/16 v14, 0x14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v23, v3

    .line 155
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    :goto_1
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    move/from16 v24, v6

    const/4 v6, 0x1

    if-eq v14, v6, :cond_8

    .line 158
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    move/from16 v25, v15

    if-ge v6, v2, :cond_3

    const/4 v15, 0x3

    if-eq v14, v15, :cond_9

    :cond_3
    const/4 v15, 0x2

    if-eq v14, v15, :cond_4

    :goto_2
    move/from16 v6, v24

    move/from16 v15, v25

    const/16 v17, 0x1

    goto :goto_1

    :cond_4
    if-gt v6, v2, :cond_6

    .line 163
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v14, "item"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    .line 167
    :cond_5
    sget-object v6, Landroidx/core/R$styleable;->GradientColorItem:[I

    invoke-static {v0, v1, v4, v6}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 169
    sget v14, Landroidx/core/R$styleable;->GradientColorItem_android_color:I

    invoke-virtual {v6, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    .line 170
    sget v0, Landroidx/core/R$styleable;->GradientColorItem_android_offset:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v26

    if-eqz v15, :cond_7

    if-eqz v26, :cond_7

    const/4 v15, 0x0

    .line 178
    invoke-virtual {v6, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    const/4 v15, 0x0

    .line 179
    invoke-virtual {v6, v0, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 180
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v0, p0

    goto :goto_2

    .line 172
    :cond_7
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move/from16 v25, v15

    .line 185
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    new-instance v0, Landroidx/core/content/res/c$a;

    invoke-direct {v0, v3, v13}, Landroidx/core/content/res/c$a;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_b

    :goto_4
    const/4 v6, 0x1

    goto :goto_5

    :cond_b
    if-eqz v18, :cond_c

    .line 195
    new-instance v0, Landroidx/core/content/res/c$a;

    invoke-direct {v0, v7, v10, v11}, Landroidx/core/content/res/c$a;-><init>(III)V

    goto :goto_4

    .line 197
    :cond_c
    new-instance v0, Landroidx/core/content/res/c$a;

    invoke-direct {v0, v7, v11}, Landroidx/core/content/res/c$a;-><init>(II)V

    goto :goto_4

    :goto_5
    if-eq v8, v6, :cond_10

    const/4 v15, 0x2

    if-eq v8, v15, :cond_f

    .line 141
    new-instance v11, Landroid/graphics/LinearGradient;

    if-eq v12, v6, :cond_e

    if-eq v12, v15, :cond_d

    .line 209
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :goto_6
    move-object/from16 v18, v1

    goto :goto_7

    .line 206
    :cond_d
    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_6

    .line 204
    :cond_e
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_6

    .line 142
    :goto_7
    iget-object v1, v0, Landroidx/core/content/res/c$a;->a:[I

    iget-object v0, v0, Landroidx/core/content/res/c$a;->b:[F

    move-object/from16 v17, v0

    move-object/from16 v16, v1

    move/from16 v12, v20

    move/from16 v13, v21

    move/from16 v14, v22

    move/from16 v15, v25

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_a

    .line 137
    :cond_f
    new-instance v11, Landroid/graphics/SweepGradient;

    iget-object v1, v0, Landroidx/core/content/res/c$a;->a:[I

    iget-object v0, v0, Landroidx/core/content/res/c$a;->b:[F

    invoke-direct {v11, v5, v9, v1, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    goto :goto_a

    :cond_10
    const/16 v19, 0x0

    cmpg-float v1, v24, v19

    if-lez v1, :cond_13

    const/4 v15, 0x2

    .line 134
    new-instance v16, Landroid/graphics/RadialGradient;

    const/4 v6, 0x1

    if-eq v12, v6, :cond_12

    if-eq v12, v15, :cond_11

    .line 209
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :goto_8
    move-object/from16 v22, v1

    goto :goto_9

    .line 206
    :cond_11
    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_8

    .line 204
    :cond_12
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_8

    .line 135
    :goto_9
    iget-object v1, v0, Landroidx/core/content/res/c$a;->a:[I

    iget-object v0, v0, Landroidx/core/content/res/c$a;->b:[F

    move-object/from16 v21, v0

    move-object/from16 v20, v1

    move/from16 v17, v5

    move/from16 v18, v9

    move/from16 v19, v24

    invoke-direct/range {v16 .. v22}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v11, v16

    .line 68
    :goto_a
    new-instance v0, Landroidx/core/content/res/ComplexColorCompat;

    const/4 v1, 0x0

    const/4 v15, 0x0

    invoke-direct {v0, v11, v1, v15}, Landroidx/core/content/res/ComplexColorCompat;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v0

    .line 131
    :cond_13
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move-object/from16 v23, v3

    .line 92
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": invalid gradient color tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_15
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/content/res/ComplexColorCompat;
    .locals 0
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 140
    :try_start_0
    invoke-static {p0, p1, p2}, Landroidx/core/content/res/ComplexColorCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 142
    const-string p1, "ComplexColorCompat"

    const-string p2, "Failed to inflate ComplexColor."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 86
    iget v0, p0, Landroidx/core/content/res/ComplexColorCompat;->c:I

    return v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 81
    iget-object v0, p0, Landroidx/core/content/res/ComplexColorCompat;->a:Landroid/graphics/Shader;

    return-object v0
.end method

.method public isGradient()Z
    .locals 1

    .line 94
    iget-object v0, p0, Landroidx/core/content/res/ComplexColorCompat;->a:Landroid/graphics/Shader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 98
    iget-object v0, p0, Landroidx/core/content/res/ComplexColorCompat;->a:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/content/res/ComplexColorCompat;->b:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onStateChanged([I)Z
    .locals 2

    .line 109
    invoke-virtual {p0}, Landroidx/core/content/res/ComplexColorCompat;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Landroidx/core/content/res/ComplexColorCompat;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 110
    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 112
    iget v0, p0, Landroidx/core/content/res/ComplexColorCompat;->c:I

    if-eq p1, v0, :cond_0

    .line 114
    iput p1, p0, Landroidx/core/content/res/ComplexColorCompat;->c:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 90
    iput p1, p0, Landroidx/core/content/res/ComplexColorCompat;->c:I

    return-void
.end method

.method public willDraw()Z
    .locals 1

    .line 124
    invoke-virtual {p0}, Landroidx/core/content/res/ComplexColorCompat;->isGradient()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/core/content/res/ComplexColorCompat;->c:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
