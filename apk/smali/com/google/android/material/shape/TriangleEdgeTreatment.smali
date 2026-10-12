.class public Lcom/google/android/material/shape/TriangleEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:Z


# direct methods
.method public constructor <init>(FZ)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    .line 43
    iput p1, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->a:F

    .line 44
    iput-boolean p2, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->b:Z

    return-void
.end method


# virtual methods
.method public getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .locals 3
    .param p4    # Lcom/google/android/material/shape/ShapePath;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    iget v0, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->a:F

    mul-float v1, v0, p3

    sub-float v1, p2, v1

    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 51
    iget-boolean v1, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->b:Z

    if-eqz v1, :cond_0

    mul-float v1, v0, p3

    goto :goto_0

    :cond_0
    neg-float v1, v0

    mul-float v1, v1, p3

    :goto_0
    invoke-virtual {p4, p2, v1}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    mul-float v0, v0, p3

    add-float/2addr v0, p2

    .line 52
    invoke-virtual {p4, v0, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 53
    invoke-virtual {p4, p1, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    return-void
.end method
