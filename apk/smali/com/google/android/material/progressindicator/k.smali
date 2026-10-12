.class Lcom/google/android/material/progressindicator/k;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/material/progressindicator/l;


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/l;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/google/android/material/progressindicator/k;->a:Lcom/google/android/material/progressindicator/l;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3

    .line 83
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 36
    iget-object p1, p0, Lcom/google/android/material/progressindicator/k;->a:Lcom/google/android/material/progressindicator/l;

    iget v0, p1, Lcom/google/android/material/progressindicator/l;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 85
    iget-object v2, p1, Lcom/google/android/material/progressindicator/l;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    .line 36
    iput v0, p1, Lcom/google/android/material/progressindicator/l;->g:I

    .line 36
    iput-boolean v1, p1, Lcom/google/android/material/progressindicator/l;->h:Z

    return-void
.end method
