.class Lcom/google/android/material/shape/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/shape/MaterialShapeDrawable;


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/MaterialShapeDrawable;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/shape/a;->a:Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-void
.end method


# virtual methods
.method public onCornerPathCreated(Lcom/google/android/material/shape/ShapePath;Landroid/graphics/Matrix;I)V
    .locals 3
    .param p1    # Lcom/google/android/material/shape/ShapePath;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 75
    iget-object v0, p0, Lcom/google/android/material/shape/a;->a:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->d:Ljava/util/BitSet;

    .line 285
    iget-boolean v2, p1, Lcom/google/android/material/shape/ShapePath;->c:Z

    .line 222
    invoke-virtual {v1, p3, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 331
    iget v1, p1, Lcom/google/android/material/shape/ShapePath;->endShadowAngle:F

    .line 255
    invoke-virtual {p1, v1}, Lcom/google/android/material/shape/ShapePath;->a(F)V

    .line 256
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, p2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 257
    new-instance p2, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/google/android/material/shape/ShapePath;->b:Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 258
    new-instance p1, Lcom/google/android/material/shape/c;

    invoke-direct {p1, p2, v1}, Lcom/google/android/material/shape/c;-><init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V

    .line 223
    iget-object p2, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->b:[Lcom/google/android/material/shape/ShapePath$c;

    aput-object p1, p2, p3

    return-void
.end method

.method public onEdgePathCreated(Lcom/google/android/material/shape/ShapePath;Landroid/graphics/Matrix;I)V
    .locals 4
    .param p1    # Lcom/google/android/material/shape/ShapePath;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 75
    iget-object v0, p0, Lcom/google/android/material/shape/a;->a:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->d:Ljava/util/BitSet;

    add-int/lit8 v2, p3, 0x4

    .line 285
    iget-boolean v3, p1, Lcom/google/android/material/shape/ShapePath;->c:Z

    .line 228
    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 331
    iget v1, p1, Lcom/google/android/material/shape/ShapePath;->endShadowAngle:F

    .line 255
    invoke-virtual {p1, v1}, Lcom/google/android/material/shape/ShapePath;->a(F)V

    .line 256
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, p2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 257
    new-instance p2, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/google/android/material/shape/ShapePath;->b:Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 258
    new-instance p1, Lcom/google/android/material/shape/c;

    invoke-direct {p1, p2, v1}, Lcom/google/android/material/shape/c;-><init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V

    .line 229
    iget-object p2, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->c:[Lcom/google/android/material/shape/ShapePath$c;

    aput-object p1, p2, p3

    return-void
.end method
