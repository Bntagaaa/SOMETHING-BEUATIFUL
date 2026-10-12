.class Lcom/google/android/material/floatingactionbutton/g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Z

.field public final synthetic c:Lcom/google/android/material/floatingactionbutton/f;

.field public final synthetic d:Lcom/google/android/material/floatingactionbutton/m;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/m;ZLcom/google/android/material/floatingactionbutton/f;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/g;->d:Lcom/google/android/material/floatingactionbutton/m;

    iput-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/g;->b:Z

    iput-object p3, p0, Lcom/google/android/material/floatingactionbutton/g;->c:Lcom/google/android/material/floatingactionbutton/f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 459
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/g;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 68
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/g;->d:Lcom/google/android/material/floatingactionbutton/m;

    const/4 v0, 0x0

    iput v0, p1, Lcom/google/android/material/floatingactionbutton/m;->r:I

    const/4 v0, 0x0

    .line 68
    iput-object v0, p1, Lcom/google/android/material/floatingactionbutton/m;->l:Landroid/animation/Animator;

    .line 467
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/g;->a:Z

    if-nez v0, :cond_1

    .line 468
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/g;->b:Z

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    iget-object p1, p1, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 469
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/g;->c:Lcom/google/android/material/floatingactionbutton/f;

    if-eqz p1, :cond_1

    .line 470
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/m$e;->onHidden()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 450
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/g;->d:Lcom/google/android/material/floatingactionbutton/m;

    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/material/floatingactionbutton/g;->b:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    const/4 v1, 0x1

    .line 68
    iput v1, v0, Lcom/google/android/material/floatingactionbutton/m;->r:I

    .line 68
    iput-object p1, v0, Lcom/google/android/material/floatingactionbutton/m;->l:Landroid/animation/Animator;

    .line 454
    iput-boolean v2, p0, Lcom/google/android/material/floatingactionbutton/g;->a:Z

    return-void
.end method
