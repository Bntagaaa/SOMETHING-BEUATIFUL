.class Landroidx/core/view/WindowInsetsAnimationCompat$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/WindowInsetsAnimationCompat$a$a;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/core/view/WindowInsetsAnimationCompat;

.field public final synthetic b:Landroidx/core/view/WindowInsetsCompat;

.field public final synthetic c:Landroidx/core/view/WindowInsetsCompat;

.field public final synthetic d:I

.field public final synthetic e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat;ILandroid/view/View;)V
    .locals 0

    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$a;->a:Landroidx/core/view/WindowInsetsAnimationCompat;

    iput-object p2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$a;->b:Landroidx/core/view/WindowInsetsCompat;

    iput-object p3, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$a;->c:Landroidx/core/view/WindowInsetsCompat;

    iput p4, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$a;->d:I

    iput-object p5, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$a;->e:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 18

    move-object/from16 v0, p0

    .line 826
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    iget-object v3, v0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$a;->a:Landroidx/core/view/WindowInsetsAnimationCompat;

    invoke-virtual {v3, v2}, Landroidx/core/view/WindowInsetsAnimationCompat;->setFraction(F)V

    .line 830
    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsAnimationCompat;->getInterpolatedFraction()F

    move-result v2

    .line 827
    sget-object v4, Landroidx/core/view/WindowInsetsAnimationCompat$a;->f:Landroid/view/animation/PathInterpolator;

    .line 709
    new-instance v4, Landroidx/core/view/WindowInsetsCompat$Builder;

    iget-object v5, v0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$a;->b:Landroidx/core/view/WindowInsetsCompat;

    invoke-direct {v4, v5}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    const/4 v6, 0x1

    :goto_0
    const/16 v7, 0x100

    if-gt v6, v7, :cond_1

    .line 712
    iget v7, v0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$a;->d:I

    and-int/2addr v7, v6

    if-nez v7, :cond_0

    .line 713
    invoke-virtual {v5, v6}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroidx/core/view/WindowInsetsCompat$Builder;->setInsets(ILandroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    move/from16 p1, v2

    const/4 v15, 0x1

    goto :goto_1

    .line 716
    :cond_0
    invoke-virtual {v5, v6}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v7

    .line 717
    iget-object v8, v0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$a;->c:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v8, v6}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v8

    .line 718
    iget v9, v7, Landroidx/core/graphics/Insets;->left:I

    iget v10, v8, Landroidx/core/graphics/Insets;->left:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v2

    mul-float v9, v9, v10

    float-to-double v11, v9

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    add-double/2addr v11, v13

    double-to-int v9, v11

    iget v11, v7, Landroidx/core/graphics/Insets;->top:I

    iget v12, v8, Landroidx/core/graphics/Insets;->top:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float v11, v11, v10

    float-to-double v11, v11

    add-double/2addr v11, v13

    double-to-int v11, v11

    iget v12, v7, Landroidx/core/graphics/Insets;->right:I

    iget v15, v8, Landroidx/core/graphics/Insets;->right:I

    sub-int/2addr v12, v15

    int-to-float v12, v12

    mul-float v12, v12, v10

    move/from16 p1, v2

    const/4 v15, 0x1

    float-to-double v1, v12

    add-double/2addr v1, v13

    double-to-int v1, v1

    iget v2, v7, Landroidx/core/graphics/Insets;->bottom:I

    iget v8, v8, Landroidx/core/graphics/Insets;->bottom:I

    sub-int/2addr v2, v8

    int-to-float v2, v2

    mul-float v2, v2, v10

    move-wide/from16 v16, v13

    float-to-double v13, v2

    add-double v13, v13, v16

    double-to-int v2, v13

    invoke-static {v7, v9, v11, v1, v2}, Landroidx/core/view/WindowInsetsCompat;->a(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    move-result-object v1

    .line 726
    invoke-virtual {v4, v6, v1}, Landroidx/core/view/WindowInsetsCompat$Builder;->setInsets(ILandroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    :goto_1
    shl-int/2addr v6, v15

    move/from16 v2, p1

    goto :goto_0

    .line 729
    :cond_1
    invoke-virtual {v4}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    .line 832
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 833
    iget-object v3, v0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$a;->e:Landroid/view/View;

    invoke-static {v3, v1, v2}, Landroidx/core/view/WindowInsetsAnimationCompat$a;->c(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)V

    return-void
.end method
