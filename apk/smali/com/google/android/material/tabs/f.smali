.class Lcom/google/android/material/tabs/f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/tabs/TabLayout$c;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout$c;I)V
    .locals 0

    .line 3243
    iput-object p1, p0, Lcom/google/android/material/tabs/f;->b:Lcom/google/android/material/tabs/TabLayout$c;

    iput p2, p0, Lcom/google/android/material/tabs/f;->a:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 3251
    iget-object p1, p0, Lcom/google/android/material/tabs/f;->b:Lcom/google/android/material/tabs/TabLayout$c;

    iget v0, p0, Lcom/google/android/material/tabs/f;->a:I

    iput v0, p1, Lcom/google/android/material/tabs/TabLayout$c;->b:I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 3246
    iget-object p1, p0, Lcom/google/android/material/tabs/f;->b:Lcom/google/android/material/tabs/TabLayout$c;

    iget v0, p0, Lcom/google/android/material/tabs/f;->a:I

    iput v0, p1, Lcom/google/android/material/tabs/TabLayout$c;->b:I

    return-void
.end method
