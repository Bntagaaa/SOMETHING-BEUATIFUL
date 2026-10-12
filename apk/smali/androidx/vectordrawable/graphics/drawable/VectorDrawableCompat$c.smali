.class Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;
.super Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public d:Landroidx/core/content/res/ComplexColorCompat;

.field public e:F

.field public f:Landroidx/core/content/res/ComplexColorCompat;

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:Landroid/graphics/Paint$Cap;

.field public m:Landroid/graphics/Paint$Join;

.field public n:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1835
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;-><init>()V

    const/4 v0, 0x0

    .line 1822
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1825
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->g:F

    .line 1826
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->h:F

    .line 1827
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->i:F

    .line 1828
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->j:F

    .line 1829
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->k:F

    .line 1831
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->l:Landroid/graphics/Paint$Cap;

    .line 1832
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->m:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 1833
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->n:F

    return-void
.end method


# virtual methods
.method public getFillAlpha()F
    .locals 1

    .line 2028
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->h:F

    return v0
.end method

.method public getFillColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 2018
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->f:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v0}, Landroidx/core/content/res/ComplexColorCompat;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeAlpha()F
    .locals 1

    .line 2007
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->g:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1987
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->d:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v0}, Landroidx/core/content/res/ComplexColorCompat;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 1997
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->e:F

    return v0
.end method

.method public getTrimPathEnd()F
    .locals 1

    .line 2048
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->j:F

    return v0
.end method

.method public getTrimPathOffset()F
    .locals 1

    .line 2058
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->k:F

    return v0
.end method

.method public getTrimPathStart()F
    .locals 1

    .line 2038
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->i:F

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7

    .line 1890
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/a;->c:[I

    invoke-static {p1, p3, p2, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1908
    const-string p1, "pathData"

    invoke-static {p4, p1}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 p1, 0x0

    .line 1915
    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1918
    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->b:Ljava/lang/String;

    :cond_1
    const/4 p1, 0x2

    .line 1921
    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1923
    invoke-static {p2}, Landroidx/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;

    move-result-object p2

    iput-object p2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->a:[Landroidx/core/graphics/PathParser$PathDataNode;

    .line 1926
    :cond_2
    const-string v4, "fillColor"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p3

    move-object v2, p4

    invoke-static/range {v1 .. v6}, Landroidx/core/content/res/TypedArrayUtils;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object p2

    iput-object p2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->f:Landroidx/core/content/res/ComplexColorCompat;

    .line 1928
    iget p2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->h:F

    const-string p3, "fillAlpha"

    const/16 p4, 0xc

    invoke-static {v1, v2, p3, p4, p2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    iput p2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->h:F

    .line 1930
    const-string p2, "strokeLineCap"

    const/16 p3, 0x8

    const/4 p4, -0x1

    invoke-static {v1, v2, p2, p3, p4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    .line 1932
    iget-object p3, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->l:Landroid/graphics/Paint$Cap;

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    if-eq p2, v0, :cond_4

    if-eq p2, p1, :cond_3

    goto :goto_0

    .line 1865
    :cond_3
    sget-object p3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 1863
    :cond_4
    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 1861
    :cond_5
    sget-object p3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 1932
    :goto_0
    iput-object p3, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->l:Landroid/graphics/Paint$Cap;

    .line 1933
    const-string p2, "strokeLineJoin"

    const/16 p3, 0x9

    invoke-static {v1, v2, p2, p3, p4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    .line 1935
    iget-object p3, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->m:Landroid/graphics/Paint$Join;

    if-eqz p2, :cond_8

    if-eq p2, v0, :cond_7

    if-eq p2, p1, :cond_6

    goto :goto_1

    .line 1878
    :cond_6
    sget-object p3, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_1

    .line 1876
    :cond_7
    sget-object p3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_1

    .line 1874
    :cond_8
    sget-object p3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 1935
    :goto_1
    iput-object p3, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->m:Landroid/graphics/Paint$Join;

    .line 1936
    iget p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->n:F

    const-string p2, "strokeMiterLimit"

    const/16 p3, 0xa

    invoke-static {v1, v2, p2, p3, p1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p1

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->n:F

    .line 1939
    const-string v4, "strokeColor"

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/core/content/res/TypedArrayUtils;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->d:Landroidx/core/content/res/ComplexColorCompat;

    .line 1941
    iget p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->g:F

    const-string p2, "strokeAlpha"

    const/16 p3, 0xb

    invoke-static {v1, v2, p2, p3, p1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p1

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->g:F

    .line 1943
    iget p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->e:F

    const-string p2, "strokeWidth"

    const/4 p3, 0x4

    invoke-static {v1, v2, p2, p3, p1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p1

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->e:F

    .line 1945
    iget p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->j:F

    const-string p2, "trimPathEnd"

    const/4 p3, 0x6

    invoke-static {v1, v2, p2, p3, p1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p1

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->j:F

    .line 1947
    iget p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->k:F

    const-string p2, "trimPathOffset"

    const/4 p3, 0x7

    invoke-static {v1, v2, p2, p3, p1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p1

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->k:F

    .line 1950
    iget p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->i:F

    const-string p2, "trimPathStart"

    const/4 p3, 0x5

    invoke-static {v1, v2, p2, p3, p1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p1

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->i:F

    .line 1953
    iget p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->c:I

    const-string p2, "fillType"

    const/16 p3, 0xd

    invoke-static {v1, v2, p2, p3, p1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$f;->c:I

    .line 1893
    :goto_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1960
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->f:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v0}, Landroidx/core/content/res/ComplexColorCompat;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->d:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v0}, Landroidx/core/content/res/ComplexColorCompat;->isStateful()Z

    move-result v0

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

.method public onStateChanged([I)Z
    .locals 2

    .line 1965
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->f:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/content/res/ComplexColorCompat;->onStateChanged([I)Z

    move-result v0

    .line 1966
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->d:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v1, p1}, Landroidx/core/content/res/ComplexColorCompat;->onStateChanged([I)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public setFillAlpha(F)V
    .locals 0

    .line 2033
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->h:F

    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    .line 2023
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->f:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/content/res/ComplexColorCompat;->setColor(I)V

    return-void
.end method

.method public setStrokeAlpha(F)V
    .locals 0

    .line 2012
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->g:F

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .line 1992
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->d:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/content/res/ComplexColorCompat;->setColor(I)V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    .line 2002
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->e:F

    return-void
.end method

.method public setTrimPathEnd(F)V
    .locals 0

    .line 2053
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->j:F

    return-void
.end method

.method public setTrimPathOffset(F)V
    .locals 0

    .line 2063
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->k:F

    return-void
.end method

.method public setTrimPathStart(F)V
    .locals 0

    .line 2043
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$c;->i:F

    return-void
.end method
