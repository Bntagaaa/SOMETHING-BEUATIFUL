.class Lcom/google/android/material/floatingactionbutton/i;
.super Lcom/google/android/material/animation/MatrixEvaluator;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/google/android/material/floatingactionbutton/m;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/m;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/i;->d:Lcom/google/android/material/floatingactionbutton/m;

    invoke-direct {p0}, Lcom/google/android/material/animation/MatrixEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/i;->d:Lcom/google/android/material/floatingactionbutton/m;

    iput p1, v0, Lcom/google/android/material/floatingactionbutton/m;->p:F

    .line 595
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/animation/MatrixEvaluator;->evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 588
    check-cast p2, Landroid/graphics/Matrix;

    check-cast p3, Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/floatingactionbutton/i;->evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1
.end method
