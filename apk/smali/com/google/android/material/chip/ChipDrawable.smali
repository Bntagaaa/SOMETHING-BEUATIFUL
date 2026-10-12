.class public Lcom/google/android/material/chip/ChipDrawable;
.super Lcom/google/android/material/shape/MaterialShapeDrawable;
.source "SourceFile"

# interfaces
.implements Landroidx/core/graphics/drawable/TintAwareDrawable;
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/ChipDrawable$Delegate;
    }
.end annotation


# static fields
.field public static final H0:[I

.field public static final I0:Landroid/graphics/drawable/ShapeDrawable;


# instance fields
.field public A:F

.field public A0:Z

.field public B:F

.field public B0:Landroid/content/res/ColorStateList;

.field public C:Landroid/content/res/ColorStateList;

.field public C0:Ljava/lang/ref/WeakReference;

.field public D:F

.field public D0:Landroid/text/TextUtils$TruncateAt;

.field public E:Landroid/content/res/ColorStateList;

.field public E0:Z

.field public F:Ljava/lang/CharSequence;

.field public F0:I

.field public G:Z

.field public G0:Z

.field public H:Landroid/graphics/drawable/Drawable;

.field public I:Landroid/content/res/ColorStateList;

.field public J:F

.field public K:Z

.field public L:Z

.field public M:Landroid/graphics/drawable/Drawable;

.field public N:Landroid/graphics/drawable/RippleDrawable;

.field public O:Landroid/content/res/ColorStateList;

.field public P:F

.field public Q:Ljava/lang/CharSequence;

.field public R:Z

.field public S:Z

.field public T:Landroid/graphics/drawable/Drawable;

.field public U:Landroid/content/res/ColorStateList;

.field public V:Lcom/google/android/material/animation/MotionSpec;

.field public W:Lcom/google/android/material/animation/MotionSpec;

.field public X:F

.field public Y:F

.field public Z:F

.field public a0:F

.field public b0:F

.field public c0:F

.field public d0:F

.field public e0:F

.field public final f0:Landroid/content/Context;

.field public final g0:Landroid/graphics/Paint;

.field public final h0:Landroid/graphics/Paint$FontMetrics;

.field public final i0:Landroid/graphics/RectF;

.field public final j0:Landroid/graphics/PointF;

.field public final k0:Landroid/graphics/Path;

.field public final l0:Lcom/google/android/material/internal/TextDrawableHelper;

.field public m0:I

.field public n0:I

.field public o0:I

.field public p0:I

.field public q0:I

.field public r0:I

.field public s0:Z

.field public t0:I

.field public u0:I

.field public v0:Landroid/graphics/ColorFilter;

.field public w0:Landroid/graphics/PorterDuffColorFilter;

.field public x0:Landroid/content/res/ColorStateList;

.field public y:Landroid/content/res/ColorStateList;

.field public y0:Landroid/graphics/PorterDuff$Mode;

.field public z:Landroid/content/res/ColorStateList;

.field public z0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x101009e

    .line 166
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/chip/ChipDrawable;->H0:[I

    .line 170
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    sput-object v0, Lcom/google/android/material/chip/ChipDrawable;->I0:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 312
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 176
    iput p2, p0, Lcom/google/android/material/chip/ChipDrawable;->B:F

    .line 242
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->g0:Landroid/graphics/Paint;

    .line 244
    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->h0:Landroid/graphics/Paint$FontMetrics;

    .line 245
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->i0:Landroid/graphics/RectF;

    .line 246
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->j0:Landroid/graphics/PointF;

    .line 247
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->k0:Landroid/graphics/Path;

    const/16 p2, 0xff

    .line 259
    iput p2, p0, Lcom/google/android/material/chip/ChipDrawable;->u0:I

    .line 263
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->y0:Landroid/graphics/PorterDuff$Mode;

    .line 267
    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->C0:Ljava/lang/ref/WeakReference;

    .line 313
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 315
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    .line 316
    new-instance p2, Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-direct {p2, p0}, Lcom/google/android/material/internal/TextDrawableHelper;-><init>(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V

    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->l0:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 318
    const-string p4, ""

    iput-object p4, p0, Lcom/google/android/material/chip/ChipDrawable;->F:Ljava/lang/CharSequence;

    .line 320
    invoke-virtual {p2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p2, Landroid/text/TextPaint;->density:F

    .line 326
    sget-object p1, Lcom/google/android/material/chip/ChipDrawable;->H0:[I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 327
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconState([I)Z

    .line 328
    iput-boolean p3, p0, Lcom/google/android/material/chip/ChipDrawable;->E0:Z

    .line 330
    sget-boolean p1, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz p1, :cond_0

    .line 332
    sget-object p1, Lcom/google/android/material/chip/ChipDrawable;->I0:Landroid/graphics/drawable/ShapeDrawable;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    return-void
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/ChipDrawable;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 280
    new-instance v0, Lcom/google/android/material/chip/ChipDrawable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/chip/ChipDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 338
    sget-object v3, Lcom/google/android/material/R$styleable;->Chip:[I

    const/4 p0, 0x0

    new-array v6, p0, [I

    .line 339
    iget-object v1, v0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 342
    sget p2, Lcom/google/android/material/R$styleable;->Chip_shapeAppearance:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/google/android/material/chip/ChipDrawable;->G0:Z

    .line 343
    sget p2, Lcom/google/android/material/R$styleable;->Chip_chipSurfaceColor:I

    .line 344
    iget-object p3, v0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 1364
    iget-object v1, v0, Lcom/google/android/material/chip/ChipDrawable;->y:Landroid/content/res/ColorStateList;

    if-eq v1, p2, :cond_0

    .line 1365
    iput-object p2, v0, Lcom/google/android/material/chip/ChipDrawable;->y:Landroid/content/res/ColorStateList;

    .line 1366
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 345
    :cond_0
    sget p2, Lcom/google/android/material/R$styleable;->Chip_chipBackgroundColor:I

    .line 346
    invoke-static {p3, p1, p2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 345
    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 347
    sget p2, Lcom/google/android/material/R$styleable;->Chip_chipMinHeight:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setChipMinHeight(F)V

    .line 348
    sget p2, Lcom/google/android/material/R$styleable;->Chip_chipCornerRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 349
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setChipCornerRadius(F)V

    .line 351
    :cond_1
    sget p2, Lcom/google/android/material/R$styleable;->Chip_chipStrokeColor:I

    .line 352
    invoke-static {p3, p1, p2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 351
    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 353
    sget p2, Lcom/google/android/material/R$styleable;->Chip_chipStrokeWidth:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeWidth(F)V

    .line 354
    sget p2, Lcom/google/android/material/R$styleable;->Chip_rippleColor:I

    invoke-static {p3, p1, p2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 356
    sget p2, Lcom/google/android/material/R$styleable;->Chip_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 357
    sget p2, Lcom/google/android/material/R$styleable;->Chip_android_textAppearance:I

    .line 358
    invoke-static {p3, p1, p2}, Lcom/google/android/material/resources/MaterialResources;->getTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/resources/TextAppearance;

    move-result-object p2

    .line 359
    sget v3, Lcom/google/android/material/R$styleable;->Chip_android_textSize:I

    .line 360
    invoke-virtual {p2}, Lcom/google/android/material/resources/TextAppearance;->getTextSize()F

    move-result v4

    .line 359
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 361
    invoke-virtual {p2, v3}, Lcom/google/android/material/resources/TextAppearance;->setTextSize(F)V

    .line 363
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_2

    .line 366
    sget v3, Lcom/google/android/material/R$styleable;->Chip_android_textColor:I

    .line 367
    invoke-static {p3, p1, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 366
    invoke-virtual {p2, v3}, Lcom/google/android/material/resources/TextAppearance;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 370
    :cond_2
    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    .line 372
    sget p2, Lcom/google/android/material/R$styleable;->Chip_android_ellipsize:I

    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v3, 0x1

    if-eq p2, v3, :cond_5

    const/4 v3, 0x2

    if-eq p2, v3, :cond_4

    const/4 v3, 0x3

    if-eq p2, v3, :cond_3

    goto :goto_0

    .line 382
    :cond_3
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 379
    :cond_4
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 376
    :cond_5
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 390
    :goto_0
    sget p2, Lcom/google/android/material/R$styleable;->Chip_chipIconVisible:I

    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    .line 393
    const-string p2, "http://schemas.android.com/apk/res-auto"

    if-eqz v2, :cond_6

    const-string v3, "chipIconEnabled"

    .line 394
    invoke-interface {v2, p2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v3, "chipIconVisible"

    .line 395
    invoke-interface {v2, p2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    .line 396
    sget v3, Lcom/google/android/material/R$styleable;->Chip_chipIconEnabled:I

    invoke-virtual {p1, v3, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    .line 398
    :cond_6
    sget v3, Lcom/google/android/material/R$styleable;->Chip_chipIcon:I

    invoke-static {p3, p1, v3}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 399
    sget v3, Lcom/google/android/material/R$styleable;->Chip_chipIconTint:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 401
    invoke-static {p3, p1, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 400
    invoke-virtual {v0, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    .line 403
    :cond_7
    sget v3, Lcom/google/android/material/R$styleable;->Chip_chipIconSize:I

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconSize(F)V

    .line 405
    sget v3, Lcom/google/android/material/R$styleable;->Chip_closeIconVisible:I

    invoke-virtual {p1, v3, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    if-eqz v2, :cond_8

    .line 409
    const-string v3, "closeIconEnabled"

    .line 410
    invoke-interface {v2, p2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v3, "closeIconVisible"

    .line 411
    invoke-interface {v2, p2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    .line 412
    sget v3, Lcom/google/android/material/R$styleable;->Chip_closeIconEnabled:I

    invoke-virtual {p1, v3, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    .line 414
    :cond_8
    sget v3, Lcom/google/android/material/R$styleable;->Chip_closeIcon:I

    invoke-static {p3, p1, v3}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 415
    sget v3, Lcom/google/android/material/R$styleable;->Chip_closeIconTint:I

    .line 416
    invoke-static {p3, p1, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 415
    invoke-virtual {v0, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    .line 417
    sget v3, Lcom/google/android/material/R$styleable;->Chip_closeIconSize:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconSize(F)V

    .line 419
    sget v3, Lcom/google/android/material/R$styleable;->Chip_android_checkable:I

    invoke-virtual {p1, v3, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCheckable(Z)V

    .line 420
    sget v3, Lcom/google/android/material/R$styleable;->Chip_checkedIconVisible:I

    invoke-virtual {p1, v3, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    if-eqz v2, :cond_9

    .line 424
    const-string v3, "checkedIconEnabled"

    .line 425
    invoke-interface {v2, p2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v3, "checkedIconVisible"

    .line 426
    invoke-interface {v2, p2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_9

    .line 427
    sget p2, Lcom/google/android/material/R$styleable;->Chip_checkedIconEnabled:I

    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    .line 429
    :cond_9
    sget p0, Lcom/google/android/material/R$styleable;->Chip_checkedIcon:I

    invoke-static {p3, p1, p0}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    .line 430
    sget p0, Lcom/google/android/material/R$styleable;->Chip_checkedIconTint:I

    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 432
    invoke-static {p3, p1, p0}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 431
    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconTint(Landroid/content/res/ColorStateList;)V

    .line 435
    :cond_a
    sget p0, Lcom/google/android/material/R$styleable;->Chip_showMotionSpec:I

    invoke-static {p3, p1, p0}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/ChipDrawable;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 436
    sget p0, Lcom/google/android/material/R$styleable;->Chip_hideMotionSpec:I

    invoke-static {p3, p1, p0}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/ChipDrawable;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 438
    sget p0, Lcom/google/android/material/R$styleable;->Chip_chipStartPadding:I

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/ChipDrawable;->setChipStartPadding(F)V

    .line 439
    sget p0, Lcom/google/android/material/R$styleable;->Chip_iconStartPadding:I

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/ChipDrawable;->setIconStartPadding(F)V

    .line 440
    sget p0, Lcom/google/android/material/R$styleable;->Chip_iconEndPadding:I

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/ChipDrawable;->setIconEndPadding(F)V

    .line 441
    sget p0, Lcom/google/android/material/R$styleable;->Chip_textStartPadding:I

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/ChipDrawable;->setTextStartPadding(F)V

    .line 442
    sget p0, Lcom/google/android/material/R$styleable;->Chip_textEndPadding:I

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/ChipDrawable;->setTextEndPadding(F)V

    .line 443
    sget p0, Lcom/google/android/material/R$styleable;->Chip_closeIconStartPadding:I

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    .line 444
    sget p0, Lcom/google/android/material/R$styleable;->Chip_closeIconEndPadding:I

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    .line 445
    sget p0, Lcom/google/android/material/R$styleable;->Chip_chipEndPadding:I

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/ChipDrawable;->setChipEndPadding(F)V

    .line 447
    sget p0, Lcom/google/android/material/R$styleable;->Chip_android_maxWidth:I

    const p2, 0x7fffffff

    invoke-virtual {p1, p0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/ChipDrawable;->setMaxWidth(I)V

    .line 449
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public static createFromResource(Landroid/content/Context;I)Lcom/google/android/material/chip/ChipDrawable;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 299
    const-string v0, "chip"

    invoke-static {p0, p1, v0}, Lcom/google/android/material/drawable/DrawableUtils;->parseDrawableXml(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/util/AttributeSet;

    move-result-object p1

    .line 300
    invoke-interface {p1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-nez v0, :cond_0

    .line 302
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Chip_Entry:I

    .line 304
    :cond_0
    sget v1, Lcom/google/android/material/R$attr;->chipStandaloneStyle:I

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/material/chip/ChipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/ChipDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroid/content/res/ColorStateList;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1151
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static n(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1155
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static s(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1320
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    .line 590
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 591
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getAlpha()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_a

    .line 596
    :cond_0
    iget v6, v0, Lcom/google/android/material/chip/ChipDrawable;->u0:I

    const/16 v9, 0xff

    const/4 v10, 0x0

    if-ge v6, v9, :cond_1

    .line 597
    iget v1, v8, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v1, v8, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget v1, v8, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    move-object/from16 v1, p1

    .line 598
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/canvas/CanvasCompat;->saveLayerAlpha(Landroid/graphics/Canvas;FFFFI)I

    move-result v2

    move v11, v2

    goto :goto_0

    :cond_1
    move-object/from16 v1, p1

    const/4 v11, 0x0

    .line 640
    :goto_0
    iget-boolean v2, v0, Lcom/google/android/material/chip/ChipDrawable;->G0:Z

    iget-object v3, v0, Lcom/google/android/material/chip/ChipDrawable;->g0:Landroid/graphics/Paint;

    iget-object v12, v0, Lcom/google/android/material/chip/ChipDrawable;->i0:Landroid/graphics/RectF;

    if-nez v2, :cond_2

    .line 641
    iget v2, v0, Lcom/google/android/material/chip/ChipDrawable;->m0:I

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 642
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 643
    invoke-virtual {v12, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 644
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    move-result v4

    invoke-virtual {v1, v12, v2, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 649
    :cond_2
    iget-boolean v2, v0, Lcom/google/android/material/chip/ChipDrawable;->G0:Z

    if-nez v2, :cond_4

    .line 650
    iget v2, v0, Lcom/google/android/material/chip/ChipDrawable;->n0:I

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 651
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1355
    iget-object v2, v0, Lcom/google/android/material/chip/ChipDrawable;->v0:Landroid/graphics/ColorFilter;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/google/android/material/chip/ChipDrawable;->w0:Landroid/graphics/PorterDuffColorFilter;

    .line 652
    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 653
    invoke-virtual {v12, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 654
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    move-result v4

    invoke-virtual {v1, v12, v2, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 608
    :cond_4
    iget-boolean v2, v0, Lcom/google/android/material/chip/ChipDrawable;->G0:Z

    if-eqz v2, :cond_5

    .line 609
    invoke-super/range {p0 .. p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 663
    :cond_5
    iget v2, v0, Lcom/google/android/material/chip/ChipDrawable;->D:F

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_8

    iget-boolean v2, v0, Lcom/google/android/material/chip/ChipDrawable;->G0:Z

    if-nez v2, :cond_8

    .line 664
    iget v2, v0, Lcom/google/android/material/chip/ChipDrawable;->p0:I

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 665
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 666
    iget-boolean v2, v0, Lcom/google/android/material/chip/ChipDrawable;->G0:Z

    if-nez v2, :cond_7

    .line 1355
    iget-object v2, v0, Lcom/google/android/material/chip/ChipDrawable;->v0:Landroid/graphics/ColorFilter;

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    iget-object v2, v0, Lcom/google/android/material/chip/ChipDrawable;->w0:Landroid/graphics/PorterDuffColorFilter;

    .line 667
    :goto_2
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 669
    :cond_7
    iget v2, v8, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v5, v0, Lcom/google/android/material/chip/ChipDrawable;->D:F

    div-float/2addr v5, v13

    add-float/2addr v2, v5

    iget v6, v8, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    iget v7, v8, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v7, v5

    iget v14, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    sub-float/2addr v14, v5

    invoke-virtual {v12, v2, v6, v7, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 676
    iget v2, v0, Lcom/google/android/material/chip/ChipDrawable;->B:F

    iget v5, v0, Lcom/google/android/material/chip/ChipDrawable;->D:F

    div-float/2addr v5, v13

    sub-float/2addr v2, v5

    .line 677
    invoke-virtual {v1, v12, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 682
    :cond_8
    iget v2, v0, Lcom/google/android/material/chip/ChipDrawable;->q0:I

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 683
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 684
    invoke-virtual {v12, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 685
    iget-boolean v2, v0, Lcom/google/android/material/chip/ChipDrawable;->G0:Z

    if-nez v2, :cond_9

    .line 686
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    move-result v5

    invoke-virtual {v1, v12, v2, v5, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 688
    :cond_9
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v5, v0, Lcom/google/android/material/chip/ChipDrawable;->k0:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculatePathForSize(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 689
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-super {v0, v1, v3, v5, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V

    .line 694
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->q()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 695
    invoke-virtual {v0, v8, v12}, Lcom/google/android/material/chip/ChipDrawable;->j(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 696
    iget v2, v12, Landroid/graphics/RectF;->left:F

    .line 697
    iget v3, v12, Landroid/graphics/RectF;->top:F

    .line 699
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 701
    iget-object v5, v0, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v10, v10, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 702
    iget-object v5, v0, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v2, v2

    neg-float v3, v3

    .line 704
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 709
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->p()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 710
    invoke-virtual {v0, v8, v12}, Lcom/google/android/material/chip/ChipDrawable;->j(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 711
    iget v2, v12, Landroid/graphics/RectF;->left:F

    .line 712
    iget v3, v12, Landroid/graphics/RectF;->top:F

    .line 714
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 716
    iget-object v5, v0, Lcom/google/android/material/chip/ChipDrawable;->T:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v10, v10, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 717
    iget-object v5, v0, Lcom/google/android/material/chip/ChipDrawable;->T:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v2, v2

    neg-float v3, v3

    .line 719
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 624
    :cond_b
    iget-boolean v2, v0, Lcom/google/android/material/chip/ChipDrawable;->E0:Z

    if-eqz v2, :cond_14

    .line 725
    iget-object v2, v0, Lcom/google/android/material/chip/ChipDrawable;->F:Ljava/lang/CharSequence;

    if-eqz v2, :cond_14

    .line 726
    iget-object v2, v0, Lcom/google/android/material/chip/ChipDrawable;->j0:Landroid/graphics/PointF;

    .line 846
    invoke-virtual {v2, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 847
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 849
    iget-object v4, v0, Lcom/google/android/material/chip/ChipDrawable;->F:Ljava/lang/CharSequence;

    iget-object v5, v0, Lcom/google/android/material/chip/ChipDrawable;->l0:Lcom/google/android/material/internal/TextDrawableHelper;

    if-eqz v4, :cond_d

    .line 850
    iget v4, v0, Lcom/google/android/material/chip/ChipDrawable;->X:F

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->k()F

    move-result v6

    add-float/2addr v6, v4

    iget v4, v0, Lcom/google/android/material/chip/ChipDrawable;->a0:F

    add-float/2addr v6, v4

    .line 852
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v4

    if-nez v4, :cond_c

    .line 853
    iget v4, v8, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v6

    iput v4, v2, Landroid/graphics/PointF;->x:F

    goto :goto_4

    .line 856
    :cond_c
    iget v3, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v6

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 857
    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 860
    :goto_4
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    .line 879
    invoke-virtual {v5}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/material/chip/ChipDrawable;->h0:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 880
    iget v6, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v6, v7

    div-float/2addr v6, v13

    sub-float/2addr v4, v6

    .line 860
    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 888
    :cond_d
    invoke-virtual {v12}, Landroid/graphics/RectF;->setEmpty()V

    .line 890
    iget-object v4, v0, Lcom/google/android/material/chip/ChipDrawable;->F:Ljava/lang/CharSequence;

    if-eqz v4, :cond_f

    .line 891
    iget v4, v0, Lcom/google/android/material/chip/ChipDrawable;->X:F

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->k()F

    move-result v6

    add-float/2addr v6, v4

    iget v4, v0, Lcom/google/android/material/chip/ChipDrawable;->a0:F

    add-float/2addr v6, v4

    .line 892
    iget v4, v0, Lcom/google/android/material/chip/ChipDrawable;->e0:F

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->l()F

    move-result v7

    add-float/2addr v7, v4

    iget v4, v0, Lcom/google/android/material/chip/ChipDrawable;->b0:F

    add-float/2addr v7, v4

    .line 894
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v4

    if-nez v4, :cond_e

    .line 895
    iget v4, v8, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v6

    iput v4, v12, Landroid/graphics/RectF;->left:F

    .line 896
    iget v4, v8, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v7

    iput v4, v12, Landroid/graphics/RectF;->right:F

    goto :goto_5

    .line 898
    :cond_e
    iget v4, v8, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v7

    iput v4, v12, Landroid/graphics/RectF;->left:F

    .line 899
    iget v4, v8, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v6

    iput v4, v12, Landroid/graphics/RectF;->right:F

    .line 904
    :goto_5
    iget v4, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iput v4, v12, Landroid/graphics/RectF;->top:F

    .line 905
    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iput v4, v12, Landroid/graphics/RectF;->bottom:F

    .line 731
    :cond_f
    invoke-virtual {v5}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 732
    invoke-virtual {v5}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v6

    iput-object v6, v4, Landroid/text/TextPaint;->drawableState:[I

    .line 733
    iget-object v4, v0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-virtual {v5, v4}, Lcom/google/android/material/internal/TextDrawableHelper;->updateTextPaintDrawState(Landroid/content/Context;)V

    .line 735
    :cond_10
    invoke-virtual {v5}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 738
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextWidth(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 739
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-le v3, v4, :cond_11

    const/4 v3, 0x1

    const/4 v14, 0x1

    goto :goto_6

    :cond_11
    const/4 v14, 0x0

    :goto_6
    if-eqz v14, :cond_12

    .line 742
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 743
    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move v15, v3

    goto :goto_7

    :cond_12
    const/4 v15, 0x0

    .line 746
    :goto_7
    iget-object v3, v0, Lcom/google/android/material/chip/ChipDrawable;->F:Ljava/lang/CharSequence;

    if-eqz v14, :cond_13

    .line 747
    iget-object v4, v0, Lcom/google/android/material/chip/ChipDrawable;->D0:Landroid/text/TextUtils$TruncateAt;

    if-eqz v4, :cond_13

    .line 749
    invoke-virtual {v5}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v7, v0, Lcom/google/android/material/chip/ChipDrawable;->D0:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v4, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 752
    :cond_13
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object v6, v5

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v7

    move v6, v2

    move-object v2, v3

    const/4 v3, 0x0

    .line 751
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    if-eqz v14, :cond_14

    .line 754
    invoke-virtual {v1, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 760
    :cond_14
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->r()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 914
    invoke-virtual {v12}, Landroid/graphics/RectF;->setEmpty()V

    .line 916
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->r()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 917
    iget v2, v0, Lcom/google/android/material/chip/ChipDrawable;->e0:F

    iget v3, v0, Lcom/google/android/material/chip/ChipDrawable;->d0:F

    add-float/2addr v2, v3

    .line 919
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    if-nez v3, :cond_15

    .line 920
    iget v3, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    iput v3, v12, Landroid/graphics/RectF;->right:F

    .line 921
    iget v2, v0, Lcom/google/android/material/chip/ChipDrawable;->P:F

    sub-float/2addr v3, v2

    iput v3, v12, Landroid/graphics/RectF;->left:F

    goto :goto_8

    .line 923
    :cond_15
    iget v3, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    iput v3, v12, Landroid/graphics/RectF;->left:F

    .line 924
    iget v2, v0, Lcom/google/android/material/chip/ChipDrawable;->P:F

    add-float/2addr v3, v2

    iput v3, v12, Landroid/graphics/RectF;->right:F

    .line 927
    :goto_8
    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    iget v3, v0, Lcom/google/android/material/chip/ChipDrawable;->P:F

    div-float v4, v3, v13

    sub-float/2addr v2, v4

    iput v2, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    .line 928
    iput v2, v12, Landroid/graphics/RectF;->bottom:F

    .line 762
    :cond_16
    iget v2, v12, Landroid/graphics/RectF;->left:F

    .line 763
    iget v3, v12, Landroid/graphics/RectF;->top:F

    .line 765
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 767
    iget-object v4, v0, Lcom/google/android/material/chip/ChipDrawable;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v10, v10, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 769
    sget-boolean v4, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz v4, :cond_17

    .line 770
    iget-object v4, v0, Lcom/google/android/material/chip/ChipDrawable;->N:Landroid/graphics/drawable/RippleDrawable;

    iget-object v5, v0, Lcom/google/android/material/chip/ChipDrawable;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 771
    iget-object v4, v0, Lcom/google/android/material/chip/ChipDrawable;->N:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 772
    iget-object v4, v0, Lcom/google/android/material/chip/ChipDrawable;->N:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_9

    .line 774
    :cond_17
    iget-object v4, v0, Lcom/google/android/material/chip/ChipDrawable;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_9
    neg-float v2, v2

    neg-float v3, v3

    .line 777
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 634
    :cond_18
    iget v2, v0, Lcom/google/android/material/chip/ChipDrawable;->u0:I

    if-ge v2, v9, :cond_19

    .line 635
    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_19
    :goto_a
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1238
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->u0:I

    return v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2040
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->T:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2079
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->U:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1422
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->z:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getChipCornerRadius()F
    .locals 1

    .line 1489
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->G0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTopLeftCornerResolvedSize()F

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->B:F

    return v0
.end method

.method public getChipEndPadding()F
    .locals 1

    .line 2432
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->e0:F

    return v0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1718
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChipIconSize()F
    .locals 1

    .line 1786
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->J:F

    return v0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1747
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->I:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getChipMinHeight()F
    .locals 1

    .line 1455
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->A:F

    return v0
.end method

.method public getChipStartPadding()F
    .locals 1

    .line 2180
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->X:F

    return v0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1526
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->C:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getChipStrokeWidth()F
    .locals 1

    .line 1562
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->D:F

    return v0
.end method

.method public getChipTouchBounds(Landroid/graphics/RectF;)V
    .locals 3
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 484
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 933
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 935
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 936
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->e0:F

    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->d0:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->P:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->c0:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->b0:F

    add-float/2addr v1, v2

    .line 943
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-nez v2, :cond_0

    .line 944
    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    return-void

    .line 946
    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    :cond_1
    return-void
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1868
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->M:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1958
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->Q:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCloseIconEndPadding()F
    .locals 1

    .line 2396
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->d0:F

    return v0
.end method

.method public getCloseIconSize()F
    .locals 1

    .line 1930
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->P:F

    return v0
.end method

.method public getCloseIconStartPadding()F
    .locals 1

    .line 2360
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->c0:F

    return v0
.end method

.method public getCloseIconState()[I
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1013
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->z0:[I

    return-object v0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1910
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->O:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCloseIconTouchBounds(Landroid/graphics/RectF;)V
    .locals 3
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 492
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 952
    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    .line 954
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 955
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->e0:F

    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->d0:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->P:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->c0:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->b0:F

    add-float/2addr v1, v2

    .line 962
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-nez v2, :cond_0

    .line 963
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iput v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    .line 964
    iput v2, p1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 966
    :cond_0
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iput v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    .line 967
    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 970
    :goto_0
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 971
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1252
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->v0:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .line 1663
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->D0:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2150
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->W:Lcom/google/android/material/animation/MotionSpec;

    return-object v0
.end method

.method public getIconEndPadding()F
    .locals 1

    .line 2253
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->Z:F

    return v0
.end method

.method public getIconStartPadding()F
    .locals 1

    .line 2214
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->Y:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 513
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->A:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 3

    .line 498
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->X:F

    .line 501
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->k()F

    move-result v1

    add-float/2addr v1, v0

    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->a0:F

    add-float/2addr v1, v0

    .line 503
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->l0:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v2, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextWidth(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->b0:F

    add-float/2addr v0, v1

    .line 505
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->l()F

    move-result v1

    add-float/2addr v1, v0

    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->e0:F

    add-float/2addr v1, v0

    .line 499
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 507
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->F0:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 2466
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->F0:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 8
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1280
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->G0:Z

    if-eqz v0, :cond_0

    .line 1281
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getOutline(Landroid/graphics/Outline;)V

    return-void

    .line 1284
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1285
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1286
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->B:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    move-object v2, p1

    goto :goto_0

    .line 1288
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicHeight()I

    move-result v6

    iget v7, p0, Lcom/google/android/material/chip/ChipDrawable;->B:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 1291
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getAlpha()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1601
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->E:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2119
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->V:Lcom/google/android/material/animation/MotionSpec;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1630
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->F:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextAppearance()Lcom/google/android/material/resources/TextAppearance;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1651
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->l0:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v0

    return-object v0
.end method

.method public getTextEndPadding()F
    .locals 1

    .line 2326
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->b0:F

    return v0
.end method

.method public getTextStartPadding()F
    .locals 1

    .line 2292
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->a0:F

    return v0
.end method

.method public getUseCompatRipple()Z
    .locals 1

    .line 463
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->A0:Z

    return v0
.end method

.method public final i(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1329
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1330
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1331
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1332
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1334
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->M:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    .line 1335
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1336
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1338
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->O:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    .line 1341
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_3

    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->K:Z

    if-eqz v1, :cond_3

    .line 1342
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->I:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1344
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1345
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1296
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1298
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public isCheckable()Z
    .locals 1

    .line 1962
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->R:Z

    return v0
.end method

.method public isCheckedIconEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1993
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->isCheckedIconVisible()Z

    move-result v0

    return v0
.end method

.method public isCheckedIconVisible()Z
    .locals 1

    .line 1987
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->S:Z

    return v0
.end method

.method public isChipIconEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1677
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->isChipIconVisible()Z

    move-result v0

    return v0
.end method

.method public isChipIconVisible()Z
    .locals 1

    .line 1671
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->G:Z

    return v0
.end method

.method public isCloseIconEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1827
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->isCloseIconVisible()Z

    move-result v0

    return v0
.end method

.method public isCloseIconStateful()Z
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->M:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->n(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public isCloseIconVisible()Z
    .locals 1

    .line 1821
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->L:Z

    return v0
.end method

.method public isStateful()Z
    .locals 2

    .line 979
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->y:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->m(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->z:Landroid/content/res/ColorStateList;

    .line 980
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->m(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->C:Landroid/content/res/ColorStateList;

    .line 981
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->m(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->A0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->B0:Landroid/content/res/ColorStateList;

    .line 982
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->m(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->l0:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 983
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1160
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1161
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 533
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->S:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->T:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->R:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 984
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/graphics/drawable/Drawable;

    .line 985
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->n(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->T:Landroid/graphics/drawable/Drawable;

    .line 986
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->n(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->x0:Landroid/content/res/ColorStateList;

    .line 987
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->m(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final j(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 5

    .line 823
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 825
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 826
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->X:F

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->Y:F

    add-float/2addr v0, v1

    .line 549
    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->s0:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->T:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/graphics/drawable/Drawable;

    .line 550
    :goto_1
    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->J:F

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_3

    if-eqz v1, :cond_3

    .line 551
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v2, v1

    .line 829
    :cond_3
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_4

    .line 830
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    .line 831
    iput v1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 833
    :cond_4
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    .line 834
    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 561
    :goto_2
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->s0:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->T:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/graphics/drawable/Drawable;

    .line 562
    :goto_3
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->J:F

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_6

    if-eqz v0, :cond_6

    .line 563
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    const/16 v2, 0x18

    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 564
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_6

    .line 565
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v1, v0

    .line 838
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v1, v0

    sub-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v1

    .line 839
    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public final k()F
    .locals 4

    .line 538
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->q()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 539
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->Y:F

    .line 549
    iget-boolean v2, p0, Lcom/google/android/material/chip/ChipDrawable;->s0:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->T:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/graphics/drawable/Drawable;

    .line 550
    :goto_1
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->J:F

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_3

    if-eqz v2, :cond_3

    .line 551
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v3, v1

    :cond_3
    add-float/2addr v3, v0

    .line 539
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->Z:F

    add-float/2addr v3, v0

    return v3
.end method

.method public final l()F
    .locals 2

    .line 578
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->c0:F

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->P:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->d0:F

    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o([I[I)Z
    .locals 8

    .line 1033
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    move-result v0

    .line 1037
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->y:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1038
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->m0:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1040
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->compositeElevationOverlayIfNeeded(I)I

    move-result v1

    .line 1041
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->m0:I

    const/4 v4, 0x1

    if-eq v3, v1, :cond_1

    .line 1042
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->m0:I

    const/4 v0, 0x1

    .line 1047
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->z:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    .line 1048
    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 1050
    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->compositeElevationOverlayIfNeeded(I)I

    move-result v3

    .line 1051
    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:I

    if-eq v5, v3, :cond_3

    .line 1052
    iput v3, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:I

    const/4 v0, 0x1

    .line 1057
    :cond_3
    invoke-static {v1, v3}, Lcom/google/android/material/color/MaterialColors;->layer(II)I

    move-result v1

    .line 1058
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->o0:I

    if-eq v3, v1, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 1060
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    or-int/2addr v3, v5

    if-eqz v3, :cond_6

    .line 1062
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->o0:I

    .line 1063
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    const/4 v0, 0x1

    .line 1068
    :cond_6
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->C:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_7

    .line 1069
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->p0:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    .line 1071
    :goto_4
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->p0:I

    if-eq v3, v1, :cond_8

    .line 1072
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->p0:I

    const/4 v0, 0x1

    .line 1077
    :cond_8
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->B0:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_9

    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->shouldDrawRippleCompat([I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1078
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->B0:Landroid/content/res/ColorStateList;

    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->q0:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    .line 1080
    :goto_5
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->q0:I

    if-eq v3, v1, :cond_a

    .line 1081
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->q0:I

    .line 1082
    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->A0:Z

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    .line 1088
    :cond_a
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->l0:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v1}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1089
    invoke-virtual {v1}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1091
    invoke-virtual {v1}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v1

    .line 1092
    invoke-virtual {v1}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->r0:I

    .line 1093
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 1095
    :goto_6
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->r0:I

    if-eq v3, v1, :cond_c

    .line 1096
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->r0:I

    const/4 v0, 0x1

    .line 1100
    :cond_c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_8

    .line 1376
    :cond_d
    array-length v3, v1

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v3, :cond_f

    aget v6, v1, v5

    const v7, 0x10100a0

    if-ne v6, v7, :cond_e

    .line 1100
    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->R:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_f
    :goto_8
    const/4 v1, 0x0

    .line 1101
    :goto_9
    iget-boolean v3, p0, Lcom/google/android/material/chip/ChipDrawable;->s0:Z

    if-eq v3, v1, :cond_11

    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->T:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_11

    .line 1102
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->k()F

    move-result v0

    .line 1103
    iput-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->s0:Z

    .line 1104
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->k()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_a

    :cond_10
    const/4 v0, 0x1

    :cond_11
    const/4 v1, 0x0

    .line 1112
    :goto_a
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->x0:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_12

    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->t0:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_b

    :cond_12
    const/4 v3, 0x0

    .line 1113
    :goto_b
    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->t0:I

    if-eq v5, v3, :cond_13

    .line 1114
    iput v3, p0, Lcom/google/android/material/chip/ChipDrawable;->t0:I

    .line 1115
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->x0:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->y0:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v0, v3}, Lcom/google/android/material/drawable/DrawableUtils;->updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->w0:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_c

    :cond_13
    move v4, v0

    .line 1119
    :goto_c
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->n(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1120
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    .line 1122
    :cond_14
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->T:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->n(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1123
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->T:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    .line 1125
    :cond_15
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->M:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->n(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1130
    array-length v0, p1

    array-length v3, p2

    add-int/2addr v0, v3

    new-array v0, v0, [I

    .line 1131
    array-length v3, p1

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1132
    array-length p1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1134
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    .line 1137
    :cond_16
    sget-boolean p1, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->N:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Lcom/google/android/material/chip/ChipDrawable;->n(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1138
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->N:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    :cond_17
    if-eqz v4, :cond_18

    .line 1142
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_18
    if-eqz v1, :cond_19

    .line 1145
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_19
    return v4
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2

    .line 1166
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    move-result v0

    .line 1168
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1169
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1171
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1172
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->T:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1174
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1175
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->M:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 1179
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public onLevelChange(I)Z
    .locals 2

    .line 1186
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    .line 1188
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1189
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1191
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1192
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->T:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1194
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1195
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 1199
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public onSizeChange()V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->C0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/ChipDrawable$Delegate;

    if-eqz v0, :cond_0

    .line 475
    invoke-interface {v0}, Lcom/google/android/material/chip/ChipDrawable$Delegate;->onChipDrawableSizeChange()V

    :cond_0
    return-void
.end method

.method public onStateChange([I)Z
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1024
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->G0:Z

    if-eqz v0, :cond_0

    .line 1025
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    .line 1027
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconState()[I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->o([I[I)Z

    move-result p1

    return p1
.end method

.method public onTextSizeChange()V
    .locals 0

    .line 1018
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1019
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    return-void
.end method

.method public final p()Z
    .locals 1

    .line 523
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->S:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->T:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->s0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q()Z
    .locals 1

    .line 518
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r()Z
    .locals 1

    .line 528
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->L:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->M:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1304
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1306
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1230
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->u0:I

    if-eq v0, p1, :cond_0

    .line 1231
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->u0:I

    .line 1232
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 1970
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->R:Z

    if-eq v0, p1, :cond_1

    .line 1971
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->R:Z

    .line 1973
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->k()F

    move-result v0

    if-nez p1, :cond_0

    .line 1974
    iget-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->s0:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1975
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->s0:Z

    .line 1977
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->k()F

    move-result p1

    .line 1979
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    .line 1981
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_1
    return-void
.end method

.method public setCheckableResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .line 1966
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckable(Z)V

    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2060
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->T:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 2062
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->k()F

    move-result v0

    .line 2063
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->T:Landroid/graphics/drawable/Drawable;

    .line 2064
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->k()F

    move-result p1

    .line 2066
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->T:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lcom/google/android/material/chip/ChipDrawable;->s(Landroid/graphics/drawable/Drawable;)V

    .line 2067
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->T:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->i(Landroid/graphics/drawable/Drawable;)V

    .line 2069
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 2071
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2029
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2023
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 2050
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2100
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->U:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 2101
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->U:Landroid/content/res/ColorStateList;

    .line 533
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->S:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->T:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->R:Z

    if-eqz v1, :cond_0

    .line 2104
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 2107
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public setCheckedIconTintResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 2089
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCheckedIconVisible(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .line 1997
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .locals 1

    .line 2001
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->S:Z

    if-eq v0, p1, :cond_1

    .line 2002
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->p()Z

    move-result v0

    .line 2003
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->S:Z

    .line 2004
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->p()Z

    move-result p1

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 2009
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->T:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->i(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2011
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->T:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/google/android/material/chip/ChipDrawable;->s(Landroid/graphics/drawable/Drawable;)V

    .line 2014
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 2015
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_1
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1442
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->z:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1443
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->z:Landroid/content/res/ColorStateList;

    .line 1444
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1432
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setChipCornerRadius(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1511
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->B:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1512
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->B:F

    .line 1514
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :cond_0
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1500
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipCornerRadius(F)V

    return-void
.end method

.method public setChipEndPadding(F)V
    .locals 1

    .line 2452
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->e0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2453
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->e0:F

    .line 2454
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 2455
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 2442
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipEndPadding(F)V

    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1726
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 1728
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->k()F

    move-result v1

    if-eqz p1, :cond_0

    .line 1729
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/graphics/drawable/Drawable;

    .line 1730
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->k()F

    move-result p1

    .line 1732
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->s(Landroid/graphics/drawable/Drawable;)V

    .line 1733
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1734
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->i(Landroid/graphics/drawable/Drawable;)V

    .line 1737
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_2

    .line 1739
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_2
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1713
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1707
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(I)V

    return-void
.end method

.method public setChipIconResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1722
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setChipIconSize(F)V
    .locals 1

    .line 1808
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->J:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1809
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->k()F

    move-result v0

    .line 1810
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->J:F

    .line 1811
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->k()F

    move-result p1

    .line 1813
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 1815
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1797
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconSize(F)V

    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1767
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->K:Z

    .line 1768
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->I:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1769
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->I:Landroid/content/res/ColorStateList;

    .line 1770
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1774
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public setChipIconTintResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1757
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setChipIconVisible(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .line 1681
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    return-void
.end method

.method public setChipIconVisible(Z)V
    .locals 1

    .line 1685
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->G:Z

    if-eq v0, p1, :cond_1

    .line 1686
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->q()Z

    move-result v0

    .line 1687
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->G:Z

    .line 1688
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->q()Z

    move-result p1

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 1693
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->i(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1695
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/google/android/material/chip/ChipDrawable;->s(Landroid/graphics/drawable/Drawable;)V

    .line 1698
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 1699
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_1
    return-void
.end method

.method public setChipMinHeight(F)V
    .locals 1

    .line 1475
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->A:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1476
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->A:F

    .line 1477
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 1478
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1465
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipMinHeight(F)V

    return-void
.end method

.method public setChipStartPadding(F)V
    .locals 1

    .line 2200
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->X:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2201
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->X:F

    .line 2202
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 2203
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 2190
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStartPadding(F)V

    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1546
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->C:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1547
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->C:Landroid/content/res/ColorStateList;

    .line 1548
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->G0:Z

    if-eqz v0, :cond_0

    .line 1549
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 1551
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1536
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setChipStrokeWidth(F)V
    .locals 1

    .line 1582
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->D:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 1583
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->D:F

    .line 1585
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->g0:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1586
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->G0:Z

    if-eqz v0, :cond_0

    .line 1587
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeWidth(F)V

    .line 1589
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1572
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeWidth(F)V

    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1876
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_3

    .line 1878
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->l()F

    move-result v1

    if-eqz p1, :cond_0

    .line 1879
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->M:Landroid/graphics/drawable/Drawable;

    .line 1880
    sget-boolean p1, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz p1, :cond_1

    .line 1899
    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    .line 1901
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->M:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lcom/google/android/material/chip/ChipDrawable;->I0:Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p1, v2, v3, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->N:Landroid/graphics/drawable/RippleDrawable;

    .line 1883
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->l()F

    move-result p1

    .line 1885
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->s(Landroid/graphics/drawable/Drawable;)V

    .line 1886
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1887
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->i(Landroid/graphics/drawable/Drawable;)V

    .line 1890
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_3

    .line 1892
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_3
    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1948
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->Q:Ljava/lang/CharSequence;

    if-eq v0, p1, :cond_0

    .line 1950
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->Q:Ljava/lang/CharSequence;

    .line 1952
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1863
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1857
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(I)V

    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 1

    .line 2416
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->d0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2417
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->d0:F

    .line 2418
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 2419
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->r()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2420
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 2406
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    return-void
.end method

.method public setCloseIconResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1872
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCloseIconSize(F)V
    .locals 1

    .line 1938
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->P:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1939
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->P:F

    .line 1940
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 1941
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->r()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1942
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1934
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconSize(F)V

    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .locals 1

    .line 2380
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->c0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2381
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->c0:F

    .line 2382
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 2383
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->r()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2384
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 2370
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    return-void
.end method

.method public setCloseIconState([I)Z
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1001
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->z0:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1002
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->z0:[I

    .line 1003
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->o([I[I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1918
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->O:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1919
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->O:Landroid/content/res/ColorStateList;

    .line 1921
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1922
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->M:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1925
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1914
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCloseIconVisible(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .line 1831
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconVisible(Z)V
    .locals 1

    .line 1835
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->L:Z

    if-eq v0, p1, :cond_1

    .line 1836
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->r()Z

    move-result v0

    .line 1837
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->L:Z

    .line 1838
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->r()Z

    move-result p1

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 1843
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->i(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1845
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->M:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/google/android/material/chip/ChipDrawable;->s(Landroid/graphics/drawable/Drawable;)V

    .line 1848
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 1849
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1243
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->v0:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 1244
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->v0:Landroid/graphics/ColorFilter;

    .line 1245
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setDelegate(Lcom/google/android/material/chip/ChipDrawable$Delegate;)V
    .locals 1
    .param p1    # Lcom/google/android/material/chip/ChipDrawable$Delegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 468
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->C0:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0
    .param p1    # Landroid/text/TextUtils$TruncateAt;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1667
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->D0:Landroid/text/TextUtils$TruncateAt;

    return-void
.end method

.method public setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 0
    .param p1    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2170
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->W:Lcom/google/android/material/animation/MotionSpec;

    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 2160
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    return-void
.end method

.method public setIconEndPadding(F)V
    .locals 1

    .line 2273
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->Z:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2274
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->k()F

    move-result v0

    .line 2275
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->Z:F

    .line 2276
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->k()F

    move-result p1

    .line 2278
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 2280
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 2263
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconEndPadding(F)V

    return-void
.end method

.method public setIconStartPadding(F)V
    .locals 1

    .line 2234
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->Y:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2235
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->k()F

    move-result v0

    .line 2236
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->Y:F

    .line 2237
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->k()F

    move-result p1

    .line 2239
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 2241
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 2224
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconStartPadding(F)V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 2475
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->F0:I

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1621
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->E:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1622
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->E:Landroid/content/res/ColorStateList;

    .line 1360
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->A0:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->B0:Landroid/content/res/ColorStateList;

    .line 1624
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1611
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 0
    .param p1    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2139
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->V:Lcom/google/android/material/animation/MotionSpec;

    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 2129
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 1639
    const-string p1, ""

    .line 1641
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->F:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1642
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->F:Ljava/lang/CharSequence;

    .line 1643
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->l0:Lcom/google/android/material/internal/TextDrawableHelper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextWidthDirty(Z)V

    .line 1644
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 1645
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_1
    return-void
.end method

.method public setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V
    .locals 2
    .param p1    # Lcom/google/android/material/resources/TextAppearance;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1659
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->l0:Lcom/google/android/material/internal/TextDrawableHelper;

    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;)V

    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1655
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1394
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1398
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1400
    invoke-virtual {v0, p1}, Lcom/google/android/material/resources/TextAppearance;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1401
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setTextEndPadding(F)V
    .locals 1

    .line 2346
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->b0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2347
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->b0:F

    .line 2348
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 2349
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 2336
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextEndPadding(F)V

    return-void
.end method

.method public setTextResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1634
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 1385
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1387
    invoke-virtual {v0, p1}, Lcom/google/android/material/resources/TextAppearance;->setTextSize(F)V

    .line 1388
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->l0:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1389
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onTextSizeChange()V

    :cond_0
    return-void
.end method

.method public setTextStartPadding(F)V
    .locals 1

    .line 2312
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->a0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2313
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->a0:F

    .line 2314
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 2315
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 2302
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextStartPadding(F)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1257
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->x0:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1258
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->x0:Landroid/content/res/ColorStateList;

    .line 1259
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1265
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->y0:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 1266
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->y0:Landroid/graphics/PorterDuff$Mode;

    .line 1267
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->x0:Landroid/content/res/ColorStateList;

    invoke-static {p0, v0, p1}, Lcom/google/android/material/drawable/DrawableUtils;->updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->w0:Landroid/graphics/PorterDuffColorFilter;

    .line 1268
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setUseCompatRipple(Z)V
    .locals 1

    .line 454
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->A0:Z

    if-eq v0, p1, :cond_1

    .line 455
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->A0:Z

    if-eqz p1, :cond_0

    .line 1360
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->E:Landroid/content/res/ColorStateList;

    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->B0:Landroid/content/res/ColorStateList;

    .line 457
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1206
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 1208
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1209
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1211
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1212
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->T:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1214
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1215
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 1219
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1312
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1314
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
