.class Landroidx/transition/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Landroid/graphics/Matrix;

.field public final synthetic c:Z

.field public final synthetic d:Landroid/graphics/Matrix;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Landroidx/transition/ChangeTransform$e;

.field public final synthetic g:Landroidx/transition/ChangeTransform$d;

.field public final synthetic h:Landroidx/transition/ChangeTransform;


# direct methods
.method public constructor <init>(Landroidx/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroidx/transition/ChangeTransform$e;Landroidx/transition/ChangeTransform$d;)V
    .locals 0

    .line 327
    iput-object p1, p0, Landroidx/transition/c;->h:Landroidx/transition/ChangeTransform;

    iput-boolean p2, p0, Landroidx/transition/c;->c:Z

    iput-object p3, p0, Landroidx/transition/c;->d:Landroid/graphics/Matrix;

    iput-object p4, p0, Landroidx/transition/c;->e:Landroid/view/View;

    iput-object p5, p0, Landroidx/transition/c;->f:Landroidx/transition/ChangeTransform$e;

    iput-object p6, p0, Landroidx/transition/c;->g:Landroidx/transition/ChangeTransform$d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 329
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroidx/transition/c;->b:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 333
    iput-boolean p1, p0, Landroidx/transition/c;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 338
    iget-boolean p1, p0, Landroidx/transition/c;->a:Z

    iget-object v0, p0, Landroidx/transition/c;->f:Landroidx/transition/ChangeTransform$e;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/transition/c;->e:Landroid/view/View;

    if-nez p1, :cond_1

    .line 339
    iget-boolean p1, p0, Landroidx/transition/c;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/transition/c;->h:Landroidx/transition/ChangeTransform;

    iget-boolean p1, p1, Landroidx/transition/ChangeTransform;->I:Z

    if-eqz p1, :cond_0

    .line 340
    iget-object p1, p0, Landroidx/transition/c;->d:Landroid/graphics/Matrix;

    .line 362
    iget-object v3, p0, Landroidx/transition/c;->b:Landroid/graphics/Matrix;

    invoke-virtual {v3, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 363
    sget p1, Landroidx/transition/R$id;->transition_transform:I

    invoke-virtual {v2, p1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 364
    invoke-virtual {v0, v2}, Landroidx/transition/ChangeTransform$e;->restore(Landroid/view/View;)V

    goto :goto_0

    .line 342
    :cond_0
    sget p1, Landroidx/transition/R$id;->transition_transform:I

    invoke-virtual {v2, p1, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 343
    sget p1, Landroidx/transition/R$id;->parent_matrix:I

    invoke-virtual {v2, p1, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 187
    :cond_1
    :goto_0
    sget-object p1, Landroidx/transition/f0;->a:Landroidx/transition/h0;

    invoke-virtual {p1, v2, v1}, Landroidx/transition/h0;->setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 347
    invoke-virtual {v0, v2}, Landroidx/transition/ChangeTransform$e;->restore(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 2

    .line 586
    iget-object p1, p0, Landroidx/transition/c;->g:Landroidx/transition/ChangeTransform$d;

    iget-object p1, p1, Landroidx/transition/ChangeTransform$d;->a:Landroid/graphics/Matrix;

    .line 362
    iget-object v0, p0, Landroidx/transition/c;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 363
    sget p1, Landroidx/transition/R$id;->transition_transform:I

    iget-object v1, p0, Landroidx/transition/c;->e:Landroid/view/View;

    invoke-virtual {v1, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 364
    iget-object p1, p0, Landroidx/transition/c;->f:Landroidx/transition/ChangeTransform$e;

    invoke-virtual {p1, v1}, Landroidx/transition/ChangeTransform$e;->restore(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 2

    .line 358
    sget-object p1, Landroidx/transition/ChangeTransform;->L:[Ljava/lang/String;

    .line 448
    iget-object p1, p0, Landroidx/transition/c;->e:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 449
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 450
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationZ(Landroid/view/View;F)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 451
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 452
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 453
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 454
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 455
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
