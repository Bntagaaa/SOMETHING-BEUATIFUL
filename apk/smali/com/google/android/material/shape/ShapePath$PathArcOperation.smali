.class public Lcom/google/android/material/shape/ShapePath$PathArcOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathArcOperation"
.end annotation


# static fields
.field public static final a:Landroid/graphics/RectF;


# instance fields
.field public bottom:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public left:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public right:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public startAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public sweepAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public top:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 527
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->a:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 560
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    .line 594
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->left:F

    .line 598
    iput p2, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->top:F

    .line 602
    iput p3, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->right:F

    .line 606
    iput p4, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->bottom:F

    return-void
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 5
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 569
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathOperation;->matrix:Landroid/graphics/Matrix;

    .line 570
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 571
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 572
    sget-object v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->a:Landroid/graphics/RectF;

    .line 578
    iget v1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->left:F

    .line 582
    iget v2, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->top:F

    .line 586
    iget v3, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->right:F

    .line 590
    iget v4, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->bottom:F

    .line 572
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 610
    iget v1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    .line 614
    iget v2, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    const/4 v3, 0x0

    .line 573
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 574
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
