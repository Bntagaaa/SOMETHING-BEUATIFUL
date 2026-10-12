.class Lcom/google/android/material/progressindicator/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/material/progressindicator/d;


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/d;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/google/android/material/progressindicator/c;->a:Lcom/google/android/material/progressindicator/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 111
    iget-object p1, p0, Lcom/google/android/material/progressindicator/c;->a:Lcom/google/android/material/progressindicator/d;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/d;->cancelAnimatorImmediately()V

    .line 112
    iget-object v0, p1, Lcom/google/android/material/progressindicator/d;->k:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    if-eqz v0, :cond_0

    .line 113
    iget-object p1, p1, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
