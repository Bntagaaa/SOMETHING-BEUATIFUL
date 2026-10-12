.class public final Lcom/google/android/material/shape/MarkerEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "SourceFile"


# instance fields
.field public final a:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    const v0, 0x3a83126f    # 0.001f

    sub-float/2addr p1, v0

    .line 33
    iput p1, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->a:F

    return-void
.end method


# virtual methods
.method public getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .locals 8
    .param p4    # Lcom/google/android/material/shape/ShapePath;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    iget p1, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->a:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double v4, v4, v0

    div-double/2addr v4, v2

    double-to-float p3, v4

    float-to-double v0, p1

    .line 40
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v4, p3

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v1, p2, p3

    float-to-double v4, p1

    .line 41
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double v6, v6, v4

    float-to-double v4, p1

    sub-double/2addr v6, v4

    neg-double v4, v6

    double-to-float v4, v4

    add-float/2addr v4, v0

    invoke-virtual {p4, v1, v4}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    float-to-double v4, p1

    .line 42
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double v6, v6, v4

    float-to-double v4, p1

    sub-double/2addr v6, v4

    neg-double v4, v6

    double-to-float v1, v4

    invoke-virtual {p4, p2, v1}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    add-float/2addr p2, p3

    float-to-double v4, p1

    .line 43
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    mul-double v1, v1, v4

    float-to-double v3, p1

    sub-double/2addr v1, v3

    neg-double v1, v1

    double-to-float p1, v1

    add-float/2addr p1, v0

    invoke-virtual {p4, p2, p1}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    return-void
.end method
