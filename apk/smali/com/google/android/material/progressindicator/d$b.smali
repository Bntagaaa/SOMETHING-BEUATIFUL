.class Lcom/google/android/material/progressindicator/d$b;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/google/android/material/progressindicator/d;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# virtual methods
.method public get(Lcom/google/android/material/progressindicator/d;)Ljava/lang/Float;
    .locals 0

    .line 229
    iget p1, p1, Lcom/google/android/material/progressindicator/d;->j:F

    .line 257
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 254
    check-cast p1, Lcom/google/android/material/progressindicator/d;

    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/d$b;->get(Lcom/google/android/material/progressindicator/d;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/google/android/material/progressindicator/d;Ljava/lang/Float;)V
    .locals 0

    .line 262
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 233
    iput p2, p1, Lcom/google/android/material/progressindicator/d;->j:F

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 254
    check-cast p1, Lcom/google/android/material/progressindicator/d;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/d$b;->set(Lcom/google/android/material/progressindicator/d;Ljava/lang/Float;)V

    return-void
.end method
