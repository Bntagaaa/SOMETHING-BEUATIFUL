.class Lcom/google/android/material/progressindicator/d$a;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/google/android/material/progressindicator/d;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# virtual methods
.method public get(Lcom/google/android/material/progressindicator/d;)Ljava/lang/Float;
    .locals 0

    .line 216
    iget p1, p1, Lcom/google/android/material/progressindicator/d;->i:F

    .line 242
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 239
    check-cast p1, Lcom/google/android/material/progressindicator/d;

    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/d$a;->get(Lcom/google/android/material/progressindicator/d;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/google/android/material/progressindicator/d;Ljava/lang/Float;)V
    .locals 9

    .line 247
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 221
    iput p2, p1, Lcom/google/android/material/progressindicator/d;->i:F

    const v0, 0x45a8c000    # 5400.0f

    mul-float v0, v0, p2

    float-to-int v0, v0

    const/high16 v1, 0x44be0000    # 1520.0f

    mul-float p2, p2, v1

    const/high16 v1, -0x3e600000    # -20.0f

    add-float/2addr v1, p2

    .line 161
    iget-object v2, p1, Lcom/google/android/material/progressindicator/i;->b:[F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    .line 162
    aput p2, v2, v1

    const/4 p2, 0x0

    .line 164
    :goto_0
    iget-object v4, p1, Lcom/google/android/material/progressindicator/d;->f:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    const/4 v5, 0x4

    if-ge p2, v5, :cond_0

    .line 166
    sget-object v5, Lcom/google/android/material/progressindicator/d;->l:[I

    aget v5, v5, p2

    const/16 v6, 0x29b

    .line 167
    invoke-virtual {p1, v0, v5, v6}, Lcom/google/android/material/progressindicator/i;->getFractionInRange(III)F

    move-result v5

    .line 168
    aget v7, v2, v1

    invoke-virtual {v4, v5}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v5

    const/high16 v8, 0x437a0000    # 250.0f

    mul-float v5, v5, v8

    add-float/2addr v5, v7

    aput v5, v2, v1

    .line 170
    sget-object v5, Lcom/google/android/material/progressindicator/d;->m:[I

    aget v5, v5, p2

    .line 171
    invoke-virtual {p1, v0, v5, v6}, Lcom/google/android/material/progressindicator/i;->getFractionInRange(III)F

    move-result v5

    .line 173
    aget v6, v2, v3

    invoke-virtual {v4, v5}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float v4, v4, v8

    add-float/2addr v4, v6

    aput v4, v2, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 176
    :cond_0
    aget p2, v2, v3

    aget v6, v2, v1

    sub-float v7, v6, p2

    iget v8, p1, Lcom/google/android/material/progressindicator/d;->j:F

    mul-float v7, v7, v8

    add-float/2addr v7, p2

    aput v7, v2, v3

    const/high16 p2, 0x43b40000    # 360.0f

    div-float/2addr v7, p2

    .line 178
    aput v7, v2, v3

    div-float/2addr v6, p2

    .line 179
    aput v6, v2, v1

    const/4 p2, 0x0

    :goto_1
    if-ge p2, v5, :cond_2

    .line 185
    sget-object v1, Lcom/google/android/material/progressindicator/d;->n:[I

    aget v1, v1, p2

    const/16 v2, 0x14d

    .line 186
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/material/progressindicator/i;->getFractionInRange(III)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1

    .line 188
    iget v0, p1, Lcom/google/android/material/progressindicator/d;->h:I

    add-int/2addr p2, v0

    iget-object v0, p1, Lcom/google/android/material/progressindicator/d;->g:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget-object v2, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v5, v2

    rem-int/2addr p2, v5

    add-int/lit8 v5, p2, 0x1

    .line 190
    array-length v6, v2

    rem-int/2addr v5, v6

    .line 191
    aget p2, v2, p2

    iget-object v2, p1, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 193
    invoke-virtual {v2}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v2

    .line 192
    invoke-static {p2, v2}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result p2

    .line 194
    iget-object v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget v0, v0, v5

    iget-object v2, p1, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 196
    invoke-virtual {v2}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v2

    .line 195
    invoke-static {v0, v2}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v0

    .line 197
    invoke-virtual {v4, v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v1

    .line 199
    invoke-static {}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->getInstance()Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, p2, v0}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p1, Lcom/google/android/material/progressindicator/i;->c:[I

    aput p2, v0, v3

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 225
    :cond_2
    :goto_2
    iget-object p1, p1, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 239
    check-cast p1, Lcom/google/android/material/progressindicator/d;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/d$a;->set(Lcom/google/android/material/progressindicator/d;Ljava/lang/Float;)V

    return-void
.end method
