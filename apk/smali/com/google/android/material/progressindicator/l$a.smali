.class Lcom/google/android/material/progressindicator/l$a;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/google/android/material/progressindicator/l;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# virtual methods
.method public get(Lcom/google/android/material/progressindicator/l;)Ljava/lang/Float;
    .locals 0

    .line 156
    iget p1, p1, Lcom/google/android/material/progressindicator/l;->i:F

    .line 176
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 173
    check-cast p1, Lcom/google/android/material/progressindicator/l;

    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/l$a;->get(Lcom/google/android/material/progressindicator/l;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/google/android/material/progressindicator/l;Ljava/lang/Float;)V
    .locals 6

    .line 181
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 161
    iput p2, p1, Lcom/google/android/material/progressindicator/l;->i:F

    const v0, 0x43a68000    # 333.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 124
    iget-object v0, p1, Lcom/google/android/material/progressindicator/i;->b:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x29b

    .line 125
    invoke-virtual {p1, p2, v2, v1}, Lcom/google/android/material/progressindicator/i;->getFractionInRange(III)F

    move-result p2

    .line 126
    iget-object v1, p1, Lcom/google/android/material/progressindicator/l;->e:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v1, p2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v3

    const/4 v4, 0x2

    aput v3, v0, v4

    const/4 v5, 0x1

    aput v3, v0, v5

    const v3, 0x3eff9dbf

    add-float/2addr p2, v3

    .line 128
    invoke-virtual {v1, p2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result p2

    const/4 v1, 0x4

    aput p2, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x5

    const/high16 v3, 0x3f800000    # 1.0f

    .line 129
    aput v3, v0, v1

    .line 134
    iget-boolean v0, p1, Lcom/google/android/material/progressindicator/l;->h:Z

    if-eqz v0, :cond_0

    cmpg-float p2, p2, v3

    if-gez p2, :cond_0

    .line 135
    iget-object p2, p1, Lcom/google/android/material/progressindicator/i;->c:[I

    aget v0, p2, v5

    aput v0, p2, v4

    .line 136
    aget v0, p2, v2

    aput v0, p2, v5

    .line 137
    iget-object v0, p1, Lcom/google/android/material/progressindicator/l;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    iget v1, p1, Lcom/google/android/material/progressindicator/l;->g:I

    aget v0, v0, v1

    iget-object v1, p1, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 139
    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v1

    .line 138
    invoke-static {v0, v1}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v0

    aput v0, p2, v2

    .line 140
    iput-boolean v2, p1, Lcom/google/android/material/progressindicator/l;->h:Z

    .line 165
    :cond_0
    iget-object p1, p1, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 173
    check-cast p1, Lcom/google/android/material/progressindicator/l;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/l$a;->set(Lcom/google/android/material/progressindicator/l;Ljava/lang/Float;)V

    return-void
.end method
