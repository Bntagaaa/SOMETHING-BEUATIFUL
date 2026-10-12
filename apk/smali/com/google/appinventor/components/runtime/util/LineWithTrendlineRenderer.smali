.class public Lcom/google/appinventor/components/runtime/util/LineWithTrendlineRenderer;
.super Lcom/github/mikephil/charting/renderer/LineChartRenderer;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/google/appinventor/components/runtime/util/LineWithTrendlineRenderer;

    const-string v0, "LineWithTrendlineRenderer"

    sput-object v0, Lcom/google/appinventor/components/runtime/util/LineWithTrendlineRenderer;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/LineWithTrendlineRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

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

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .line 39
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/google/appinventor/components/runtime/util/HasTrendline;

    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/LineWithTrendlineRenderer;->drawTrendline(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    goto :goto_0

    .line 44
    :cond_1
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawData(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawTrendline(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V
    .locals 5

    .line 48
    instance-of v0, p2, Lcom/google/appinventor/components/runtime/util/HasTrendline;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/LineWithTrendlineRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    .line 55
    check-cast p2, Lcom/google/appinventor/components/runtime/util/HasTrendline;

    .line 56
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/HasTrendline;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 60
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/HasTrendline;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/HasTrendline;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/HasTrendline;->getColor()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 70
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/HasTrendline;->getDashPathEffect()Landroid/graphics/DashPathEffect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 71
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/LineWithTrendlineRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getXChartMin()F

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/LineWithTrendlineRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getXChartMax()F

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/LineWithTrendlineRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 72
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getWidth()I

    move-result v4

    .line 71
    invoke-interface {p2, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/HasTrendline;->getPoints(FFI)[F

    move-result-object p2

    .line 76
    invoke-virtual {v0, p2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 80
    array-length v0, p2

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method
