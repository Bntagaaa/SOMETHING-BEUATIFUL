.class Lcom/google/android/material/bottomappbar/BottomAppBar$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$c;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4
    .param p2    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/internal/ViewUtils$RelativePadding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 111
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$c;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 314
    iget-boolean p3, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->f0:Z

    if-eqz p3, :cond_0

    .line 315
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result p3

    .line 111
    iput p3, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->m0:I

    .line 317
    :cond_0
    iget-boolean p3, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->g0:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 111
    iget p3, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->o0:I

    .line 318
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    if-eq p3, v2, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 319
    :goto_0
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    .line 111
    iput v2, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->o0:I

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    .line 321
    :goto_1
    iget-boolean v2, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->h0:Z

    if-eqz v2, :cond_4

    .line 111
    iget v2, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->n0:I

    .line 322
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v3

    if-eq v2, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 323
    :goto_2
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v1

    .line 111
    iput v1, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->n0:I

    move v1, v0

    :cond_4
    if-nez p3, :cond_6

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    return-object p2

    .line 939
    :cond_6
    :goto_3
    iget-object p3, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->b0:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_7

    .line 940
    invoke-virtual {p3}, Landroid/animation/Animator;->cancel()V

    .line 942
    :cond_7
    iget-object p3, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->a0:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_8

    .line 943
    invoke-virtual {p3}, Landroid/animation/Animator;->cancel()V

    .line 111
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->v()V

    .line 111
    invoke-virtual {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->u()V

    return-object p2
.end method
