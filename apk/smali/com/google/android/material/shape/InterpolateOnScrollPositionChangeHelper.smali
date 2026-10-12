.class public Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public b:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public c:Landroid/widget/ScrollView;

.field public final d:[I

.field public final e:[I

.field public final f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;Landroid/widget/ScrollView;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 31
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->d:[I

    .line 32
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->e:[I

    .line 33
    new-instance v0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper$a;-><init>(Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;)V

    iput-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 53
    iput-object p1, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->a:Landroid/view/View;

    .line 54
    iput-object p2, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->b:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 55
    iput-object p3, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->c:Landroid/widget/ScrollView;

    return-void
.end method


# virtual methods
.method public setContainingScrollView(Landroid/widget/ScrollView;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->c:Landroid/widget/ScrollView;

    return-void
.end method

.method public setMaterialShapeDrawable(Lcom/google/android/material/shape/MaterialShapeDrawable;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->b:Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-void
.end method

.method public startListeningForScrollChanges(Landroid/view/ViewTreeObserver;)V
    .locals 1
    .param p1    # Landroid/view/ViewTreeObserver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 83
    iget-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method public stopListeningForScrollChanges(Landroid/view/ViewTreeObserver;)V
    .locals 1
    .param p1    # Landroid/view/ViewTreeObserver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 93
    iget-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method public updateInterpolationForScreenPosition()V
    .locals 6

    .line 101
    iget-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->c:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    iget-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->c:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->d:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 112
    iget-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->c:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->e:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 113
    iget-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    const/4 v4, 0x1

    aget v1, v1, v4

    sub-int/2addr v3, v1

    aget v1, v2, v4

    add-int/2addr v3, v1

    .line 114
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 115
    iget-object v2, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->c:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-gez v3, :cond_1

    .line 119
    iget-object v2, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->b:Lcom/google/android/material/shape/MaterialShapeDrawable;

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    add-float/2addr v3, v5

    .line 120
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 119
    invoke-virtual {v2, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_1
    add-int/2addr v3, v1

    if-le v3, v2, :cond_2

    sub-int/2addr v3, v2

    .line 124
    iget-object v2, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->b:Lcom/google/android/material/shape/MaterialShapeDrawable;

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    sub-float v1, v5, v3

    .line 125
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 124
    invoke-virtual {v2, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 126
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    .line 127
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->b:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getInterpolation()F

    move-result v1

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_3

    .line 128
    iget-object v1, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->b:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 129
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_0
    return-void

    .line 107
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll bar must contain a child to calculate interpolation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
