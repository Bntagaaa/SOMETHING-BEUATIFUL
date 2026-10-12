.class Lcom/google/android/material/transition/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/u$a;,
        Lcom/google/android/material/transition/u$b;
    }
.end annotation


# static fields
.field public static final a:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 325
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/android/material/transition/u;->a:Landroid/graphics/RectF;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILandroid/view/View;)Landroid/view/View;
    .locals 2

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_1

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, p0, :cond_0

    return-object p1

    .line 288
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 289
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 290
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 295
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, " is not a valid ancestor"

    .line 0
    invoke-static {v0, p1}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 295
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 4

    const/4 v0, 0x2

    .line 307
    new-array v0, v0, [I

    .line 308
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 309
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 310
    aget v0, v0, v2

    .line 311
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    .line 312
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    .line 313
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v0, v0

    int-to-float v2, v2

    int-to-float p0, p0

    invoke-direct {v3, v1, v0, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method public static c(FFF)F
    .locals 0

    .line 186
    invoke-static {p1, p0, p2, p0}, L_COROUTINE/a;->a(FFFF)F

    move-result p0

    return p0
.end method

.method public static d(FFFFFZ)F
    .locals 0

    if-eqz p5, :cond_1

    const/4 p5, 0x0

    cmpg-float p5, p4, p5

    if-ltz p5, :cond_0

    const/high16 p5, 0x3f800000    # 1.0f

    cmpl-float p5, p4, p5

    if-lez p5, :cond_1

    .line 208
    :cond_0
    invoke-static {p0, p1, p4}, Lcom/google/android/material/transition/u;->c(FFF)F

    move-result p0

    return p0

    :cond_1
    cmpg-float p5, p4, p2

    if-gez p5, :cond_2

    return p0

    :cond_2
    cmpl-float p5, p4, p3

    if-lez p5, :cond_3

    return p1

    :cond_3
    sub-float/2addr p4, p2

    sub-float/2addr p3, p2

    div-float/2addr p4, p3

    .line 217
    invoke-static {p0, p1, p4}, Lcom/google/android/material/transition/u;->c(FFF)F

    move-result p0

    return p0
.end method

.method public static e(IIFFF)I
    .locals 1

    cmpg-float v0, p4, p2

    if-gez v0, :cond_0

    return p0

    :cond_0
    cmpl-float v0, p4, p3

    if-lez v0, :cond_1

    return p1

    :cond_1
    int-to-float p0, p0

    int-to-float p1, p1

    sub-float/2addr p4, p2

    sub-float/2addr p3, p2

    div-float/2addr p4, p3

    .line 233
    invoke-static {p0, p1, p4}, Lcom/google/android/material/transition/u;->c(FFF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static f(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILcom/google/android/material/transition/u$a;)V
    .locals 1

    if-gtz p5, :cond_0

    return-void

    .line 353
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 354
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 355
    invoke-virtual {p0, p4, p4}, Landroid/graphics/Canvas;->scale(FF)V

    const/16 p2, 0xff

    if-ge p5, p2, :cond_1

    .line 328
    sget-object p2, Lcom/google/android/material/transition/u;->a:Landroid/graphics/RectF;

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 330
    invoke-virtual {p0, p2, p5}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;I)I

    .line 359
    :cond_1
    invoke-interface {p6, p0}, Lcom/google/android/material/transition/u$a;->run(Landroid/graphics/Canvas;)V

    .line 360
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method
