.class Lcom/google/android/material/bottomappbar/e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 1005
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/e;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1008
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/e;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget-object v1, v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->p0:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 655
    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->q()Landroid/view/View;

    move-result-object p1

    .line 656
    instance-of v1, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 845
    iget v1, v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->c0:I

    .line 845
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->r(I)F

    move-result v0

    .line 1013
    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationX(F)V

    :cond_1
    return-void
.end method
