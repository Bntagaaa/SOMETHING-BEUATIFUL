.class public final Lcom/google/zxing/client/android/camera/exposure/FroyoExposureInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/client/android/camera/exposure/ExposureInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setExposure(Landroid/hardware/Camera$Parameters;Z)V
    .locals 4

    .line 33
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    .line 34
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    .line 35
    const-string v2, "FroyoExposureInterface"

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    const-string p1, "Camera does not support exposure compensation"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 36
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v3

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    div-float/2addr p2, v3

    float-to-int p2, p2

    .line 40
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_1

    :cond_2
    const/high16 p2, 0x3fc00000    # 1.5f

    div-float/2addr p2, v3

    float-to-int p2, p2

    .line 43
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_1
    int-to-float v0, p2

    mul-float v3, v3, v0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting exposure compensation to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    return-void
.end method
