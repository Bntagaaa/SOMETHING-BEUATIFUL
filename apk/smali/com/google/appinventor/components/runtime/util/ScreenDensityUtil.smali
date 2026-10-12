.class public final Lcom/google/appinventor/components/runtime/util/ScreenDensityUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field private static final LOG_TAG:Ljava/lang/String; = "ScreenDensityUtil"

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeCompatibleScaling(Landroid/content/Context;)F
    .locals 7

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 46
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 47
    invoke-static {p0, v1}, Lcom/google/appinventor/components/runtime/util/ScreenDensityUtil;->getRawScreenDim(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 49
    iget p0, v1, Landroid/graphics/Point;->x:I

    .line 50
    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge p0, v1, :cond_0

    move v3, p0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, p0

    move v3, v1

    :goto_0
    const/high16 v4, 0x43a00000    # 320.0f

    .line 60
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3fe3bbbc

    cmpl-float v5, v2, v3

    if-lez v5, :cond_1

    const v2, 0x3fe3bbbc

    :cond_1
    int-to-float v5, v0

    mul-float v5, v5, v2

    add-float/2addr v5, v4

    float-to-int v2, v5

    if-ge p0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v6, v2

    move v2, v0

    move v0, v6

    :goto_1
    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    int-to-float v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    .line 78
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0, v3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private static getRawScreenDim(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 7

    .line 90
    const-class v0, Landroid/view/Display;

    const-string v1, "Error reading raw screen size"

    const-string v2, "ScreenDensityUtil"

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 91
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 92
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 94
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v4

    const/16 v5, 0x18

    if-lt v4, v5, :cond_0

    .line 97
    invoke-virtual {p0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 98
    iget p0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p0, p1, Landroid/graphics/Point;->x:I

    .line 99
    iget p0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p0, p1, Landroid/graphics/Point;->y:I

    return-void

    :cond_0
    const/16 v3, 0x11

    if-lt v4, v3, :cond_1

    .line 102
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/JellybeanUtil;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    return-void

    :cond_1
    const/16 v3, 0xa

    if-le v4, v3, :cond_2

    .line 108
    :try_start_0
    const-string v3, "getRawHeight"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 109
    const-string v5, "getRawWidth"

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :try_start_1
    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 112
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Landroid/graphics/Point;->y:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    goto :goto_2

    .line 118
    :goto_0
    :try_start_2
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 116
    :goto_1
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 114
    :goto_2
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 121
    :goto_3
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void

    .line 126
    :cond_2
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 127
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    iput p0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method
