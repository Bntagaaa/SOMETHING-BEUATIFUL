.class public Lcom/google/appinventor/components/runtime/util/ScatterWithTrendlineRenderer;
.super Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/google/appinventor/components/runtime/util/ScatterWithTrendlineRenderer;

    const-string v0, "ScatterWithTrendlineRenderer"

    sput-object v0, Lcom/google/appinventor/components/runtime/util/ScatterWithTrendlineRenderer;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/github/mikephil/charting/charts/ScatterChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ScatterWithTrendlineRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ScatterData;->getDataSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;

    .line 37
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/google/appinventor/components/runtime/util/HasTrendline;

    if-eqz v2, :cond_0

    .line 38
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/ScatterWithTrendlineRenderer;->drawTrendline(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;)V

    goto :goto_0

    .line 42
    :cond_1
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->drawData(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawTrendline(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;)V
    .locals 5

    .line 46
    instance-of v0, p2, Lcom/google/appinventor/components/runtime/util/HasTrendline;

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ScatterWithTrendlineRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    .line 53
    check-cast p2, Lcom/google/appinventor/components/runtime/util/HasTrendline;

    .line 54
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/HasTrendline;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 58
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/HasTrendline;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/HasTrendline;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/HasTrendline;->getColor()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 68
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/HasTrendline;->getDashPathEffect()Landroid/graphics/DashPathEffect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 69
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ScatterWithTrendlineRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getXChartMin()F

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ScatterWithTrendlineRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getXChartMax()F

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/ScatterWithTrendlineRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    .line 70
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getWidth()I

    move-result v4

    .line 69
    invoke-interface {p2, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/HasTrendline;->getPoints(FFI)[F

    move-result-object p2

    .line 74
    invoke-virtual {v0, p2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 78
    array-length v0, p2

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method
