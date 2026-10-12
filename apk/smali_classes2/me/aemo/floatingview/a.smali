.class Lme/aemo/floatingview/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lme/aemo/floatingview/FloatingView;


# direct methods
.method public constructor <init>(Lme/aemo/floatingview/FloatingView;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/aemo/floatingview/a;->a:Lme/aemo/floatingview/FloatingView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 28
    iget-object v0, p0, Lme/aemo/floatingview/a;->a:Lme/aemo/floatingview/FloatingView;

    iget-object v1, v0, Lme/aemo/floatingview/FloatingView;->b:Landroid/app/Activity;

    .line 269
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    iget-object v1, v0, Lme/aemo/floatingview/FloatingView;->b:Landroid/app/Activity;

    .line 270
    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 28
    iput-object v1, v0, Lme/aemo/floatingview/FloatingView;->j:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 28
    iget-object v1, v0, Lme/aemo/floatingview/FloatingView;->l:Landroid/widget/RelativeLayout;

    .line 272
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 28
    iget-object v1, v0, Lme/aemo/floatingview/FloatingView;->j:Landroid/view/WindowManager;

    .line 28
    iget-object v2, v0, Lme/aemo/floatingview/FloatingView;->l:Landroid/widget/RelativeLayout;

    .line 28
    iget-object v3, v0, Lme/aemo/floatingview/FloatingView;->k:Landroid/view/WindowManager$LayoutParams;

    .line 273
    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    iget-boolean v1, v0, Lme/aemo/floatingview/FloatingView;->p:Z

    if-eqz v1, :cond_0

    .line 28
    iget-object v1, v0, Lme/aemo/floatingview/FloatingView;->k:Landroid/view/WindowManager$LayoutParams;

    .line 275
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 28
    iget-object v2, v0, Lme/aemo/floatingview/FloatingView;->j:Landroid/view/WindowManager;

    .line 28
    iget-object v0, v0, Lme/aemo/floatingview/FloatingView;->l:Landroid/widget/RelativeLayout;

    .line 276
    invoke-interface {v2, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
