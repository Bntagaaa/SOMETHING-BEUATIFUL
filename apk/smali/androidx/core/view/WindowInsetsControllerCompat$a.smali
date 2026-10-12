.class Landroidx/core/view/WindowInsetsControllerCompat$a;
.super Landroidx/core/view/WindowInsetsControllerCompat$e;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x14
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/Window;

.field public final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .locals 0

    .line 423
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsControllerCompat$e;-><init>()V

    .line 424
    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$a;->a:Landroid/view/Window;

    .line 425
    iput-object p2, p0, Landroidx/core/view/WindowInsetsControllerCompat$a;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .locals 0

    return-void
.end method

.method public final b(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V
    .locals 0

    return-void
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x100

    if-gt v1, v2, :cond_4

    and-int v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-eq v1, v0, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 500
    :cond_1
    iget-object v2, p0, Landroidx/core/view/WindowInsetsControllerCompat$a;->a:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    .line 501
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 502
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    .line 497
    :cond_2
    invoke-virtual {p0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$a;->setSystemUiFlag(I)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    .line 494
    invoke-virtual {p0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$a;->setSystemUiFlag(I)V

    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final e(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .locals 0

    return-void
.end method

.method public final f(I)V
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/16 v1, 0x1000

    const/16 v2, 0x800

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 543
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$a;->unsetSystemUiFlag(I)V

    .line 544
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$a;->setSystemUiFlag(I)V

    return-void

    .line 539
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$a;->unsetSystemUiFlag(I)V

    .line 540
    invoke-virtual {p0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$a;->setSystemUiFlag(I)V

    return-void

    :cond_2
    const/16 p1, 0x1800

    .line 547
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$a;->unsetSystemUiFlag(I)V

    return-void
.end method

.method public final g(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x100

    if-gt v1, v2, :cond_8

    and-int v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    if-eq v1, v0, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    goto :goto_3

    .line 453
    :cond_1
    iget-object v2, p0, Landroidx/core/view/WindowInsetsControllerCompat$a;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    iget-object v4, p0, Landroidx/core/view/WindowInsetsControllerCompat$a;->a:Landroid/view/Window;

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 459
    :cond_2
    invoke-virtual {v4}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    goto :goto_2

    .line 457
    :cond_3
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :goto_2
    if-nez v2, :cond_4

    const v2, 0x1020002

    .line 464
    invoke-virtual {v4, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_7

    .line 467
    invoke-virtual {v2}, Landroid/view/View;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 469
    new-instance v3, Landroidx/activity/b;

    const/4 v4, 0x4

    invoke-direct {v3, v2, v4}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 446
    :cond_5
    invoke-virtual {p0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$a;->unsetSystemUiFlag(I)V

    goto :goto_3

    :cond_6
    const/4 v2, 0x4

    .line 442
    invoke-virtual {p0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$a;->unsetSystemUiFlag(I)V

    const/16 v2, 0x400

    .line 443
    invoke-virtual {p0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$a;->unsetWindowFlag(I)V

    :cond_7
    :goto_3
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public setSystemUiFlag(I)V
    .locals 2

    .line 508
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$a;->a:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/2addr p1, v1

    .line 509
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public setWindowFlag(I)V
    .locals 1

    .line 522
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$a;->a:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public unsetSystemUiFlag(I)V
    .locals 2

    .line 515
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$a;->a:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    not-int p1, p1

    and-int/2addr p1, v1

    .line 516
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public unsetWindowFlag(I)V
    .locals 1

    .line 526
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$a;->a:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method
