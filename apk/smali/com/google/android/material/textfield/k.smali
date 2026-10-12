.class Lcom/google/android/material/textfield/k;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/material/textfield/i;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/i;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/google/android/material/textfield/k;->a:Lcom/google/android/material/textfield/i;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 534
    iget-object p1, p0, Lcom/google/android/material/textfield/k;->a:Lcom/google/android/material/textfield/i;

    iget-object v0, p1, Lcom/google/android/material/textfield/o;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 71
    iget-boolean v1, p1, Lcom/google/android/material/textfield/i;->m:Z

    .line 534
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 71
    iget-object p1, p1, Lcom/google/android/material/textfield/i;->s:Landroid/animation/ValueAnimator;

    .line 535
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
