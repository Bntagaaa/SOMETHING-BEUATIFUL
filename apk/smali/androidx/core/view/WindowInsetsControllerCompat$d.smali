.class Landroidx/core/view/WindowInsetsControllerCompat$d;
.super Landroidx/core/view/WindowInsetsControllerCompat$e;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Landroidx/core/view/WindowInsetsControllerCompat;

.field public final b:Landroid/view/WindowInsetsController;

.field public final c:Landroidx/collection/SimpleArrayMap;

.field public d:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/WindowInsetsController;Landroidx/core/view/WindowInsetsControllerCompat;)V
    .locals 1

    .line 638
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsControllerCompat$e;-><init>()V

    .line 625
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->c:Landroidx/collection/SimpleArrayMap;

    .line 639
    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    .line 640
    iput-object p2, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->a:Landroidx/core/view/WindowInsetsControllerCompat;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .locals 2

    .line 789
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->c:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 794
    :cond_0
    new-instance v1, Landroidx/core/view/q;

    invoke-direct {v1, p0, p1}, Landroidx/core/view/q;-><init>(Landroidx/core/view/WindowInsetsControllerCompat$d;Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V

    .line 800
    invoke-virtual {v0, p1, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {p1, v1}, Landroidx/core/view/p;->n(Landroid/view/WindowInsetsController;Landroidx/core/view/q;)V

    return-void
.end method

.method public final b(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V
    .locals 7

    .line 727
    new-instance v6, Landroidx/core/view/r;

    invoke-direct {v6, p6}, Landroidx/core/view/r;-><init>(Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V

    .line 753
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Landroidx/core/view/p;->l(Landroid/view/WindowInsetsController;IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V

    return-void
.end method

.method public final c()I
    .locals 1

    .line 781
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {v0}, Landroidx/core/view/p;->q(Landroid/view/WindowInsetsController;)I

    move-result v0

    return v0
.end method

.method public final d(I)V
    .locals 1

    .line 664
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {v0, p1}, Landroidx/core/view/p;->k(Landroid/view/WindowInsetsController;I)V

    return-void
.end method

.method public final e(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .locals 1

    .line 809
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->c:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/p;->f(Ljava/lang/Object;)Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 811
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {v0, p1}, Landroidx/core/view/p;->m(Landroid/view/WindowInsetsController;Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    :cond_0
    return-void
.end method

.method public final f(I)V
    .locals 1

    .line 768
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {v0, p1}, Landroidx/core/view/p;->u(Landroid/view/WindowInsetsController;I)V

    return-void
.end method

.method public final g(I)V
    .locals 3

    .line 645
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->d:Landroid/view/Window;

    if-eqz v0, :cond_0

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-ge v1, v2, :cond_0

    .line 647
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 648
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 657
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    .line 659
    :cond_0
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {v0, p1}, Landroidx/core/view/p;->x(Landroid/view/WindowInsetsController;I)V

    return-void
.end method

.method public isAppearanceLightNavigationBars()Z
    .locals 1

    .line 696
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {v0}, Landroidx/core/view/p;->b(Landroid/view/WindowInsetsController;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAppearanceLightStatusBars()Z
    .locals 1

    .line 669
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {v0}, Landroidx/core/view/p;->b(Landroid/view/WindowInsetsController;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAppearanceLightNavigationBars(Z)V
    .locals 2

    .line 702
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->d:Landroid/view/Window;

    const/16 v1, 0x10

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$d;->setSystemUiFlag(I)V

    .line 707
    :cond_0
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {p1}, Landroidx/core/view/p;->t(Landroid/view/WindowInsetsController;)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 712
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$d;->unsetSystemUiFlag(I)V

    .line 715
    :cond_2
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {p1}, Landroidx/core/view/p;->w(Landroid/view/WindowInsetsController;)V

    return-void
.end method

.method public setAppearanceLightStatusBars(Z)V
    .locals 2

    .line 675
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->d:Landroid/view/Window;

    const/16 v1, 0x2000

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$d;->setSystemUiFlag(I)V

    .line 680
    :cond_0
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {p1}, Landroidx/core/view/p;->z(Landroid/view/WindowInsetsController;)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 685
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$d;->unsetSystemUiFlag(I)V

    .line 688
    :cond_2
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {p1}, Landroidx/core/view/p;->j(Landroid/view/WindowInsetsController;)V

    return-void
.end method

.method public setSystemUiFlag(I)V
    .locals 2

    .line 823
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->d:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 825
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/2addr p1, v1

    .line 824
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public unsetSystemUiFlag(I)V
    .locals 2

    .line 816
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->d:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 818
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    not-int p1, p1

    and-int/2addr p1, v1

    .line 817
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
