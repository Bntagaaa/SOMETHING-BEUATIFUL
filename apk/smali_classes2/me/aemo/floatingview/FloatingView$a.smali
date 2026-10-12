.class Lme/aemo/floatingview/FloatingView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/aemo/floatingview/FloatingView;->RestoreFloatingView()V
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

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/aemo/floatingview/FloatingView$a;->a:Lme/aemo/floatingview/FloatingView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 28
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView$a;->a:Lme/aemo/floatingview/FloatingView;

    iget-object v1, v0, Lme/aemo/floatingview/FloatingView;->l:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 28
    sget-boolean v2, Lme/aemo/floatingview/FloatingView;->r:Z

    if-eqz v2, :cond_0

    .line 28
    iget-object v2, v0, Lme/aemo/floatingview/FloatingView;->j:Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    .line 147
    invoke-interface {v2, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v1, 0x0

    .line 28
    sput-boolean v1, Lme/aemo/floatingview/FloatingView;->r:Z

    .line 28
    iget-object v2, v0, Lme/aemo/floatingview/FloatingView;->l:Landroid/widget/RelativeLayout;

    .line 28
    iget-object v3, v0, Lme/aemo/floatingview/FloatingView;->o:Landroid/view/View;

    .line 149
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 28
    iget-object v2, v0, Lme/aemo/floatingview/FloatingView;->o:Landroid/view/View;

    .line 150
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :cond_1
    const/4 v1, 0x0

    .line 151
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 28
    iget-object v2, v0, Lme/aemo/floatingview/FloatingView;->m:Landroid/view/ViewGroup;

    .line 28
    iget-object v3, v0, Lme/aemo/floatingview/FloatingView;->o:Landroid/view/View;

    .line 28
    iget v4, v0, Lme/aemo/floatingview/FloatingView;->n:I

    .line 153
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 28
    iput-object v1, v0, Lme/aemo/floatingview/FloatingView;->l:Landroid/widget/RelativeLayout;

    :cond_2
    return-void
.end method
