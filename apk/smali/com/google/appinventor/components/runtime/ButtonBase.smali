.class public abstract Lcom/google/appinventor/components/runtime/ButtonBase;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/google/appinventor/components/runtime/AccessibleComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ButtonBase"

.field private static final ROUNDED_CORNERS_ARRAY:[F

.field private static final ROUNDED_CORNERS_RADIUS:F = 10.0f

.field private static final SHAPED_DEFAULT_BACKGROUND_COLOR:I = -0x333334

.field private static defaultButtonMinHeight:I

.field private static defaultButtonMinWidth:I


# instance fields
.field private backgroundBitmap:Landroid/graphics/Bitmap;

.field private backgroundColor:I

.field private backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

.field private bold:Z

.field private context:Landroid/content/Context;

.field private defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private defaultColorStateList:Landroid/content/res/ColorStateList;

.field private defaultOutlineProvider:Ljava/lang/Object;

.field private defaultStateAnimator:Ljava/lang/Object;

.field private fontAwesome:Z

.field private fontTypeface:Ljava/lang/String;

.field private imagePath:Ljava/lang/String;

.field private isBigText:Z

.field private isHighContrast:Z

.field private isRepl:Z

.field private italic:Z

.field private myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private shape:I

.field private showFeedback:Z

.field private textAlignment:I

.field private textColor:I

.field private final view:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 54
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/appinventor/components/runtime/ButtonBase;->ROUNDED_CORNERS_ARRAY:[F

    const/4 v0, 0x0

    .line 123
    sput v0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinWidth:I

    .line 130
    sput v0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinHeight:I

    return-void

    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .line 154
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->showFeedback:Z

    .line 87
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    const/4 v2, 0x0

    .line 92
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    .line 113
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isHighContrast:Z

    .line 116
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isBigText:Z

    .line 155
    new-instance v3, Landroid/widget/Button;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    .line 157
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    instance-of v4, v4, Lcom/google/appinventor/components/runtime/ReplForm;

    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isRepl:Z

    .line 158
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->context:Landroid/content/Context;

    .line 160
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 161
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultColorStateList:Landroid/content/res/ColorStateList;

    .line 162
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/KitkatUtil;->getMinWidth(Landroid/widget/TextView;)I

    move-result v4

    sput v4, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinWidth:I

    .line 163
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/KitkatUtil;->getMinHeight(Landroid/widget/TextView;)I

    move-result v4

    sput v4, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinHeight:I

    .line 165
    invoke-virtual {v3}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultOutlineProvider:Ljava/lang/Object;

    .line 166
    invoke-virtual {v3}, Landroid/view/View;->getStateListAnimator()Landroid/animation/StateListAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultStateAnimator:Ljava/lang/Object;

    .line 170
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 173
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 175
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 176
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 177
    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/util/IceCreamSandwichUtil;->setAllCaps(Landroid/widget/TextView;Z)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ButtonBase;->TextAlignment(I)V

    .line 184
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ButtonBase;->BackgroundColor(I)V

    .line 185
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ButtonBase;->Image(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ButtonBase;->Enabled(Z)V

    .line 187
    const-string v0, "0"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:Ljava/lang/String;

    .line 188
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    invoke-static {p1, v3, v0, v4, v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 189
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ButtonBase;->FontSize(F)V

    .line 190
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ButtonBase;->Text(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ButtonBase;->TextColor(I)V

    .line 192
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ButtonBase;->Shape(I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/Button;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->showFeedback:Z

    .line 87
    const-string p1, ""

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 92
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 113
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isHighContrast:Z

    .line 116
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isBigText:Z

    .line 197
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    return-void
.end method

.method private createRippleState()Landroid/content/res/ColorStateList;
    .locals 5

    const v0, 0x101009e

    const/4 v1, 0x1

    .line 537
    new-array v1, v1, [[I

    filled-new-array {v0}, [I

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 538
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultColorStateList:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 539
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 540
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    const/16 v4, 0x46

    .line 539
    invoke-static {v4, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    .line 542
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private getSafeBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 516
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 524
    const-string v1, "ButtonBase"

    const-string v2, "Unable to clone button drawable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 532
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private setShape()V
    .locals 5

    .line 547
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 550
    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 558
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    goto :goto_0

    .line 561
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 555
    :cond_1
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    goto :goto_0

    .line 552
    :cond_2
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    sget-object v2, Lcom/google/appinventor/components/runtime/ButtonBase;->ROUNDED_CORNERS_ARRAY:[F

    invoke-direct {v1, v2, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 564
    :goto_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result v1

    if-nez v1, :cond_3

    .line 565
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 570
    :cond_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->createRippleState()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-direct {v2, v4, v0, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 577
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    const v1, 0xffffff

    if-ne v0, v1, :cond_4

    .line 578
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 579
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    goto :goto_1

    .line 581
    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultOutlineProvider:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 582
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultStateAnimator:Ljava/lang/Object;

    check-cast v2, Landroid/animation/StateListAnimator;

    invoke-virtual {v0, v2}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 586
    :goto_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    if-ne v0, v1, :cond_5

    .line 587
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    :cond_5
    if-nez v0, :cond_8

    .line 589
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isHighContrast:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 592
    :cond_6
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, -0x333334

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    .line 590
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, -0x1000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    .line 595
    :cond_8
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 598
    :goto_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateAppearance()V
    .locals 10

    .line 442
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 443
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    if-nez v0, :cond_4

    .line 444
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    if-nez v0, :cond_2

    .line 447
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isHighContrast:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 448
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 449
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->getSafeBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 450
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, -0x1000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_2
    const v2, 0xffffff

    if-ne v0, v2, :cond_3

    .line 458
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 460
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->getSafeBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 461
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 464
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 466
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->getSafeBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 468
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 473
    :cond_4
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->setShape()V

    .line 475
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    sget v1, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinWidth:I

    sget v2, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinHeight:I

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinSize(Landroid/widget/TextView;II)V

    return-void

    .line 477
    :cond_5
    iget v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    if-nez v2, :cond_6

    .line 478
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 480
    :cond_6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    .line 481
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 483
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 484
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 485
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 486
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 488
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 489
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 491
    iget v7, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    const/4 v8, 0x0

    if-eq v7, v2, :cond_9

    const/4 v2, 0x2

    if-eq v7, v2, :cond_8

    const/4 v2, 0x3

    if-ne v7, v2, :cond_7

    .line 500
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v7, v3

    int-to-float v9, v4

    invoke-direct {v2, v8, v8, v7, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v6, v2, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 503
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 497
    :cond_8
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v7, v3

    int-to-float v9, v4

    invoke-direct {v2, v8, v8, v7, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v6, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 493
    :cond_9
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v7, v3

    int-to-float v9, v4

    invoke-direct {v2, v8, v8, v7, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-virtual {v6, v2, v7, v7, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 506
    :goto_2
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 508
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundBitmap:Landroid/graphics/Bitmap;

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v8, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v2, v1, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 510
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the button\'s background color"
    .end annotation

    .line 415
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the background color of the %type%. The background color will not be visible if an Image is being displayed."
    .end annotation

    .line 433
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    .line 434
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->updateAppearance()V

    return-void
.end method

.method public CustomFontTypeFace(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    if-eqz p1, :cond_1

    .line 862
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Enabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 622
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, user can tap %type% to cause action."
    .end annotation

    .line 610
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->isEnabled(Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method

.method public FontBold(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 650
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    .line 651
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, %type% text is displayed in bold."
    .end annotation

    .line 636
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    return v0
.end method

.method public FontItalic(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 711
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    .line 712
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, %type% text is displayed in italics."
    .end annotation

    .line 697
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    return v0
.end method

.method public FontSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Point size for %type% text."
    .end annotation

    .line 727
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public FontSize(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    const/high16 v0, 0x41600000    # 14.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->BigDefaultText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    return-void

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    return-void
.end method

.method public FontTypeface()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Font family for %type% text."
        userVisible = false
    .end annotation

    .line 761
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:Ljava/lang/String;

    return-object v0
.end method

.method public FontTypeface(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 779
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:Ljava/lang/String;

    .line 780
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public GotFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates the cursor moved over the %type% so it is now possible to click it."
    .end annotation

    const/4 v0, 0x0

    .line 263
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GotFocus"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Image()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Image to display on button."
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public Image(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the path of the image of the %type%.  If there is both an Image and a BackgroundColor, only the Image will be visible."
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-void

    .line 385
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 388
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 390
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 392
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 395
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    const-string v0, "Unable to load "

    const-string v1, "ButtonBase"

    .line 0
    invoke-static {v0, p1, v1}, L_COROUTINE/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->updateAppearance()V

    return-void
.end method

.method public Initialize()V
    .locals 0

    .line 201
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->updateAppearance()V

    return-void
.end method

.method public LostFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates the cursor moved away from the %type% so it is now no longer possible to click it."
    .end annotation

    const/4 v0, 0x0

    .line 273
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LostFocus"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Opacity(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set opacity value between 1 to 10"
    .end annotation

    const/16 v0, 0x9

    if-le p1, v0, :cond_0

    .line 917
    const-string p1, "1f"

    goto :goto_0

    :cond_0
    const-string v0, "0."

    const-string v1, "f"

    .line 0
    invoke-static {p1, v0, v1}, L_COROUTINE/a;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 918
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public PerformClick()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 874
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public Shape()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 323
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    return v0
.end method

.method public Shape(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "button_shape"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the shape of the %type% (default, rounded, rectangular, oval). The shape will not be visible if an Image is being displayed."
        userVisible = false
    .end annotation

    .line 347
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    .line 348
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->updateAppearance()V

    return-void
.end method

.method public ShowFeedback(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies if a visual feedback should be shown  for a %type% that has an image as background."
    .end annotation

    .line 667
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->showFeedback:Z

    return-void
.end method

.method public ShowFeedback()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the visual feedback state of the %type%"
    .end annotation

    .line 683
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->showFeedback:Z

    return v0
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Text to display on %type%."
    .end annotation

    .line 792
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 804
    const-string v0, "&#x"

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontAwesome:Z

    if-eqz v1, :cond_0

    .line 806
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/HtmlEntities;->decodeHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 807
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 809
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Left, center, or right."
        userVisible = false
    .end annotation

    .line 290
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textAlignment:I

    return v0
.end method

.method public TextAlignment(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 307
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textAlignment:I

    .line 308
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Color for button text."
    .end annotation

    .line 827
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 841
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textColor:I

    if-eqz p1, :cond_0

    .line 843
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    return-void

    .line 845
    :cond_0
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isHighContrast:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 849
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColors(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    return-void

    .line 846
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    return-void
.end method

.method public TouchDown()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the %type% was pressed down."
    .end annotation

    const/4 v0, 0x0

    .line 245
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TouchDown"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TouchUp()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the %type% has been released."
    .end annotation

    const/4 v0, 0x0

    .line 253
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TouchUp"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract click()V
.end method

.method public getHighContrast()Z
    .locals 1

    .line 946
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isHighContrast:Z

    return v0
.end method

.method public getLargeFont()Z
    .locals 1

    .line 962
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isBigText:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    return-object v0
.end method

.method public longClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 891
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->click()V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 899
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->GotFocus()V

    return-void

    .line 901
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->LostFocus()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 909
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->longClick()Z

    move-result p1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 215
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->ShowFeedback()Z

    .line 221
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->TouchDown()V

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 223
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->ShowFeedback()Z

    .line 229
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->TouchUp()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setHighContrast(Z)V
    .locals 3

    .line 924
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 926
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 927
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->getSafeBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 928
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, -0x1000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 935
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textColor:I

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 937
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    return-void

    .line 939
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColors(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    :cond_3
    return-void
.end method

.method public setLargeFont(Z)V
    .locals 6

    .line 951
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    const/high16 v4, 0x41600000    # 14.0f

    cmpl-double v5, v0, v2

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 953
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    return-void

    .line 955
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {p1, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    return-void
.end method
