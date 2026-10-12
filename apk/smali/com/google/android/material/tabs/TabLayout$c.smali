.class Lcom/google/android/material/tabs/TabLayout$c;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field public a:Landroid/animation/ValueAnimator;

.field public b:I

.field public c:F

.field public d:I

.field public final synthetic e:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .locals 0

    .line 3017
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$c;->e:Lcom/google/android/material/tabs/TabLayout;

    .line 3018
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 3010
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$c;->b:I

    .line 3015
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$c;->d:I

    const/4 p1, 0x0

    .line 3019
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 3156
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$c;->b:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$c;->e:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, v1, Lcom/google/android/material/tabs/TabLayout;->F:Lcom/google/android/material/tabs/c;

    .line 3157
    iget-object v3, v1, Lcom/google/android/material/tabs/TabLayout;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    invoke-static {v1, v0}, Lcom/google/android/material/tabs/c;->a(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    .line 130
    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    .line 132
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    .line 134
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 130
    invoke-virtual {v3, v1, v2, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public final b(I)V
    .locals 4

    .line 3023
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$c;->e:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 3024
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->l:Landroid/graphics/drawable/Drawable;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2, v3, v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3025
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final c(Landroid/view/View;Landroid/view/View;F)V
    .locals 6

    .line 3177
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$c;->e:Lcom/google/android/material/tabs/TabLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 179
    iget-object v0, v1, Lcom/google/android/material/tabs/TabLayout;->F:Lcom/google/android/material/tabs/c;

    .line 3179
    iget-object v5, v1, Lcom/google/android/material/tabs/TabLayout;->l:Landroid/graphics/drawable/Drawable;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/tabs/c;->b(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3183
    :cond_0
    iget-object p1, v1, Lcom/google/android/material/tabs/TabLayout;->l:Landroid/graphics/drawable/Drawable;

    .line 3184
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object p3, v1, Lcom/google/android/material/tabs/TabLayout;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    const/4 v0, -0x1

    .line 3183
    invoke-virtual {p1, v0, p2, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3187
    :goto_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public final d(IIZ)V
    .locals 3

    .line 3217
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$c;->b:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3218
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3221
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$c;->a()V

    return-void

    .line 3227
    :cond_0
    new-instance v2, Lcom/google/android/material/tabs/e;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/material/tabs/e;-><init>(Lcom/google/android/material/tabs/TabLayout$c;Landroid/view/View;Landroid/view/View;)V

    if-eqz p3, :cond_1

    .line 3237
    new-instance p3, Landroid/animation/ValueAnimator;

    invoke-direct {p3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p3, p0, Lcom/google/android/material/tabs/TabLayout$c;->a:Landroid/animation/ValueAnimator;

    .line 3238
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v0, p2

    .line 3239
    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    .line 3240
    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-virtual {p3, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 3241
    invoke-virtual {p3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3242
    new-instance p2, Lcom/google/android/material/tabs/f;

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/tabs/f;-><init>(Lcom/google/android/material/tabs/TabLayout$c;I)V

    invoke-virtual {p3, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3254
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 3257
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$c;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 3258
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$c;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3264
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$c;->e:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gez v1, :cond_0

    .line 3266
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 3272
    :cond_0
    iget v2, v0, Lcom/google/android/material/tabs/TabLayout;->y:I

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x0

    if-eq v2, v4, :cond_4

    const/4 v1, 0x3

    if-eq v2, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 3287
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0

    .line 3278
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    div-int/lit8 v3, v2, 0x2

    .line 3279
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    div-int/lit8 v1, v2, 0x2

    goto :goto_0

    .line 3274
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v3, v2, v1

    .line 3275
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 3294
    :cond_4
    :goto_0
    iget-object v2, v0, Lcom/google/android/material/tabs/TabLayout;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_8

    .line 3297
    iget-object v2, v0, Lcom/google/android/material/tabs/TabLayout;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3298
    iget-object v4, v0, Lcom/google/android/material/tabs/TabLayout;->l:Landroid/graphics/drawable/Drawable;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5, v3, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3300
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout;->l:Landroid/graphics/drawable/Drawable;

    .line 179
    iget v2, v0, Lcom/google/android/material/tabs/TabLayout;->m:I

    const/16 v3, 0x15

    if-eqz v2, :cond_6

    .line 3305
    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3306
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v2, v3, :cond_5

    .line 179
    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->m:I

    .line 3307
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 179
    :cond_5
    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->m:I

    .line 3309
    invoke-static {v1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 3313
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    if-ne v0, v3, :cond_7

    .line 3314
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 3316
    :cond_7
    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 3320
    :goto_1
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3324
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 3139
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 3141
    iget-object p2, p1, Lcom/google/android/material/tabs/TabLayout$c;->a:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3146
    iget p2, p1, Lcom/google/android/material/tabs/TabLayout$c;->b:I

    const/4 p3, -0x1

    const/4 p4, 0x0

    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/material/tabs/TabLayout$c;->d(IIZ)V

    return-void

    .line 3150
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$c;->a()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 9

    .line 3079
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 3081
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 3090
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$c;->e:Lcom/google/android/material/tabs/TabLayout;

    iget v1, v0, Lcom/google/android/material/tabs/TabLayout;->w:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    iget v1, v0, Lcom/google/android/material/tabs/TabLayout;->z:I

    if-ne v1, v2, :cond_9

    .line 3091
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v1, :cond_3

    .line 3096
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3097
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    .line 3098
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-gtz v6, :cond_4

    goto :goto_3

    .line 3107
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v7, 0x10

    invoke-static {v5, v7}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v5

    float-to-int v5, v5

    mul-int v7, v6, v1

    .line 3110
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v8, v5

    if-gt v7, v8, :cond_8

    const/4 v0, 0x0

    :goto_1
    if-ge v4, v1, :cond_7

    .line 3114
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 3115
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v7, 0x0

    if-ne v5, v6, :cond_5

    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_6

    .line 3116
    :cond_5
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 3117
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v0, 0x1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    move v3, v0

    goto :goto_2

    .line 3125
    :cond_8
    iput v4, v0, Lcom/google/android/material/tabs/TabLayout;->w:I

    .line 3126
    invoke-virtual {v0, v4}, Lcom/google/android/material/tabs/TabLayout;->j(Z)V

    :goto_2
    if-eqz v3, :cond_9

    .line 3132
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_9
    :goto_3
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    .line 3065
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 3069
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 3070
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$c;->d:I

    if-eq v0, p1, :cond_0

    .line 3071
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 3072
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$c;->d:I

    :cond_0
    return-void
.end method
