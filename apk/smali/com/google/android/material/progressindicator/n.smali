.class Lcom/google/android/material/progressindicator/n;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/material/progressindicator/o;


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/o;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/google/android/material/progressindicator/n;->a:Lcom/google/android/material/progressindicator/o;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 119
    iget-object p1, p0, Lcom/google/android/material/progressindicator/n;->a:Lcom/google/android/material/progressindicator/o;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/o;->cancelAnimatorImmediately()V

    .line 120
    iget-object v0, p1, Lcom/google/android/material/progressindicator/o;->k:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    if-eqz v0, :cond_0

    .line 121
    iget-object p1, p1, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
