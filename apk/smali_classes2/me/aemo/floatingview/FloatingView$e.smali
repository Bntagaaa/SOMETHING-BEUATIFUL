.class Lme/aemo/floatingview/FloatingView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/aemo/floatingview/FloatingView;->LoseFocusFloatingView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lme/aemo/floatingview/FloatingView;


# direct methods
.method public constructor <init>(Lme/aemo/floatingview/FloatingView;)V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/aemo/floatingview/FloatingView$e;->a:Lme/aemo/floatingview/FloatingView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 28
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView$e;->a:Lme/aemo/floatingview/FloatingView;

    iget-object v1, v0, Lme/aemo/floatingview/FloatingView;->j:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 28
    iget-object v1, v0, Lme/aemo/floatingview/FloatingView;->l:Landroid/widget/RelativeLayout;

    .line 220
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 28
    iget-object v1, v0, Lme/aemo/floatingview/FloatingView;->k:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x40008

    .line 221
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 28
    iget-object v2, v0, Lme/aemo/floatingview/FloatingView;->j:Landroid/view/WindowManager;

    .line 28
    iget-object v0, v0, Lme/aemo/floatingview/FloatingView;->l:Landroid/widget/RelativeLayout;

    .line 222
    invoke-interface {v2, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
