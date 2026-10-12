.class public Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mod(FF)F
    .locals 2

    rem-float v0, p0, p1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 34
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float p0, p0, v1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    add-float/2addr v0, p1

    :cond_1
    :goto_0
    return v0
.end method

.method public static normalizeAzimuth(F)F
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    .line 48
    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->mod(FF)F

    move-result p0

    return p0
.end method

.method public static normalizePitch(F)F
    .locals 2

    const/high16 v0, 0x43340000    # 180.0f

    add-float/2addr p0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    .line 58
    invoke-static {p0, v1}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->mod(FF)F

    move-result p0

    sub-float/2addr p0, v0

    return p0
.end method

.method public static normalizeRoll(F)F
    .locals 2

    const/high16 v0, 0x43340000    # 180.0f

    .line 82
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 v1, -0x3ccc0000    # -180.0f

    .line 83
    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v1, -0x3d4c0000    # -90.0f

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x42b40000    # 90.0f

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_0

    return p0

    :cond_0
    sub-float/2addr v0, p0

    const/high16 p0, 0x43870000    # 270.0f

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_1

    const/high16 p0, 0x43b40000    # 360.0f

    sub-float/2addr v0, p0

    :cond_1
    return v0
.end method
