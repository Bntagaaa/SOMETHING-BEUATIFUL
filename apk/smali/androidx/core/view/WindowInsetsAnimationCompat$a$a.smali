.class Landroidx/core/view/WindowInsetsAnimationCompat$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsAnimationCompat$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

.field public b:Landroidx/core/view/WindowInsetsCompat;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V
    .locals 0

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    iput-object p2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a;->a:Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

    .line 748
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 752
    new-instance p2, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {p2, p1}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 753
    :goto_0
    iput-object p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a;->b:Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 13

    const/4 v0, 0x1

    .line 759
    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_0

    .line 760
    invoke-static {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a;->b:Landroidx/core/view/WindowInsetsCompat;

    .line 761
    invoke-static {p1, p2}, Landroidx/core/view/WindowInsetsAnimationCompat$a;->e(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    .line 764
    :cond_0
    invoke-static {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v2

    .line 766
    iget-object v1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a;->b:Landroidx/core/view/WindowInsetsCompat;

    if-nez v1, :cond_1

    .line 767
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    iput-object v1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a;->b:Landroidx/core/view/WindowInsetsCompat;

    .line 770
    :cond_1
    iget-object v1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a;->b:Landroidx/core/view/WindowInsetsCompat;

    if-nez v1, :cond_2

    .line 774
    iput-object v2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a;->b:Landroidx/core/view/WindowInsetsCompat;

    .line 775
    invoke-static {p1, p2}, Landroidx/core/view/WindowInsetsAnimationCompat$a;->e(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    .line 788
    :cond_2
    invoke-static {p1}, Landroidx/core/view/WindowInsetsAnimationCompat$a;->f(Landroid/view/View;)Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 789
    iget-object v1, v1, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->a:Landroid/view/WindowInsets;

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 790
    invoke-static {p1, p2}, Landroidx/core/view/WindowInsetsAnimationCompat$a;->e(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    .line 794
    :cond_3
    iget-object v1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a;->b:Landroidx/core/view/WindowInsetsCompat;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x100

    if-gt v4, v6, :cond_5

    .line 675
    invoke-virtual {v2, v4}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v6

    invoke-virtual {v1, v4}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    or-int/2addr v5, v4

    :cond_4
    shl-int/2addr v4, v0

    goto :goto_0

    :cond_5
    if-nez v5, :cond_6

    .line 799
    invoke-static {p1, p2}, Landroidx/core/view/WindowInsetsAnimationCompat$a;->e(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 v0, 0x0

    .line 802
    iget-object v3, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a;->b:Landroidx/core/view/WindowInsetsCompat;

    and-int/lit8 v1, v5, 0x8

    if-eqz v1, :cond_8

    .line 694
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    .line 695
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v4

    iget v4, v4, Landroidx/core/graphics/Insets;->bottom:I

    if-le v1, v4, :cond_7

    .line 696
    sget-object v1, Landroidx/core/view/WindowInsetsAnimationCompat$a;->f:Landroid/view/animation/PathInterpolator;

    goto :goto_1

    .line 698
    :cond_7
    sget-object v1, Landroidx/core/view/WindowInsetsAnimationCompat$a;->g:Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    goto :goto_1

    .line 701
    :cond_8
    sget-object v1, Landroidx/core/view/WindowInsetsAnimationCompat$a;->h:Landroid/view/animation/DecelerateInterpolator;

    .line 807
    :goto_1
    new-instance v4, Landroidx/core/view/WindowInsetsAnimationCompat;

    const-wide/16 v6, 0xa0

    invoke-direct {v4, v5, v1, v6, v7}, Landroidx/core/view/WindowInsetsAnimationCompat;-><init>(ILandroid/view/animation/Interpolator;J)V

    const/4 v1, 0x0

    .line 810
    invoke-virtual {v4, v1}, Landroidx/core/view/WindowInsetsAnimationCompat;->setFraction(F)V

    const/4 v1, 0x2

    .line 812
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 813
    invoke-virtual {v4}, Landroidx/core/view/WindowInsetsAnimationCompat;->getDurationMillis()J

    move-result-wide v6

    .line 812
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 652
    invoke-virtual {v2, v5}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    .line 653
    invoke-virtual {v3, v5}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v7

    .line 654
    iget v8, v1, Landroidx/core/graphics/Insets;->left:I

    iget v9, v7, Landroidx/core/graphics/Insets;->left:I

    .line 655
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v9, v1, Landroidx/core/graphics/Insets;->top:I

    iget v10, v7, Landroidx/core/graphics/Insets;->top:I

    .line 656
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget v10, v1, Landroidx/core/graphics/Insets;->right:I

    iget v11, v7, Landroidx/core/graphics/Insets;->right:I

    .line 657
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget v11, v1, Landroidx/core/graphics/Insets;->bottom:I

    iget v12, v7, Landroidx/core/graphics/Insets;->bottom:I

    .line 658
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 654
    invoke-static {v8, v9, v10, v11}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v8

    .line 660
    iget v9, v1, Landroidx/core/graphics/Insets;->left:I

    iget v10, v7, Landroidx/core/graphics/Insets;->left:I

    .line 661
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v10, v1, Landroidx/core/graphics/Insets;->top:I

    iget v11, v7, Landroidx/core/graphics/Insets;->top:I

    .line 662
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v11, v1, Landroidx/core/graphics/Insets;->right:I

    iget v12, v7, Landroidx/core/graphics/Insets;->right:I

    .line 663
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    iget v7, v7, Landroidx/core/graphics/Insets;->bottom:I

    .line 664
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 660
    invoke-static {v9, v10, v11, v1}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v1

    .line 666
    new-instance v7, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    invoke-direct {v7, v8, v1}, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;-><init>(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)V

    .line 820
    invoke-static {p1, v4, p2, v0}, Landroidx/core/view/WindowInsetsAnimationCompat$a;->b(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat;Landroid/view/WindowInsets;Z)V

    .line 822
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$a;

    move-object v1, v4

    move v4, v5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$a;-><init>(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat;ILandroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 837
    new-instance p1, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$b;

    invoke-direct {p1, v5, v1}, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$b;-><init>(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat;)V

    invoke-virtual {v6, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 849
    new-instance p1, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$c;

    invoke-direct {p1, v5, v1, v7, v6}, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$c;-><init>(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;Landroid/animation/ValueAnimator;)V

    invoke-static {v5, p1}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 856
    iput-object v2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a;->b:Landroidx/core/view/WindowInsetsCompat;

    .line 858
    invoke-static {v5, p2}, Landroidx/core/view/WindowInsetsAnimationCompat$a;->e(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
