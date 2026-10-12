.class Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# static fields
.field public static final p:Landroid/graphics/Matrix;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/Matrix;

.field public d:Landroid/graphics/Paint;

.field public e:Landroid/graphics/Paint;

.field public f:Landroid/graphics/PathMeasure;

.field public final g:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/Boolean;

.field public final o:Landroidx/collection/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1170
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->p:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 1181
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->h:F

    .line 1182
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->i:F

    .line 1183
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->j:F

    .line 1184
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->k:F

    const/16 v0, 0xff

    .line 1185
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->l:I

    const/4 v0, 0x0

    .line 1186
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->m:Ljava/lang/String;

    .line 1187
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->n:Ljava/lang/Boolean;

    .line 1189
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->o:Landroidx/collection/ArrayMap;

    .line 1192
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;

    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->g:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;

    .line 1193
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->a:Landroid/graphics/Path;

    .line 1194
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->b:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;)V
    .locals 3

    .line 1216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 1181
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->h:F

    .line 1182
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->i:F

    .line 1183
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->j:F

    .line 1184
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->k:F

    const/16 v0, 0xff

    .line 1185
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->l:I

    const/4 v0, 0x0

    .line 1186
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->m:Ljava/lang/String;

    .line 1187
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->n:Ljava/lang/Boolean;

    .line 1189
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->o:Landroidx/collection/ArrayMap;

    .line 1217
    new-instance v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->g:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;

    invoke-direct {v1, v2, v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;Landroidx/collection/ArrayMap;)V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->g:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;

    .line 1218
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->a:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->a:Landroid/graphics/Path;

    .line 1219
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->b:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->b:Landroid/graphics/Path;

    .line 1220
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->h:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->h:F

    .line 1221
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->i:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->i:F

    .line 1222
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->j:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->j:F

    .line 1223
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->k:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->k:F

    .line 1225
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->l:I

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->l:I

    .line 1226
    iget-object v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->m:Ljava/lang/String;

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->m:Ljava/lang/String;

    .line 1227
    iget-object v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->m:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1228
    invoke-virtual {v0, v1, p0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    :cond_0
    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->n:Ljava/lang/Boolean;

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->n:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 22

    move-object/from16 v7, p1

    const/4 v8, 0x1

    .line 1239
    iget-object v0, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->a:Landroid/graphics/Matrix;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1241
    iget-object v2, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->a:Landroid/graphics/Matrix;

    iget-object v0, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->j:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 1244
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1247
    :goto_0
    iget-object v0, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_13

    .line 1248
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;

    .line 1249
    instance-of v1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;

    if-eqz v1, :cond_0

    .line 1250
    move-object v1, v0

    check-cast v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 1251
    invoke-virtual/range {v0 .. v6}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->a(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    move-object v1, v0

    move/from16 v11, p5

    move-object/from16 v19, v2

    const/16 v17, 0x1

    move-object/from16 v2, p6

    goto/16 :goto_e

    :cond_0
    move-object/from16 v1, p0

    move-object/from16 v3, p3

    .line 1253
    instance-of v4, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;

    if-eqz v4, :cond_12

    .line 1254
    check-cast v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;

    move/from16 v4, p4

    int-to-float v5, v4

    .line 1269
    iget v11, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->j:F

    div-float/2addr v5, v11

    move/from16 v11, p5

    int-to-float v12, v11

    .line 1270
    iget v13, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->k:F

    div-float/2addr v12, v13

    .line 1271
    invoke-static {v5, v12}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 1274
    iget-object v14, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->c:Landroid/graphics/Matrix;

    invoke-virtual {v14, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1275
    invoke-virtual {v14, v5, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v15, 0x4

    .line 1393
    new-array v15, v15, [F

    fill-array-data v15, :array_0

    .line 1394
    invoke-virtual {v2, v15}, Landroid/graphics/Matrix;->mapVectors([F)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1395
    aget v12, v15, v9

    const/16 v16, 0x0

    float-to-double v5, v12

    aget v12, v15, v8

    const/16 v17, 0x1

    const/16 v18, 0x0

    float-to-double v8, v12

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v5, v5

    const/4 v6, 0x2

    .line 1396
    aget v8, v15, v6

    float-to-double v8, v8

    const/4 v12, 0x3

    const/16 v19, 0x2

    aget v6, v15, v12

    move/from16 v20, v13

    const/16 v21, 0x3

    float-to-double v12, v6

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v6, v8

    .line 1397
    aget v8, v15, v18

    aget v9, v15, v17

    aget v12, v15, v19

    aget v13, v15, v21

    mul-float v8, v8, v13

    mul-float v9, v9, v12

    sub-float/2addr v8, v9

    .line 1399
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    cmpl-float v6, v5, v16

    if-lez v6, :cond_1

    .line 1403
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v6, v5

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    cmpl-float v5, v6, v16

    if-nez v5, :cond_2

    goto/16 :goto_d

    .line 1283
    :cond_2
    iget-object v5, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->toPath(Landroid/graphics/Path;)V

    .line 1286
    iget-object v8, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->b:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 1288
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->isClipPath()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1289
    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->c:I

    if-nez v0, :cond_3

    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_2

    :cond_3
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_2
    invoke-virtual {v8, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1291
    invoke-virtual {v8, v5, v14}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 1292
    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto/16 :goto_d

    .line 1294
    :cond_4
    check-cast v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;

    .line 1295
    iget v9, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->i:F

    cmpl-float v12, v9, v16

    if-nez v12, :cond_6

    iget v12, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->j:F

    cmpl-float v12, v12, p2

    if-eqz v12, :cond_5

    goto :goto_3

    :cond_5
    move-object/from16 v19, v2

    goto :goto_5

    .line 1296
    :cond_6
    :goto_3
    iget v12, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->k:F

    add-float/2addr v9, v12

    rem-float v9, v9, p2

    .line 1297
    iget v13, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->j:F

    add-float/2addr v13, v12

    rem-float v13, v13, p2

    .line 1299
    iget-object v12, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->f:Landroid/graphics/PathMeasure;

    if-nez v12, :cond_7

    .line 1300
    new-instance v12, Landroid/graphics/PathMeasure;

    invoke-direct {v12}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v12, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->f:Landroid/graphics/PathMeasure;

    .line 1302
    :cond_7
    iget-object v12, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->f:Landroid/graphics/PathMeasure;

    const/4 v15, 0x0

    invoke-virtual {v12, v5, v15}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 1304
    iget-object v12, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->f:Landroid/graphics/PathMeasure;

    invoke-virtual {v12}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v12

    mul-float v9, v9, v12

    mul-float v13, v13, v12

    .line 1307
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    cmpl-float v18, v9, v13

    if-lez v18, :cond_8

    .line 1309
    iget-object v15, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->f:Landroid/graphics/PathMeasure;

    move-object/from16 v19, v2

    const/4 v2, 0x1

    invoke-virtual {v15, v9, v12, v5, v2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 1310
    iget-object v9, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->f:Landroid/graphics/PathMeasure;

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v13, v5, v2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto :goto_4

    :cond_8
    move-object/from16 v19, v2

    const/4 v2, 0x1

    const/4 v12, 0x0

    .line 1312
    iget-object v15, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->f:Landroid/graphics/PathMeasure;

    invoke-virtual {v15, v9, v13, v5, v2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 1314
    :goto_4
    invoke-virtual {v5, v12, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1316
    :goto_5
    invoke-virtual {v8, v5, v14}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 1318
    iget-object v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->f:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v2}, Landroidx/core/content/res/ComplexColorCompat;->willDraw()Z

    move-result v2

    const/16 v9, 0xff

    const/4 v12, 0x0

    const/high16 v13, 0x437f0000    # 255.0f

    if-eqz v2, :cond_c

    .line 1319
    iget-object v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->f:Landroidx/core/content/res/ComplexColorCompat;

    .line 1320
    iget-object v15, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->e:Landroid/graphics/Paint;

    if-nez v15, :cond_9

    .line 1321
    new-instance v15, Landroid/graphics/Paint;

    const p2, 0xffffff

    const/4 v5, 0x1

    invoke-direct {v15, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v15, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->e:Landroid/graphics/Paint;

    .line 1322
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_6

    :cond_9
    const p2, 0xffffff

    .line 1325
    :goto_6
    iget-object v5, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->e:Landroid/graphics/Paint;

    .line 1326
    invoke-virtual {v2}, Landroidx/core/content/res/ComplexColorCompat;->isGradient()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1327
    invoke-virtual {v2}, Landroidx/core/content/res/ComplexColorCompat;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    .line 1328
    invoke-virtual {v2, v14}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1329
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1330
    iget v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->h:F

    mul-float v2, v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v16, 0x437f0000    # 255.0f

    :goto_7
    move-object/from16 v2, p6

    goto :goto_8

    .line 1332
    :cond_a
    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1333
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1334
    invoke-virtual {v2}, Landroidx/core/content/res/ComplexColorCompat;->getColor()I

    move-result v2

    iget v15, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->h:F

    sget-object v16, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->j:Landroid/graphics/PorterDuff$Mode;

    const/high16 v16, 0x437f0000    # 255.0f

    .line 687
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    and-int v2, v2, p2

    int-to-float v13, v13

    mul-float v13, v13, v15

    float-to-int v13, v13

    shl-int/lit8 v13, v13, 0x18

    or-int/2addr v2, v13

    .line 1334
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7

    .line 1336
    :goto_8
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1337
    iget v13, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->c:I

    if-nez v13, :cond_b

    sget-object v13, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_9

    :cond_b
    sget-object v13, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_9
    invoke-virtual {v8, v13}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1339
    invoke-virtual {v3, v8, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_a

    :cond_c
    move-object/from16 v2, p6

    const p2, 0xffffff

    const/high16 v16, 0x437f0000    # 255.0f

    .line 1342
    :goto_a
    iget-object v5, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->d:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v5}, Landroidx/core/content/res/ComplexColorCompat;->willDraw()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1343
    iget-object v5, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->d:Landroidx/core/content/res/ComplexColorCompat;

    .line 1344
    iget-object v13, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->d:Landroid/graphics/Paint;

    if-nez v13, :cond_d

    .line 1345
    new-instance v13, Landroid/graphics/Paint;

    const/4 v15, 0x1

    invoke-direct {v13, v15}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v13, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->d:Landroid/graphics/Paint;

    .line 1346
    sget-object v15, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1349
    :cond_d
    iget-object v13, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->d:Landroid/graphics/Paint;

    .line 1350
    iget-object v15, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->m:Landroid/graphics/Paint$Join;

    if-eqz v15, :cond_e

    .line 1351
    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1354
    :cond_e
    iget-object v15, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->l:Landroid/graphics/Paint$Cap;

    if-eqz v15, :cond_f

    .line 1355
    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1358
    :cond_f
    iget v15, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->n:F

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 1359
    invoke-virtual {v5}, Landroidx/core/content/res/ComplexColorCompat;->isGradient()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 1360
    invoke-virtual {v5}, Landroidx/core/content/res/ComplexColorCompat;->getShader()Landroid/graphics/Shader;

    move-result-object v5

    .line 1361
    invoke-virtual {v5, v14}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1362
    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1363
    iget v5, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->g:F

    mul-float v5, v5, v16

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_b

    .line 1365
    :cond_10
    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1366
    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1367
    invoke-virtual {v5}, Landroidx/core/content/res/ComplexColorCompat;->getColor()I

    move-result v5

    iget v9, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->g:F

    sget-object v12, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->j:Landroid/graphics/PorterDuff$Mode;

    .line 687
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    and-int v5, v5, p2

    int-to-float v12, v12

    mul-float v12, v12, v9

    float-to-int v9, v12

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v5, v9

    .line 1367
    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1370
    :goto_b
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    mul-float v5, v20, v6

    .line 1372
    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->e:F

    mul-float v0, v0, v5

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1373
    invoke-virtual {v3, v8, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_11
    :goto_c
    const/16 v17, 0x1

    goto :goto_e

    :cond_12
    move/from16 v4, p4

    move/from16 v11, p5

    :goto_d
    move-object/from16 v19, v2

    move-object/from16 v2, p6

    goto :goto_c

    :goto_e
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v19

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_13
    move-object/from16 v1, p0

    move-object/from16 v3, p3

    .line 1259
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 7

    .line 1264
    sget-object v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->p:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->g:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->a(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method public getAlpha()F
    .locals 2

    .line 1213
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->getRootAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRootAlpha()I
    .locals 1

    .line 1202
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->l:I

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 1412
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1413
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->g:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->isStateful()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->n:Ljava/lang/Boolean;

    .line 1415
    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onStateChanged([I)Z
    .locals 1

    .line 1419
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->g:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->onStateChanged([I)Z

    move-result p1

    return p1
.end method

.method public setAlpha(F)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 1208
    invoke-virtual {p0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->setRootAlpha(I)V

    return-void
.end method

.method public setRootAlpha(I)V
    .locals 0

    .line 1198
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$g;->l:I

    return-void
.end method
