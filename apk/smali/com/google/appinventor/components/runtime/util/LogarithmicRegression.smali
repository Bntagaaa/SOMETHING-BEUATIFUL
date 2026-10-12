.class public Lcom/google/appinventor/components/runtime/util/LogarithmicRegression;
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
    .locals 2
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

    .line 35
    const-string v0, "intercept"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 36
    const-string v1, "a"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v0, "b"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public computePoints(Ljava/util/Map;FFII)[F
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;FFII)[F"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p5

    .line 44
    const-string v2, "b"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 45
    new-array v0, v4, [F

    return-object v0

    :cond_0
    const/4 v3, 0x0

    cmpg-float v5, p3, v3

    if-gtz v5, :cond_1

    .line 48
    new-array v0, v4, [F

    return-object v0

    :cond_1
    cmpg-float v3, p2, v3

    if-gtz v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    int-to-float v3, v3

    div-float v3, p3, v3

    const v5, 0x38d1b717    # 1.0E-4f

    .line 51
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_0

    :cond_2
    move/from16 v3, p2

    .line 53
    :goto_0
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 54
    const-string v2, "a"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    mul-int/lit8 v0, v1, 0x4

    .line 55
    new-array v0, v0, [F

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v9, 0x1

    const/high16 v9, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v10, 0x1

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v1, :cond_4

    if-eqz v10, :cond_3

    int-to-float v2, v11

    sub-float v9, p3, v3

    mul-float v9, v9, v2

    int-to-float v2, v1

    div-float/2addr v9, v2

    add-float v2, v9, v3

    float-to-double v9, v2

    .line 63
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    mul-double v9, v9, v5

    add-double/2addr v9, v7

    double-to-float v9, v9

    const/4 v10, 0x0

    :cond_3
    mul-int/lit8 v12, v11, 0x4

    .line 65
    aput v2, v0, v12

    add-int/lit8 v2, v12, 0x1

    .line 66
    aput v9, v0, v2

    add-int/lit8 v11, v11, 0x1

    int-to-float v2, v11

    sub-float v9, p3, v3

    mul-float v9, v9, v2

    int-to-float v2, v1

    div-float/2addr v9, v2

    add-float v2, v9, v3

    float-to-double v13, v2

    .line 68
    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    mul-double v13, v13, v5

    add-double/2addr v13, v7

    double-to-float v9, v13

    add-int/lit8 v13, v12, 0x2

    .line 69
    aput v2, v0, v13

    add-int/lit8 v12, v12, 0x3

    .line 70
    aput v9, v0, v12

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public logY()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public xVector(D)[D
    .locals 4

    .line 16
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    const/4 v0, 0x2

    new-array v0, v0, [D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    const/4 v1, 0x1

    aput-wide p1, v0, v1

    return-object v0
.end method
