.class Lcom/google/android/material/slider/a$c;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final q:Lcom/google/android/material/slider/a;

.field public final r:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/google/android/material/slider/a;)V
    .locals 1

    .line 2634
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 2631
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/a$c;->r:Landroid/graphics/Rect;

    .line 2635
    iput-object p1, p0, Lcom/google/android/material/slider/a$c;->q:Lcom/google/android/material/slider/a;

    return-void
.end method


# virtual methods
.method public getVirtualViewAt(FF)I
    .locals 4

    const/4 v0, 0x0

    .line 2640
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/slider/a$c;->q:Lcom/google/android/material/slider/a;

    invoke-virtual {v1}, Lcom/google/android/material/slider/a;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2641
    iget-object v2, p0, Lcom/google/android/material/slider/a$c;->r:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/slider/a;->u(ILandroid/graphics/Rect;)V

    float-to-int v1, p1

    float-to-int v3, p2

    .line 2642
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2652
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/slider/a$c;->q:Lcom/google/android/material/slider/a;

    invoke-virtual {v1}, Lcom/google/android/material/slider/a;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2653
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 6

    .line 2712
    iget-object v0, p0, Lcom/google/android/material/slider/a$c;->q:Lcom/google/android/material/slider/a;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v1, 0x1000

    const/4 v2, 0x1

    const/16 v3, 0x2000

    if-eq p2, v1, :cond_3

    if-eq p2, v3, :cond_3

    const v1, 0x102003d

    if-eq p2, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz p3, :cond_8

    .line 2720
    const-string p2, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 2725
    :cond_2
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p2

    .line 2726
    sget p3, Lcom/google/android/material/slider/a;->d0:I

    .line 195
    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/slider/a;->s(IF)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 195
    invoke-virtual {v0}, Lcom/google/android/material/slider/a;->v()V

    .line 2728
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 2729
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    return v2

    .line 2737
    :cond_3
    sget p3, Lcom/google/android/material/slider/a;->d0:I

    .line 2440
    iget p3, v0, Lcom/google/android/material/slider/a;->K:F

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_4

    const/high16 p3, 0x3f800000    # 1.0f

    .line 2449
    :cond_4
    iget v1, v0, Lcom/google/android/material/slider/a;->G:F

    iget v4, v0, Lcom/google/android/material/slider/a;->F:F

    sub-float/2addr v1, v4

    div-float/2addr v1, p3

    const/16 v4, 0x14

    int-to-float v4, v4

    cmpg-float v5, v1, v4

    if-gtz v5, :cond_5

    goto :goto_0

    :cond_5
    div-float/2addr v1, v4

    .line 2454
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    mul-float p3, p3, v1

    :goto_0
    if-ne p2, v3, :cond_6

    neg-float p3, p3

    .line 2743
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/material/slider/a;->k()Z

    move-result p2

    if-eqz p2, :cond_7

    neg-float p3, p3

    .line 2747
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/material/slider/a;->getValues()Ljava/util/List;

    move-result-object p2

    .line 2750
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    add-float/2addr p2, p3

    .line 2751
    invoke-virtual {v0}, Lcom/google/android/material/slider/a;->getValueFrom()F

    move-result p3

    .line 2752
    invoke-virtual {v0}, Lcom/google/android/material/slider/a;->getValueTo()F

    move-result v1

    .line 2749
    invoke-static {p2, p3, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p2

    .line 195
    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/slider/a;->s(IF)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 195
    invoke-virtual {v0}, Lcom/google/android/material/slider/a;->v()V

    .line 2755
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 2756
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    return v2

    :cond_8
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .line 2661
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SET_PROGRESS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2663
    iget-object v0, p0, Lcom/google/android/material/slider/a$c;->q:Lcom/google/android/material/slider/a;

    invoke-virtual {v0}, Lcom/google/android/material/slider/a;->getValues()Ljava/util/List;

    move-result-object v1

    .line 2664
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 2665
    invoke-virtual {v0}, Lcom/google/android/material/slider/a;->getValueFrom()F

    move-result v3

    .line 2666
    invoke-virtual {v0}, Lcom/google/android/material/slider/a;->getValueTo()F

    move-result v4

    .line 2668
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    cmpl-float v5, v2, v3

    if-lez v5, :cond_0

    const/16 v5, 0x2000

    .line 2670
    invoke-virtual {p2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_0
    cmpg-float v5, v2, v4

    if-gez v5, :cond_1

    const/16 v5, 0x1000

    .line 2673
    invoke-virtual {p2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_1
    const/4 v5, 0x1

    .line 2677
    invoke-static {v5, v3, v4, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->obtain(IFFF)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRangeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)V

    .line 2678
    const-class v3, Landroid/widget/SeekBar;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2679
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2681
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2682
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2685
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_5

    .line 2697
    invoke-virtual {v0}, Lcom/google/android/material/slider/a;->getValues()Ljava/util/List;

    move-result-object v1

    .line 2698
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v5

    if-ne p1, v1, :cond_3

    .line 2699
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/google/android/material/R$string;->material_slider_range_end:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    .line 2703
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/google/android/material/R$string;->material_slider_range_start:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2706
    :cond_4
    const-string v1, ""

    .line 2686
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v0, v2}, Lcom/google/android/material/slider/a;->f(F)Ljava/lang/String;

    move-result-object v1

    .line 2687
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2689
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2691
    iget-object v1, p0, Lcom/google/android/material/slider/a$c;->r:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/slider/a;->u(ILandroid/graphics/Rect;)V

    .line 2692
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method
