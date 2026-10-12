.class public Lcom/google/android/material/shape/MaterialShapeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroidx/core/graphics/drawable/TintAwareDrawable;
.implements Lcom/google/android/material/shape/Shapeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/MaterialShapeDrawable$a;,
        Lcom/google/android/material/shape/MaterialShapeDrawable$CompatibilityShadowMode;
    }
.end annotation


# static fields
.field public static final SHADOW_COMPAT_MODE_ALWAYS:I = 0x2

.field public static final SHADOW_COMPAT_MODE_DEFAULT:I = 0x0

.field public static final SHADOW_COMPAT_MODE_NEVER:I = 0x1

.field public static final x:Landroid/graphics/Paint;


# instance fields
.field public a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

.field public final b:[Lcom/google/android/material/shape/ShapePath$c;

.field public final c:[Lcom/google/android/material/shape/ShapePath$c;

.field public final d:Ljava/util/BitSet;

.field public e:Z

.field public final f:Landroid/graphics/Matrix;

.field public final g:Landroid/graphics/Path;

.field public final h:Landroid/graphics/Path;

.field public final i:Landroid/graphics/RectF;

.field public final j:Landroid/graphics/RectF;

.field public final k:Landroid/graphics/Region;

.field public final l:Landroid/graphics/Region;

.field public m:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public final n:Landroid/graphics/Paint;

.field public final o:Landroid/graphics/Paint;

.field public final p:Lcom/google/android/material/shadow/ShadowRenderer;

.field public final q:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

.field public final r:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

.field public s:Landroid/graphics/PorterDuffColorFilter;

.field public t:Landroid/graphics/PorterDuffColorFilter;

.field public u:I

.field public final v:Landroid/graphics/RectF;

.field public w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 109
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->x:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 111
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 186
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 194
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/MaterialShapeDrawable$a;)V
    .locals 5

    .line 210
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    .line 118
    new-array v1, v0, [Lcom/google/android/material/shape/ShapePath$c;

    iput-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->b:[Lcom/google/android/material/shape/ShapePath$c;

    .line 119
    new-array v0, v0, [Lcom/google/android/material/shape/ShapePath$c;

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->c:[Lcom/google/android/material/shape/ShapePath$c;

    .line 120
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->d:Ljava/util/BitSet;

    .line 124
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->f:Landroid/graphics/Matrix;

    .line 125
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->g:Landroid/graphics/Path;

    .line 126
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->h:Landroid/graphics/Path;

    .line 127
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->i:Landroid/graphics/RectF;

    .line 128
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->j:Landroid/graphics/RectF;

    .line 129
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->k:Landroid/graphics/Region;

    .line 130
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->l:Landroid/graphics/Region;

    .line 133
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->n:Landroid/graphics/Paint;

    .line 134
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->o:Landroid/graphics/Paint;

    .line 136
    new-instance v3, Lcom/google/android/material/shadow/ShadowRenderer;

    invoke-direct {v3}, Lcom/google/android/material/shadow/ShadowRenderer;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->p:Lcom/google/android/material/shadow/ShadowRenderer;

    .line 142
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 143
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getInstance()Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    move-result-object v3

    goto :goto_0

    .line 144
    :cond_0
    new-instance v3, Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    invoke-direct {v3}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;-><init>()V

    :goto_0
    iput-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->r:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 150
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->v:Landroid/graphics/RectF;

    .line 152
    iput-boolean v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->w:Z

    .line 211
    iput-object p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    .line 212
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 213
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 214
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->g()Z

    .line 215
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->f([I)Z

    .line 217
    new-instance p1, Lcom/google/android/material/shape/a;

    invoke-direct {p1, p0}, Lcom/google/android/material/shape/a;-><init>(Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    iput-object p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->q:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 2
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 207
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable$a;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/elevation/ElevationOverlayProvider;)V

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/MaterialShapeDrawable$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/ShapePathModel;)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/ShapePathModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public static createWithElevationOverlay(Landroid/content/Context;)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 163
    invoke-static {p0, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->createWithElevationOverlay(Landroid/content/Context;F)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static createWithElevationOverlay(Landroid/content/Context;F)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 175
    sget v0, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 177
    const-string v1, "MaterialShapeDrawable"

    .line 176
    invoke-static {p0, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 178
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 179
    invoke-virtual {v1, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 180
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 181
    invoke-virtual {v1, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    return-object v1
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 4

    .line 1226
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculatePathForSize(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 1228
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->i:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1230
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v1, v1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->i:F

    .line 1231
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v3

    .line 1230
    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1232
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1236
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->v:Landroid/graphics/RectF;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public final b(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1292
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eqz p4, :cond_1

    .line 1294
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->compositeElevationOverlayIfNeeded(I)I

    move-result p1

    .line 1296
    :cond_1
    iput p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->u:I

    .line 1297
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p3, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p3

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 1277
    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    .line 1278
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->compositeElevationOverlayIfNeeded(I)I

    move-result p2

    .line 1279
    iput p2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->u:I

    if-eq p2, p1, :cond_3

    .line 1281
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1112
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->d:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-lez v0, :cond_0

    .line 1113
    const-string v0, "MaterialShapeDrawable"

    const-string v1, "Compatibility shadow requested but can\'t be drawn for all operations in this shape."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->r:I

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->g:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->p:Lcom/google/android/material/shadow/ShadowRenderer;

    if-eqz v0, :cond_1

    .line 1119
    invoke-virtual {v2}, Lcom/google/android/material/shadow/ShadowRenderer;->getShadowPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_2

    .line 1124
    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->b:[Lcom/google/android/material/shape/ShapePath$c;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v4, v4, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->q:I

    invoke-virtual {v3, v2, v4, p1}, Lcom/google/android/material/shape/ShapePath$c;->draw(Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V

    .line 1125
    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->c:[Lcom/google/android/material/shape/ShapePath$c;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v4, v4, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->q:I

    invoke-virtual {v3, v2, v4, p1}, Lcom/google/android/material/shape/ShapePath$c;->draw(Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1128
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->w:Z

    if-eqz v0, :cond_3

    .line 1129
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShadowOffsetX()I

    move-result v0

    .line 1130
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShadowOffsetY()I

    move-result v2

    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    .line 1132
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1133
    sget-object v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float v0, v0

    int-to-float v1, v2

    .line 1134
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    return-void
.end method

.method public final calculatePathForSize(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 7
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1165
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v2, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->a:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget v3, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->j:F

    iget-object v5, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->q:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->r:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V

    return-void
.end method

.method public compositeElevationOverlayIfNeeded(I)I
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 622
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getZ()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getParentAbsoluteElevation()F

    move-result v1

    add-float/2addr v1, v0

    .line 623
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->b:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlayIfNeeded(IF)I

    move-result p1

    :cond_0
    return p1
.end method

.method public final d(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)V
    .locals 1

    .line 1054
    invoke-virtual {p4, p5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1056
    invoke-virtual {p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object p3

    invoke-interface {p3, p5}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result p3

    iget-object p4, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget p4, p4, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->j:F

    mul-float p3, p3, p4

    .line 1058
    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    .line 1060
    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 958
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->n:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->s:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 959
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    .line 960
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->l:I

    ushr-int/lit8 v1, v0, 0x7

    add-int/2addr v0, v1

    mul-int v0, v0, v6

    ushr-int/lit8 v0, v0, 0x8

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 962
    iget-object v7, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->o:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->t:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 963
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->k:F

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 965
    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    .line 966
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->l:I

    ushr-int/lit8 v1, v0, 0x7

    add-int/2addr v0, v1

    mul-int v0, v0, v8

    ushr-int/lit8 v0, v0, 0x8

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 968
    iget-boolean v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->e:Z

    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->g:Landroid/graphics/Path;

    if-eqz v0, :cond_2

    .line 1346
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->e()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 1347
    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    div-float/2addr v0, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    neg-float v0, v0

    .line 1179
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v5

    new-instance v9, Lcom/google/android/material/shape/b;

    invoke-direct {v9, v0}, Lcom/google/android/material/shape/b;-><init>(F)V

    .line 1180
    invoke-virtual {v5, v9}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withTransformedCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->m:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 1193
    iget-object v5, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v5, v5, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->j:F

    .line 1354
    iget-object v9, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->j:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1346
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->e()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1347
    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float/2addr v1, v4

    .line 1356
    :cond_1
    invoke-virtual {v9, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 1196
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->h:Landroid/graphics/Path;

    .line 1193
    iget-object v4, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->r:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    invoke-virtual {v4, v0, v5, v9, v1}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 970
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->a(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    const/4 v0, 0x0

    .line 971
    iput-boolean v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->e:Z

    .line 932
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->p:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_6

    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->q:I

    if-lez v0, :cond_6

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    .line 934
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->requiresCompatShadow()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 991
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1084
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShadowOffsetX()I

    move-result v1

    .line 1085
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShadowOffsetY()I

    move-result v4

    int-to-float v1, v1

    int-to-float v4, v4

    .line 1101
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 993
    iget-boolean v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->w:Z

    if-nez v1, :cond_4

    .line 994
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->c(Landroid/graphics/Canvas;)V

    .line 995
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1

    .line 1001
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->v:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 1002
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v5, v9

    float-to-int v5, v5

    if-ltz v4, :cond_5

    if-ltz v5, :cond_5

    .line 1013
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v9

    float-to-int v9, v9

    iget-object v10, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v10, v10, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->q:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v9

    add-int/2addr v10, v4

    .line 1014
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    iget-object v9, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v9, v9, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->q:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v1

    add-int/2addr v9, v5

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1012
    invoke-static {v10, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1016
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1020
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v10, v10, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->q:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v4

    int-to-float v4, v9

    .line 1021
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v10, v10, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->q:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v5

    int-to-float v5, v9

    neg-float v9, v4

    neg-float v10, v5

    .line 1022
    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1023
    invoke-virtual {p0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->c(Landroid/graphics/Canvas;)V

    const/4 v1, 0x0

    .line 1024
    invoke-virtual {p1, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1027
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1030
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 1005
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid shadow bounds. Check that the treatments result in a valid path."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 939
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->u:Landroid/graphics/Paint$Style;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v1, v4, :cond_8

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne v1, v4, :cond_7

    goto :goto_2

    :cond_7
    move-object v1, p1

    goto :goto_3

    .line 1065
    :cond_8
    :goto_2
    iget-object v4, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->a:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)V

    .line 978
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->e()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 979
    invoke-virtual {p0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawStrokeShape(Landroid/graphics/Canvas;)V

    .line 982
    :cond_9
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 983
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1044
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v5, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->a:Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)V

    return-void
.end method

.method public drawStrokeShape(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1078
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->o:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->h:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->m:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 1354
    iget-object v5, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->j:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1346
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1347
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1356
    :goto_0
    invoke-virtual {v5, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    move-object v0, p0

    move-object v1, p1

    .line 1078
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)V

    return-void
.end method

.method public final e()Z
    .locals 2

    .line 945
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->u:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->o:Landroid/graphics/Paint;

    .line 947
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final f([I)Z
    .locals 5

    .line 1323
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->c:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1324
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->n:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 1325
    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1327
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1332
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->d:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 1333
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->o:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    .line 1334
    iget-object v4, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v4, v4, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->d:Landroid/content/res/ColorStateList;

    .line 1335
    invoke-virtual {v4, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eq v3, p1, :cond_1

    .line 1337
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return v1

    :cond_1
    return v0
.end method

.method public final g()Z
    .locals 7

    .line 1240
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->s:Landroid/graphics/PorterDuffColorFilter;

    .line 1241
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 1242
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->f:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->g:Landroid/graphics/PorterDuff$Mode;

    .line 1243
    iget-object v4, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->n:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v2, v4, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->b(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->s:Landroid/graphics/PorterDuffColorFilter;

    .line 1248
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->e:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->g:Landroid/graphics/PorterDuff$Mode;

    .line 1249
    iget-object v4, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->o:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v2, v4, v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;->b(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 1254
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-boolean v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->t:Z

    if-eqz v3, :cond_0

    .line 1255
    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->f:Landroid/content/res/ColorStateList;

    .line 1256
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 1255
    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->p:Lcom/google/android/material/shadow/ShadowRenderer;

    invoke-virtual {v3, v2}, Lcom/google/android/material/shadow/ShadowRenderer;->setShadowColor(I)V

    .line 1258
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->s:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0, v2}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 1259
    invoke-static {v1, v0}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return v6

    :cond_2
    :goto_0
    return v5
.end method

.method public getAlpha()I
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->l:I

    return v0
.end method

.method public getBottomLeftCornerResolvedSize()F
    .locals 2

    .line 1378
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->a:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 1380
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    .line 1381
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public getBottomRightCornerResolvedSize()F
    .locals 2

    .line 1386
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->a:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 1388
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    .line 1389
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public getBoundsAsRectF()Landroid/graphics/RectF;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->i:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->n:F

    return v0
.end method

.method public getFillColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->c:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getInterpolation()F
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->j:F

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 3
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1203
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1208
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isRoundRect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1209
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTopLeftCornerResolvedSize()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v1, v1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->j:F

    mul-float v0, v0, v1

    .line 1210
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    .line 1214
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->g:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->a(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 1215
    invoke-virtual {v1}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_3

    .line 1217
    :cond_2
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 523
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->h:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    .line 527
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getPaintStyle()Landroid/graphics/Paint$Style;
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->u:Landroid/graphics/Paint$Style;

    return-object v0
.end method

.method public getParentAbsoluteElevation()F
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->m:F

    return v0
.end method

.method public getPathForSize(IILandroid/graphics/Path;)V
    .locals 2
    .param p3    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1155
    new-instance v0, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v0, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculatePathForSize(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    return-void
.end method

.method public getResolvedTintColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 448
    iget v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->u:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->i:F

    return v0
.end method

.method public getShadowCompatRotation()I
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->s:I

    return v0
.end method

.method public getShadowCompatibilityMode()I
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->p:I

    return v0
.end method

.method public getShadowElevation()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 743
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getShadowOffsetX()I
    .locals 5

    .line 1140
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->r:I

    int-to-double v1, v1

    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->s:I

    int-to-double v3, v0

    .line 1142
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v3, v3, v1

    double-to-int v0, v3

    return v0
.end method

.method public getShadowOffsetY()I
    .locals 5

    .line 1147
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->r:I

    int-to-double v1, v1

    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->s:I

    int-to-double v3, v0

    .line 1149
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v3, v3, v1

    double-to-int v0, v3

    return v0
.end method

.method public getShadowRadius()I
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->q:I

    return v0
.end method

.method public getShadowVerticalOffset()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 765
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->r:I

    return v0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->a:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method public getShapedViewModel()Lcom/google/android/material/shape/ShapePathModel;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 297
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    .line 298
    instance-of v1, v0, Lcom/google/android/material/shape/ShapePathModel;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/material/shape/ShapePathModel;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->d:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getStrokeTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->e:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->k:F

    return v0
.end method

.method public getTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->f:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTopLeftCornerResolvedSize()F
    .locals 2

    .line 1362
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->a:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 1364
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    .line 1365
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public getTopRightCornerResolvedSize()F
    .locals 2

    .line 1370
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->a:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 1372
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    .line 1373
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public getTranslationZ()F
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->o:F

    return v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    .line 479
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 480
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->k:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 481
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->g:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->a(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 482
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->l:Landroid/graphics/Region;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 483
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    return-object v1
.end method

.method public getZ()F
    .locals 2

    .line 715
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTranslationZ()F

    move-result v1

    add-float/2addr v1, v0

    return v1
.end method

.method public final h()V
    .locals 4

    .line 728
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getZ()F

    move-result v0

    .line 729
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v2, v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->q:I

    .line 730
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v0, v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->r:I

    .line 732
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->g()Z

    .line 879
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public initializeElevationOverlay(Landroid/content/Context;)V
    .locals 2

    .line 615
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    new-instance v1, Lcom/google/android/material/elevation/ElevationOverlayProvider;

    invoke-direct {v1, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->b:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    .line 616
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->h()V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    .line 870
    iput-boolean v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->e:Z

    .line 871
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isElevationOverlayEnabled()Z
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->b:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {v0}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->isThemeElevationOverlayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isElevationOverlayInitialized()Z
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->b:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPointInTransparentRegion(II)Z
    .locals 1

    .line 513
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    return p1
.end method

.method public isRoundRect()Z
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1400
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->a:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public isShadowEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->p:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 1302
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 1303
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 1304
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 1305
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    .line 1306
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

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

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 243
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable$a;-><init>(Lcom/google/android/material/shape/MaterialShapeDrawable$a;)V

    .line 244
    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    .line 952
    iput-boolean v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->e:Z

    .line 953
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 1

    .line 1311
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->f([I)Z

    move-result p1

    .line 1312
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->g()Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 1315
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_2
    return p1
.end method

.method public requiresCompatShadow()Z
    .locals 2

    .line 843
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 844
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isRoundRect()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->g:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isConvex()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 465
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->l:I

    if-eq v1, p1, :cond_0

    .line 466
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->l:I

    .line 879
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 473
    iget-object p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 879
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setCornerSize(F)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->a:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public setCornerSize(Lcom/google/android/material/shape/CornerSize;)V
    .locals 1
    .param p1    # Lcom/google/android/material/shape/CornerSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 500
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->a:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public setEdgeIntersectionCheckEnable(Z)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->r:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    iput-boolean p1, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->l:Z

    return-void
.end method

.method public setElevation(F)V
    .locals 2

    .line 682
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->n:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 683
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->n:F

    .line 684
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->h()V

    :cond_0
    return-void
.end method

.method public setFillColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 307
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 308
    iput-object p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->c:Landroid/content/res/ColorStateList;

    .line 309
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setInterpolation(F)V
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->j:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 648
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->j:F

    const/4 p1, 0x1

    .line 649
    iput-boolean p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->e:Z

    .line 650
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2

    .line 540
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->h:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 541
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->h:Landroid/graphics/Rect;

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->h:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 545
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    return-void
.end method

.method public setPaintStyle(Landroid/graphics/Paint$Style;)V
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iput-object p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->u:Landroid/graphics/Paint$Style;

    .line 879
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setParentAbsoluteElevation(F)V
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->m:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 662
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->m:F

    .line 663
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->h()V

    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 2

    .line 862
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->i:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 863
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->i:F

    .line 864
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setShadowBitmapDrawingEnable(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 770
    iput-boolean p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->w:Z

    return-void
.end method

.method public setShadowColor(I)V
    .locals 1

    .line 906
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->p:Lcom/google/android/material/shadow/ShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shadow/ShadowRenderer;->setShadowColor(I)V

    .line 907
    iget-object p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->t:Z

    .line 879
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setShadowCompatRotation(I)V
    .locals 2

    .line 812
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->s:I

    if-eq v1, p1, :cond_0

    .line 813
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->s:I

    .line 879
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setShadowCompatibilityMode(I)V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->p:I

    if-eq v1, p1, :cond_0

    .line 560
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->p:I

    .line 879
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setShadowElevation(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-float p1, p1

    .line 754
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    return-void
.end method

.method public setShadowEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    .line 590
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatibilityMode(I)V

    return-void
.end method

.method public setShadowRadius(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 835
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->q:I

    return-void
.end method

.method public setShadowVerticalOffset(I)V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 789
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->r:I

    if-eq v1, p1, :cond_0

    .line 790
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->r:I

    .line 879
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 261
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iput-object p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->a:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 262
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    return-void
.end method

.method public setShapedViewModel(Lcom/google/android/material/shape/ShapePathModel;)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/ShapePathModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public setStroke(FI)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 409
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeWidth(F)V

    .line 410
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStroke(FLandroid/content/res/ColorStateList;)V
    .locals 0
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 420
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeWidth(F)V

    .line 421
    invoke-virtual {p0, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 329
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->d:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 330
    iput-object p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->d:Landroid/content/res/ColorStateList;

    .line 331
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setStrokeTint(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 399
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iput-object p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->e:Landroid/content/res/ColorStateList;

    .line 389
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->g()Z

    .line 879
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->k:F

    .line 440
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 379
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 356
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iput-object p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->f:Landroid/content/res/ColorStateList;

    .line 357
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->g()Z

    .line 879
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 347
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-object v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->g:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    .line 348
    iput-object p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->g:Landroid/graphics/PorterDuff$Mode;

    .line 349
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->g()Z

    .line 879
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setTranslationZ(F)V
    .locals 2

    .line 703
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->o:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 704
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->o:F

    .line 705
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->h()V

    :cond_0
    return-void
.end method

.method public setUseTintColorForShadow(Z)V
    .locals 2

    .line 890
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->a:Lcom/google/android/material/shape/MaterialShapeDrawable$a;

    iget-boolean v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->t:Z

    if-eq v1, p1, :cond_0

    .line 891
    iput-boolean p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->t:Z

    .line 892
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setZ(F)V
    .locals 1

    .line 724
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTranslationZ(F)V

    return-void
.end method
