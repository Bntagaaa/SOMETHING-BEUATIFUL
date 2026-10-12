.class Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;
.super Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Ljava/util/ArrayList;

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public final j:Landroid/graphics/Matrix;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1506
    invoke-direct {p0, v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;-><init>(I)V

    .line 1445
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->a:Landroid/graphics/Matrix;

    .line 1449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 1451
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->c:F

    .line 1452
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->d:F

    .line 1453
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1454
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->f:F

    .line 1455
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->g:F

    .line 1456
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->h:F

    .line 1457
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->i:F

    .line 1461
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->j:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 1464
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;Landroidx/collection/ArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1466
    invoke-direct {p0, v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;-><init>(I)V

    .line 1445
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->a:Landroid/graphics/Matrix;

    .line 1449
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1451
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->c:F

    .line 1452
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->d:F

    .line 1453
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->e:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1454
    iput v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->f:F

    .line 1455
    iput v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->g:F

    .line 1456
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->h:F

    .line 1457
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->i:F

    .line 1461
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->j:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    .line 1464
    iput-object v4, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->k:Ljava/lang/String;

    .line 1467
    iget v4, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->c:F

    iput v4, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->c:F

    .line 1468
    iget v4, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->d:F

    iput v4, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->d:F

    .line 1469
    iget v4, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->e:F

    iput v4, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->e:F

    .line 1470
    iget v4, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->f:F

    iput v4, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->f:F

    .line 1471
    iget v4, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->g:F

    iput v4, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->g:F

    .line 1472
    iget v4, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->h:F

    iput v4, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->h:F

    .line 1473
    iget v4, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->i:F

    iput v4, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->i:F

    .line 1475
    iget-object v4, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->k:Ljava/lang/String;

    iput-object v4, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->k:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1478
    invoke-virtual {p2, v4, p0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    :cond_0
    iget-object v4, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->j:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1483
    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->b:Ljava/util/ArrayList;

    .line 1484
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 1485
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1486
    instance-of v4, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;

    if-eqz v4, :cond_1

    .line 1487
    check-cast v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;

    .line 1488
    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->b:Ljava/util/ArrayList;

    new-instance v5, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;

    invoke-direct {v5, v3, p2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;Landroidx/collection/ArrayMap;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1491
    :cond_1
    instance-of v4, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;

    if-eqz v4, :cond_2

    .line 1492
    new-instance v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;

    check-cast v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;

    .line 1840
    invoke-direct {v4, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;)V

    .line 1822
    iput v1, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->e:F

    .line 1825
    iput v2, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->g:F

    .line 1826
    iput v2, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->h:F

    .line 1827
    iput v1, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->i:F

    .line 1828
    iput v2, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->j:F

    .line 1829
    iput v1, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->k:F

    .line 1831
    sget-object v5, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->l:Landroid/graphics/Paint$Cap;

    .line 1832
    sget-object v5, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->m:Landroid/graphics/Paint$Join;

    const/high16 v5, 0x40800000    # 4.0f

    .line 1833
    iput v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->n:F

    .line 1841
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1843
    iget-object v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->d:Landroidx/core/content/res/ComplexColorCompat;

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->d:Landroidx/core/content/res/ComplexColorCompat;

    .line 1844
    iget v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->e:F

    iput v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->e:F

    .line 1845
    iget v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->g:F

    iput v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->g:F

    .line 1846
    iget-object v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->f:Landroidx/core/content/res/ComplexColorCompat;

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->f:Landroidx/core/content/res/ComplexColorCompat;

    .line 1847
    iget v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->c:I

    iput v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->c:I

    .line 1848
    iget v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->h:F

    iput v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->h:F

    .line 1849
    iget v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->i:F

    iput v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->i:F

    .line 1850
    iget v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->j:F

    iput v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->j:F

    .line 1851
    iget v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->k:F

    iput v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->k:F

    .line 1853
    iget-object v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->l:Landroid/graphics/Paint$Cap;

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->l:Landroid/graphics/Paint$Cap;

    .line 1854
    iget-object v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->m:Landroid/graphics/Paint$Join;

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->m:Landroid/graphics/Paint$Join;

    .line 1855
    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->n:F

    iput v3, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->n:F

    goto :goto_1

    .line 1493
    :cond_2
    instance-of v4, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;

    if-eqz v4, :cond_4

    .line 1494
    new-instance v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;

    check-cast v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$b;

    .line 1773
    invoke-direct {v4, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;)V

    .line 1498
    :goto_1
    iget-object v3, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1499
    iget-object v3, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->b:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1500
    invoke-virtual {p2, v3, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1496
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown object in the tree!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1563
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1564
    iget v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->d:F

    neg-float v1, v1

    iget v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->e:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1565
    iget v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->f:F

    iget v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->g:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1566
    iget v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->c:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1567
    iget v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->h:F

    iget v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->d:F

    add-float/2addr v1, v2

    iget v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->i:F

    iget v3, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->e:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 1510
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1514
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->j:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPivotX()F
    .locals 1

    .line 1586
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->d:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    .line 1599
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->e:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 1573
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->c:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .line 1612
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->f:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 1625
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->g:F

    return v0
.end method

.method public getTranslateX()F
    .locals 1

    .line 1638
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->h:F

    return v0
.end method

.method public getTranslateY()F
    .locals 1

    .line 1651
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->i:F

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 1518
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/a;->b:[I

    invoke-static {p1, p3, p2, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1532
    iget p2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->c:F

    const-string p3, "rotation"

    const/4 v0, 0x5

    invoke-static {p1, p4, p3, v0, p2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    iput p2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->c:F

    const/4 p2, 0x1

    .line 1535
    iget p3, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->d:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->d:F

    const/4 p2, 0x2

    .line 1536
    iget p3, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->e:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->e:F

    .line 1539
    iget p2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->f:F

    const-string p3, "scaleX"

    const/4 v0, 0x3

    invoke-static {p1, p4, p3, v0, p2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    iput p2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->f:F

    .line 1543
    iget p2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->g:F

    const-string p3, "scaleY"

    const/4 v0, 0x4

    invoke-static {p1, p4, p3, v0, p2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    iput p2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->g:F

    .line 1546
    iget p2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->h:F

    const-string p3, "translateX"

    const/4 v0, 0x6

    invoke-static {p1, p4, p3, v0, p2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    iput p2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->h:F

    .line 1548
    iget p2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->i:F

    const-string p3, "translateY"

    const/4 v0, 0x7

    invoke-static {p1, p4, p3, v0, p2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    iput p2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->i:F

    const/4 p2, 0x0

    .line 1552
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1554
    iput-object p2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->k:Ljava/lang/String;

    .line 1557
    :cond_0
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->a()V

    .line 1521
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public isStateful()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1664
    :goto_0
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1665
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;

    invoke-virtual {v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public onStateChanged([I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1675
    :goto_0
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1676
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;

    invoke-virtual {v2, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->onStateChanged([I)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public setPivotX(F)V
    .locals 1

    .line 1591
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->d:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1592
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->d:F

    .line 1593
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->a()V

    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1

    .line 1604
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->e:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1605
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->e:F

    .line 1606
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->a()V

    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .line 1578
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->c:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1579
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->c:F

    .line 1580
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->a()V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .line 1617
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->f:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1618
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->f:F

    .line 1619
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->a()V

    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .line 1630
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->g:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1631
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->g:F

    .line 1632
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->a()V

    :cond_0
    return-void
.end method

.method public setTranslateX(F)V
    .locals 1

    .line 1643
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->h:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1644
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->h:F

    .line 1645
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->a()V

    :cond_0
    return-void
.end method

.method public setTranslateY(F)V
    .locals 1

    .line 1656
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->i:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1657
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->i:F

    .line 1658
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;->a()V

    :cond_0
    return-void
.end method
