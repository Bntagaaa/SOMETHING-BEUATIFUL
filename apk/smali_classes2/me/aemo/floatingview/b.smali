.class Lme/aemo/floatingview/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lme/aemo/floatingview/FloatingView;


# direct methods
.method public constructor <init>(Lme/aemo/floatingview/FloatingView;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/aemo/floatingview/b;->a:Lme/aemo/floatingview/FloatingView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 28
    iget-object v0, p0, Lme/aemo/floatingview/b;->a:Lme/aemo/floatingview/FloatingView;

    iget-object v1, v0, Lme/aemo/floatingview/FloatingView;->j:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 28
    iget-object v0, v0, Lme/aemo/floatingview/FloatingView;->l:Landroid/widget/RelativeLayout;

    .line 293
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    return-void
.end method
