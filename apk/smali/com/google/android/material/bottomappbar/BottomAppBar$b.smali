.class Lcom/google/android/material/bottomappbar/BottomAppBar$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/animation/TransformationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/animation/TransformationCallback<",
        "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    return-void
.end method


# virtual methods
.method public bridge synthetic onScaleChanged(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 212
    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->onScaleChanged(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-void
.end method

.method public onScaleChanged(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 2
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 111
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget-object v0, v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->W:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 215
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    return-void
.end method

.method public bridge synthetic onTranslationChanged(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 212
    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->onTranslationChanged(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-void
.end method

.method public onTranslationChanged(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 4
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 222
    sget v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->r0:I

    .line 111
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-virtual {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v2

    .line 222
    invoke-virtual {v2}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getHorizontalOffset()F

    move-result v2

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v2

    .line 204
    iput v0, v2, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->e:F

    .line 111
    iget-object v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->W:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 224
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 228
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    neg-float v0, v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 111
    invoke-virtual {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v3

    .line 223
    iget v3, v3, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->d:F

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_1

    .line 111
    invoke-virtual {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v3

    .line 230
    invoke-virtual {v3, v0}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->b(F)V

    .line 111
    iget-object v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->W:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 231
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 111
    :cond_1
    iget-object v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->W:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v2

    .line 233
    :cond_2
    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    return-void
.end method
