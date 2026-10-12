.class Lcom/google/android/material/progressindicator/b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/material/progressindicator/d;


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/d;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/google/android/material/progressindicator/b;->a:Lcom/google/android/material/progressindicator/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    .line 95
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 34
    iget-object p1, p0, Lcom/google/android/material/progressindicator/b;->a:Lcom/google/android/material/progressindicator/d;

    iget v0, p1, Lcom/google/android/material/progressindicator/d;->h:I

    add-int/lit8 v0, v0, 0x4

    .line 97
    iget-object v1, p1, Lcom/google/android/material/progressindicator/d;->g:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 34
    iput v0, p1, Lcom/google/android/material/progressindicator/d;->h:I

    return-void
.end method
