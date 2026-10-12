.class final Lcom/google/android/material/color/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static harmonize(II)I
    .locals 12

    .line 38
    invoke-static {p0}, Lcom/google/android/material/color/f;->fromInt(I)Lcom/google/android/material/color/f;

    move-result-object p0

    .line 39
    invoke-static {p1}, Lcom/google/android/material/color/f;->fromInt(I)Lcom/google/android/material/color/f;

    move-result-object p1

    .line 40
    invoke-virtual {p0}, Lcom/google/android/material/color/f;->getHue()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/color/f;->getHue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/color/g;->differenceDegrees(FF)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    const/high16 v1, 0x41700000    # 15.0f

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 44
    invoke-virtual {p0}, Lcom/google/android/material/color/f;->getHue()F

    move-result v1

    .line 45
    invoke-virtual {p0}, Lcom/google/android/material/color/f;->getHue()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/material/color/f;->getHue()F

    move-result p1

    sub-float/2addr p1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    add-float v3, p1, v2

    sub-float v2, p1, v2

    .line 106
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 107
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 108
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const-wide/16 v9, 0x0

    cmpg-float v11, v4, v5

    if-gtz v11, :cond_0

    cmpg-float v11, v4, v6

    if-gtz v11, :cond_0

    float-to-double v2, p1

    cmpl-double p1, v2, v9

    if-ltz p1, :cond_2

    :goto_0
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    cmpg-float p1, v5, v4

    if-gtz p1, :cond_1

    cmpg-float p1, v5, v6

    if-gtz p1, :cond_1

    float-to-double v2, v3

    cmpl-double p1, v2, v9

    if-ltz p1, :cond_2

    goto :goto_0

    :cond_1
    float-to-double v2, v2

    cmpl-double p1, v2, v9

    if-ltz p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    mul-float v0, v0, v7

    add-float/2addr v0, v1

    .line 43
    invoke-static {v0}, Lcom/google/android/material/color/g;->sanitizeDegrees(F)F

    move-result p1

    .line 46
    invoke-virtual {p0}, Lcom/google/android/material/color/f;->getChroma()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/color/f;->getTone()F

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/google/android/material/color/f;->from(FFF)Lcom/google/android/material/color/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/color/f;->toInt()I

    move-result p0

    return p0
.end method
