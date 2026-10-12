.class Lcom/google/android/material/progressindicator/DeterminateDrawable$a;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/DeterminateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/google/android/material/progressindicator/DeterminateDrawable;",
        ">;"
    }
.end annotation


# virtual methods
.method public getValue(Lcom/google/android/material/progressindicator/DeterminateDrawable;)F
    .locals 1

    .line 212
    iget p1, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->o:F

    const v0, 0x461c4000    # 10000.0f

    mul-float p1, p1, v0

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 233
    check-cast p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/DeterminateDrawable$a;->getValue(Lcom/google/android/material/progressindicator/DeterminateDrawable;)F

    move-result p1

    return p1
.end method

.method public setValue(Lcom/google/android/material/progressindicator/DeterminateDrawable;F)V
    .locals 1

    const v0, 0x461c4000    # 10000.0f

    div-float/2addr p2, v0

    .line 241
    sget-object v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->q:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 216
    iput p2, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->o:F

    .line 217
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 233
    check-cast p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/DeterminateDrawable$a;->setValue(Lcom/google/android/material/progressindicator/DeterminateDrawable;F)V

    return-void
.end method
