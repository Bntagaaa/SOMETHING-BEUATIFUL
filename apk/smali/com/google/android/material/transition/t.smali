.class Lcom/google/android/material/transition/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/transition/u$b;


# instance fields
.field public final synthetic a:Landroid/graphics/RectF;

.field public final synthetic b:Landroid/graphics/RectF;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transition/t;->a:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/google/android/material/transition/t;->b:Landroid/graphics/RectF;

    iput p3, p0, Lcom/google/android/material/transition/t;->c:F

    iput p4, p0, Lcom/google/android/material/transition/t;->d:F

    iput p5, p0, Lcom/google/android/material/transition/t;->e:F

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;
    .locals 7
    .param p1    # Lcom/google/android/material/shape/CornerSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/shape/CornerSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/google/android/material/transition/t;->a:Landroid/graphics/RectF;

    invoke-interface {p1, v0}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v1

    .line 261
    iget-object p1, p0, Lcom/google/android/material/transition/t;->b:Landroid/graphics/RectF;

    invoke-interface {p2, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v2

    const/4 v6, 0x0

    .line 196
    iget v3, p0, Lcom/google/android/material/transition/t;->c:F

    iget v4, p0, Lcom/google/android/material/transition/t;->d:F

    iget v5, p0, Lcom/google/android/material/transition/t;->e:F

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/transition/u;->d(FFFFFZ)F

    move-result p1

    .line 265
    new-instance p2, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {p2, p1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    return-object p2
.end method
