.class Lcom/google/android/material/progressindicator/m;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/material/progressindicator/o;


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/o;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/google/android/material/progressindicator/m;->a:Lcom/google/android/material/progressindicator/o;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3

    .line 104
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 42
    iget-object p1, p0, Lcom/google/android/material/progressindicator/m;->a:Lcom/google/android/material/progressindicator/o;

    iget v0, p1, Lcom/google/android/material/progressindicator/o;->h:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 105
    iget-object v2, p1, Lcom/google/android/material/progressindicator/o;->g:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    .line 42
    iput v0, p1, Lcom/google/android/material/progressindicator/o;->h:I

    .line 42
    iput-boolean v1, p1, Lcom/google/android/material/progressindicator/o;->i:Z

    return-void
.end method
