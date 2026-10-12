.class public Lcom/google/android/material/shape/ShapePath$PathCubicOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathCubicOperation"
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    .line 647
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    .line 670
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->a:F

    .line 678
    iput p2, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->b:F

    .line 686
    iput p3, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->c:F

    .line 694
    iput p4, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->d:F

    .line 702
    iput p5, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->e:F

    .line 710
    iput p6, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->f:F

    return-void
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 8
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 658
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathOperation;->matrix:Landroid/graphics/Matrix;

    .line 659
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 660
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 661
    iget v2, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->a:F

    iget v3, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->b:F

    iget v4, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->c:F

    iget v5, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->d:F

    iget v6, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->e:F

    iget v7, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->f:F

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 662
    invoke-virtual {v1, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
