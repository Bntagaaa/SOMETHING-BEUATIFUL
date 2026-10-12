.class public Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.super Lcom/google/android/material/internal/VisibilityAwareImageButton;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/TintableBackgroundView;
.implements Landroidx/core/widget/TintableImageSourceView;
.implements Lcom/google/android/material/expandable/ExpandableTransformationWidget;
.implements Lcom/google/android/material/shape/Shapeable;
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Size;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
    }
.end annotation


# static fields
.field public static final NO_CUSTOM_SIZE:I = 0x0

.field public static final SIZE_AUTO:I = -0x1

.field public static final SIZE_MINI:I = 0x1

.field public static final SIZE_NORMAL:I

.field public static final q:I


# instance fields
.field public b:Landroid/content/res/ColorStateList;

.field public c:Landroid/graphics/PorterDuff$Mode;

.field public d:Landroid/content/res/ColorStateList;

.field public e:Landroid/graphics/PorterDuff$Mode;

.field public f:Landroid/content/res/ColorStateList;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public final l:Landroid/graphics/Rect;

.field public final m:Landroid/graphics/Rect;

.field public final n:Landroidx/appcompat/widget/AppCompatImageHelper;

.field public final o:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

.field public p:Lcom/google/android/material/floatingactionbutton/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_FloatingActionButton:I

    sput v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 197
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 201
    sget v0, Lcom/google/android/material/R$attr;->floatingActionButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v4, p3

    .line 207
    sget v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q:I

    move-object/from16 v1, p1

    invoke-static {v1, v2, v4, v5}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/material/internal/VisibilityAwareImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 188
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:Landroid/graphics/Rect;

    .line 189
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m:Landroid/graphics/Rect;

    .line 209
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 211
    sget-object v3, Lcom/google/android/material/R$styleable;->FloatingActionButton:[I

    const/4 v7, 0x0

    new-array v6, v7, [I

    .line 212
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 215
    sget v6, Lcom/google/android/material/R$styleable;->FloatingActionButton_backgroundTint:I

    .line 216
    invoke-static {v1, v3, v6}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Landroid/content/res/ColorStateList;

    .line 218
    sget v6, Lcom/google/android/material/R$styleable;->FloatingActionButton_backgroundTintMode:I

    const/4 v8, -0x1

    .line 220
    invoke-virtual {v3, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    const/4 v9, 0x0

    .line 219
    invoke-static {v6, v9}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/PorterDuff$Mode;

    .line 221
    sget v6, Lcom/google/android/material/R$styleable;->FloatingActionButton_rippleColor:I

    .line 222
    invoke-static {v1, v3, v6}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/content/res/ColorStateList;

    .line 224
    sget v6, Lcom/google/android/material/R$styleable;->FloatingActionButton_fabSize:I

    invoke-virtual {v3, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:I

    .line 225
    sget v6, Lcom/google/android/material/R$styleable;->FloatingActionButton_fabCustomSize:I

    .line 226
    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:I

    .line 227
    sget v6, Lcom/google/android/material/R$styleable;->FloatingActionButton_borderWidth:I

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 228
    sget v8, Lcom/google/android/material/R$styleable;->FloatingActionButton_elevation:I

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    .line 229
    sget v11, Lcom/google/android/material/R$styleable;->FloatingActionButton_hoveredFocusedTranslationZ:I

    .line 230
    invoke-virtual {v3, v11, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    .line 231
    sget v12, Lcom/google/android/material/R$styleable;->FloatingActionButton_pressedTranslationZ:I

    .line 232
    invoke-virtual {v3, v12, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    .line 233
    sget v12, Lcom/google/android/material/R$styleable;->FloatingActionButton_useCompatPadding:I

    invoke-virtual {v3, v12, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    iput-boolean v12, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:Z

    .line 235
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/google/android/material/R$dimen;->mtrl_fab_min_touch_target:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 237
    sget v13, Lcom/google/android/material/R$styleable;->FloatingActionButton_maxImageSize:I

    invoke-virtual {v3, v13, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setMaxImageSize(I)V

    .line 239
    sget v13, Lcom/google/android/material/R$styleable;->FloatingActionButton_showMotionSpec:I

    .line 240
    invoke-static {v1, v3, v13}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v13

    .line 241
    sget v14, Lcom/google/android/material/R$styleable;->FloatingActionButton_hideMotionSpec:I

    .line 242
    invoke-static {v1, v3, v14}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v14

    .line 243
    sget-object v15, Lcom/google/android/material/shape/ShapeAppearanceModel;->PILL:Lcom/google/android/material/shape/CornerSize;

    .line 244
    invoke-static {v1, v2, v4, v5, v15}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    .line 248
    sget v5, Lcom/google/android/material/R$styleable;->FloatingActionButton_ensureMinTouchTargetSize:I

    .line 249
    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 251
    sget v15, Lcom/google/android/material/R$styleable;->FloatingActionButton_android_enabled:I

    const/16 p1, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v15, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    invoke-virtual {v0, v15}, Landroid/view/View;->setEnabled(Z)V

    .line 253
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 255
    new-instance v3, Landroidx/appcompat/widget/AppCompatImageHelper;

    invoke-direct {v3, v0}, Landroidx/appcompat/widget/AppCompatImageHelper;-><init>(Landroid/widget/ImageView;)V

    iput-object v3, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n:Landroidx/appcompat/widget/AppCompatImageHelper;

    .line 256
    invoke-virtual {v3, v2, v4}, Landroidx/appcompat/widget/AppCompatImageHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 258
    new-instance v2, Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    invoke-direct {v2, v0}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;-><init>(Lcom/google/android/material/expandable/ExpandableWidget;)V

    iput-object v2, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    .line 260
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/material/floatingactionbutton/m;->i(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 261
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Landroid/content/res/ColorStateList;

    iget-object v3, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/content/res/ColorStateList;

    .line 262
    check-cast v1, Lcom/google/android/material/floatingactionbutton/n;

    .line 231
    iget-object v15, v1, Lcom/google/android/material/floatingactionbutton/m;->a:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {v15}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 232
    new-instance v9, Lcom/google/android/material/floatingactionbutton/n$a;

    .line 256
    invoke-direct {v9, v15}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 63
    iput-object v9, v1, Lcom/google/android/material/floatingactionbutton/m;->b:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 64
    invoke-virtual {v9, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz v3, :cond_0

    .line 66
    iget-object v9, v1, Lcom/google/android/material/floatingactionbutton/m;->b:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v9, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 68
    :cond_0
    iget-object v3, v1, Lcom/google/android/material/floatingactionbutton/m;->b:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v9, v1, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    if-lez v6, :cond_2

    .line 216
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 217
    new-instance v9, Lcom/google/android/material/floatingactionbutton/d;

    iget-object v15, v1, Lcom/google/android/material/floatingactionbutton/m;->a:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {v15}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v9, v15}, Lcom/google/android/material/floatingactionbutton/d;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 218
    sget v15, Lcom/google/android/material/R$color;->design_fab_stroke_top_outer_color:I

    .line 219
    invoke-static {v3, v15}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v15

    sget v7, Lcom/google/android/material/R$color;->design_fab_stroke_top_inner_color:I

    .line 220
    invoke-static {v3, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    move-object/from16 p2, v4

    sget v4, Lcom/google/android/material/R$color;->design_fab_stroke_end_inner_color:I

    .line 221
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    sget v0, Lcom/google/android/material/R$color;->design_fab_stroke_end_outer_color:I

    .line 222
    invoke-static {v3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 117
    iput v15, v9, Lcom/google/android/material/floatingactionbutton/d;->i:I

    .line 118
    iput v7, v9, Lcom/google/android/material/floatingactionbutton/d;->j:I

    .line 119
    iput v4, v9, Lcom/google/android/material/floatingactionbutton/d;->k:I

    .line 120
    iput v0, v9, Lcom/google/android/material/floatingactionbutton/d;->l:I

    int-to-float v0, v6

    .line 223
    invoke-virtual {v9, v0}, Lcom/google/android/material/floatingactionbutton/d;->setBorderWidth(F)V

    if-eqz v2, :cond_1

    .line 99
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    iget v3, v9, Lcom/google/android/material/floatingactionbutton/d;->m:I

    invoke-virtual {v2, v0, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, v9, Lcom/google/android/material/floatingactionbutton/d;->m:I

    .line 101
    :cond_1
    iput-object v2, v9, Lcom/google/android/material/floatingactionbutton/d;->p:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, v9, Lcom/google/android/material/floatingactionbutton/d;->n:Z

    .line 103
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 72
    iput-object v9, v1, Lcom/google/android/material/floatingactionbutton/m;->d:Lcom/google/android/material/floatingactionbutton/d;

    .line 73
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    iget-object v2, v1, Lcom/google/android/material/floatingactionbutton/m;->d:Lcom/google/android/material/floatingactionbutton/d;

    .line 74
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    iget-object v3, v1, Lcom/google/android/material/floatingactionbutton/m;->b:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v4, p1

    const/16 v16, 0x1

    aput-object v3, v4, v16

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v2, v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 p2, v4

    const/4 v0, 0x0

    .line 76
    iput-object v0, v1, Lcom/google/android/material/floatingactionbutton/m;->d:Lcom/google/android/material/floatingactionbutton/d;

    .line 77
    iget-object v2, v1, Lcom/google/android/material/floatingactionbutton/m;->b:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 80
    :goto_0
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    .line 82
    invoke-static/range {p2 .. p2}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-direct {v3, v4, v2, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, v1, Lcom/google/android/material/floatingactionbutton/m;->c:Landroid/graphics/drawable/Drawable;

    .line 84
    iput-object v3, v1, Lcom/google/android/material/floatingactionbutton/m;->e:Landroid/graphics/drawable/LayerDrawable;

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 231
    iput v12, v0, Lcom/google/android/material/floatingactionbutton/m;->k:I

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 242
    iget v1, v0, Lcom/google/android/material/floatingactionbutton/m;->h:F

    cmpl-float v1, v1, v8

    if-eqz v1, :cond_3

    .line 243
    iput v8, v0, Lcom/google/android/material/floatingactionbutton/m;->h:F

    .line 244
    iget v1, v0, Lcom/google/android/material/floatingactionbutton/m;->i:F

    iget v2, v0, Lcom/google/android/material/floatingactionbutton/m;->j:F

    invoke-virtual {v0, v8, v1, v2}, Lcom/google/android/material/floatingactionbutton/m;->f(FFF)V

    .line 265
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 261
    iget v1, v0, Lcom/google/android/material/floatingactionbutton/m;->i:F

    cmpl-float v1, v1, v11

    if-eqz v1, :cond_4

    .line 262
    iput v11, v0, Lcom/google/android/material/floatingactionbutton/m;->i:F

    .line 263
    iget v1, v0, Lcom/google/android/material/floatingactionbutton/m;->h:F

    iget v2, v0, Lcom/google/android/material/floatingactionbutton/m;->j:F

    invoke-virtual {v0, v1, v11, v2}, Lcom/google/android/material/floatingactionbutton/m;->f(FFF)V

    .line 266
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 268
    iget v1, v0, Lcom/google/android/material/floatingactionbutton/m;->j:F

    cmpl-float v1, v1, v10

    if-eqz v1, :cond_5

    .line 269
    iput v10, v0, Lcom/google/android/material/floatingactionbutton/m;->j:F

    .line 270
    iget v1, v0, Lcom/google/android/material/floatingactionbutton/m;->h:F

    iget v2, v0, Lcom/google/android/material/floatingactionbutton/m;->i:F

    invoke-virtual {v0, v1, v2, v10}, Lcom/google/android/material/floatingactionbutton/m;->f(FFF)V

    .line 267
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 338
    iput-object v13, v0, Lcom/google/android/material/floatingactionbutton/m;->m:Lcom/google/android/material/animation/MotionSpec;

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 347
    iput-object v14, v0, Lcom/google/android/material/floatingactionbutton/m;->n:Lcom/google/android/material/animation/MotionSpec;

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 359
    iput-boolean v5, v0, Lcom/google/android/material/floatingactionbutton/m;->f:Z

    .line 271
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public addOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 638
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/m;->addOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 2
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 606
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 388
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/m;->s:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 389
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/floatingactionbutton/m;->s:Ljava/util/ArrayList;

    .line 391
    :cond_0
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/m;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTransformationCallback(Lcom/google/android/material/animation/TransformationCallback;)V
    .locals 2
    .param p1    # Lcom/google/android/material/animation/TransformationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/animation/TransformationCallback<",
            "+",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;)V"
        }
    .end annotation

    .line 1376
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/animation/TransformationCallback;)V

    .line 679
    iget-object p1, v0, Lcom/google/android/material/floatingactionbutton/m;->u:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 680
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lcom/google/android/material/floatingactionbutton/m;->u:Ljava/util/ArrayList;

    .line 682
    :cond_0
    iget-object p1, v0, Lcom/google/android/material/floatingactionbutton/m;->u:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Lcom/google/android/material/floatingactionbutton/m;
    .locals 2

    .line 1461
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p:Lcom/google/android/material/floatingactionbutton/n;

    if-nez v0, :cond_0

    .line 1470
    new-instance v0, Lcom/google/android/material/floatingactionbutton/n;

    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    .line 53
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/floatingactionbutton/m;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/shadow/ShadowViewDelegate;)V

    .line 1462
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p:Lcom/google/android/material/floatingactionbutton/n;

    .line 1464
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p:Lcom/google/android/material/floatingactionbutton/n;

    return-object v0
.end method

.method public final c(I)I
    .locals 3

    .line 799
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:I

    if-eqz v0, :cond_0

    return v0

    .line 803
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    .line 816
    sget p1, Lcom/google/android/material/R$dimen;->design_fab_size_normal:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 813
    :cond_1
    sget p1, Lcom/google/android/material/R$dimen;->design_fab_size_mini:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 807
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 808
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 809
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x1d6

    if-ge p1, v0, :cond_3

    .line 810
    invoke-virtual {p0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c(I)I

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    .line 811
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c(I)I

    move-result p1

    return p1
.end method

.method public clearCustomSize()V
    .locals 1

    const/4 v0, 0x0

    .line 791
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCustomSize(I)V

    return-void
.end method

.method public final d(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V
    .locals 4

    .line 634
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 732
    :cond_0
    new-instance v1, Lcom/google/android/material/floatingactionbutton/f;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/floatingactionbutton/f;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    move-object p1, v1

    .line 814
    :goto_0
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 816
    iget v1, v0, Lcom/google/android/material/floatingactionbutton/m;->r:I

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 819
    :cond_1
    iget v1, v0, Lcom/google/android/material/floatingactionbutton/m;->r:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_5

    .line 425
    :cond_3
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/m;->l:Landroid/animation/Animator;

    if-eqz v1, :cond_4

    .line 426
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 902
    :cond_4
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_7

    .line 431
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/m;->n:Lcom/google/android/material/animation/MotionSpec;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 433
    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/google/android/material/floatingactionbutton/m;->b(Lcom/google/android/material/animation/MotionSpec;FFF)Landroid/animation/AnimatorSet;

    move-result-object v1

    goto :goto_2

    :cond_5
    const v1, 0x3ecccccd    # 0.4f

    .line 440
    invoke-virtual {v0, v2, v1, v1}, Lcom/google/android/material/floatingactionbutton/m;->c(FFF)Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 444
    :goto_2
    new-instance v2, Lcom/google/android/material/floatingactionbutton/g;

    invoke-direct {v2, v0, p2, p1}, Lcom/google/android/material/floatingactionbutton/g;-><init>(Lcom/google/android/material/floatingactionbutton/m;ZLcom/google/android/material/floatingactionbutton/f;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 475
    iget-object p1, v0, Lcom/google/android/material/floatingactionbutton/m;->t:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    .line 476
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    .line 477
    invoke-virtual {v1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    .line 480
    :cond_6
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_7
    if-eqz p2, :cond_8

    const/16 v0, 0x8

    goto :goto_4

    :cond_8
    const/4 v0, 0x4

    .line 483
    :goto_4
    invoke-virtual {v1, v0, p2}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    if-eqz p1, :cond_9

    .line 485
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/m$e;->onHidden()V

    :cond_9
    :goto_5
    return-void
.end method

.method public drawableStateChanged()V
    .locals 4

    .line 834
    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    .line 835
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    check-cast v0, Lcom/google/android/material/floatingactionbutton/n;

    .line 182
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_4

    .line 183
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 183
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 184
    iget v2, v0, Lcom/google/android/material/floatingactionbutton/m;->h:F

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setElevation(F)V

    .line 185
    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    iget v0, v0, Lcom/google/android/material/floatingactionbutton/m;->j:F

    invoke-virtual {v1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationZ(F)V

    return-void

    .line 187
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->isHovered()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {v1, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationZ(F)V

    return-void

    .line 188
    :cond_2
    :goto_0
    iget v0, v0, Lcom/google/android/material/floatingactionbutton/m;->i:F

    invoke-virtual {v1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationZ(F)V

    return-void

    .line 193
    :cond_3
    invoke-virtual {v1, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setElevation(F)V

    .line 194
    invoke-virtual {v1, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationZ(F)V

    return-void

    .line 835
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final e(Landroid/graphics/Rect;)V
    .locals 3

    .line 903
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 904
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 905
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 906
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public final f()V
    .locals 4

    .line 474
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_1

    .line 480
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 484
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 485
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/graphics/PorterDuff$Mode;

    if-nez v2, :cond_2

    .line 487
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 491
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 492
    invoke-static {v1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final g(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V
    .locals 8

    .line 602
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 732
    :cond_0
    new-instance v1, Lcom/google/android/material/floatingactionbutton/f;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/floatingactionbutton/f;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    move-object p1, v1

    .line 804
    :goto_0
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 806
    iget v1, v0, Lcom/google/android/material/floatingactionbutton/m;->r:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    goto :goto_1

    .line 809
    :cond_1
    iget v1, v0, Lcom/google/android/material/floatingactionbutton/m;->r:I

    if-eq v1, v3, :cond_2

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    goto/16 :goto_9

    .line 496
    :cond_3
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/m;->l:Landroid/animation/Animator;

    if-eqz v1, :cond_4

    .line 497
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 500
    :cond_4
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/m;->m:Lcom/google/android/material/animation/MotionSpec;

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 902
    :goto_3
    iget-object v4, v0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->isInEditMode()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    .line 502
    :goto_4
    iget-object v5, v0, Lcom/google/android/material/floatingactionbutton/m;->A:Landroid/graphics/Matrix;

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_d

    .line 503
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    .line 505
    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    const v3, 0x3ecccccd    # 0.4f

    if-eqz v1, :cond_7

    const v7, 0x3ecccccd    # 0.4f

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    .line 506
    :goto_5
    invoke-virtual {v4, v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    if-eqz v1, :cond_8

    const v7, 0x3ecccccd    # 0.4f

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    .line 507
    :goto_6
    invoke-virtual {v4, v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    if-eqz v1, :cond_9

    const v2, 0x3ecccccd    # 0.4f

    .line 288
    :cond_9
    iput v2, v0, Lcom/google/android/material/floatingactionbutton/m;->p:F

    .line 291
    invoke-virtual {v0, v2, v5}, Lcom/google/android/material/floatingactionbutton/m;->a(FLandroid/graphics/Matrix;)V

    .line 292
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 513
    :cond_a
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/m;->m:Lcom/google/android/material/animation/MotionSpec;

    if-eqz v1, :cond_b

    .line 515
    invoke-virtual {v0, v1, v6, v6, v6}, Lcom/google/android/material/floatingactionbutton/m;->b(Lcom/google/android/material/animation/MotionSpec;FFF)Landroid/animation/AnimatorSet;

    move-result-object v1

    goto :goto_7

    .line 522
    :cond_b
    invoke-virtual {v0, v6, v6, v6}, Lcom/google/android/material/floatingactionbutton/m;->c(FFF)Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 526
    :goto_7
    new-instance v2, Lcom/google/android/material/floatingactionbutton/h;

    invoke-direct {v2, v0, p2, p1}, Lcom/google/android/material/floatingactionbutton/h;-><init>(Lcom/google/android/material/floatingactionbutton/m;ZLcom/google/android/material/floatingactionbutton/f;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 546
    iget-object p1, v0, Lcom/google/android/material/floatingactionbutton/m;->s:Ljava/util/ArrayList;

    if-eqz p1, :cond_c

    .line 547
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    .line 548
    invoke-virtual {v1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_8

    .line 551
    :cond_c
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 553
    :cond_d
    invoke-virtual {v4, v2, p2}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 554
    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    .line 555
    invoke-virtual {v4, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    .line 556
    invoke-virtual {v4, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    .line 288
    iput v6, v0, Lcom/google/android/material/floatingactionbutton/m;->p:F

    .line 291
    invoke-virtual {v0, v6, v5}, Lcom/google/android/material/floatingactionbutton/m;->a(FLandroid/graphics/Matrix;)V

    .line 292
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    if-eqz p1, :cond_e

    .line 559
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/m$e;->onShown()V

    :cond_e
    :goto_9
    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;"
        }
    .end annotation

    .line 351
    new-instance v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;

    invoke-direct {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;-><init>()V

    return-object v0
.end method

.method public getCompatElevation()F
    .locals 1

    .line 1225
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/m;->getElevation()F

    move-result v0

    return v0
.end method

.method public getCompatHoveredFocusedTranslationZ()F
    .locals 1

    .line 1261
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 253
    iget v0, v0, Lcom/google/android/material/floatingactionbutton/m;->i:F

    return v0
.end method

.method public getCompatPressedTranslationZ()F
    .locals 1

    .line 1298
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 257
    iget v0, v0, Lcom/google/android/material/floatingactionbutton/m;->j:F

    return v0
.end method

.method public getContentBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 912
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 712
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/m;->e:Landroid/graphics/drawable/LayerDrawable;

    return-object v0
.end method

.method public getContentRect(Landroid/graphics/Rect;)Z
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 884
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 885
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 886
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public getCustomSize()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 781
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:I

    return v0
.end method

.method public getExpandedComponentIdHint()I
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    invoke-virtual {v0}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->getExpandedComponentIdHint()I

    move-result v0

    return v0
.end method

.method public getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1352
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 343
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/m;->n:Lcom/google/android/material/animation/MotionSpec;

    return-object v0
.end method

.method public getMeasuredContentRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 898
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 899
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getRippleColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRippleColorStateList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 538
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 329
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/m;->a:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 538
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method public getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1328
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 334
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/m;->m:Lcom/google/android/material/animation/MotionSpec;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 722
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:I

    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 423
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 442
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .line 690
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:Z

    return v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    .line 619
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    return-void
.end method

.method public hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 1
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 630
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V

    return-void
.end method

.method public isExpanded()Z
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    invoke-virtual {v0}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->isExpanded()Z

    move-result v0

    return v0
.end method

.method public isOrWillBeHidden()Z
    .locals 3

    .line 746
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 814
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 814
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 816
    iget v0, v0, Lcom/google/android/material/floatingactionbutton/m;->r:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 819
    :cond_0
    iget v0, v0, Lcom/google/android/material/floatingactionbutton/m;->r:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isOrWillBeShown()Z
    .locals 3

    .line 750
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 804
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 804
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 806
    iget v0, v0, Lcom/google/android/material/floatingactionbutton/m;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 809
    :cond_0
    iget v0, v0, Lcom/google/android/material/floatingactionbutton/m;->r:I

    if-eq v0, v2, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 840
    invoke-super {p0}, Landroid/widget/ImageButton;->jumpDrawablesToCurrentState()V

    .line 841
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 822
    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    .line 823
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 753
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/m;->b:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v1, :cond_0

    .line 754
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 828
    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    .line 829
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 763
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 763
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 764
    iget-object v2, v0, Lcom/google/android/material/floatingactionbutton/m;->B:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v2, :cond_0

    .line 765
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v1, 0x0

    .line 766
    iput-object v1, v0, Lcom/google/android/material/floatingactionbutton/m;->B:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .line 795
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c(I)I

    move-result v0

    .line 278
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i:I

    .line 279
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/m;->l()V

    .line 917
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 918
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_2

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 936
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    move p1, v0

    goto :goto_0

    .line 929
    :cond_2
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 917
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 918
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eq v1, v3, :cond_4

    if-eqz v1, :cond_5

    if-ne v1, v2, :cond_3

    move v0, p2

    goto :goto_1

    .line 936
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 929
    :cond_4
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 286
    :cond_5
    :goto_1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 289
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 862
    instance-of v0, p1, Lcom/google/android/material/stateful/ExtendableSavedState;

    if-nez v0, :cond_0

    .line 863
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 867
    :cond_0
    check-cast p1, Lcom/google/android/material/stateful/ExtendableSavedState;

    .line 868
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 870
    iget-object p1, p1, Lcom/google/android/material/stateful/ExtendableSavedState;->extendableStates:Landroidx/collection/SimpleArrayMap;

    const-string v0, "expandableWidgetHelper"

    .line 871
    invoke-virtual {p1, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 870
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 846
    invoke-super {p0}, Landroid/widget/ImageButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 848
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 851
    :cond_0
    new-instance v1, Lcom/google/android/material/stateful/ExtendableSavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/stateful/ExtendableSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 852
    iget-object v0, v1, Lcom/google/android/material/stateful/ExtendableSavedState;->extendableStates:Landroidx/collection/SimpleArrayMap;

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    .line 853
    invoke-virtual {v2}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    .line 852
    const-string v3, "expandableWidgetHelper"

    invoke-virtual {v0, v3, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 943
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContentRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 949
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public removeOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 642
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/m;->removeOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public removeOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 610
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 395
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/m;->s:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 400
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTransformationCallback(Lcom/google/android/material/animation/TransformationCallback;)V
    .locals 2
    .param p1    # Lcom/google/android/material/animation/TransformationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/animation/TransformationCallback<",
            "+",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;)V"
        }
    .end annotation

    .line 1385
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/animation/TransformationCallback;)V

    .line 686
    iget-object p1, v0, Lcom/google/android/material/floatingactionbutton/m;->u:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-void

    .line 691
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 507
    const-string p1, "FloatingActionButton"

    const-string v0, "Setting a custom background is not supported."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 497
    const-string p1, "FloatingActionButton"

    const-string v0, "Setting a custom background is not supported."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 502
    const-string p1, "FloatingActionButton"

    const-string v0, "Setting a custom background is not supported."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 374
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_2

    .line 375
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Landroid/content/res/ColorStateList;

    .line 376
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 216
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/m;->b:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {v1, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 219
    :cond_0
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/m;->d:Lcom/google/android/material/floatingactionbutton/d;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iget v2, v0, Lcom/google/android/material/floatingactionbutton/d;->m:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, v0, Lcom/google/android/material/floatingactionbutton/d;->m:I

    .line 101
    :cond_1
    iput-object p1, v0, Lcom/google/android/material/floatingactionbutton/d;->p:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, v0, Lcom/google/android/material/floatingactionbutton/d;->n:Z

    .line 103
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 401
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 402
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/PorterDuff$Mode;

    .line 403
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 225
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/m;->b:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setCompatElevation(F)V
    .locals 3

    .line 1237
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 242
    iget v1, v0, Lcom/google/android/material/floatingactionbutton/m;->h:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 243
    iput p1, v0, Lcom/google/android/material/floatingactionbutton/m;->h:F

    .line 244
    iget v1, v0, Lcom/google/android/material/floatingactionbutton/m;->i:F

    iget v2, v0, Lcom/google/android/material/floatingactionbutton/m;->j:F

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/material/floatingactionbutton/m;->f(FFF)V

    :cond_0
    return-void
.end method

.method public setCompatElevationResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1249
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatElevation(F)V

    return-void
.end method

.method public setCompatHoveredFocusedTranslationZ(F)V
    .locals 3

    .line 1274
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 261
    iget v1, v0, Lcom/google/android/material/floatingactionbutton/m;->i:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 262
    iput p1, v0, Lcom/google/android/material/floatingactionbutton/m;->i:F

    .line 263
    iget v1, v0, Lcom/google/android/material/floatingactionbutton/m;->h:F

    iget v2, v0, Lcom/google/android/material/floatingactionbutton/m;->j:F

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/material/floatingactionbutton/m;->f(FFF)V

    :cond_0
    return-void
.end method

.method public setCompatHoveredFocusedTranslationZResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1287
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatHoveredFocusedTranslationZ(F)V

    return-void
.end method

.method public setCompatPressedTranslationZ(F)V
    .locals 3

    .line 1310
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 268
    iget v1, v0, Lcom/google/android/material/floatingactionbutton/m;->j:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 269
    iput p1, v0, Lcom/google/android/material/floatingactionbutton/m;->j:F

    .line 270
    iget v1, v0, Lcom/google/android/material/floatingactionbutton/m;->h:F

    iget v2, v0, Lcom/google/android/material/floatingactionbutton/m;->i:F

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/material/floatingactionbutton/m;->f(FFF)V

    :cond_0
    return-void
.end method

.method public setCompatPressedTranslationZResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1322
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatPressedTranslationZ(F)V

    return-void
.end method

.method public setCustomSize(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    if-ltz p1, :cond_1

    .line 768
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:I

    if-eq p1, v0, :cond_0

    .line 769
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:I

    .line 770
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void

    .line 765
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Custom size must be non-negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setElevation(F)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 1213
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setElevation(F)V

    .line 1214
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 374
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/m;->b:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    :cond_0
    return-void
.end method

.method public setEnsureMinTouchTargetSize(Z)V
    .locals 1

    .line 559
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 355
    iget-boolean v0, v0, Lcom/google/android/material/floatingactionbutton/m;->f:Z

    if-eq p1, v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 359
    iput-boolean p1, v0, Lcom/google/android/material/floatingactionbutton/m;->f:Z

    .line 561
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setExpanded(Z)Z
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->setExpanded(Z)Z

    move-result p1

    return p1
.end method

.method public setExpandedComponentIdHint(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 657
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->setExpandedComponentIdHint(I)V

    return-void
.end method

.method public setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 1
    .param p1    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1361
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 347
    iput-object p1, v0, Lcom/google/android/material/floatingactionbutton/m;->n:Lcom/google/android/material/animation/MotionSpec;

    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 1370
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 519
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 520
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 521
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object p1

    .line 284
    iget v0, p1, Lcom/google/android/material/floatingactionbutton/m;->p:F

    .line 288
    iput v0, p1, Lcom/google/android/material/floatingactionbutton/m;->p:F

    .line 290
    iget-object v1, p1, Lcom/google/android/material/floatingactionbutton/m;->A:Landroid/graphics/Matrix;

    .line 291
    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/floatingactionbutton/m;->a(FLandroid/graphics/Matrix;)V

    .line 292
    iget-object p1, p1, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 522
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 513
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n:Landroidx/appcompat/widget/AppCompatImageHelper;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageHelper;->setImageResource(I)V

    .line 514
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f()V

    return-void
.end method

.method public setMaxImageSize(I)V
    .locals 2

    .line 577
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:I

    .line 578
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 275
    iget v1, v0, Lcom/google/android/material/floatingactionbutton/m;->q:I

    if-eq v1, p1, :cond_0

    .line 276
    iput p1, v0, Lcom/google/android/material/floatingactionbutton/m;->q:I

    .line 284
    iget p1, v0, Lcom/google/android/material/floatingactionbutton/m;->p:F

    .line 288
    iput p1, v0, Lcom/google/android/material/floatingactionbutton/m;->p:F

    .line 290
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/m;->A:Landroid/graphics/Matrix;

    .line 291
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/floatingactionbutton/m;->a(FLandroid/graphics/Matrix;)V

    .line 292
    iget-object p1, v0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public setRippleColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 328
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 342
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 343
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/content/res/ColorStateList;

    .line 344
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/m;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .line 1439
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setScaleX(F)V

    .line 1440
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object p1

    .line 703
    iget-object p1, p1, Lcom/google/android/material/floatingactionbutton/m;->u:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 704
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/m$d;

    .line 705
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/m$d;->onScaleChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .line 1445
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setScaleY(F)V

    .line 1446
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object p1

    .line 703
    iget-object p1, p1, Lcom/google/android/material/floatingactionbutton/m;->u:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 704
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/m$d;

    .line 705
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/m$d;->onScaleChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setShadowPaddingEnabled(Z)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1457
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 363
    iput-boolean p1, v0, Lcom/google/android/material/floatingactionbutton/m;->g:Z

    .line 364
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/m;->l()V

    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 531
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/m;->i(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 1
    .param p1    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1337
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 338
    iput-object p1, v0, Lcom/google/android/material/floatingactionbutton/m;->m:Lcom/google/android/material/animation/MotionSpec;

    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 1346
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    return-void
.end method

.method public setSize(I)V
    .locals 1

    const/4 v0, 0x0

    .line 707
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:I

    .line 708
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:I

    if-eq p1, v0, :cond_0

    .line 709
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:I

    .line 710
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 413
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 432
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 447
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 448
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d:Landroid/content/res/ColorStateList;

    .line 449
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f()V

    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 461
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 462
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/graphics/PorterDuff$Mode;

    .line 463
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f()V

    :cond_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    .line 1421
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setTranslationX(F)V

    .line 1422
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/m;->g()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 1427
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setTranslationY(F)V

    .line 1428
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/m;->g()V

    return-void
.end method

.method public setTranslationZ(F)V
    .locals 0

    .line 1433
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setTranslationZ(F)V

    .line 1434
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/m;->g()V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1

    .line 675
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:Z

    if-eq v0, p1, :cond_0

    .line 676
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:Z

    .line 677
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/n;

    .line 172
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/m;->l()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 567
    invoke-super {p0, p1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setVisibility(I)V

    return-void
.end method

.method public shouldEnsureMinTouchTargetSize()Z
    .locals 1

    .line 549
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Lcom/google/android/material/floatingactionbutton/m;

    move-result-object v0

    .line 355
    iget-boolean v0, v0, Lcom/google/android/material/floatingactionbutton/m;->f:Z

    return v0
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 587
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    return-void
.end method

.method public show(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 1
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 598
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V

    return-void
.end method
