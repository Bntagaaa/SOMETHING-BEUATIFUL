.class public final Lcom/google/android/material/internal/StateListAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/StateListAnimator$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Lcom/google/android/material/internal/StateListAnimator$b;

.field public c:Landroid/animation/ValueAnimator;

.field public final d:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->b:Lcom/google/android/material/internal/StateListAnimator$b;

    .line 42
    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->c:Landroid/animation/ValueAnimator;

    .line 44
    new-instance v0, Lcom/google/android/material/internal/StateListAnimator$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/StateListAnimator$a;-><init>(Lcom/google/android/material/internal/StateListAnimator;)V

    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->d:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method


# virtual methods
.method public addState([ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 62
    new-instance v0, Lcom/google/android/material/internal/StateListAnimator$b;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/internal/StateListAnimator$b;-><init>([ILandroid/animation/ValueAnimator;)V

    .line 63
    iget-object p1, p0, Lcom/google/android/material/internal/StateListAnimator;->d:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 64
    iget-object p1, p0, Lcom/google/android/material/internal/StateListAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->c:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public setState([I)V
    .locals 6

    .line 70
    iget-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    .line 72
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/internal/StateListAnimator$b;

    .line 73
    iget-object v5, v4, Lcom/google/android/material/internal/StateListAnimator$b;->a:[I

    invoke-static {v5, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v3

    .line 78
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/internal/StateListAnimator;->b:Lcom/google/android/material/internal/StateListAnimator$b;

    if-ne v4, p1, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 98
    iget-object p1, p0, Lcom/google/android/material/internal/StateListAnimator;->c:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    .line 99
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 100
    iput-object v3, p0, Lcom/google/android/material/internal/StateListAnimator;->c:Landroid/animation/ValueAnimator;

    .line 85
    :cond_3
    iput-object v4, p0, Lcom/google/android/material/internal/StateListAnimator;->b:Lcom/google/android/material/internal/StateListAnimator$b;

    if-eqz v4, :cond_4

    .line 93
    iget-object p1, v4, Lcom/google/android/material/internal/StateListAnimator$b;->b:Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lcom/google/android/material/internal/StateListAnimator;->c:Landroid/animation/ValueAnimator;

    .line 94
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    :goto_2
    return-void
.end method
