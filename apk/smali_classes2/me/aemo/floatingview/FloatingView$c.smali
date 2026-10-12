.class Lme/aemo/floatingview/FloatingView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/aemo/floatingview/FloatingView;->ChangeHeight(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Lme/aemo/floatingview/FloatingView;


# direct methods
.method public constructor <init>(Lme/aemo/floatingview/FloatingView;F)V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/aemo/floatingview/FloatingView$c;->b:Lme/aemo/floatingview/FloatingView;

    iput p2, p0, Lme/aemo/floatingview/FloatingView$c;->a:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 28
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView$c;->b:Lme/aemo/floatingview/FloatingView;

    iget-object v1, v0, Lme/aemo/floatingview/FloatingView;->j:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 186
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 28
    iget-object v2, v0, Lme/aemo/floatingview/FloatingView;->j:Landroid/view/WindowManager;

    .line 187
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 188
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 28
    iget-object v2, v0, Lme/aemo/floatingview/FloatingView;->k:Landroid/view/WindowManager$LayoutParams;

    int-to-float v1, v1

    .line 189
    iget v3, p0, Lme/aemo/floatingview/FloatingView$c;->a:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 28
    iget-object v1, v0, Lme/aemo/floatingview/FloatingView;->j:Landroid/view/WindowManager;

    .line 28
    iget-object v0, v0, Lme/aemo/floatingview/FloatingView;->l:Landroid/widget/RelativeLayout;

    .line 190
    invoke-interface {v1, v0, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
