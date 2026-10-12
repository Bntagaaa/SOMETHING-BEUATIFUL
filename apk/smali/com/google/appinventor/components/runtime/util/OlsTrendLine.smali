.class public abstract Lcom/google/appinventor/components/runtime/util/OlsTrendLine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/TrendlineCalculator;


# static fields
.field private static final DEBUG:Z = false

.field private static final SIGNIFICANCE:D = 1.0E14


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static round(D)D
    .locals 2

    const-wide v0, 0x42d6bcc41e900000L    # 1.0E14

    mul-double p0, p0, v0

    .line 107
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    div-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public compute(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 64
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[D

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 68
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 70
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/util/OlsTrendLine;->xVector(D)[D

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [D

    .line 73
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/OlsTrendLine;->logY()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    add-int/lit8 v4, v2, 0x1

    .line 76
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    aput-wide v5, p1, v2

    move v2, v4

    goto :goto_1

    .line 80
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    add-int/lit8 v4, v2, 0x1

    .line 81
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    aput-wide v5, p1, v2

    move v2, v4

    goto :goto_2

    .line 88
    :cond_2
    new-instance p2, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;

    invoke-direct {p2}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;-><init>()V

    const/4 v2, 0x1

    .line 89
    invoke-virtual {p2, v2}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->setNoIntercept(Z)V

    .line 90
    invoke-virtual {p2, p1, v0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->newSampleData([D[[D)V

    .line 91
    invoke-virtual {p2}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->estimateRegressionParameters()[D

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createColumnRealMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 97
    invoke-interface {p1, v1, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/OlsTrendLine;->round(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "intercept"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-interface {p1, v2, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/OlsTrendLine;->round(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "slope"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/OlsTrendLine;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_3

    .line 100
    invoke-interface {p1, v3, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/OlsTrendLine;->round(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v1, "x^2"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_3
    invoke-virtual {p2}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->calculateRSquared()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "r^2"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 65
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must have equal X and Y data points"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "List must have at least one element"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract logY()Z
.end method

.method public abstract size()I
.end method

.method public abstract xVector(D)[D
.end method
