.class final Lcom/google/android/material/transition/MaterialContainerTransform$d;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/MaterialContainerTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final A:Lcom/google/android/material/transition/MaterialContainerTransform$c;

.field public final B:Lcom/google/android/material/transition/a;

.field public final C:Lcom/google/android/material/transition/h;

.field public final D:Z

.field public final E:Landroid/graphics/Paint;

.field public final F:Landroid/graphics/Path;

.field public G:Lcom/google/android/material/transition/c;

.field public H:Lcom/google/android/material/transition/j;

.field public I:Landroid/graphics/RectF;

.field public J:F

.field public K:F

.field public L:F

.field public final a:Landroid/view/View;

.field public final b:Landroid/graphics/RectF;

.field public final c:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public final d:F

.field public final e:Landroid/view/View;

.field public final f:Landroid/graphics/RectF;

.field public final g:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public final h:F

.field public final i:Landroid/graphics/Paint;

.field public final j:Landroid/graphics/Paint;

.field public final k:Landroid/graphics/Paint;

.field public final l:Landroid/graphics/Paint;

.field public final m:Landroid/graphics/Paint;

.field public final n:Lcom/google/android/material/transition/k;

.field public final o:Landroid/graphics/PathMeasure;

.field public final p:F

.field public final q:[F

.field public final r:Z

.field public final s:F

.field public final t:F

.field public final u:Z

.field public final v:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public final w:Landroid/graphics/RectF;

.field public final x:Landroid/graphics/RectF;

.field public final y:Landroid/graphics/RectF;

.field public final z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroidx/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/a;Lcom/google/android/material/transition/h;Lcom/google/android/material/transition/MaterialContainerTransform$c;Z)V
    .locals 10

    move-object/from16 v0, p7

    .line 1152
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 1094
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->i:Landroid/graphics/Paint;

    .line 1095
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->j:Landroid/graphics/Paint;

    .line 1096
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->k:Landroid/graphics/Paint;

    .line 1097
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->l:Landroid/graphics/Paint;

    .line 1098
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->m:Landroid/graphics/Paint;

    .line 1101
    new-instance v5, Lcom/google/android/material/transition/k;

    invoke-direct {v5}, Lcom/google/android/material/transition/k;-><init>()V

    iput-object v5, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->n:Lcom/google/android/material/transition/k;

    const/4 v5, 0x2

    .line 1104
    new-array v6, v5, [F

    iput-object v6, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->q:[F

    .line 1111
    new-instance v7, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v7}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object v7, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->v:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 1122
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->E:Landroid/graphics/Paint;

    .line 1123
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->F:Landroid/graphics/Path;

    .line 1153
    iput-object p2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->a:Landroid/view/View;

    .line 1154
    iput-object p3, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->b:Landroid/graphics/RectF;

    .line 1155
    iput-object p4, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->c:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 1156
    iput p5, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->d:F

    move-object/from16 v9, p6

    .line 1157
    iput-object v9, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->e:Landroid/view/View;

    .line 1158
    iput-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->f:Landroid/graphics/RectF;

    move-object/from16 v9, p8

    .line 1159
    iput-object v9, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->g:Lcom/google/android/material/shape/ShapeAppearanceModel;

    move/from16 v9, p9

    .line 1160
    iput v9, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->h:F

    move/from16 v9, p14

    .line 1161
    iput-boolean v9, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->r:Z

    move/from16 v9, p15

    .line 1162
    iput-boolean v9, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->u:Z

    move-object/from16 v9, p16

    .line 1163
    iput-object v9, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->B:Lcom/google/android/material/transition/a;

    move-object/from16 v9, p17

    .line 1164
    iput-object v9, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->C:Lcom/google/android/material/transition/h;

    move-object/from16 v9, p18

    .line 1165
    iput-object v9, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->A:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    move/from16 v9, p19

    .line 1166
    iput-boolean v9, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->D:Z

    .line 1169
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v9, "window"

    invoke-virtual {p2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 1170
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1171
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1172
    iget p2, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p2, p2

    iput p2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->s:F

    .line 1173
    iget p2, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p2, p2

    iput p2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->t:F

    move/from16 p2, p10

    .line 1175
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 p2, p11

    .line 1176
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 p2, p12

    .line 1177
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, 0x0

    .line 1179
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 1180
    invoke-virtual {v7, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatibilityMode(I)V

    .line 1182
    invoke-virtual {v7, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowBitmapDrawingEnable(Z)V

    const v1, -0x777778

    .line 1183
    invoke-virtual {v7, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowColor(I)V

    .line 1185
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->w:Landroid/graphics/RectF;

    .line 1186
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->x:Landroid/graphics/RectF;

    .line 1187
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->y:Landroid/graphics/RectF;

    .line 1188
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->z:Landroid/graphics/RectF;

    .line 1467
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v3, p3, Landroid/graphics/RectF;->top:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1467
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1193
    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1, v3, v2}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object p1

    .line 1194
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->o:Landroid/graphics/PathMeasure;

    .line 1195
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->p:F

    .line 1200
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    aput p1, v6, p2

    const/4 p1, 0x1

    .line 1201
    iget p2, p3, Landroid/graphics/RectF;->top:F

    aput p2, v6, p1

    .line 1203
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1204
    sget-object p1, Lcom/google/android/material/transition/u;->a:Landroid/graphics/RectF;

    .line 271
    new-instance p2, Landroid/graphics/LinearGradient;

    sget-object p1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 p3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move/from16 v3, p13

    move-object/from16 p9, p1

    move/from16 p7, p13

    move/from16 p8, v3

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/16 p6, 0x0

    invoke-direct/range {p2 .. p9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 1204
    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1206
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 1207
    invoke-virtual {v8, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x0

    .line 1210
    invoke-virtual {p0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$d;->d(F)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1309
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->k:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transition/MaterialContainerTransform$d;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1312
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->y:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->H:Lcom/google/android/material/transition/j;

    iget v5, v0, Lcom/google/android/material/transition/j;->b:F

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->G:Lcom/google/android/material/transition/c;

    iget v6, v0, Lcom/google/android/material/transition/c;->b:I

    new-instance v7, Lcom/google/android/material/transition/m;

    invoke-direct {v7, p0}, Lcom/google/android/material/transition/m;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$d;)V

    move-object v1, p1

    .line 1310
    invoke-static/range {v1 .. v7}, Lcom/google/android/material/transition/u;->f(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILcom/google/android/material/transition/u$a;)V

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1291
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->j:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transition/MaterialContainerTransform$d;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1294
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->w:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->H:Lcom/google/android/material/transition/j;

    iget v5, v0, Lcom/google/android/material/transition/j;->a:F

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->G:Lcom/google/android/material/transition/c;

    iget v6, v0, Lcom/google/android/material/transition/c;->a:I

    new-instance v7, Lcom/google/android/material/transition/l;

    invoke-direct {v7, p0}, Lcom/google/android/material/transition/l;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$d;)V

    move-object v1, p1

    .line 1292
    invoke-static/range {v1 .. v7}, Lcom/google/android/material/transition/u;->f(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILcom/google/android/material/transition/u$a;)V

    return-void
.end method

.method public final c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .line 1329
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 1330
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final d(F)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v2, p1

    .line 1355
    iput v2, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->L:F

    .line 1358
    iget-boolean v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->r:Z

    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    invoke-static {v9, v3, v2}, Lcom/google/android/material/transition/u;->c(FFF)F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v3, v9, v2}, Lcom/google/android/material/transition/u;->c(FFF)F

    move-result v1

    :goto_0
    float-to-int v1, v1

    iget-object v3, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->m:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1361
    iget v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->p:F

    mul-float v3, v1, v2

    iget-object v4, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->o:Landroid/graphics/PathMeasure;

    iget-object v5, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->q:[F

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    const/4 v3, 0x0

    .line 1362
    aget v7, v5, v3

    const/4 v8, 0x1

    .line 1363
    aget v10, v5, v8

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v12, v2, v11

    if-gtz v12, :cond_2

    cmpg-float v13, v2, v9

    if-gez v13, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move v12, v10

    move v10, v7

    goto :goto_4

    :cond_2
    :goto_2
    if-lez v12, :cond_3

    sub-float v12, v2, v11

    const v13, 0x3c23d700    # 0.00999999f

    div-float/2addr v12, v13

    const v13, 0x3f7d70a4    # 0.99f

    goto :goto_3

    :cond_3
    const v13, 0x3c23d70a    # 0.01f

    div-float v12, v2, v13

    const/high16 v14, -0x40800000    # -1.0f

    mul-float v12, v12, v14

    :goto_3
    mul-float v1, v1, v13

    .line 1377
    invoke-virtual {v4, v1, v5, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 1379
    aget v1, v5, v3

    .line 1380
    aget v3, v5, v8

    invoke-static {v7, v1, v12, v7}, L_COROUTINE/a;->a(FFFF)F

    move-result v7

    invoke-static {v10, v3, v12, v10}, L_COROUTINE/a;->a(FFFF)F

    move-result v10

    goto :goto_1

    .line 1556
    :goto_4
    iget-object v13, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->A:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    iget-object v1, v13, Lcom/google/android/material/transition/MaterialContainerTransform$c;->b:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 1531
    iget v1, v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->a:F

    .line 1386
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1531
    iget-object v1, v13, Lcom/google/android/material/transition/MaterialContainerTransform$c;->b:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    iget v1, v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->b:F

    .line 1387
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1393
    iget-object v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 1394
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    .line 1395
    iget-object v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->f:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 1396
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v8

    .line 1389
    iget-object v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->C:Lcom/google/android/material/transition/h;

    invoke-interface/range {v1 .. v8}, Lcom/google/android/material/transition/h;->evaluate(FFFFFFF)Lcom/google/android/material/transition/j;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->H:Lcom/google/android/material/transition/j;

    .line 1397
    iget v2, v1, Lcom/google/android/material/transition/j;->c:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    sub-float v3, v10, v2

    add-float/2addr v2, v10

    iget v1, v1, Lcom/google/android/material/transition/j;->d:F

    add-float/2addr v1, v12

    iget-object v8, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->w:Landroid/graphics/RectF;

    invoke-virtual {v8, v3, v12, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1402
    iget-object v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->H:Lcom/google/android/material/transition/j;

    iget v2, v1, Lcom/google/android/material/transition/j;->e:F

    div-float/2addr v2, v7

    sub-float v3, v10, v2

    add-float/2addr v2, v10

    iget v1, v1, Lcom/google/android/material/transition/j;->f:F

    add-float/2addr v1, v12

    iget-object v4, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->y:Landroid/graphics/RectF;

    invoke-virtual {v4, v3, v12, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1409
    iget-object v10, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->x:Landroid/graphics/RectF;

    invoke-virtual {v10, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1410
    iget-object v12, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->z:Landroid/graphics/RectF;

    invoke-virtual {v12, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1531
    iget-object v1, v13, Lcom/google/android/material/transition/MaterialContainerTransform$c;->c:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    iget v2, v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->a:F

    .line 1411
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1531
    iget v1, v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->b:F

    .line 1412
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1413
    iget-object v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->H:Lcom/google/android/material/transition/j;

    iget-object v14, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->C:Lcom/google/android/material/transition/h;

    invoke-interface {v14, v1}, Lcom/google/android/material/transition/h;->shouldMaskStartBounds(Lcom/google/android/material/transition/j;)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object v1, v10

    goto :goto_5

    :cond_4
    move-object v1, v12

    :goto_5
    const/4 v2, 0x0

    move-object v5, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v7, v5

    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v5, p1

    .line 196
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/transition/u;->d(FFFFFZ)F

    move-result v1

    if-eqz v15, :cond_5

    goto :goto_6

    :cond_5
    sub-float v1, v11, v1

    .line 1417
    :goto_6
    iget-object v2, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->H:Lcom/google/android/material/transition/j;

    invoke-interface {v14, v7, v1, v2}, Lcom/google/android/material/transition/h;->applyMask(Landroid/graphics/RectF;FLcom/google/android/material/transition/j;)V

    .line 1420
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v10, Landroid/graphics/RectF;->left:F

    iget v3, v12, Landroid/graphics/RectF;->left:F

    .line 1422
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, v10, Landroid/graphics/RectF;->top:F

    iget v4, v12, Landroid/graphics/RectF;->top:F

    .line 1423
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, v10, Landroid/graphics/RectF;->right:F

    iget v5, v12, Landroid/graphics/RectF;->right:F

    .line 1424
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, v10, Landroid/graphics/RectF;->bottom:F

    iget v6, v12, Landroid/graphics/RectF;->bottom:F

    .line 1425
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->I:Landroid/graphics/RectF;

    .line 1427
    iget-object v7, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->n:Lcom/google/android/material/transition/k;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    iget-object v1, v13, Lcom/google/android/material/transition/MaterialContainerTransform$c;->d:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-virtual {v1}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->getStart()F

    move-result v4

    .line 60
    invoke-virtual {v1}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->getEnd()F

    move-result v5

    .line 244
    iget-object v14, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->c:Lcom/google/android/material/shape/ShapeAppearanceModel;

    cmpg-float v1, p1, v4

    if-gez v1, :cond_6

    move/from16 v2, p1

    move-object v3, v12

    goto/16 :goto_9

    .line 247
    :cond_6
    iget-object v15, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->g:Lcom/google/android/material/shape/ShapeAppearanceModel;

    cmpl-float v1, p1, v5

    if-lez v1, :cond_7

    move/from16 v2, p1

    move-object v3, v12

    move-object v14, v15

    goto/16 :goto_9

    .line 251
    :cond_7
    new-instance v1, Lcom/google/android/material/transition/t;

    move/from16 v6, p1

    move-object v2, v8

    move-object v3, v12

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/transition/t;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V

    move-object v4, v1

    move-object v1, v2

    move v2, v6

    .line 174
    invoke-virtual {v14}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v5

    cmpl-float v5, v5, v9

    if-nez v5, :cond_9

    .line 175
    invoke-virtual {v14}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v5

    cmpl-float v5, v5, v9

    if-nez v5, :cond_9

    .line 176
    invoke-virtual {v14}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v5

    cmpl-float v5, v5, v9

    if-nez v5, :cond_9

    .line 177
    invoke-virtual {v14}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v1

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_8

    goto :goto_7

    :cond_8
    move-object v1, v15

    goto :goto_8

    :cond_9
    :goto_7
    move-object v1, v14

    .line 152
    :goto_8
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 155
    invoke-virtual {v14}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v5

    .line 156
    invoke-virtual {v15}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v6

    .line 154
    invoke-interface {v4, v5, v6}, Lcom/google/android/material/transition/u$b;->apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v5

    .line 153
    invoke-virtual {v1, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 159
    invoke-virtual {v14}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v5

    .line 160
    invoke-virtual {v15}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v6

    .line 158
    invoke-interface {v4, v5, v6}, Lcom/google/android/material/transition/u$b;->apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v5

    .line 157
    invoke-virtual {v1, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 163
    invoke-virtual {v14}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v5

    .line 164
    invoke-virtual {v15}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v6

    .line 162
    invoke-interface {v4, v5, v6}, Lcom/google/android/material/transition/u$b;->apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v5

    .line 161
    invoke-virtual {v1, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 167
    invoke-virtual {v14}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v5

    .line 168
    invoke-virtual {v15}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v6

    .line 166
    invoke-interface {v4, v5, v6}, Lcom/google/android/material/transition/u$b;->apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v4

    .line 165
    invoke-virtual {v1, v4}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v14

    .line 62
    :goto_9
    iput-object v14, v7, Lcom/google/android/material/transition/k;->e:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 71
    iget-object v1, v7, Lcom/google/android/material/transition/k;->b:Landroid/graphics/Path;

    iget-object v4, v7, Lcom/google/android/material/transition/k;->d:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    invoke-virtual {v4, v14, v11, v10, v1}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 72
    iget-object v5, v7, Lcom/google/android/material/transition/k;->e:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v6, v7, Lcom/google/android/material/transition/k;->c:Landroid/graphics/Path;

    invoke-virtual {v4, v5, v11, v3, v6}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 76
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_a

    .line 77
    iget-object v3, v7, Lcom/google/android/material/transition/k;->a:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v3, v1, v6, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 1437
    :cond_a
    iget v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->d:F

    iget v3, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->h:F

    invoke-static {v1, v3, v2}, Lcom/google/android/material/transition/u;->c(FFF)F

    move-result v1

    iput v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->J:F

    .line 1438
    iget-object v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->I:Landroid/graphics/RectF;

    .line 1485
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v3, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->s:F

    div-float v3, v3, v16

    div-float/2addr v1, v3

    sub-float/2addr v1, v11

    const v3, 0x3e99999a    # 0.3f

    mul-float v1, v1, v3

    .line 1439
    iget-object v3, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->I:Landroid/graphics/RectF;

    .line 1497
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v4, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->t:F

    div-float/2addr v3, v4

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float v3, v3, v4

    .line 1440
    iget v4, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->J:F

    mul-float v1, v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    mul-float v3, v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    .line 1441
    iput v3, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->K:F

    .line 1442
    iget-object v5, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->l:Landroid/graphics/Paint;

    const/high16 v6, 0x2d000000

    invoke-virtual {v5, v4, v1, v3, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1531
    iget-object v1, v13, Lcom/google/android/material/transition/MaterialContainerTransform$c;->a:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    iget v3, v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->a:F

    .line 1446
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1531
    iget v1, v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->b:F

    .line 1447
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1448
    iget-object v4, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->B:Lcom/google/android/material/transition/a;

    const v5, 0x3eb33333    # 0.35f

    .line 1449
    invoke-interface {v4, v2, v3, v1, v5}, Lcom/google/android/material/transition/a;->evaluate(FFFF)Lcom/google/android/material/transition/c;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->G:Lcom/google/android/material/transition/c;

    .line 1456
    iget-object v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->j:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eqz v2, :cond_b

    .line 1457
    iget-object v2, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->G:Lcom/google/android/material/transition/c;

    iget v2, v2, Lcom/google/android/material/transition/c;->a:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1459
    :cond_b
    iget-object v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->k:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eqz v2, :cond_c

    .line 1460
    iget-object v2, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->G:Lcom/google/android/material/transition/c;

    iget v2, v2, Lcom/google/android/material/transition/c;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1463
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1215
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->m:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-lez v1, :cond_0

    .line 1216
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1219
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->D:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 1221
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->u:Z

    iget-object v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->n:Lcom/google/android/material/transition/k;

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->J:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    .line 1251
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 92
    iget-object v2, v3, Lcom/google/android/material/transition/k;->a:Landroid/graphics/Path;

    .line 1252
    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 1254
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-le v2, v5, :cond_3

    .line 96
    iget-object v2, v3, Lcom/google/android/material/transition/k;->e:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 1266
    iget-object v5, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->I:Landroid/graphics/RectF;

    invoke-virtual {v2, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Landroid/graphics/RectF;)Z

    move-result v5

    iget-object v6, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->l:Landroid/graphics/Paint;

    if-eqz v5, :cond_2

    .line 1269
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->I:Landroid/graphics/RectF;

    invoke-interface {v2, v5}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v2

    .line 1270
    iget-object v5, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->I:Landroid/graphics/RectF;

    invoke-virtual {p1, v5, v2, v2, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 92
    :cond_2
    iget-object v2, v3, Lcom/google/android/material/transition/k;->a:Landroid/graphics/Path;

    .line 1273
    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 1278
    :cond_3
    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->v:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v5, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->I:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget v7, v5, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v8, v5, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v2, v6, v7, v8, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1283
    iget v5, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->J:F

    invoke-virtual {v2, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 1284
    iget v5, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->K:F

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowVerticalOffset(I)V

    .line 96
    iget-object v5, v3, Lcom/google/android/material/transition/k;->e:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 1285
    invoke-virtual {v2, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 1286
    invoke-virtual {v2, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1260
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 83
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v2, v5, :cond_5

    .line 84
    iget-object v2, v3, Lcom/google/android/material/transition/k;->a:Landroid/graphics/Path;

    .line 84
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_2

    .line 86
    :cond_5
    iget-object v2, v3, Lcom/google/android/material/transition/k;->b:Landroid/graphics/Path;

    .line 86
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 87
    iget-object v2, v3, Lcom/google/android/material/transition/k;->c:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 1229
    :goto_2
    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->i:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$d;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1231
    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->G:Lcom/google/android/material/transition/c;

    iget-boolean v2, v2, Lcom/google/android/material/transition/c;->c:Z

    if-eqz v2, :cond_6

    .line 1232
    invoke-virtual {p0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$d;->b(Landroid/graphics/Canvas;)V

    .line 1233
    invoke-virtual {p0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$d;->a(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 1235
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$d;->a(Landroid/graphics/Canvas;)V

    .line 1236
    invoke-virtual {p0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$d;->b(Landroid/graphics/Canvas;)V

    :goto_3
    if-eqz v0, :cond_8

    .line 1240
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1241
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->w:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->F:Landroid/graphics/Path;

    .line 1467
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v5, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1503
    iget v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->L:F

    iget-object v5, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->E:Landroid/graphics/Paint;

    cmpl-float v3, v3, v4

    if-nez v3, :cond_7

    .line 1504
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 1505
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_4

    .line 1507
    :cond_7
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const v2, -0xff01

    .line 1508
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1509
    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1242
    :goto_4
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->x:Landroid/graphics/RectF;

    const/16 v2, -0x100

    .line 1514
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1515
    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const v1, -0xff0100

    .line 1514
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1515
    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1244
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->z:Landroid/graphics/RectF;

    const v1, -0xff0001

    .line 1514
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1515
    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1245
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->y:Landroid/graphics/RectF;

    const v1, -0xffff01

    .line 1514
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1515
    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_8
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1336
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Setting alpha on is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1340
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Setting a color filter is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
