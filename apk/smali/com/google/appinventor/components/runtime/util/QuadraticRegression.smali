.class public Lcom/google/appinventor/components/runtime/util/QuadraticRegression;
.super Lcom/google/appinventor/components/runtime/util/OlsTrendLine;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/OlsTrendLine;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 11
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

    .line 34
    invoke-super {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/OlsTrendLine;->compute(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 35
    const-string p2, "intercept"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Yintercept"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string p2, "x^2"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 37
    const-string p2, "slope"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 38
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    mul-double v7, v3, v3

    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    mul-double v9, v9, v1

    mul-double v9, v9, v5

    sub-double/2addr v7, v9

    const-wide/16 v5, 0x0

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 40
    const-string p2, "Xintercepts"

    cmpl-double v0, v7, v5

    if-lez v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    neg-double v3, v3

    add-double v7, v3, v5

    mul-double v1, v1, v9

    div-double/2addr v7, v1

    .line 43
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-double/2addr v3, v5

    div-double/2addr v3, v1

    .line 44
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_0
    if-nez v0, :cond_1

    neg-double v3, v3

    mul-double v1, v1, v9

    div-double/2addr v3, v1

    .line 47
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public computePoints(Ljava/util/Map;FFII)[F
    .locals 18
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

    .line 57
    const-string v2, "x^2"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 58
    new-array v0, v4, [F

    return-object v0

    .line 60
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 61
    const-string v5, "slope"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 62
    const-string v7, "Yintercept"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    mul-int/lit8 v0, v1, 0x4

    .line 63
    new-array v0, v0, [F

    const/high16 v9, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v10, 0x1

    const/high16 v10, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v1, :cond_2

    if-eqz v11, :cond_1

    int-to-float v9, v12

    sub-float v10, p3, p2

    mul-float v10, v10, v9

    int-to-float v9, v1

    div-float/2addr v10, v9

    add-float v9, v10, p2

    float-to-double v10, v9

    mul-double v13, v2, v10

    add-double/2addr v13, v5

    mul-double v13, v13, v10

    add-double/2addr v13, v7

    double-to-float v10, v13

    const/4 v11, 0x0

    :cond_1
    mul-int/lit8 v13, v12, 0x4

    .line 73
    aput v9, v0, v13

    add-int/lit8 v9, v13, 0x1

    .line 74
    aput v10, v0, v9

    add-int/lit8 v12, v12, 0x1

    int-to-float v9, v12

    sub-float v10, p3, p2

    mul-float v10, v10, v9

    int-to-float v9, v1

    div-float/2addr v10, v9

    add-float v9, v10, p2

    float-to-double v14, v9

    mul-double v16, v2, v14

    add-double v16, v16, v5

    mul-double v16, v16, v14

    add-double v14, v16, v7

    double-to-float v10, v14

    add-int/lit8 v14, v13, 0x2

    .line 77
    aput v9, v0, v14

    add-int/lit8 v13, v13, 0x3

    .line 78
    aput v10, v0, v13

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public logY()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public xVector(D)[D
    .locals 6

    mul-double v0, p1, p1

    const/4 v2, 0x3

    .line 15
    new-array v2, v2, [D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    const/4 v3, 0x1

    aput-wide p1, v2, v3

    const/4 p1, 0x2

    aput-wide v0, v2, p1

    return-object v2
.end method
