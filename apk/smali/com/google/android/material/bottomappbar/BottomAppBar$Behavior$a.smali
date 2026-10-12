.class Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)V
    .locals 0

    .line 1077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$a;->a:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1068
    iget-object p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$a;->a:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    iget-object p3, p2, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->f:Ljava/lang/ref/WeakReference;

    .line 1089
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/bottomappbar/BottomAppBar;

    if-eqz p3, :cond_5

    .line 1092
    instance-of p4, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez p4, :cond_0

    goto/16 :goto_0

    .line 1097
    :cond_0
    move-object p4, p1

    check-cast p4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 1068
    iget-object p5, p2, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->e:Landroid/graphics/Rect;

    .line 1099
    invoke-virtual {p4, p5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getMeasuredContentRect(Landroid/graphics/Rect;)V

    .line 1068
    iget-object p5, p2, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->e:Landroid/graphics/Rect;

    .line 1100
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p5

    int-to-float p6, p5

    .line 601
    invoke-virtual {p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object p7

    invoke-virtual {p7}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getFabDiameter()F

    move-result p7

    iget-object p8, p3, Lcom/google/android/material/bottomappbar/BottomAppBar;->W:Lcom/google/android/material/shape/MaterialShapeDrawable;

    cmpl-float p7, p6, p7

    if-eqz p7, :cond_1

    .line 602
    invoke-virtual {p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object p7

    invoke-virtual {p7, p6}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setFabDiameter(F)V

    .line 603
    invoke-virtual {p8}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 1106
    :cond_1
    invoke-virtual {p4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p6

    invoke-virtual {p6}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object p6

    new-instance p7, Landroid/graphics/RectF;

    .line 1068
    iget-object p9, p2, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->e:Landroid/graphics/Rect;

    .line 1107
    invoke-direct {p7, p9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {p6, p7}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result p6

    .line 611
    invoke-virtual {p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object p7

    invoke-virtual {p7}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getFabCornerRadius()F

    move-result p7

    cmpl-float p7, p6, p7

    if-eqz p7, :cond_2

    .line 612
    invoke-virtual {p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object p7

    invoke-virtual {p7, p6}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setFabCornerSize(F)V

    .line 613
    invoke-virtual {p8}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 1112
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1068
    iget p2, p2, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->g:I

    if-nez p2, :cond_4

    .line 1119
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p2, p5

    div-int/lit8 p2, p2, 0x2

    .line 1122
    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget p6, Lcom/google/android/material/R$dimen;->mtrl_bottomappbar_fab_bottom_margin:I

    .line 1123
    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p5

    sub-int/2addr p5, p2

    .line 1021
    iget p2, p3, Lcom/google/android/material/bottomappbar/BottomAppBar;->m0:I

    add-int/2addr p2, p5

    .line 1126
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1029
    iget p2, p3, Lcom/google/android/material/bottomappbar/BottomAppBar;->o0:I

    .line 1127
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1025
    iget p2, p3, Lcom/google/android/material/bottomappbar/BottomAppBar;->n0:I

    .line 1128
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1129
    invoke-static {p4}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p2

    .line 1130
    iget p3, p3, Lcom/google/android/material/bottomappbar/BottomAppBar;->V:I

    if-eqz p2, :cond_3

    .line 1131
    iget p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return-void

    .line 1133
    :cond_3
    iget p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_4
    return-void

    .line 1093
    :cond_5
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
