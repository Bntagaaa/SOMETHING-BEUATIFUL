.class Lcom/google/android/material/floatingactionbutton/e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/google/android/material/floatingactionbutton/c;

.field public final synthetic c:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/c;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V
    .locals 0

    .line 648
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->b:Lcom/google/android/material/floatingactionbutton/c;

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/e;->c:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 659
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/e;->a:Z

    .line 660
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->b:Lcom/google/android/material/floatingactionbutton/c;

    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/o;->onAnimationCancel()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 665
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->b:Lcom/google/android/material/floatingactionbutton/c;

    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/o;->onAnimationEnd()V

    .line 666
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/e;->a:Z

    if-nez v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->c:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;

    invoke-interface {p1, v0}, Lcom/google/android/material/floatingactionbutton/o;->onChange(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->b:Lcom/google/android/material/floatingactionbutton/c;

    invoke-interface {v0, p1}, Lcom/google/android/material/floatingactionbutton/o;->onAnimationStart(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    .line 654
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/e;->a:Z

    return-void
.end method
