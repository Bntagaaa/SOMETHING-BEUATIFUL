.class Lcom/google/android/material/progressindicator/g$a;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/google/android/material/progressindicator/g;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# virtual methods
.method public get(Lcom/google/android/material/progressindicator/g;)Ljava/lang/Float;
    .locals 0

    .line 427
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/g;->b()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 424
    check-cast p1, Lcom/google/android/material/progressindicator/g;

    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/g$a;->get(Lcom/google/android/material/progressindicator/g;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/google/android/material/progressindicator/g;Ljava/lang/Float;)V
    .locals 1

    .line 432
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 401
    iget v0, p1, Lcom/google/android/material/progressindicator/g;->h:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_0

    .line 402
    iput p2, p1, Lcom/google/android/material/progressindicator/g;->h:F

    .line 403
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 424
    check-cast p1, Lcom/google/android/material/progressindicator/g;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/g$a;->set(Lcom/google/android/material/progressindicator/g;Ljava/lang/Float;)V

    return-void
.end method
