.class public final Lcom/google/appinventor/components/runtime/Canvas;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A two-dimensional touch-sensitive rectangular panel on which drawing can be done and sprites can be moved.</p> <p>The <code>BackgroundColor</code>, <code>PaintColor</code>, <code>BackgroundImage</code>, <code>Width</code>, and <code>Height</code> of the Canvas can be set in either the Designer or in the Blocks Editor.  The <code>Width</code> and <code>Height</code> are measured in pixels and must be positive.</p><p>Any location on the Canvas can be specified as a pair of (X, Y) values, where <ul> <li>X is the number of pixels away from the left edge of the Canvas</li><li>Y is the number of pixels away from the top edge of the Canvas</li></ul>.</p> <p>There are events to tell when and where a Canvas has been touched or a <code>Sprite</code> (<code>ImageSprite</code> or <code>Ball</code>) has been dragged.  There are also methods for drawing points, lines, and circles.</p>"
    iconName = "images/canvas.png"
    version = 0xf
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Canvas$CanvasView;,
        Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;,
        Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;,
        Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR:I = -0x1

.field private static final DEFAULT_LINE_WIDTH:F = 2.0f

.field private static final DEFAULT_PAINT_COLOR:I = -0x1000000

.field private static final DEFAULT_TAP_THRESHOLD:I = 0xf

.field private static final DEFAULT_TEXTALIGNMENT:I = 0x1

.field private static final FLING_INTERVAL:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "Canvas"

.field private static final MIN_WIDTH_HEIGHT:I = 0x1


# instance fields
.field private backgroundColor:I

.field private backgroundImagePath:Ljava/lang/String;

.field private final context:Landroid/app/Activity;

.field private drawn:Z

.field private extendMovesOutsideCanvas:Z

.field private final extensionGestureDetectors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;",
            ">;"
        }
    .end annotation
.end field

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private havePermission:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final motionEventParser:Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;

.field private final paint:Landroid/graphics/Paint;

.field private paintColor:I

.field private final sprites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private tapThreshold:I

.field private textAlignment:I

.field private final view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 752
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->extendMovesOutsideCanvas:Z

    const/16 v1, 0xf

    .line 167
    iput v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->tapThreshold:I

    .line 193
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->extensionGestureDetectors:Ljava/util/Set;

    .line 195
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 198
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->havePermission:Z

    .line 753
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->context:Landroid/app/Activity;

    .line 756
    new-instance v2, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;-><init>(Lcom/google/appinventor/components/runtime/Canvas;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    .line 757
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 759
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    .line 760
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setFlags(I)V

    const/high16 p1, 0x40000000    # 2.0f

    .line 763
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->LineWidth(F)V

    const/high16 p1, -0x1000000

    .line 764
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->PaintColor(I)V

    const/4 p1, -0x1

    .line 765
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->BackgroundColor(I)V

    .line 766
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Canvas;->TextAlignment(I)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 767
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->FontSize(F)V

    .line 768
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Canvas;->TapThreshold(I)V

    .line 770
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    .line 771
    new-instance p1, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;-><init>(Lcom/google/appinventor/components/runtime/Canvas;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->motionEventParser:Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;

    .line 772
    new-instance p1, Landroid/view/GestureDetector;

    new-instance v1, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;-><init>(Lcom/google/appinventor/components/runtime/Canvas;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->mGestureDetector:Landroid/view/GestureDetector;

    .line 773
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsWritePermission(Lcom/google/appinventor/components/common/FileScope;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 774
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->havePermission:Z

    return-void

    .line 776
    :cond_0
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->havePermission:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/Canvas;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundColor:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/Canvas;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->extendMovesOutsideCanvas:Z

    return p0
.end method

.method private changePaint(Landroid/graphics/Paint;I)V
    .locals 1

    if-nez p2, :cond_0

    const/high16 p2, -0x1000000

    .line 1154
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    return-void

    :cond_0
    const v0, 0xffffff

    if-ne p2, v0, :cond_1

    .line 1156
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaintTransparent(Landroid/graphics/Paint;)V

    return-void

    .line 1158
    :cond_1
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->extensionGestureDetectors:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/google/appinventor/components/runtime/Canvas;)Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->motionEventParser:Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/google/appinventor/components/runtime/Canvas;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->tapThreshold:I

    return p0
.end method

.method public static bridge synthetic j(Lcom/google/appinventor/components/runtime/Canvas;)Lcom/google/appinventor/components/runtime/Canvas$CanvasView;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/google/appinventor/components/runtime/Canvas;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundColor:I

    return-void
.end method

.method public static bridge synthetic l(Lcom/google/appinventor/components/runtime/Canvas;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic m(Lcom/google/appinventor/components/runtime/Canvas;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->drawn:Z

    return-void
.end method

.method public static bridge synthetic n(Lcom/google/appinventor/components/runtime/Canvas;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->havePermission:Z

    return-void
.end method

.method private parsePath([[F)Landroid/graphics/Path;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1461
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 1464
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    .line 1466
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/4 v2, 0x0

    .line 1467
    aget-object v3, p1, v2

    aget v4, v3, v2

    mul-float v4, v4, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    mul-float v3, v3, v0

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v3, 0x1

    .line 1468
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 1469
    aget-object v4, p1, v3

    aget v6, v4, v2

    mul-float v6, v6, v0

    aget v4, v4, v5

    mul-float v4, v4, v0

    invoke-virtual {v1, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 1462
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private parsePointList(Lcom/google/appinventor/components/runtime/util/YailList;)[[F
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1476
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1479
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v4, 0x0

    aput v0, v2, v4

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .line 1482
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    array-length v2, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    aget-object v7, p1, v5

    .line 1483
    instance-of v8, v7, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v8, :cond_1

    .line 1484
    check-cast v7, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1485
    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v8

    if-ne v8, v1, :cond_0

    .line 1487
    :try_start_0
    aget-object v8, v0, v6

    invoke-virtual {v7, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v8, v4

    .line 1488
    aget-object v8, v0, v6

    invoke-virtual {v7, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v8, v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    .line 1493
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1491
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1496
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "length of item YailList("

    const-string v1, ") is not 2"

    .line 0
    invoke-static {v6, v0, v1}, L_COROUTINE/a;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1496
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1499
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item("

    const-string v1, ") in YailList is not a YailList"

    .line 0
    invoke-static {v6, v0, v1}, L_COROUTINE/a;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1499
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object v0

    .line 1477
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private saveFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1677
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->havePermission:Z

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsWritePermission(Lcom/google/appinventor/components/runtime/util/ScopedFile;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1678
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance p2, Lcom/google/appinventor/components/runtime/Canvas$1;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/Canvas$1;-><init>(Lcom/google/appinventor/components/runtime/Canvas;)V

    const-string p3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, p3, p2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 1684
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;

    invoke-direct {p1}, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;-><init>()V

    throw p1

    .line 1687
    :cond_1
    :goto_0
    new-instance v10, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 1688
    new-instance v2, Lcom/google/appinventor/components/runtime/Canvas$2;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    move-object v3, p0

    move-object v7, p1

    move-object v11, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v11}, Lcom/google/appinventor/components/runtime/Canvas$2;-><init>(Lcom/google/appinventor/components/runtime/Canvas;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/ScopedFile;ZZLcom/google/appinventor/components/runtime/util/Synchronizer;Landroid/graphics/Bitmap$CompressFormat;)V

    .line 1695
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 1697
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/FileNotFoundException;

    if-eqz p1, :cond_2

    .line 1698
    iget-object p1, v3, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object p2, v3, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 1700
    invoke-static {p2, v7}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v1

    const/16 p2, 0x2c3

    .line 1698
    invoke-virtual {p1, p0, v6, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1701
    :cond_2
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_3

    .line 1702
    iget-object p1, v3, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    .line 1703
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v1

    const/16 p2, 0x2c4

    .line 1702
    invoke-virtual {p1, p0, v6, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1704
    :cond_3
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    if-eqz p1, :cond_4

    .line 1705
    iget-object p1, v3, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    .line 1706
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    .line 1705
    invoke-virtual {p1, p0, v6, p2}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    goto :goto_1

    .line 1707
    :cond_4
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;

    if-eqz p1, :cond_5

    .line 1708
    iget-object p1, v3, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    .line 1709
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result p2

    new-array p3, v1, [Ljava/lang/Object;

    .line 1708
    invoke-virtual {p1, p0, v6, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1710
    :cond_5
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1711
    iget-object p1, v3, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p1, v7}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1713
    :cond_6
    :goto_1
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1

    .line 881
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Canvas.$add() called"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the canvas background."
    .end annotation

    .line 1025
    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1041
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackgroundColor(I)V

    return-void
.end method

.method public BackgroundImage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The name of a file containing the background image for the canvas"
    .end annotation

    .line 1053
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public BackgroundImage(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1069
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackgroundImage(Ljava/lang/String;)V

    return-void
.end method

.method public BackgroundImageinBase64(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x8
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the background image in Base64 format. This requires API level >= 8. For devices with API level less than 8, setting this will end up with an empty background."
    .end annotation

    .line 1084
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackgroundImageBase64(Ljava/lang/String;)V

    return-void

    .line 1087
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackgroundImageBase64(Ljava/lang/String;)V

    return-void
.end method

.method public Clear()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears anything drawn on this Canvas but not any background color or image."
    .end annotation

    .line 1375
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->c(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)V

    return-void
.end method

.method public Dragged(FFFFFFZ)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 1362
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 1363
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p6

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p7

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    const/4 p1, 0x5

    aput-object p6, v0, p1

    const/4 p1, 0x6

    aput-object p7, v0, p1

    .line 1362
    const-string p1, "Dragged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DrawArc(IIIIFFZZ)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw an arc on Canvas, by drawing an arc from a specified oval (specified by left, top, right & bottom). Start angle is 0 when heading to the right, and increase when rotate clockwise. When useCenter is true, a sector will be drawed instead of an arc. When fill is true, a filled arc (or sector) will be drawed instead of just an outline."
    .end annotation

    .line 1527
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    move v1, p4

    move p4, p6

    .line 1528
    new-instance p6, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-direct {p6, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    if-eqz p8, :cond_0

    .line 1529
    sget-object p8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object p8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {p6, p8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1530
    iget-object p8, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {p8}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->a(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object p8

    move v2, p2

    new-instance p2, Landroid/graphics/RectF;

    int-to-float p1, p1

    mul-float p1, p1, v0

    int-to-float v2, v2

    mul-float v2, v2, v0

    int-to-float p3, p3

    mul-float p3, p3, v0

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-direct {p2, p1, v2, p3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    move p3, p5

    move p5, p7

    move-object p1, p8

    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1534
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public DrawCircle(IIFZ)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    int-to-float p1, p1

    .line 1403
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float v0, v0, p1

    int-to-float p1, p2

    .line 1404
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result p2

    mul-float p2, p2, p1

    .line 1405
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result p1

    mul-float p1, p1, p3

    .line 1406
    new-instance p3, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-direct {p3, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    if-eqz p4, :cond_0

    .line 1407
    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object p4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1408
    iget-object p4, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {p4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->a(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object p4

    invoke-virtual {p4, v0, p2, p1, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1409
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public DrawLine(IIII)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    int-to-float p1, p1

    .line 1422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float v2, v0, p1

    int-to-float p1, p2

    .line 1423
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result p2

    mul-float v3, p2, p1

    int-to-float p1, p3

    .line 1424
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result p2

    mul-float v4, p2, p1

    int-to-float p1, p4

    .line 1425
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result p2

    mul-float v5, p2, p1

    .line 1426
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->a(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v1

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1427
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public DrawPoint(II)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    int-to-float p1, p1

    .line 1386
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float v0, v0, p1

    int-to-float p1, p2

    .line 1387
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result p2

    mul-float p2, p2, p1

    .line 1388
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->a(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object p1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 1389
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public DrawShape(Lcom/google/appinventor/components/runtime/util/YailList;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draws a shape on the canvas. pointList should be a list contains sub-lists with two number which represents a coordinate. The first point and last point does not need to be the same. e.g. ((x1 y1) (x2 y2) (x3 y3)) When fill is true, the shape will be filled."
    .end annotation

    .line 1448
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->parsePointList(Lcom/google/appinventor/components/runtime/util/YailList;)[[F

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->parsePath([[F)Landroid/graphics/Path;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1453
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 1454
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    if-eqz p2, :cond_0

    .line 1455
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1456
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->a(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1457
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    .line 1450
    :catch_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "DrawShape"

    const/16 v1, 0x3ec

    invoke-virtual {p1, p0, v0, v1, p2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public DrawText(Ljava/lang/String;II)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draws the specified text relative to the specified coordinates using the values of the FontSize and TextAlignment properties."
    .end annotation

    .line 1549
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    int-to-float p2, p2

    mul-float p2, p2, v0

    int-to-float p3, p3

    mul-float p3, p3, v0

    .line 1552
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->a(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1553
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public DrawTextAtAngle(Ljava/lang/String;IIF)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draws the specified text starting at the specified coordinates at the specified angle using the values of the FontSize and TextAlignment properties."
    .end annotation

    int-to-float p2, p2

    .line 1569
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float v0, v0, p2

    float-to-int p2, v0

    int-to-float p3, p3

    .line 1570
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float v0, v0, p3

    float-to-int p3, v0

    .line 1571
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->e(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;Ljava/lang/String;IIF)V

    return-void
.end method

.method public ExtendMovesOutsideCanvas(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .line 1272
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->extendMovesOutsideCanvas:Z

    return-void
.end method

.method public ExtendMovesOutsideCanvas()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines whether moves can extend beyond the canvas borders.   Default is false. This should normally be false, and the property is provided for backwards compatibility."
        userVisible = true
    .end annotation

    .line 1262
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->extendMovesOutsideCanvas:Z

    return v0
.end method

.method public Flung(FFFFFFZ)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 1339
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p6

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p7

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    const/4 p1, 0x5

    aput-object p6, v0, p1

    const/4 p1, 0x6

    aput-object p7, v0, p1

    const-string p1, "Flung"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FontSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The font size of text drawn on the canvas."
    .end annotation

    .line 1166
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    .line 1167
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    div-float/2addr v1, v0

    return v1
.end method

.method public FontSize(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1178
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    .line 1179
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    mul-float p1, p1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public GetBackgroundPixelColor(II)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the color of the specified point. This includes the background and any drawn points, lines, or circles but not sprites."
    .end annotation

    int-to-float p1, p1

    .line 1587
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    int-to-float p2, p2

    .line 1588
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 1589
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->f(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;II)I

    move-result p1

    return p1
.end method

.method public GetPixelColor(II)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the color of the specified point."
    .end annotation

    int-to-float p1, p1

    .line 1622
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    int-to-float p2, p2

    .line 1623
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 1624
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->g(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;II)I

    move-result p1

    return p1
.end method

.method public Height(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-gtz p1, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/16 v0, -0x3e8

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 1006
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Height"

    const/16 v2, 0x3eb

    invoke-virtual {p1, p0, v1, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 1003
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public LineWidth()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The width of lines drawn on the canvas."
    .end annotation

    .line 1190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public LineWidth(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1202
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    mul-float v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public PaintColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color in which lines are drawn"
    .end annotation

    .line 1132
    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paintColor:I

    return v0
.end method

.method public PaintColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1147
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->paintColor:I

    .line 1148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->changePaint(Landroid/graphics/Paint;I)V

    return-void
.end method

.method public Save()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves a picture of this Canvas to the device\'s external storage. If an error occurs, the Screen\'s ErrorOccurred event will be called."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.WRITE_EXTERNAL_STORAGE"
        }
    .end annotation

    .line 1639
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "png"

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getScopedPictureFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/ScopedFile;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v2, "Save"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Canvas;->saveFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SaveAs(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves a picture of this Canvas to the device\'s external storage in the file named fileName. fileName must end with one of .jpg, .jpeg, or .png, which determines the file type."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.WRITE_EXTERNAL_STORAGE"
        }
    .end annotation

    .line 1659
    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "SaveAs"

    if-nez v0, :cond_3

    const-string v0, ".jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1661
    :cond_0
    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1662
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    .line 1663
    :cond_1
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1664
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1665
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    .line 1667
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v2, 0x2c2

    invoke-virtual {p1, p0, v1, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1669
    const-string p1, ""

    return-object p1

    .line 1660
    :cond_3
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 1671
    :goto_1
    new-instance v2, Lcom/google/appinventor/components/runtime/util/ScopedFile;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;-><init>(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;)V

    invoke-direct {p0, v2, v0, v1}, Lcom/google/appinventor/components/runtime/Canvas;->saveFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public SetBackgroundPixelColor(III)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the color of the specified point. This differs from DrawPoint by having an argument for color."
    .end annotation

    .line 1603
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1604
    invoke-static {v0, p3}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    int-to-float p1, p1

    .line 1605
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result p3

    mul-float p3, p3, p1

    float-to-int p1, p3

    int-to-float p2, p2

    .line 1606
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result p3

    mul-float p3, p3, p2

    float-to-int p2, p3

    .line 1607
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->a(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object p3

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p3, p1, p2, v0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 1608
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public TapThreshold()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the number of pixels right, left, up or down, a sequence of drags mustmove from the starting point to be considered a drag (instead of a touch)."
    .end annotation

    .line 1103
    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->tapThreshold:I

    return v0
.end method

.method public TapThreshold(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "15"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1116
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->tapThreshold:I

    return-void
.end method

.method public TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the alignment of the text drawn by DrawText() or DrawAngle() with respect to the point specified by that command: point at the left of the text, point at the center of the text, or point at the right of the text."
        userVisible = true
    .end annotation

    .line 1222
    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->textAlignment:I

    return v0
.end method

.method public TextAlignment(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .line 1241
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->textAlignment:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 1250
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void

    .line 1247
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void

    .line 1244
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method public TouchDown(FF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 1302
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "TouchDown"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TouchUp(FF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 1315
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "TouchUp"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Touched(FFZ)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 1289
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "Touched"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Width(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-gtz p1, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/16 v0, -0x3e8

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 982
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Width"

    const/16 v2, 0x3ea

    invoke-virtual {p1, p0, v1, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 979
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public addSprite(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 6

    const/4 v0, 0x0

    .line 837
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 838
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Sprite;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Z()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Z()D

    move-result-wide v3

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    .line 839
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 845
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public changeSpriteLayer(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 0

    .line 864
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->removeSprite(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 865
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->addSprite(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 866
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public findSpriteCollisions(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 3

    .line 931
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Sprite;

    if-eq v1, p1, :cond_0

    .line 934
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/Sprite;->CollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 936
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 937
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 938
    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->colliding(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 939
    :cond_1
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/Sprite;->NoLongerCollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 940
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->NoLongerCollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)V

    goto :goto_0

    .line 946
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 947
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 948
    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->colliding(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 950
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/Sprite;->CollidedWith(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 951
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->CollidedWith(Lcom/google/appinventor/components/runtime/Sprite;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->d(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation

    .line 886
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    return-object v0
.end method

.method public getContext()Landroid/app/Activity;
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    return-object v0
.end method

.method public ready()Z
    .locals 1

    .line 819
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->drawn:Z

    return v0
.end method

.method public registerChange(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 909
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->findSpriteCollisions(Lcom/google/appinventor/components/runtime/Sprite;)V

    return-void
.end method

.method public registerCustomGestureDetector(Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;)V
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->extensionGestureDetectors:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeCustomGestureDetector(Ljava/lang/Object;)V
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->extensionGestureDetectors:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeSprite(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 0

    .line 896
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Canvas.setChildHeight() called"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 0

    .line 891
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Canvas.setChildWidth() called"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
