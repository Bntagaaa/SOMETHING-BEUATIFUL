.class abstract Lcom/google/android/material/slider/a;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/slider/a$c;,
        Lcom/google/android/material/slider/a$d;,
        Lcom/google/android/material/slider/a$b;,
        Lcom/google/android/material/slider/a$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/google/android/material/slider/a<",
        "TS;T",
        "L;",
        "TT;>;",
        "L::Lcom/google/android/material/slider/BaseOnChangeListener<",
        "TS;>;T::",
        "Lcom/google/android/material/slider/BaseOnSliderTouchListener<",
        "TS;>;>",
        "Landroid/view/View;"
    }
.end annotation


# static fields
.field public static final d0:I


# instance fields
.field public final A:I

.field public B:F

.field public C:Landroid/view/MotionEvent;

.field public D:Lcom/google/android/material/slider/LabelFormatter;

.field public E:Z

.field public F:F

.field public G:F

.field public H:Ljava/util/ArrayList;

.field public I:I

.field public J:I

.field public K:F

.field public L:[F

.field public M:Z

.field public N:I

.field public O:Z

.field public P:Z

.field public Q:Landroid/content/res/ColorStateList;

.field public R:Landroid/content/res/ColorStateList;

.field public S:Landroid/content/res/ColorStateList;

.field public T:Landroid/content/res/ColorStateList;

.field public U:Landroid/content/res/ColorStateList;

.field public final V:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public W:Landroid/graphics/drawable/Drawable;

.field public final a:Landroid/graphics/Paint;

.field public a0:Ljava/util/List;

.field public final b:Landroid/graphics/Paint;

.field public b0:F

.field public final c:Landroid/graphics/Paint;

.field public c0:I

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Paint;

.field public final g:Lcom/google/android/material/slider/a$c;

.field public final h:Landroid/view/accessibility/AccessibilityManager;

.field public i:Lcom/google/android/material/slider/a$b;

.field public final j:Lcom/google/android/material/slider/a$a;

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/util/ArrayList;

.field public final m:Ljava/util/ArrayList;

.field public n:Z

.field public o:Landroid/animation/ValueAnimator;

.field public p:Landroid/animation/ValueAnimator;

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public u:I

.field public v:I

.field public w:I

.field public final x:I

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 230
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Slider:I

    sput v0, Lcom/google/android/material/slider/a;->d0:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 340
    sget v4, Lcom/google/android/material/slider/a;->d0:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 252
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/a;->k:Ljava/util/ArrayList;

    .line 253
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/a;->l:Ljava/util/ArrayList;

    .line 254
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/a;->m:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 257
    iput-boolean p1, p0, Lcom/google/android/material/slider/a;->n:Z

    .line 277
    iput-boolean p1, p0, Lcom/google/android/material/slider/a;->E:Z

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 284
    iput v0, p0, Lcom/google/android/material/slider/a;->I:I

    .line 286
    iput v0, p0, Lcom/google/android/material/slider/a;->J:I

    const/4 v6, 0x0

    .line 287
    iput v6, p0, Lcom/google/android/material/slider/a;->K:F

    const/4 v7, 0x1

    .line 289
    iput-boolean v7, p0, Lcom/google/android/material/slider/a;->M:Z

    .line 292
    iput-boolean p1, p0, Lcom/google/android/material/slider/a;->O:Z

    .line 301
    new-instance v8, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v8}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object v8, p0, Lcom/google/android/material/slider/a;->V:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 303
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/material/slider/a;->a0:Ljava/util/List;

    .line 306
    iput p1, p0, Lcom/google/android/material/slider/a;->c0:I

    .line 342
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 344
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/slider/a;->a:Landroid/graphics/Paint;

    .line 345
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 346
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 348
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/slider/a;->b:Landroid/graphics/Paint;

    .line 349
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 350
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 352
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/material/slider/a;->c:Landroid/graphics/Paint;

    .line 353
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 354
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 356
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/material/slider/a;->d:Landroid/graphics/Paint;

    .line 357
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 359
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/slider/a;->e:Landroid/graphics/Paint;

    .line 360
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 361
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 363
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/slider/a;->f:Landroid/graphics/Paint;

    .line 364
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 365
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 367
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 403
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_slider_widget_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/slider/a;->t:I

    .line 405
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_slider_track_side_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/slider/a;->r:I

    .line 406
    iput v2, p0, Lcom/google/android/material/slider/a;->w:I

    .line 408
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_slider_thumb_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/slider/a;->s:I

    .line 410
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_slider_track_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/slider/a;->x:I

    .line 412
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_slider_label_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/slider/a;->A:I

    .line 371
    new-instance v1, Lcom/google/android/material/slider/a$a;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/android/material/slider/a$a;-><init>(Lcom/google/android/material/slider/a;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/android/material/slider/a;->j:Lcom/google/android/material/slider/a$a;

    .line 416
    sget-object v2, Lcom/google/android/material/R$styleable;->Slider:[I

    new-array v5, p1, [I

    move-object v1, p2

    move v3, p3

    .line 417
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 419
    sget p3, Lcom/google/android/material/R$styleable;->Slider_android_valueFrom:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/google/android/material/slider/a;->F:F

    .line 420
    sget p3, Lcom/google/android/material/R$styleable;->Slider_android_valueTo:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/google/android/material/slider/a;->G:F

    .line 421
    iget p3, p0, Lcom/google/android/material/slider/a;->F:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    new-array v1, v7, [Ljava/lang/Float;

    aput-object p3, v1, p1

    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/a;->setValues([Ljava/lang/Float;)V

    .line 422
    sget p3, Lcom/google/android/material/R$styleable;->Slider_android_stepSize:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/google/android/material/slider/a;->K:F

    .line 424
    sget p3, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, p3

    goto :goto_0

    .line 427
    :cond_0
    sget v2, Lcom/google/android/material/R$styleable;->Slider_trackColorInactive:I

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 429
    :cond_1
    sget p3, Lcom/google/android/material/R$styleable;->Slider_trackColorActive:I

    .line 432
    :goto_1
    invoke-static {v0, p2, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 436
    :cond_2
    sget v1, Lcom/google/android/material/R$color;->material_slider_inactive_track_color:I

    invoke-static {v0, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 433
    :goto_2
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/a;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 439
    invoke-static {v0, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_3

    goto :goto_3

    .line 443
    :cond_3
    sget p3, Lcom/google/android/material/R$color;->material_slider_active_track_color:I

    invoke-static {v0, p3}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 440
    :goto_3
    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/a;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 445
    sget p3, Lcom/google/android/material/R$styleable;->Slider_thumbColor:I

    .line 446
    invoke-static {v0, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 447
    invoke-virtual {v8, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 449
    sget p3, Lcom/google/android/material/R$styleable;->Slider_thumbStrokeColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 451
    invoke-static {v0, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 450
    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/a;->setThumbStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 453
    :cond_4
    sget p3, Lcom/google/android/material/R$styleable;->Slider_thumbStrokeWidth:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/a;->setThumbStrokeWidth(F)V

    .line 455
    sget p3, Lcom/google/android/material/R$styleable;->Slider_haloColor:I

    .line 456
    invoke-static {v0, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_5

    goto :goto_4

    .line 460
    :cond_5
    sget p3, Lcom/google/android/material/R$color;->material_slider_halo_color:I

    invoke-static {v0, p3}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 457
    :goto_4
    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/a;->setHaloTintList(Landroid/content/res/ColorStateList;)V

    .line 462
    sget p3, Lcom/google/android/material/R$styleable;->Slider_tickVisible:I

    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/material/slider/a;->M:Z

    .line 463
    sget p3, Lcom/google/android/material/R$styleable;->Slider_tickColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, p3

    goto :goto_5

    .line 465
    :cond_6
    sget v2, Lcom/google/android/material/R$styleable;->Slider_tickColorInactive:I

    :goto_5
    if-eqz v1, :cond_7

    goto :goto_6

    .line 467
    :cond_7
    sget p3, Lcom/google/android/material/R$styleable;->Slider_tickColorActive:I

    .line 469
    :goto_6
    invoke-static {v0, p2, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_8

    goto :goto_7

    .line 473
    :cond_8
    sget v1, Lcom/google/android/material/R$color;->material_slider_inactive_tick_marks_color:I

    invoke-static {v0, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 470
    :goto_7
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/a;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 476
    invoke-static {v0, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_9

    goto :goto_8

    .line 480
    :cond_9
    sget p3, Lcom/google/android/material/R$color;->material_slider_active_tick_marks_color:I

    invoke-static {v0, p3}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 477
    :goto_8
    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/a;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 483
    sget p3, Lcom/google/android/material/R$styleable;->Slider_thumbRadius:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/a;->setThumbRadius(I)V

    .line 484
    sget p3, Lcom/google/android/material/R$styleable;->Slider_haloRadius:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/a;->setHaloRadius(I)V

    .line 486
    sget p3, Lcom/google/android/material/R$styleable;->Slider_thumbElevation:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/a;->setThumbElevation(F)V

    .line 488
    sget p3, Lcom/google/android/material/R$styleable;->Slider_trackHeight:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/a;->setTrackHeight(I)V

    .line 490
    sget p3, Lcom/google/android/material/R$styleable;->Slider_labelBehavior:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/a;->setLabelBehavior(I)V

    .line 492
    sget p3, Lcom/google/android/material/R$styleable;->Slider_android_enabled:I

    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    if-nez p3, :cond_a

    .line 493
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/a;->setEnabled(Z)V

    .line 496
    :cond_a
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 386
    invoke-virtual {p0, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 387
    invoke-virtual {p0, v7}, Landroid/view/View;->setClickable(Z)V

    const/4 p1, 0x2

    .line 390
    invoke-virtual {v8, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatibilityMode(I)V

    .line 393
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/slider/a;->q:I

    .line 395
    new-instance p1, Lcom/google/android/material/slider/a$c;

    invoke-direct {p1, p0}, Lcom/google/android/material/slider/a$c;-><init>(Lcom/google/android/material/slider/a;)V

    iput-object p1, p0, Lcom/google/android/material/slider/a;->g:Lcom/google/android/material/slider/a$c;

    .line 396
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 399
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/google/android/material/slider/a;->h:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 891
    iget v0, p0, Lcom/google/android/material/slider/a;->y:I

    mul-int/lit8 v0, v0, 0x2

    .line 892
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 893
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    if-ne v2, v4, :cond_0

    .line 895
    invoke-virtual {p1, v3, v3, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void

    :cond_0
    int-to-float v0, v0

    .line 897
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v0, v2

    .line 898
    invoke-virtual {p1, v3, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public addOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V
    .locals 1
    .param p1    # Lcom/google/android/material/slider/BaseOnChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .line 934
    iget-object v0, p0, Lcom/google/android/material/slider/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V
    .locals 1
    .param p1    # Lcom/google/android/material/slider/BaseOnSliderTouchListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 957
    iget-object v0, p0, Lcom/google/android/material/slider/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()I
    .locals 4

    .line 1653
    iget v0, p0, Lcom/google/android/material/slider/a;->x:I

    .line 1654
    iget v1, p0, Lcom/google/android/material/slider/a;->u:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1655
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/slider/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicHeight()I

    move-result v3

    :cond_1
    add-int/2addr v0, v3

    return v0
.end method

.method public final c(Z)Landroid/animation/ValueAnimator;
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p1, :cond_1

    .line 2085
    iget-object v3, p0, Lcom/google/android/material/slider/a;->p:Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/material/slider/a;->o:Landroid/animation/ValueAnimator;

    :goto_1
    if-eqz v3, :cond_2

    .line 2063
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2064
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 2065
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x2

    .line 2087
    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_4

    const-wide/16 v1, 0x53

    goto :goto_3

    :cond_4
    const-wide/16 v1, 0x75

    .line 2088
    :goto_3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    .line 2091
    sget-object p1, Lcom/google/android/material/animation/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    goto :goto_4

    .line 2092
    :cond_5
    sget-object p1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 2089
    :goto_4
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2093
    new-instance p1, Lcom/google/android/material/slider/b;

    invoke-direct {p1, p0}, Lcom/google/android/material/slider/b;-><init>(Lcom/google/android/material/slider/a;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public clearOnChangeListeners()V
    .locals 1

    .line 948
    iget-object v0, p0, Lcom/google/android/material/slider/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearOnSliderTouchListeners()V
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/google/android/material/slider/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final d(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1789
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1790
    iget v0, p0, Lcom/google/android/material/slider/a;->w:I

    .line 1792
    invoke-virtual {p0, p4}, Lcom/google/android/material/slider/a;->o(F)F

    move-result p4

    int-to-float p2, p2

    mul-float p4, p4, p2

    float-to-int p2, p4

    add-int/2addr v0, p2

    int-to-float p2, v0

    .line 1793
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    sub-float/2addr p2, p4

    int-to-float p3, p3

    .line 1794
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, v0

    sub-float/2addr p3, p4

    .line 1790
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1795
    invoke-virtual {p5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1796
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2504
    iget-object v0, p0, Lcom/google/android/material/slider/a;->g:Lcom/google/android/material/slider/a$c;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2511
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public drawableStateChanged()V
    .locals 3

    .line 2255
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2257
    iget-object v0, p0, Lcom/google/android/material/slider/a;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/a;->U:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/a;->h(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2258
    iget-object v0, p0, Lcom/google/android/material/slider/a;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/a;->T:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/a;->h(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2259
    iget-object v0, p0, Lcom/google/android/material/slider/a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/a;->S:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/a;->h(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2260
    iget-object v0, p0, Lcom/google/android/material/slider/a;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/a;->R:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/a;->h(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2261
    iget-object v0, p0, Lcom/google/android/material/slider/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 2262
    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2263
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 2266
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/slider/a;->V:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2267
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2269
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/slider/a;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/a;->Q:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/a;->h(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0x3f

    .line 2270
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 2111
    iget-boolean v0, p0, Lcom/google/android/material/slider/a;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2112
    iput-boolean v0, p0, Lcom/google/android/material/slider/a;->n:Z

    .line 2113
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/a;->c(Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/slider/a;->p:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    .line 2114
    iput-object v1, p0, Lcom/google/android/material/slider/a;->o:Landroid/animation/ValueAnimator;

    .line 2115
    new-instance v1, Lcom/google/android/material/slider/c;

    invoke-direct {v1, p0}, Lcom/google/android/material/slider/c;-><init>(Lcom/google/android/material/slider/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2125
    iget-object v0, p0, Lcom/google/android/material/slider/a;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final f(F)Ljava/lang/String;
    .locals 3

    .line 2167
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->hasLabelFormatter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2168
    iget-object v0, p0, Lcom/google/android/material/slider/a;->D:Lcom/google/android/material/slider/LabelFormatter;

    invoke-interface {v0, p1}, Lcom/google/android/material/slider/LabelFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    float-to-int v0, p1

    int-to-float v0, v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    .line 2171
    const-string v0, "%.0f"

    goto :goto_0

    :cond_1
    const-string v0, "%.2f"

    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final g()[F
    .locals 6

    .line 1699
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1700
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1701
    iget-object v2, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v1, p0, Lcom/google/android/material/slider/a;->F:F

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/a;->o(F)F

    move-result v1

    .line 1702
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/a;->o(F)F

    move-result v0

    .line 1705
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->k()Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_1

    new-array v2, v5, [F

    aput v0, v2, v4

    aput v1, v2, v3

    return-object v2

    :cond_1
    new-array v2, v5, [F

    aput v1, v2, v4

    aput v0, v2, v3

    return-object v2
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2499
    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveThumbIndex()I
    .locals 1

    .line 924
    iget v0, p0, Lcom/google/android/material/slider/a;->I:I

    return v0
.end method

.method public getFocusedThumbIndex()I
    .locals 1

    .line 905
    iget v0, p0, Lcom/google/android/material/slider/a;->J:I

    return v0
.end method

.method public getHaloRadius()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 1174
    iget v0, p0, Lcom/google/android/material/slider/a;->z:I

    return v0
.end method

.method public getHaloTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1288
    iget-object v0, p0, Lcom/google/android/material/slider/a;->Q:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getLabelBehavior()I
    .locals 1

    .line 1216
    iget v0, p0, Lcom/google/android/material/slider/a;->u:I

    return v0
.end method

.method public getMinSeparation()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStepSize()F
    .locals 1

    .line 780
    iget v0, p0, Lcom/google/android/material/slider/a;->K:F

    return v0
.end method

.method public getThumbElevation()F
    .locals 1

    .line 1000
    iget-object v0, p0, Lcom/google/android/material/slider/a;->V:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    move-result v0

    return v0
.end method

.method public getThumbRadius()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 1035
    iget v0, p0, Lcom/google/android/material/slider/a;->y:I

    return v0
.end method

.method public getThumbStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1121
    iget-object v0, p0, Lcom/google/android/material/slider/a;->V:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getStrokeColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getThumbStrokeWidth()F
    .locals 1

    .line 1162
    iget-object v0, p0, Lcom/google/android/material/slider/a;->V:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1322
    iget-object v0, p0, Lcom/google/android/material/slider/a;->V:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getTickActiveTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1385
    iget-object v0, p0, Lcom/google/android/material/slider/a;->R:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTickInactiveTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1414
    iget-object v0, p0, Lcom/google/android/material/slider/a;->S:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTickTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1354
    iget-object v0, p0, Lcom/google/android/material/slider/a;->S:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/slider/a;->R:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/google/android/material/slider/a;->R:Landroid/content/res/ColorStateList;

    return-object v0

    .line 1355
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTrackActiveTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1501
    iget-object v0, p0, Lcom/google/android/material/slider/a;->T:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackHeight()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 1263
    iget v0, p0, Lcom/google/android/material/slider/a;->v:I

    return v0
.end method

.method public getTrackInactiveTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1530
    iget-object v0, p0, Lcom/google/android/material/slider/a;->U:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackSidePadding()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 1246
    iget v0, p0, Lcom/google/android/material/slider/a;->w:I

    return v0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1470
    iget-object v0, p0, Lcom/google/android/material/slider/a;->U:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/slider/a;->T:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/google/android/material/slider/a;->T:Landroid/content/res/ColorStateList;

    return-object v0

    .line 1471
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTrackWidth()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 1252
    iget v0, p0, Lcom/google/android/material/slider/a;->N:I

    return v0
.end method

.method public getValueFrom()F
    .locals 1

    .line 625
    iget v0, p0, Lcom/google/android/material/slider/a;->F:F

    return v0
.end method

.method public getValueTo()F
    .locals 1

    .line 651
    iget v0, p0, Lcom/google/android/material/slider/a;->G:F

    return v0
.end method

.method public getValues()Ljava/util/List;
    .locals 2

    .line 672
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final h(Landroid/content/res/ColorStateList;)I
    .locals 2

    .line 2275
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1
.end method

.method public hasLabelFormatter()Z
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/google/android/material/slider/a;->D:Lcom/google/android/material/slider/LabelFormatter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 4

    .line 2208
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2209
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 2210
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    .line 2211
    invoke-virtual {v1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2212
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 2215
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isTickVisible()Z
    .locals 1

    .line 1440
    iget-boolean v0, p0, Lcom/google/android/material/slider/a;->M:Z

    return v0
.end method

.method public final j(F)Z
    .locals 4

    .line 538
    new-instance v0, Ljava/math/BigDecimal;

    .line 539
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/math/BigDecimal;

    iget v1, p0, Lcom/google/android/material/slider/a;->K:F

    .line 540
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    invoke-virtual {v0, p1, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 541
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .line 544
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final k()Z
    .locals 2

    .line 2375
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()V
    .locals 6

    .line 1611
    iget v0, p0, Lcom/google/android/material/slider/a;->K:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 1615
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->w()V

    .line 1617
    iget v0, p0, Lcom/google/android/material/slider/a;->G:F

    iget v1, p0, Lcom/google/android/material/slider/a;->F:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/slider/a;->K:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1619
    iget v1, p0, Lcom/google/android/material/slider/a;->N:I

    iget v2, p0, Lcom/google/android/material/slider/a;->v:I

    mul-int/lit8 v2, v2, 0x2

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1620
    iget-object v1, p0, Lcom/google/android/material/slider/a;->L:[F

    if-eqz v1, :cond_1

    array-length v1, v1

    mul-int/lit8 v2, v0, 0x2

    if-eq v1, v2, :cond_2

    :cond_1
    mul-int/lit8 v1, v0, 0x2

    .line 1621
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/android/material/slider/a;->L:[F

    .line 1624
    :cond_2
    iget v1, p0, Lcom/google/android/material/slider/a;->N:I

    int-to-float v1, v1

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    mul-int/lit8 v3, v0, 0x2

    if-ge v2, v3, :cond_3

    .line 1626
    iget-object v3, p0, Lcom/google/android/material/slider/a;->L:[F

    iget v4, p0, Lcom/google/android/material/slider/a;->w:I

    int-to-float v4, v4

    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    mul-float v5, v5, v1

    add-float/2addr v5, v4

    aput v5, v3, v2

    add-int/lit8 v4, v2, 0x1

    .line 1627
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->b()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final m(I)Z
    .locals 11

    .line 2387
    iget v0, p0, Lcom/google/android/material/slider/a;->J:I

    int-to-long v1, v0

    int-to-long v3, p1

    add-long v5, v1, v3

    .line 2390
    iget-object p1, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    int-to-long v9, p1

    const-wide/16 v7, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/core/math/MathUtils;->clamp(JJJ)J

    move-result-wide v2

    long-to-int p1, v2

    iput p1, p0, Lcom/google/android/material/slider/a;->J:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2395
    :cond_0
    iget v0, p0, Lcom/google/android/material/slider/a;->I:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 2396
    iput p1, p0, Lcom/google/android/material/slider/a;->I:I

    .line 2398
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->v()V

    .line 2399
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return v1
.end method

.method public final n(I)V
    .locals 1

    .line 2411
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    neg-int p1, p1

    .line 2415
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/a;->m(I)Z

    return-void
.end method

.method public final o(F)F
    .locals 2

    .line 1727
    iget v0, p0, Lcom/google/android/material/slider/a;->F:F

    sub-float/2addr p1, v0

    iget v1, p0, Lcom/google/android/material/slider/a;->G:F

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    .line 1728
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    return v0

    :cond_0
    return p1
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1559
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1561
    iget-object v0, p0, Lcom/google/android/material/slider/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 1567
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tooltip/TooltipDrawable;->setRelativeToView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1572
    iget-object v0, p0, Lcom/google/android/material/slider/a;->i:Lcom/google/android/material/slider/a$b;

    if-eqz v0, :cond_0

    .line 1573
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    .line 1576
    iput-boolean v0, p0, Lcom/google/android/material/slider/a;->n:Z

    .line 1577
    iget-object v0, p0, Lcom/google/android/material/slider/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 1585
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1587
    invoke-interface {v2, v1}, Lcom/google/android/material/internal/ViewOverlayImpl;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 1588
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tooltip/TooltipDrawable;->detachView(Landroid/view/View;)V

    goto :goto_0

    .line 1581
    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1661
    iget-boolean v1, p0, Lcom/google/android/material/slider/a;->P:Z

    if-eqz v1, :cond_0

    .line 1662
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->w()V

    .line 1665
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->l()V

    .line 1668
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1670
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->b()I

    move-result v10

    .line 1672
    iget v1, p0, Lcom/google/android/material/slider/a;->N:I

    .line 1709
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->g()[F

    move-result-object v11

    .line 1710
    iget v2, p0, Lcom/google/android/material/slider/a;->w:I

    int-to-float v3, v2

    aget v4, v11, v9

    int-to-float v12, v1

    mul-float v4, v4, v12

    add-float/2addr v4, v3

    add-int/2addr v2, v1

    int-to-float v1, v2

    .line 1711
    iget-object v6, p0, Lcom/google/android/material/slider/a;->a:Landroid/graphics/Paint;

    cmpg-float v2, v4, v1

    if-gez v2, :cond_1

    int-to-float v3, v10

    move v5, v3

    move v2, v4

    move v4, v1

    move-object v1, p1

    .line 1712
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1716
    :cond_1
    iget v1, p0, Lcom/google/android/material/slider/a;->w:I

    int-to-float v2, v1

    aget v1, v11, v8

    mul-float v1, v1, v12

    add-float v4, v1, v2

    cmpl-float v1, v4, v2

    if-lez v1, :cond_2

    int-to-float v3, v10

    move v5, v3

    move-object v1, p1

    .line 1718
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1673
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/google/android/material/slider/a;->F:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 1674
    iget v1, p0, Lcom/google/android/material/slider/a;->N:I

    .line 1735
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->g()[F

    move-result-object v2

    .line 1736
    iget v3, p0, Lcom/google/android/material/slider/a;->w:I

    int-to-float v3, v3

    aget v4, v2, v9

    int-to-float v1, v1

    mul-float v4, v4, v1

    add-float/2addr v4, v3

    .line 1737
    aget v2, v2, v8

    mul-float v2, v2, v1

    add-float/2addr v2, v3

    int-to-float v3, v10

    .line 1738
    iget-object v6, p0, Lcom/google/android/material/slider/a;->b:Landroid/graphics/Paint;

    move v5, v3

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1742
    :cond_3
    iget-boolean v2, p0, Lcom/google/android/material/slider/a;->M:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/google/android/material/slider/a;->K:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_4

    goto :goto_0

    .line 1746
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->g()[F

    move-result-object v2

    .line 1747
    iget-object v3, p0, Lcom/google/android/material/slider/a;->L:[F

    aget v4, v2, v8

    .line 1914
    array-length v3, v3

    div-int/2addr v3, v7

    sub-int/2addr v3, v9

    int-to-float v3, v3

    mul-float v4, v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1748
    iget-object v4, p0, Lcom/google/android/material/slider/a;->L:[F

    aget v2, v2, v9

    .line 1914
    array-length v4, v4

    div-int/2addr v4, v7

    sub-int/2addr v4, v9

    int-to-float v4, v4

    mul-float v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1751
    iget-object v4, p0, Lcom/google/android/material/slider/a;->L:[F

    mul-int/lit8 v3, v3, 0x2

    iget-object v5, p0, Lcom/google/android/material/slider/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v8, v3, v5}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 1754
    iget-object v4, p0, Lcom/google/android/material/slider/a;->L:[F

    mul-int/lit8 v2, v2, 0x2

    sub-int v6, v2, v3

    iget-object v11, p0, Lcom/google/android/material/slider/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v6, v11}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 1761
    iget-object v3, p0, Lcom/google/android/material/slider/a;->L:[F

    array-length v4, v3

    sub-int/2addr v4, v2

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 1679
    :cond_5
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/material/slider/a;->E:Z

    const/4 v11, 0x3

    if-nez v2, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1240
    iget v2, p0, Lcom/google/android/material/slider/a;->u:I

    if-ne v2, v11, :cond_10

    .line 1679
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1680
    iget v2, p0, Lcom/google/android/material/slider/a;->N:I

    .line 1819
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/RippleDrawable;

    if-nez v3, :cond_8

    .line 1802
    iget v3, p0, Lcom/google/android/material/slider/a;->w:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    iget v5, p0, Lcom/google/android/material/slider/a;->J:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/material/slider/a;->o(F)F

    move-result v4

    int-to-float v2, v2

    mul-float v4, v4, v2

    add-float/2addr v4, v3

    float-to-int v12, v4

    .line 1803
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_7

    .line 1805
    iget v2, p0, Lcom/google/android/material/slider/a;->z:I

    sub-int v3, v12, v2

    int-to-float v3, v3

    sub-int v4, v10, v2

    int-to-float v4, v4

    add-int v5, v12, v2

    int-to-float v5, v5

    add-int/2addr v2, v10

    int-to-float v2, v2

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v1, v5

    move v5, v2

    move v2, v3

    move v3, v4

    move v4, v1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    :cond_7
    int-to-float v2, v12

    int-to-float v3, v10

    .line 1812
    iget v4, p0, Lcom/google/android/material/slider/a;->z:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/material/slider/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1682
    :cond_8
    iget v2, p0, Lcom/google/android/material/slider/a;->I:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    .line 1240
    iget v2, p0, Lcom/google/android/material/slider/a;->u:I

    if-ne v2, v11, :cond_9

    goto :goto_1

    .line 1685
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->e()V

    goto/16 :goto_4

    .line 2130
    :cond_a
    :goto_1
    iget v2, p0, Lcom/google/android/material/slider/a;->u:I

    if-ne v2, v7, :cond_b

    goto/16 :goto_4

    .line 2138
    :cond_b
    iget-boolean v2, p0, Lcom/google/android/material/slider/a;->n:Z

    if-nez v2, :cond_c

    .line 2139
    iput-boolean v9, p0, Lcom/google/android/material/slider/a;->n:Z

    .line 2140
    invoke-virtual {p0, v9}, Lcom/google/android/material/slider/a;->c(Z)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/slider/a;->o:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    .line 2141
    iput-object v3, p0, Lcom/google/android/material/slider/a;->p:Landroid/animation/ValueAnimator;

    .line 2142
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 2145
    :cond_c
    iget-object v2, p0, Lcom/google/android/material/slider/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    .line 2147
    :goto_2
    iget-object v5, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2148
    iget v5, p0, Lcom/google/android/material/slider/a;->J:I

    if-ne v4, v5, :cond_d

    goto :goto_3

    .line 2153
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/tooltip/TooltipDrawable;

    iget-object v6, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/google/android/material/slider/a;->q(Lcom/google/android/material/tooltip/TooltipDrawable;F)V

    :goto_3
    add-int/2addr v4, v9

    goto :goto_2

    .line 2156
    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2163
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tooltip/TooltipDrawable;

    iget-object v3, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    iget v4, p0, Lcom/google/android/material/slider/a;->J:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/material/slider/a;->q(Lcom/google/android/material/tooltip/TooltipDrawable;F)V

    goto :goto_4

    .line 2157
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 2159
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v8

    aput-object v3, v4, v9

    .line 2158
    const-string v2, "Not enough labels(%d) to display all the values(%d)"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1688
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->e()V

    .line 1691
    :goto_4
    iget v2, p0, Lcom/google/android/material/slider/a;->N:I

    .line 1769
    :goto_5
    iget-object v3, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_14

    .line 1770
    iget-object v3, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1771
    iget-object v5, p0, Lcom/google/android/material/slider/a;->W:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_11

    move-object v0, p0

    move-object v1, p1

    move v3, v10

    .line 1772
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/slider/a;->d(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_11
    move v3, v10

    .line 1773
    iget-object v1, p0, Lcom/google/android/material/slider/a;->a0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_12

    .line 1774
    iget-object v1, p0, Lcom/google/android/material/slider/a;->a0:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/slider/a;->d(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 1778
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_13

    .line 1779
    iget v5, p0, Lcom/google/android/material/slider/a;->w:I

    int-to-float v5, v5

    .line 1780
    invoke-virtual {p0, v4}, Lcom/google/android/material/slider/a;->o(F)F

    move-result v6

    int-to-float v7, v2

    mul-float v6, v6, v7

    add-float/2addr v6, v5

    int-to-float v5, v3

    iget v7, p0, Lcom/google/android/material/slider/a;->y:I

    int-to-float v7, v7

    iget-object v10, p0, Lcom/google/android/material/slider/a;->c:Landroid/graphics/Paint;

    .line 1779
    invoke-virtual {p1, v6, v5, v7, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1782
    :cond_13
    iget-object v5, p0, Lcom/google/android/material/slider/a;->V:Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/slider/a;->d(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V

    :goto_6
    add-int/2addr v8, v9

    move v10, v3

    goto :goto_5

    :cond_14
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2460
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2461
    iget-object p3, p0, Lcom/google/android/material/slider/a;->g:Lcom/google/android/material/slider/a$c;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 2462
    iput p1, p0, Lcom/google/android/material/slider/a;->I:I

    .line 2463
    iget p1, p0, Lcom/google/android/material/slider/a;->J:I

    invoke-virtual {p3, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    return-void

    :cond_0
    const/4 p1, 0x1

    const v0, 0x7fffffff

    if-eq p2, p1, :cond_4

    const/4 p1, 0x2

    const/high16 v1, -0x80000000

    if-eq p2, p1, :cond_3

    const/16 p1, 0x11

    if-eq p2, p1, :cond_2

    const/16 p1, 0x42

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 2482
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/a;->n(I)V

    goto :goto_0

    .line 2476
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/a;->n(I)V

    goto :goto_0

    .line 2479
    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/a;->m(I)Z

    goto :goto_0

    .line 2473
    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/a;->m(I)Z

    .line 2466
    :goto_0
    iget p1, p0, Lcom/google/android/material/slider/a;->J:I

    invoke-virtual {p3, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2285
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2286
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 2290
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2291
    iput v1, p0, Lcom/google/android/material/slider/a;->I:I

    .line 2295
    :cond_1
    iget v0, p0, Lcom/google/android/material/slider/a;->I:I

    const/4 v3, 0x0

    const/16 v4, 0x46

    const/16 v5, 0x45

    const/16 v6, 0x51

    const/16 v7, 0x42

    const/16 v8, 0x3d

    const/4 v9, -0x1

    if-ne v0, v9, :cond_9

    if-eq p1, v8, :cond_5

    if-eq p1, v7, :cond_4

    if-eq p1, v6, :cond_3

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2349
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/a;->n(I)V

    .line 2350
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 2343
    :pswitch_1
    invoke-virtual {p0, v9}, Lcom/google/android/material/slider/a;->n(I)V

    .line 2344
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 2346
    :cond_2
    invoke-virtual {p0, v9}, Lcom/google/android/material/slider/a;->m(I)Z

    .line 2347
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 2354
    :cond_3
    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/a;->m(I)Z

    .line 2355
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 2358
    :cond_4
    :pswitch_2
    iget v0, p0, Lcom/google/android/material/slider/a;->J:I

    iput v0, p0, Lcom/google/android/material/slider/a;->I:I

    .line 2359
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 2360
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 2334
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2335
    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/a;->m(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 2338
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2339
    invoke-virtual {p0, v9}, Lcom/google/android/material/slider/a;->m(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 2341
    :cond_7
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    if-eqz v3, :cond_8

    .line 2297
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 2300
    :cond_9
    iget-boolean v0, p0, Lcom/google/android/material/slider/a;->O:Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v10

    or-int/2addr v0, v10

    iput-boolean v0, p0, Lcom/google/android/material/slider/a;->O:Z

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    if-eqz v0, :cond_c

    .line 2440
    iget v0, p0, Lcom/google/android/material/slider/a;->K:F

    cmpl-float v11, v0, v11

    if-nez v11, :cond_a

    goto :goto_1

    :cond_a
    move v10, v0

    .line 2449
    :goto_1
    iget v0, p0, Lcom/google/android/material/slider/a;->G:F

    iget v11, p0, Lcom/google/android/material/slider/a;->F:F

    sub-float/2addr v0, v11

    div-float/2addr v0, v10

    const/16 v11, 0x14

    int-to-float v11, v11

    cmpg-float v12, v0, v11

    if-gtz v12, :cond_b

    goto :goto_2

    :cond_b
    div-float/2addr v0, v11

    .line 2454
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    mul-float v10, v10, v0

    goto :goto_2

    .line 2440
    :cond_c
    iget v0, p0, Lcom/google/android/material/slider/a;->K:F

    cmpl-float v11, v0, v11

    if-nez v11, :cond_d

    goto :goto_2

    :cond_d
    move v10, v0

    :goto_2
    const/16 v0, 0x15

    if-eq p1, v0, :cond_12

    const/16 v0, 0x16

    if-eq p1, v0, :cond_10

    if-eq p1, v5, :cond_f

    if-eq p1, v4, :cond_e

    if-eq p1, v6, :cond_e

    goto :goto_4

    .line 2432
    :cond_e
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_4

    :cond_f
    neg-float v0, v10

    .line 2428
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_4

    .line 2426
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->k()Z

    move-result v0

    if-eqz v0, :cond_11

    neg-float v10, v10

    :cond_11
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_4

    .line 2424
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->k()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_3

    :cond_13
    neg-float v10, v10

    :goto_3
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :goto_4
    if-eqz v3, :cond_15

    .line 2303
    iget-object p1, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    iget p2, p0, Lcom/google/android/material/slider/a;->I:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    add-float/2addr p2, p1

    .line 1992
    iget p1, p0, Lcom/google/android/material/slider/a;->I:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/slider/a;->s(IF)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 2304
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->v()V

    .line 2305
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_14
    return v2

    :cond_15
    const/16 v0, 0x17

    if-eq p1, v0, :cond_19

    if-eq p1, v8, :cond_16

    if-eq p1, v7, :cond_19

    .line 2328
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 2311
    :cond_16
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 2312
    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/a;->m(I)Z

    move-result p1

    return p1

    .line 2315
    :cond_17
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 2316
    invoke-virtual {p0, v9}, Lcom/google/android/material/slider/a;->m(I)Z

    move-result p1

    return p1

    :cond_18
    return v1

    .line 2321
    :cond_19
    iput v9, p0, Lcom/google/android/material/slider/a;->I:I

    .line 2322
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return v2

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2370
    iput-boolean v0, p0, Lcom/google/android/material/slider/a;->O:Z

    .line 2371
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1594
    iget p2, p0, Lcom/google/android/material/slider/a;->t:I

    .line 1598
    iget v0, p0, Lcom/google/android/material/slider/a;->u:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1599
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicHeight()I

    move-result v2

    :cond_1
    add-int/2addr p2, v2

    const/high16 v0, 0x40000000    # 2.0f

    .line 1596
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1594
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 2558
    check-cast p1, Lcom/google/android/material/slider/a$d;

    .line 2559
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2561
    iget v0, p1, Lcom/google/android/material/slider/a$d;->a:F

    iput v0, p0, Lcom/google/android/material/slider/a;->F:F

    .line 2562
    iget v0, p1, Lcom/google/android/material/slider/a$d;->b:F

    iput v0, p0, Lcom/google/android/material/slider/a;->G:F

    .line 2563
    iget-object v0, p1, Lcom/google/android/material/slider/a$d;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/a;->r(Ljava/util/ArrayList;)V

    .line 2564
    iget v0, p1, Lcom/google/android/material/slider/a$d;->d:F

    iput v0, p0, Lcom/google/android/material/slider/a;->K:F

    .line 2565
    iget-boolean p1, p1, Lcom/google/android/material/slider/a$d;->e:Z

    if-eqz p1, :cond_0

    .line 2566
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 2546
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2547
    new-instance v1, Lcom/google/android/material/slider/a$d;

    .line 2595
    invoke-direct {v1, v0}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2548
    iget v0, p0, Lcom/google/android/material/slider/a;->F:F

    iput v0, v1, Lcom/google/android/material/slider/a$d;->a:F

    .line 2549
    iget v0, p0, Lcom/google/android/material/slider/a;->G:F

    iput v0, v1, Lcom/google/android/material/slider/a$d;->b:F

    .line 2550
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Lcom/google/android/material/slider/a$d;->c:Ljava/util/ArrayList;

    .line 2551
    iget v0, p0, Lcom/google/android/material/slider/a;->K:F

    iput v0, v1, Lcom/google/android/material/slider/a$d;->d:F

    .line 2552
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/material/slider/a$d;->e:Z

    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1633
    iget p2, p0, Lcom/google/android/material/slider/a;->w:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/slider/a;->N:I

    .line 1636
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->l()V

    .line 1607
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->v()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1824
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1827
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1828
    iget v2, p0, Lcom/google/android/material/slider/a;->w:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/google/android/material/slider/a;->N:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/material/slider/a;->b0:F

    const/4 v3, 0x0

    .line 1829
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/slider/a;->b0:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1830
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/slider/a;->b0:F

    .line 1832
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    iget v4, p0, Lcom/google/android/material/slider/a;->q:I

    if-eq v2, v3, :cond_5

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    goto/16 :goto_2

    .line 1857
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/material/slider/a;->E:Z

    if-nez v2, :cond_3

    .line 1859
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/material/slider/a;->B:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, v4

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    :goto_0
    return v1

    .line 1862
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1863
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->p()V

    .line 1866
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->pickActiveThumb()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_2

    .line 1871
    :cond_4
    iput-boolean v3, p0, Lcom/google/android/material/slider/a;->E:Z

    .line 1872
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->t()V

    .line 1873
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->v()V

    .line 1874
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_2

    .line 1877
    :cond_5
    iput-boolean v1, p0, Lcom/google/android/material/slider/a;->E:Z

    .line 1879
    iget-object v0, p0, Lcom/google/android/material/slider/a;->C:Landroid/view/MotionEvent;

    if-eqz v0, :cond_6

    .line 1880
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/material/slider/a;->C:Landroid/view/MotionEvent;

    .line 1881
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v1, v4

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/material/slider/a;->C:Landroid/view/MotionEvent;

    .line 1882
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    .line 1883
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->pickActiveThumb()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1884
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->p()V

    .line 1888
    :cond_6
    iget v0, p0, Lcom/google/android/material/slider/a;->I:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 1889
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->t()V

    .line 1890
    iput v1, p0, Lcom/google/android/material/slider/a;->I:I

    .line 2248
    iget-object v0, p0, Lcom/google/android/material/slider/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/slider/BaseOnSliderTouchListener;

    .line 2249
    invoke-interface {v1, p0}, Lcom/google/android/material/slider/BaseOnSliderTouchListener;->onStopTrackingTouch(Ljava/lang/Object;)V

    goto :goto_1

    .line 1893
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    .line 1834
    :cond_8
    iput v0, p0, Lcom/google/android/material/slider/a;->B:F

    .line 1838
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->i()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    .line 1842
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1844
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->pickActiveThumb()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    .line 1849
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 1850
    iput-boolean v3, p0, Lcom/google/android/material/slider/a;->E:Z

    .line 1851
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->t()V

    .line 1852
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->v()V

    .line 1853
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1854
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->p()V

    .line 1900
    :goto_2
    iget-boolean v0, p0, Lcom/google/android/material/slider/a;->E:Z

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1902
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/slider/a;->C:Landroid/view/MotionEvent;

    return v3
.end method

.method public final p()V
    .locals 2

    .line 2241
    iget-object v0, p0, Lcom/google/android/material/slider/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/slider/BaseOnSliderTouchListener;

    .line 2242
    invoke-interface {v1, p0}, Lcom/google/android/material/slider/BaseOnSliderTouchListener;->onStartTrackingTouch(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pickActiveThumb()Z
    .locals 11

    .line 1932
    iget v0, p0, Lcom/google/android/material/slider/a;->I:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    goto/16 :goto_5

    .line 1974
    :cond_0
    iget v0, p0, Lcom/google/android/material/slider/a;->b0:F

    .line 1975
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->k()Z

    move-result v3

    if-eqz v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v3, v0

    .line 1978
    :cond_1
    iget v3, p0, Lcom/google/android/material/slider/a;->G:F

    iget v4, p0, Lcom/google/android/material/slider/a;->F:F

    invoke-static {v3, v4, v0, v4}, L_COROUTINE/a;->a(FFFF)F

    move-result v0

    .line 2052
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/a;->o(F)F

    move-result v3

    iget v4, p0, Lcom/google/android/material/slider/a;->N:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    iget v4, p0, Lcom/google/android/material/slider/a;->w:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    .line 1938
    iput v4, p0, Lcom/google/android/material/slider/a;->I:I

    .line 1939
    iget-object v5, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v6, 0x1

    .line 1940
    :goto_0
    iget-object v7, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 1941
    iget-object v7, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1942
    iget-object v8, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 2052
    invoke-virtual {p0, v8}, Lcom/google/android/material/slider/a;->o(F)F

    move-result v8

    iget v9, p0, Lcom/google/android/material/slider/a;->N:I

    int-to-float v9, v9

    mul-float v8, v8, v9

    iget v9, p0, Lcom/google/android/material/slider/a;->w:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 1943
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-le v9, v1, :cond_2

    goto :goto_4

    .line 1947
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->k()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    sub-float v9, v8, v3

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    :goto_1
    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    sub-float v9, v8, v3

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    goto :goto_1

    .line 1950
    :goto_2
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-gez v10, :cond_5

    .line 1952
    iput v6, p0, Lcom/google/android/material/slider/a;->I:I

    goto :goto_3

    .line 1956
    :cond_5
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_7

    sub-float/2addr v8, v3

    .line 1958
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v10, p0, Lcom/google/android/material/slider/a;->q:I

    int-to-float v10, v10

    cmpg-float v8, v8, v10

    if-gez v8, :cond_6

    .line 1959
    iput v2, p0, Lcom/google/android/material/slider/a;->I:I

    return v4

    :cond_6
    if-eqz v9, :cond_7

    .line 1965
    iput v6, p0, Lcom/google/android/material/slider/a;->I:I

    :goto_3
    move v5, v7

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1970
    :cond_8
    :goto_4
    iget v0, p0, Lcom/google/android/material/slider/a;->I:I

    if-eq v0, v2, :cond_9

    :goto_5
    return v1

    :cond_9
    return v4
.end method

.method public final q(Lcom/google/android/material/tooltip/TooltipDrawable;F)V
    .locals 3

    .line 2175
    invoke-virtual {p0, p2}, Lcom/google/android/material/slider/a;->f(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 2177
    iget v0, p0, Lcom/google/android/material/slider/a;->w:I

    .line 2179
    invoke-virtual {p0, p2}, Lcom/google/android/material/slider/a;->o(F)F

    move-result p2

    iget v1, p0, Lcom/google/android/material/slider/a;->N:I

    int-to-float v1, v1

    mul-float p2, p2, v1

    float-to-int p2, p2

    add-int/2addr v0, p2

    .line 2180
    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v0, p2

    .line 2181
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->b()I

    move-result p2

    iget v1, p0, Lcom/google/android/material/slider/a;->A:I

    iget v2, p0, Lcom/google/android/material/slider/a;->y:I

    add-int/2addr v1, v2

    sub-int/2addr p2, v1

    .line 2182
    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicHeight()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2186
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2187
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p0, p2}, Lcom/google/android/material/internal/DescendantOffsetUtils;->offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2188
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2190
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/android/material/internal/ViewOverlayImpl;->add(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final r(Ljava/util/ArrayList;)V
    .locals 6

    .line 720
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 724
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 726
    iget-object v0, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 727
    iget-object v0, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 732
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 733
    iput-boolean p1, p0, Lcom/google/android/material/slider/a;->P:Z

    const/4 v0, 0x0

    .line 735
    iput v0, p0, Lcom/google/android/material/slider/a;->J:I

    .line 736
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->v()V

    .line 744
    iget-object v1, p0, Lcom/google/android/material/slider/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 745
    iget-object v2, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 746
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 747
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1585
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1587
    invoke-interface {v5, v4}, Lcom/google/android/material/internal/ViewOverlayImpl;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 1588
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/tooltip/TooltipDrawable;->detachView(Landroid/view/View;)V

    goto :goto_0

    .line 751
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 755
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 756
    iget-object v2, p0, Lcom/google/android/material/slider/a;->j:Lcom/google/android/material/slider/a$a;

    invoke-interface {v2}, Lcom/google/android/material/slider/a$e;->createTooltipDrawable()Lcom/google/android/material/tooltip/TooltipDrawable;

    move-result-object v2

    .line 757
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1567
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/tooltip/TooltipDrawable;->setRelativeToView(Landroid/view/View;)V

    goto :goto_1

    .line 764
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, p1, :cond_5

    const/4 p1, 0x0

    .line 765
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tooltip/TooltipDrawable;

    int-to-float v3, p1

    .line 766
    invoke-virtual {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeWidth(F)V

    goto :goto_2

    .line 2222
    :cond_6
    iget-object p1, p0, Lcom/google/android/material/slider/a;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/slider/BaseOnChangeListener;

    .line 2223
    iget-object v2, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 2224
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {v1, p0, v3, v0}, Lcom/google/android/material/slider/BaseOnChangeListener;->onValueChange(Ljava/lang/Object;FZ)V

    goto :goto_3

    .line 739
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    .line 721
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one value must be set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V
    .locals 1
    .param p1    # Lcom/google/android/material/slider/BaseOnChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .line 943
    iget-object v0, p0, Lcom/google/android/material/slider/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V
    .locals 1
    .param p1    # Lcom/google/android/material/slider/BaseOnSliderTouchListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 966
    iget-object v0, p0, Lcom/google/android/material/slider/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final s(IF)Z
    .locals 5

    .line 1996
    iput p1, p0, Lcom/google/android/material/slider/a;->J:I

    .line 1999
    iget-object v0, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2013
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->getMinSeparation()F

    move-result v0

    .line 2014
    iget v1, p0, Lcom/google/android/material/slider/a;->c0:I

    if-nez v1, :cond_2

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 2028
    :cond_1
    iget v1, p0, Lcom/google/android/material/slider/a;->w:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/slider/a;->N:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/slider/a;->F:F

    iget v2, p0, Lcom/google/android/material/slider/a;->G:F

    invoke-static {v1, v2, v0, v1}, L_COROUTINE/a;->a(FFFF)F

    move-result v0

    .line 2015
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    neg-float v0, v0

    :cond_3
    add-int/lit8 v1, p1, 0x1

    .line 2019
    iget-object v2, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_4

    iget v1, p0, Lcom/google/android/material/slider/a;->G:F

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, v0

    :goto_1
    add-int/lit8 v2, p1, -0x1

    if-gez v2, :cond_5

    .line 2020
    iget v0, p0, Lcom/google/android/material/slider/a;->F:F

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v0, v2

    .line 2021
    :goto_2
    invoke-static {p2, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p2

    .line 2005
    iget-object v0, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2231
    iget-object p2, p0, Lcom/google/android/material/slider/a;->l:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/slider/BaseOnChangeListener;

    .line 2232
    iget-object v2, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, p0, v2, v1}, Lcom/google/android/material/slider/BaseOnChangeListener;->onValueChange(Ljava/lang/Object;FZ)V

    goto :goto_3

    .line 2234
    :cond_6
    iget-object p2, p0, Lcom/google/android/material/slider/a;->h:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 2520
    iget-object p2, p0, Lcom/google/android/material/slider/a;->i:Lcom/google/android/material/slider/a$b;

    if-nez p2, :cond_7

    .line 2521
    new-instance p2, Lcom/google/android/material/slider/a$b;

    invoke-direct {p2, p0}, Lcom/google/android/material/slider/a$b;-><init>(Lcom/google/android/material/slider/a;)V

    iput-object p2, p0, Lcom/google/android/material/slider/a;->i:Lcom/google/android/material/slider/a$b;

    goto :goto_4

    .line 2523
    :cond_7
    invoke-virtual {p0, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2525
    :goto_4
    iget-object p2, p0, Lcom/google/android/material/slider/a;->i:Lcom/google/android/material/slider/a$b;

    .line 2534
    iput p1, p2, Lcom/google/android/material/slider/a$b;->a:I

    const-wide/16 v2, 0xc8

    .line 2526
    invoke-virtual {p0, p2, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    return v1
.end method

.method public setActiveThumbIndex(I)V
    .locals 0

    .line 919
    iput p1, p0, Lcom/google/android/material/slider/a;->I:I

    return-void
.end method

.method public setCustomThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 885
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 886
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 838
    iput-object p1, p0, Lcom/google/android/material/slider/a;->W:Landroid/graphics/drawable/Drawable;

    .line 839
    iget-object p1, p0, Lcom/google/android/material/slider/a;->a0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 840
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1551
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/4 v0, 0x0

    .line 1554
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public setFocusedThumbIndex(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 910
    iget-object v0, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 913
    iput p1, p0, Lcom/google/android/material/slider/a;->J:I

    .line 914
    iget-object v0, p0, Lcom/google/android/material/slider/a;->g:Lcom/google/android/material/slider/a$c;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    .line 915
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    .line 911
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHaloRadius(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation

        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1184
    iget v0, p0, Lcom/google/android/material/slider/a;->z:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1188
    :cond_0
    iput p1, p0, Lcom/google/android/material/slider/a;->z:I

    .line 1189
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1819
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1

    .line 1190
    instance-of v0, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1

    .line 1191
    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    iget v0, p0, Lcom/google/android/material/slider/a;->z:I

    invoke-static {p1, v0}, Lcom/google/android/material/drawable/DrawableUtils;->setRippleDrawableRadius(Landroid/graphics/drawable/RippleDrawable;I)V

    return-void

    .line 1195
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setHaloRadiusResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1205
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/a;->setHaloRadius(I)V

    return-void
.end method

.method public setHaloTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1298
    iget-object v0, p0, Lcom/google/android/material/slider/a;->Q:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1302
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/a;->Q:Landroid/content/res/ColorStateList;

    .line 1303
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1819
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 1304
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 1305
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void

    .line 1309
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/slider/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/a;->h(Landroid/content/res/ColorStateList;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p1, 0x3f

    .line 1310
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1311
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLabelBehavior(I)V
    .locals 1

    .line 1227
    iget v0, p0, Lcom/google/android/material/slider/a;->u:I

    if-eq v0, p1, :cond_0

    .line 1228
    iput p1, p0, Lcom/google/android/material/slider/a;->u:I

    .line 1229
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setLabelFormatter(Lcom/google/android/material/slider/LabelFormatter;)V
    .locals 0
    .param p1    # Lcom/google/android/material/slider/LabelFormatter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 989
    iput-object p1, p0, Lcom/google/android/material/slider/a;->D:Lcom/google/android/material/slider/LabelFormatter;

    return-void
.end method

.method public setSeparationUnit(I)V
    .locals 0

    .line 2032
    iput p1, p0, Lcom/google/android/material/slider/a;->c0:I

    const/4 p1, 0x1

    .line 2033
    iput-boolean p1, p0, Lcom/google/android/material/slider/a;->P:Z

    .line 2034
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setStepSize(F)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 806
    iget v0, p0, Lcom/google/android/material/slider/a;->K:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 807
    iput p1, p0, Lcom/google/android/material/slider/a;->K:F

    const/4 p1, 0x1

    .line 808
    iput-boolean p1, p0, Lcom/google/android/material/slider/a;->P:Z

    .line 809
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void

    .line 803
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 804
    iget v1, p0, Lcom/google/android/material/slider/a;->F:F

    iget v2, p0, Lcom/google/android/material/slider/a;->G:F

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The stepSize("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 803
    const-string p1, ") must be 0, or a factor of the valueFrom("

    .line 804
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 803
    const-string p1, ")-valueTo("

    .line 804
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 803
    const-string p1, ") range"

    .line 804
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setThumbElevation(F)V
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/google/android/material/slider/a;->V:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    return-void
.end method

.method public setThumbElevationResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1020
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/a;->setThumbElevation(F)V

    return-void
.end method

.method public setThumbRadius(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation

        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1048
    iget v0, p0, Lcom/google/android/material/slider/a;->y:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1052
    :cond_0
    iput p1, p0, Lcom/google/android/material/slider/a;->y:I

    .line 510
    iget v0, p0, Lcom/google/android/material/slider/a;->s:I

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 511
    iget v1, p0, Lcom/google/android/material/slider/a;->r:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/material/slider/a;->w:I

    .line 512
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 513
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 1633
    iget v1, p0, Lcom/google/android/material/slider/a;->w:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/slider/a;->N:I

    .line 1636
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->l()V

    .line 1055
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/slider/a;->V:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 1056
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/slider/a;->y:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCorners(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    .line 1055
    invoke-virtual {p1, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 1057
    iget v1, p0, Lcom/google/android/material/slider/a;->y:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1059
    iget-object p1, p0, Lcom/google/android/material/slider/a;->W:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 1060
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1062
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/slider/a;->a0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 1063
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/a;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1066
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setThumbRadiusResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1079
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/a;->setThumbRadius(I)V

    return-void
.end method

.method public setThumbStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1092
    iget-object v0, p0, Lcom/google/android/material/slider/a;->V:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 1093
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setThumbStrokeColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1108
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 1107
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/a;->setThumbStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setThumbStrokeWidth(F)V
    .locals 1

    .line 1134
    iget-object v0, p0, Lcom/google/android/material/slider/a;->V:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeWidth(F)V

    .line 1135
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setThumbStrokeWidthResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1149
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/a;->setThumbStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1332
    iget-object v0, p0, Lcom/google/android/material/slider/a;->V:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1336
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 1337
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTickActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1396
    iget-object v0, p0, Lcom/google/android/material/slider/a;->R:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1399
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/a;->R:Landroid/content/res/ColorStateList;

    .line 1400
    iget-object v0, p0, Lcom/google/android/material/slider/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/a;->h(Landroid/content/res/ColorStateList;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1401
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTickInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1425
    iget-object v0, p0, Lcom/google/android/material/slider/a;->S:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1428
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/a;->S:Landroid/content/res/ColorStateList;

    .line 1429
    iget-object v0, p0, Lcom/google/android/material/slider/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/a;->h(Landroid/content/res/ColorStateList;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1430
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTickTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1371
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/a;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 1372
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/a;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTickVisible(Z)V
    .locals 1

    .line 1450
    iget-boolean v0, p0, Lcom/google/android/material/slider/a;->M:Z

    if-eq v0, p1, :cond_0

    .line 1451
    iput-boolean p1, p0, Lcom/google/android/material/slider/a;->M:Z

    .line 1452
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setTrackActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1512
    iget-object v0, p0, Lcom/google/android/material/slider/a;->T:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1515
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/a;->T:Landroid/content/res/ColorStateList;

    .line 1516
    iget-object v0, p0, Lcom/google/android/material/slider/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/a;->h(Landroid/content/res/ColorStateList;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1517
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTrackHeight(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation

        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1273
    iget v0, p0, Lcom/google/android/material/slider/a;->v:I

    if-eq v0, p1, :cond_0

    .line 1274
    iput p1, p0, Lcom/google/android/material/slider/a;->v:I

    int-to-float p1, p1

    .line 2194
    iget-object v0, p0, Lcom/google/android/material/slider/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2195
    iget p1, p0, Lcom/google/android/material/slider/a;->v:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/google/android/material/slider/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2196
    iget p1, p0, Lcom/google/android/material/slider/a;->v:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iget-object v1, p0, Lcom/google/android/material/slider/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2197
    iget p1, p0, Lcom/google/android/material/slider/a;->v:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/material/slider/a;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1276
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1541
    iget-object v0, p0, Lcom/google/android/material/slider/a;->U:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1544
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/a;->U:Landroid/content/res/ColorStateList;

    .line 1545
    iget-object v0, p0, Lcom/google/android/material/slider/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/a;->h(Landroid/content/res/ColorStateList;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1546
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1487
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/a;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 1488
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/a;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setValueFrom(F)V
    .locals 0

    .line 639
    iput p1, p0, Lcom/google/android/material/slider/a;->F:F

    const/4 p1, 0x1

    .line 640
    iput-boolean p1, p0, Lcom/google/android/material/slider/a;->P:Z

    .line 641
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setValueTo(F)V
    .locals 0

    .line 665
    iput p1, p0, Lcom/google/android/material/slider/a;->G:F

    const/4 p1, 0x1

    .line 666
    iput-boolean p1, p0, Lcom/google/android/material/slider/a;->P:Z

    .line 667
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public varargs setValues([Ljava/lang/Float;)V
    .locals 1

    .line 691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 692
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 693
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/a;->r(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final t()V
    .locals 6

    .line 2042
    iget v0, p0, Lcom/google/android/material/slider/a;->b0:F

    .line 1918
    iget v1, p0, Lcom/google/android/material/slider/a;->K:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 1919
    iget v2, p0, Lcom/google/android/material/slider/a;->G:F

    iget v3, p0, Lcom/google/android/material/slider/a;->F:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    float-to-int v1, v2

    int-to-float v2, v1

    mul-float v0, v0, v2

    .line 1920
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v2, v0

    int-to-double v0, v1

    div-double/2addr v2, v0

    goto :goto_0

    :cond_0
    float-to-double v2, v0

    .line 2045
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v2, v0, v2

    .line 2048
    :cond_1
    iget v0, p0, Lcom/google/android/material/slider/a;->G:F

    iget v1, p0, Lcom/google/android/material/slider/a;->F:F

    sub-float/2addr v0, v1

    float-to-double v4, v0

    mul-double v2, v2, v4

    float-to-double v0, v1

    add-double/2addr v2, v0

    double-to-float v0, v2

    .line 1992
    iget v1, p0, Lcom/google/android/material/slider/a;->I:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/slider/a;->s(IF)Z

    return-void
.end method

.method public final u(ILandroid/graphics/Rect;)V
    .locals 4

    .line 2622
    iget v0, p0, Lcom/google/android/material/slider/a;->w:I

    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/a;->o(F)F

    move-result p1

    iget v1, p0, Lcom/google/android/material/slider/a;->N:I

    int-to-float v1, v1

    mul-float p1, p1, v1

    float-to-int p1, p1

    add-int/2addr v0, p1

    .line 2623
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->b()I

    move-result p1

    .line 2625
    iget v1, p0, Lcom/google/android/material/slider/a;->y:I

    sub-int v2, v0, v1

    sub-int v3, p1, v1

    add-int/2addr v0, v1

    add-int/2addr p1, v1

    invoke-virtual {p2, v2, v3, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final v()V
    .locals 6

    .line 1819
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 1641
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 1642
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1643
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    .line 1644
    iget-object v1, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/material/slider/a;->J:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/a;->o(F)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/slider/a;->N:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    iget v2, p0, Lcom/google/android/material/slider/a;->w:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1645
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->b()I

    move-result v2

    .line 1646
    iget v3, p0, Lcom/google/android/material/slider/a;->z:I

    sub-int v4, v1, v3

    sub-int v5, v2, v3

    add-int/2addr v1, v3

    add-int/2addr v2, v3

    invoke-static {v0, v4, v5, v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 8

    .line 607
    iget-boolean v0, p0, Lcom/google/android/material/slider/a;->P:Z

    if-eqz v0, :cond_10

    .line 518
    iget v0, p0, Lcom/google/android/material/slider/a;->F:F

    iget v1, p0, Lcom/google/android/material/slider/a;->G:F

    const-string v2, ")"

    cmpl-float v3, v0, v1

    if-gez v3, :cond_f

    cmpg-float v3, v1, v0

    if-lez v3, :cond_e

    .line 548
    iget v3, p0, Lcom/google/android/material/slider/a;->K:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    sub-float/2addr v1, v0

    .line 533
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/a;->j(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 549
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/android/material/slider/a;->K:F

    .line 550
    iget v2, p0, Lcom/google/android/material/slider/a;->F:F

    iget v3, p0, Lcom/google/android/material/slider/a;->G:F

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The stepSize("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 549
    const-string v1, ") must be 0, or a factor of the valueFrom("

    .line 550
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 549
    const-string v1, ")-valueTo("

    .line 550
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 549
    const-string v1, ") range"

    .line 550
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/slider/a;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v3, ") when using stepSize("

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 556
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget v6, p0, Lcom/google/android/material/slider/a;->F:F

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget v6, p0, Lcom/google/android/material/slider/a;->G:F

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_4

    .line 560
    iget v5, p0, Lcom/google/android/material/slider/a;->K:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 533
    iget v6, p0, Lcom/google/android/material/slider/a;->F:F

    sub-float/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/google/android/material/slider/a;->j(F)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 561
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v4, p0, Lcom/google/android/material/slider/a;->F:F

    .line 562
    iget v5, p0, Lcom/google/android/material/slider/a;->K:F

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Value("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 561
    const-string v1, ") must be equal to valueFrom("

    .line 562
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 561
    const-string v1, ") plus a multiple of stepSize("

    .line 562
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v3, p0, Lcom/google/android/material/slider/a;->F:F

    .line 558
    iget v4, p0, Lcom/google/android/material/slider/a;->G:F

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Slider value("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 557
    const-string v1, ") must be greater or equal to valueFrom("

    .line 558
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 557
    const-string v1, "), and lower or equal to valueTo("

    .line 558
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/slider/a;->getMinSeparation()F

    move-result v0

    .line 569
    const-string v1, "minSeparation("

    cmpg-float v5, v0, v4

    if-ltz v5, :cond_d

    .line 573
    iget v5, p0, Lcom/google/android/material/slider/a;->K:F

    cmpl-float v6, v5, v4

    if-lez v6, :cond_8

    cmpl-float v6, v0, v4

    if-lez v6, :cond_8

    .line 574
    iget v6, p0, Lcom/google/android/material/slider/a;->c0:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    cmpg-float v5, v0, v5

    if-ltz v5, :cond_6

    .line 579
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/a;->j(F)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    .line 580
    :cond_6
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 582
    iget v5, p0, Lcom/google/android/material/slider/a;->K:F

    .line 581
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 580
    const-string v0, ") must be greater or equal and a multiple of stepSize("

    .line 581
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 575
    :cond_7
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 577
    iget v4, p0, Lcom/google/android/material/slider/a;->K:F

    .line 576
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 575
    const-string v0, ") cannot be set as a dimension when using stepSize("

    .line 576
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 588
    :cond_8
    :goto_2
    iget v0, p0, Lcom/google/android/material/slider/a;->K:F

    cmpl-float v1, v0, v4

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    float-to-int v1, v0

    int-to-float v1, v1

    .line 593
    const-string v2, "). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly."

    const-string v3, "a"

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_a

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Floating point value used for stepSize("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_a
    iget v0, p0, Lcom/google/android/material/slider/a;->F:F

    float-to-int v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_b

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Floating point value used for valueFrom("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_b
    iget v0, p0, Lcom/google/android/material/slider/a;->G:F

    float-to-int v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_c

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Floating point value used for valueTo("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_3
    const/4 v0, 0x0

    .line 614
    iput-boolean v0, p0, Lcom/google/android/material/slider/a;->P:Z

    return-void

    .line 570
    :cond_d
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 571
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 570
    const-string v0, ") must be greater or equal to 0"

    .line 571
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 526
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/android/material/slider/a;->G:F

    .line 527
    iget v3, p0, Lcom/google/android/material/slider/a;->F:F

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "valueTo("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 526
    const-string v1, ") must be greater than valueFrom("

    .line 527
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/android/material/slider/a;->F:F

    .line 520
    iget v3, p0, Lcom/google/android/material/slider/a;->G:F

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "valueFrom("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 519
    const-string v1, ") must be smaller than valueTo("

    .line 520
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    return-void
.end method
