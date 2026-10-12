.class Lcom/google/android/material/progressindicator/o$a;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/google/android/material/progressindicator/o;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# virtual methods
.method public get(Lcom/google/android/material/progressindicator/o;)Ljava/lang/Float;
    .locals 0

    .line 201
    iget p1, p1, Lcom/google/android/material/progressindicator/o;->j:F

    .line 221
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 218
    check-cast p1, Lcom/google/android/material/progressindicator/o;

    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/o$a;->get(Lcom/google/android/material/progressindicator/o;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/google/android/material/progressindicator/o;Ljava/lang/Float;)V
    .locals 4

    .line 226
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 206
    iput p2, p1, Lcom/google/android/material/progressindicator/o;->j:F

    const/high16 v0, 0x44e10000    # 1800.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 170
    sget-object v2, Lcom/google/android/material/progressindicator/o;->m:[I

    aget v2, v2, v1

    sget-object v3, Lcom/google/android/material/progressindicator/o;->l:[I

    aget v3, v3, v1

    .line 171
    invoke-virtual {p1, p2, v2, v3}, Lcom/google/android/material/progressindicator/i;->getFractionInRange(III)F

    move-result v2

    .line 173
    iget-object v3, p1, Lcom/google/android/material/progressindicator/o;->f:[Landroid/view/animation/Interpolator;

    aget-object v3, v3, v1

    invoke-interface {v3, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 174
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p1, Lcom/google/android/material/progressindicator/i;->b:[F

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_0
    iget-boolean p2, p1, Lcom/google/android/material/progressindicator/o;->i:Z

    if-eqz p2, :cond_1

    .line 181
    iget-object p2, p1, Lcom/google/android/material/progressindicator/o;->g:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-object p2, p2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    iget v1, p1, Lcom/google/android/material/progressindicator/o;->h:I

    aget p2, p2, v1

    iget-object v1, p1, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 184
    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v1

    .line 183
    invoke-static {p2, v1}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result p2

    .line 181
    iget-object v1, p1, Lcom/google/android/material/progressindicator/i;->c:[I

    invoke-static {v1, p2}, Ljava/util/Arrays;->fill([II)V

    .line 185
    iput-boolean v0, p1, Lcom/google/android/material/progressindicator/o;->i:Z

    .line 210
    :cond_1
    iget-object p1, p1, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 218
    check-cast p1, Lcom/google/android/material/progressindicator/o;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/o$a;->set(Lcom/google/android/material/progressindicator/o;Ljava/lang/Float;)V

    return-void
.end method
