.class public Lcom/google/android/material/shadow/ShadowRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final i:[I

.field public static final j:[F

.field public static final k:[I

.field public static final l:[F


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public d:I

.field public e:I

.field public f:I

.field public final g:Landroid/graphics/Path;

.field public final h:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    .line 60
    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/material/shadow/ShadowRenderer;->i:[I

    .line 62
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/material/shadow/ShadowRenderer;->j:[F

    const/4 v0, 0x4

    .line 64
    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/material/shadow/ShadowRenderer;->k:[I

    .line 66
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/material/shadow/ShadowRenderer;->l:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/high16 v0, -0x1000000

    .line 72
    invoke-direct {p0, v0}, Lcom/google/android/material/shadow/ShadowRenderer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->g:Landroid/graphics/Path;

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->h:Landroid/graphics/Paint;

    .line 76
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shadow/ShadowRenderer;->a:Landroid/graphics/Paint;

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/material/shadow/ShadowRenderer;->setShadowColor(I)V

    const/4 p1, 0x0

    .line 79
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/shadow/ShadowRenderer;->b:Landroid/graphics/Paint;

    .line 81
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->c:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public drawCornerShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V
    .locals 19
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    cmpg-float v8, v4, v7

    if-gez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 132
    :goto_0
    iget-object v9, v0, Lcom/google/android/material/shadow/ShadowRenderer;->g:Landroid/graphics/Path;

    const/4 v10, 0x3

    const/4 v11, 0x2

    .line 134
    sget-object v16, Lcom/google/android/material/shadow/ShadowRenderer;->k:[I

    if-eqz v8, :cond_1

    .line 135
    aput v6, v16, v6

    .line 136
    iget v6, v0, Lcom/google/android/material/shadow/ShadowRenderer;->f:I

    aput v6, v16, v5

    .line 137
    iget v6, v0, Lcom/google/android/material/shadow/ShadowRenderer;->e:I

    aput v6, v16, v11

    .line 138
    iget v6, v0, Lcom/google/android/material/shadow/ShadowRenderer;->d:I

    aput v6, v16, v10

    move/from16 v12, p5

    goto :goto_1

    .line 141
    :cond_1
    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    .line 142
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    invoke-virtual {v9, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v12, p5

    .line 143
    invoke-virtual {v9, v2, v12, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 144
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    neg-int v13, v3

    int-to-float v13, v13

    .line 146
    invoke-virtual {v2, v13, v13}, Landroid/graphics/RectF;->inset(FF)V

    .line 147
    aput v6, v16, v6

    .line 148
    iget v6, v0, Lcom/google/android/material/shadow/ShadowRenderer;->d:I

    aput v6, v16, v5

    .line 149
    iget v6, v0, Lcom/google/android/material/shadow/ShadowRenderer;->e:I

    aput v6, v16, v11

    .line 150
    iget v6, v0, Lcom/google/android/material/shadow/ShadowRenderer;->f:I

    aput v6, v16, v10

    .line 153
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float v15, v6, v10

    cmpg-float v6, v15, v7

    if-gtz v6, :cond_2

    return-void

    :cond_2
    int-to-float v3, v3

    div-float/2addr v3, v15

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v3, v6, v3

    sub-float v7, v6, v3

    div-float/2addr v7, v10

    add-float/2addr v7, v3

    .line 161
    sget-object v17, Lcom/google/android/material/shadow/ShadowRenderer;->l:[F

    aput v3, v17, v5

    .line 162
    aput v7, v17, v11

    .line 163
    new-instance v12, Landroid/graphics/RadialGradient;

    .line 164
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    .line 165
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v12 .. v18}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 170
    iget-object v3, v0, Lcom/google/android/material/shadow/ShadowRenderer;->b:Landroid/graphics/Paint;

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 171
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 172
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 173
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v5, v7

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Canvas;->scale(FF)V

    if-nez v8, :cond_3

    .line 176
    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v9, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 178
    iget-object v5, v0, Lcom/google/android/material/shadow/ShadowRenderer;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    const/4 v5, 0x1

    move-object v6, v3

    move/from16 v3, p5

    .line 181
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawEdgeShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 96
    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    int-to-float v1, p4

    add-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->bottom:F

    neg-int p4, p4

    int-to-float p4, p4

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p3, v0, p4}, Landroid/graphics/RectF;->offset(FF)V

    .line 99
    sget-object v6, Lcom/google/android/material/shadow/ShadowRenderer;->i:[I

    const/4 p4, 0x0

    iget v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->f:I

    aput v0, v6, p4

    const/4 p4, 0x1

    .line 100
    iget v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->e:I

    aput v0, v6, p4

    const/4 p4, 0x2

    .line 101
    iget v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->d:I

    aput v0, v6, p4

    .line 103
    iget-object p4, p0, Lcom/google/android/material/shadow/ShadowRenderer;->c:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/LinearGradient;

    iget v2, p3, Landroid/graphics/RectF;->left:F

    iget v3, p3, Landroid/graphics/RectF;->top:F

    iget v5, p3, Landroid/graphics/RectF;->bottom:F

    sget-object v7, Lcom/google/android/material/shadow/ShadowRenderer;->j:[F

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v4, v2

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 114
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 115
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getShadowPaint()Landroid/graphics/Paint;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->a:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setShadowColor(I)V
    .locals 1

    const/16 v0, 0x44

    .line 87
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->d:I

    const/16 v0, 0x14

    .line 88
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->e:I

    const/4 v0, 0x0

    .line 89
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/shadow/ShadowRenderer;->f:I

    .line 90
    iget-object p1, p0, Lcom/google/android/material/shadow/ShadowRenderer;->a:Landroid/graphics/Paint;

    iget v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->d:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
