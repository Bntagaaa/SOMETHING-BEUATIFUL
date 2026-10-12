.class Lcom/google/android/material/floatingactionbutton/h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/google/android/material/floatingactionbutton/f;

.field public final synthetic c:Lcom/google/android/material/floatingactionbutton/m;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/m;ZLcom/google/android/material/floatingactionbutton/f;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/h;->c:Lcom/google/android/material/floatingactionbutton/m;

    iput-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/h;->a:Z

    iput-object p3, p0, Lcom/google/android/material/floatingactionbutton/h;->b:Lcom/google/android/material/floatingactionbutton/f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 68
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/h;->c:Lcom/google/android/material/floatingactionbutton/m;

    const/4 v0, 0x0

    iput v0, p1, Lcom/google/android/material/floatingactionbutton/m;->r:I

    const/4 v0, 0x0

    .line 68
    iput-object v0, p1, Lcom/google/android/material/floatingactionbutton/m;->l:Landroid/animation/Animator;

    .line 541
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/h;->b:Lcom/google/android/material/floatingactionbutton/f;

    if-eqz p1, :cond_0

    .line 542
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/m$e;->onShown()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 530
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/h;->c:Lcom/google/android/material/floatingactionbutton/m;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/material/floatingactionbutton/h;->a:Z

    iget-object v3, v0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    const/4 v1, 0x2

    .line 68
    iput v1, v0, Lcom/google/android/material/floatingactionbutton/m;->r:I

    .line 68
    iput-object p1, v0, Lcom/google/android/material/floatingactionbutton/m;->l:Landroid/animation/Animator;

    return-void
.end method
