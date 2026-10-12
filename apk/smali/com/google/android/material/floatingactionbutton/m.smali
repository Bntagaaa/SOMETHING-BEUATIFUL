.class Lcom/google/android/material/floatingactionbutton/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/m$a;,
        Lcom/google/android/material/floatingactionbutton/m$c;,
        Lcom/google/android/material/floatingactionbutton/m$b;,
        Lcom/google/android/material/floatingactionbutton/m$f;,
        Lcom/google/android/material/floatingactionbutton/m$g;,
        Lcom/google/android/material/floatingactionbutton/m$e;,
        Lcom/google/android/material/floatingactionbutton/m$d;
    }
.end annotation


# static fields
.field public static final C:Landroid/animation/TimeInterpolator;

.field public static final D:[I

.field public static final E:[I

.field public static final F:[I

.field public static final G:[I

.field public static final H:[I

.field public static final I:[I


# instance fields
.field public final A:Landroid/graphics/Matrix;

.field public B:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public a:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public b:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Lcom/google/android/material/floatingactionbutton/d;

.field public e:Landroid/graphics/drawable/LayerDrawable;

.field public f:Z

.field public g:Z

.field public h:F

.field public i:F

.field public j:F

.field public k:I

.field public l:Landroid/animation/Animator;

.field public m:Lcom/google/android/material/animation/MotionSpec;

.field public n:Lcom/google/android/material/animation/MotionSpec;

.field public o:F

.field public p:F

.field public q:I

.field public r:I

.field public s:Ljava/util/ArrayList;

.field public t:Ljava/util/ArrayList;

.field public u:Ljava/util/ArrayList;

.field public final v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final w:Lcom/google/android/material/shadow/ShadowViewDelegate;

.field public final x:Landroid/graphics/Rect;

.field public final y:Landroid/graphics/RectF;

.field public final z:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 70
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sput-object v0, Lcom/google/android/material/floatingactionbutton/m;->C:Landroid/animation/TimeInterpolator;

    const v0, 0x10100a7

    const v1, 0x101009e

    .line 131
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/floatingactionbutton/m;->D:[I

    const v0, 0x1010367

    const v2, 0x101009c

    .line 134
    filled-new-array {v0, v2, v1}, [I

    move-result-object v3

    sput-object v3, Lcom/google/android/material/floatingactionbutton/m;->E:[I

    .line 137
    filled-new-array {v2, v1}, [I

    move-result-object v2

    sput-object v2, Lcom/google/android/material/floatingactionbutton/m;->F:[I

    .line 140
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/floatingactionbutton/m;->G:[I

    .line 143
    filled-new-array {v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/floatingactionbutton/m;->H:[I

    const/4 v0, 0x0

    .line 144
    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/material/floatingactionbutton/m;->I:[I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/shadow/ShadowViewDelegate;)V
    .locals 3

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/m;->g:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 110
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/m;->p:F

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/m;->r:I

    .line 149
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/m;->x:Landroid/graphics/Rect;

    .line 150
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/m;->y:Landroid/graphics/RectF;

    .line 151
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/m;->z:Landroid/graphics/RectF;

    .line 152
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/m;->A:Landroid/graphics/Matrix;

    .line 159
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 160
    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/m;->w:Lcom/google/android/material/shadow/ShadowViewDelegate;

    .line 162
    new-instance p2, Lcom/google/android/material/internal/StateListAnimator;

    invoke-direct {p2}, Lcom/google/android/material/internal/StateListAnimator;-><init>()V

    .line 165
    new-instance v0, Lcom/google/android/material/floatingactionbutton/m$c;

    move-object v1, p0

    check-cast v1, Lcom/google/android/material/floatingactionbutton/n;

    invoke-direct {v0, v1}, Lcom/google/android/material/floatingactionbutton/m$c;-><init>(Lcom/google/android/material/floatingactionbutton/n;)V

    .line 167
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/m;->d(Lcom/google/android/material/floatingactionbutton/m$g;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 165
    sget-object v2, Lcom/google/android/material/floatingactionbutton/m;->D:[I

    invoke-virtual {p2, v2, v0}, Lcom/google/android/material/internal/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 168
    new-instance v0, Lcom/google/android/material/floatingactionbutton/m$b;

    invoke-direct {v0, v1}, Lcom/google/android/material/floatingactionbutton/m$b;-><init>(Lcom/google/android/material/floatingactionbutton/n;)V

    .line 170
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/m;->d(Lcom/google/android/material/floatingactionbutton/m$g;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 168
    sget-object v2, Lcom/google/android/material/floatingactionbutton/m;->E:[I

    invoke-virtual {p2, v2, v0}, Lcom/google/android/material/internal/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 171
    new-instance v0, Lcom/google/android/material/floatingactionbutton/m$b;

    invoke-direct {v0, v1}, Lcom/google/android/material/floatingactionbutton/m$b;-><init>(Lcom/google/android/material/floatingactionbutton/n;)V

    .line 173
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/m;->d(Lcom/google/android/material/floatingactionbutton/m$g;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 171
    sget-object v2, Lcom/google/android/material/floatingactionbutton/m;->F:[I

    invoke-virtual {p2, v2, v0}, Lcom/google/android/material/internal/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 174
    new-instance v0, Lcom/google/android/material/floatingactionbutton/m$b;

    invoke-direct {v0, v1}, Lcom/google/android/material/floatingactionbutton/m$b;-><init>(Lcom/google/android/material/floatingactionbutton/n;)V

    .line 176
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/m;->d(Lcom/google/android/material/floatingactionbutton/m$g;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 174
    sget-object v2, Lcom/google/android/material/floatingactionbutton/m;->G:[I

    invoke-virtual {p2, v2, v0}, Lcom/google/android/material/internal/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 178
    new-instance v0, Lcom/google/android/material/floatingactionbutton/m$f;

    invoke-direct {v0, v1}, Lcom/google/android/material/floatingactionbutton/m$f;-><init>(Lcom/google/android/material/floatingactionbutton/n;)V

    .line 179
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/m;->d(Lcom/google/android/material/floatingactionbutton/m$g;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 178
    sget-object v2, Lcom/google/android/material/floatingactionbutton/m;->H:[I

    invoke-virtual {p2, v2, v0}, Lcom/google/android/material/internal/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 181
    new-instance v0, Lcom/google/android/material/floatingactionbutton/m$a;

    .line 893
    invoke-direct {v0, v1}, Lcom/google/android/material/floatingactionbutton/m$g;-><init>(Lcom/google/android/material/floatingactionbutton/n;)V

    .line 182
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/m;->d(Lcom/google/android/material/floatingactionbutton/m$g;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 181
    sget-object v1, Lcom/google/android/material/floatingactionbutton/m;->I:[I

    invoke-virtual {p2, v1, v0}, Lcom/google/android/material/internal/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result p1

    iput p1, p0, Lcom/google/android/material/floatingactionbutton/m;->o:F

    return-void
.end method

.method public static d(Lcom/google/android/material/floatingactionbutton/m$g;)Landroid/animation/ValueAnimator;
    .locals 3

    .line 825
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 826
    sget-object v1, Lcom/google/android/material/floatingactionbutton/m;->C:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    .line 827
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 828
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 829
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p0, 0x2

    .line 830
    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a(FLandroid/graphics/Matrix;)V
    .locals 5

    .line 296
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 298
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/m;->q:I

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/m;->y:Landroid/graphics/RectF;

    .line 302
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/m;->z:Landroid/graphics/RectF;

    .line 303
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 304
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/m;->q:I

    int-to-float v0, v0

    invoke-virtual {v2, v4, v4, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 305
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 308
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/m;->q:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p2, p1, p1, v0, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_0
    return-void
.end method

.method public addOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 404
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/m;->t:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/m;->t:Ljava/util/ArrayList;

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/m;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/google/android/material/animation/MotionSpec;FFF)Landroid/animation/AnimatorSet;
    .locals 9

    .line 567
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 569
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p2, v3, v4

    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {p2, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 570
    const-string v3, "opacity"

    invoke-virtual {p1, v3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 571
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v2, [F

    aput p3, v3, v4

    invoke-static {p2, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 574
    const-string v3, "scale"

    invoke-virtual {p1, v3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 664
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_0

    goto :goto_0

    .line 668
    :cond_0
    new-instance v7, Lcom/google/android/material/floatingactionbutton/k;

    .line 668
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 669
    new-instance v8, Landroid/animation/FloatEvaluator;

    invoke-direct {v8}, Landroid/animation/FloatEvaluator;-><init>()V

    iput-object v8, v7, Lcom/google/android/material/floatingactionbutton/k;->a:Landroid/animation/FloatEvaluator;

    .line 668
    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 576
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v2, [F

    aput p3, v7, v4

    invoke-static {p2, v1, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 579
    invoke-virtual {p1, v3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    if-eq v5, v6, :cond_1

    goto :goto_1

    .line 668
    :cond_1
    new-instance v1, Lcom/google/android/material/floatingactionbutton/k;

    .line 668
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 669
    new-instance v3, Landroid/animation/FloatEvaluator;

    invoke-direct {v3}, Landroid/animation/FloatEvaluator;-><init>()V

    iput-object v3, v1, Lcom/google/android/material/floatingactionbutton/k;->a:Landroid/animation/FloatEvaluator;

    .line 668
    invoke-virtual {p3, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 581
    :goto_1
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    iget-object p3, p0, Lcom/google/android/material/floatingactionbutton/m;->A:Landroid/graphics/Matrix;

    invoke-virtual {p0, p4, p3}, Lcom/google/android/material/floatingactionbutton/m;->a(FLandroid/graphics/Matrix;)V

    .line 584
    new-instance p4, Lcom/google/android/material/animation/ImageMatrixProperty;

    invoke-direct {p4}, Lcom/google/android/material/animation/ImageMatrixProperty;-><init>()V

    new-instance v1, Lcom/google/android/material/floatingactionbutton/i;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/i;-><init>(Lcom/google/android/material/floatingactionbutton/m;)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3, p3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    new-array p3, v2, [Landroid/graphics/Matrix;

    aput-object v3, p3, v4

    .line 585
    invoke-static {p2, p4, v1, p3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 599
    const-string p3, "iconScale"

    invoke-virtual {p1, p3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 600
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 603
    invoke-static {p1, v0}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p1
.end method

.method public final c(FFF)Landroid/animation/AnimatorSet;
    .locals 14

    .line 618
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 619
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    .line 620
    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 621
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v6

    .line 622
    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v8

    .line 623
    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v10

    .line 624
    iget v11, p0, Lcom/google/android/material/floatingactionbutton/m;->p:F

    .line 625
    new-instance v13, Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/google/android/material/floatingactionbutton/m;->A:Landroid/graphics/Matrix;

    invoke-direct {v13, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 626
    new-instance v4, Lcom/google/android/material/floatingactionbutton/j;

    move-object v5, p0

    move v7, p1

    move/from16 v9, p2

    move/from16 v12, p3

    invoke-direct/range {v4 .. v13}, Lcom/google/android/material/floatingactionbutton/j;-><init>(Lcom/google/android/material/floatingactionbutton/m;FFFFFFFLandroid/graphics/Matrix;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 642
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    invoke-static {v0, v1}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 646
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    .line 648
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 649
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/google/android/material/R$integer;->material_motion_duration_long_1:I

    .line 650
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 645
    invoke-static {p1, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result p1

    int-to-long v1, p1

    .line 644
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 653
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 652
    invoke-static {p1, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 651
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public e(Landroid/graphics/Rect;)V
    .locals 5

    .line 727
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/m;->f:Z

    if-eqz v0, :cond_0

    .line 728
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/m;->k:I

    .line 795
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v2, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:I

    .line 795
    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 728
    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 731
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/m;->g:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/m;->getElevation()F

    move-result v1

    iget v2, p0, Lcom/google/android/material/floatingactionbutton/m;->j:F

    add-float/2addr v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    float-to-double v2, v1

    .line 732
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v1, v1, v3

    float-to-double v3, v1

    .line 733
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 734
    invoke-virtual {p1, v2, v0, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public f(FFF)V
    .locals 0

    .line 369
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/m;->l()V

    .line 374
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/m;->b:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz p2, :cond_0

    .line 375
    invoke-virtual {p2, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/m;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/floatingactionbutton/m$d;

    .line 697
    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/m$d;->onTranslationChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getElevation()F
    .locals 1

    .line 249
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/m;->h:F

    return v0
.end method

.method public h(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/m;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 237
    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 236
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final i(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 2

    .line 313
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/m;->a:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 314
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/m;->b:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/m;->c:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/google/android/material/shape/Shapeable;

    if-eqz v1, :cond_1

    .line 319
    check-cast v0, Lcom/google/android/material/shape/Shapeable;

    invoke-interface {v0, p1}, Lcom/google/android/material/shape/Shapeable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/m;->d:Lcom/google/android/material/floatingactionbutton/d;

    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/d;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :cond_2
    return-void
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k()V
    .locals 2

    .line 921
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/m;->b:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_0

    .line 922
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/m;->o:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatRotation(I)V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 9

    .line 721
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/m;->x:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/m;->e(Landroid/graphics/Rect;)V

    .line 738
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/m;->e:Landroid/graphics/drawable/LayerDrawable;

    const-string v2, "Didn\'t initialize content background"

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/m;->j()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/m;->w:Lcom/google/android/material/shadow/ShadowViewDelegate;

    if-eqz v1, :cond_0

    .line 740
    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    iget-object v4, p0, Lcom/google/android/material/floatingactionbutton/m;->e:Landroid/graphics/drawable/LayerDrawable;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 742
    invoke-interface {v2, v3}, Lcom/google/android/material/shadow/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 744
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/m;->e:Landroid/graphics/drawable/LayerDrawable;

    invoke-interface {v2, v1}, Lcom/google/android/material/shadow/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 723
    :goto_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v2, v1, v3, v4, v0}, Lcom/google/android/material/shadow/ShadowViewDelegate;->setShadowPadding(IIII)V

    return-void
.end method

.method public removeOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 411
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/m;->t:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 416
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
