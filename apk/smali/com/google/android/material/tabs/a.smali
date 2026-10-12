.class Lcom/google/android/material/tabs/a;
.super Lcom/google/android/material/tabs/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/android/material/tabs/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V
    .locals 7

    .line 55
    invoke-static {p1, p2}, Lcom/google/android/material/tabs/c;->a(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p2

    .line 56
    invoke-static {p1, p3}, Lcom/google/android/material/tabs/c;->a(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p1

    .line 61
    iget p3, p2, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->left:F

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    cmpg-float p3, p3, v0

    if-gez p3, :cond_0

    float-to-double p3, p4

    mul-double p3, p3, v5

    div-double/2addr p3, v3

    .line 43
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-float v0, v1

    .line 37
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    double-to-float p3, p3

    goto :goto_0

    :cond_0
    float-to-double p3, p4

    mul-double p3, p3, v5

    div-double/2addr p3, v3

    .line 37
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 43
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    sub-double/2addr v1, p3

    double-to-float p3, v1

    .line 73
    :goto_0
    iget p4, p2, Landroid/graphics/RectF;->left:F

    float-to-int p4, p4

    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    .line 74
    invoke-static {p4, v1, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result p4

    .line 75
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/RectF;->right:F

    float-to-int p2, p2

    iget p1, p1, Landroid/graphics/RectF;->right:F

    float-to-int p1, p1

    .line 76
    invoke-static {p2, p1, p3}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result p1

    .line 77
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 73
    invoke-virtual {p5, p4, v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method
