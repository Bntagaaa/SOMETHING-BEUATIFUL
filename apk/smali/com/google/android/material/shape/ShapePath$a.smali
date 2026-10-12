.class Lcom/google/android/material/shape/ShapePath$a;
.super Lcom/google/android/material/shape/ShapePath$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Lcom/google/android/material/shape/ShapePath$PathArcOperation;


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)V
    .locals 0

    .line 415
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$c;-><init>()V

    .line 416
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePath$a;->b:Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V
    .locals 8
    .param p2    # Lcom/google/android/material/shadow/ShadowRenderer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 610
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$a;->b:Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    iget v6, v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    .line 614
    iget v7, v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    .line 427
    new-instance v4, Landroid/graphics/RectF;

    .line 578
    iget v1, v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->left:F

    .line 582
    iget v2, v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->top:F

    .line 586
    iget v3, v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->right:F

    .line 590
    iget v0, v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->bottom:F

    .line 429
    invoke-direct {v4, v1, v2, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v3, p1

    move-object v1, p2

    move v5, p3

    move-object v2, p4

    .line 430
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/material/shadow/ShadowRenderer;->drawCornerShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V

    return-void
.end method
