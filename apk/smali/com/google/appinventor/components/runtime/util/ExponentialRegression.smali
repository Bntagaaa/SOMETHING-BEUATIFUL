.class public Lcom/google/appinventor/components/runtime/util/ExponentialRegression;
.super Lcom/google/appinventor/components/runtime/util/OlsTrendLine;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/OlsTrendLine;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 4
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

    .line 32
    invoke-super {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/OlsTrendLine;->compute(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 33
    const-string p2, "x^2"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string p2, "slope"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 35
    const-string p2, "intercept"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 36
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v2, "a"

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v0, "b"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public computePoints(Ljava/util/Map;FFII)[F
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;FFII)[F"
        }
    .end annotation

    move/from16 v0, p5

    .line 44
    const-string v1, "a"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 45
    new-array p1, v3, [F

    return-object p1

    .line 47
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 48
    const-string v4, "b"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-int/lit8 p1, v0, 0x4

    .line 49
    new-array p1, p1, [F

    const/high16 v6, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v7, 0x1

    const/high16 v7, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v0, :cond_2

    if-eqz v8, :cond_1

    int-to-float v6, v9

    sub-float v7, p3, p2

    mul-float v7, v7, v6

    int-to-float v6, v0

    div-float/2addr v7, v6

    add-float v6, v7, p2

    float-to-double v7, v6

    .line 57
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double v7, v7, v1

    double-to-float v7, v7

    const/4 v8, 0x0

    :cond_1
    mul-int/lit8 v10, v9, 0x4

    .line 59
    aput v6, p1, v10

    add-int/lit8 v6, v10, 0x1

    .line 60
    aput v7, p1, v6

    add-int/lit8 v9, v9, 0x1

    int-to-float v6, v9

    sub-float v7, p3, p2

    mul-float v7, v7, v6

    int-to-float v6, v0

    div-float/2addr v7, v6

    add-float v6, v7, p2

    float-to-double v11, v6

    .line 62
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double v11, v11, v1

    double-to-float v7, v11

    add-int/lit8 v11, v10, 0x2

    .line 63
    aput v6, p1, v11

    add-int/lit8 v10, v10, 0x3

    .line 64
    aput v7, p1, v10

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public logY()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public xVector(D)[D
    .locals 4

    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    const/4 v1, 0x1

    aput-wide p1, v0, v1

    return-object v0
.end method
