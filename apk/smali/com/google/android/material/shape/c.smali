.class Lcom/google/android/material/shape/c;
.super Lcom/google/android/material/shape/ShapePath$c;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/google/android/material/shape/c;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/google/android/material/shape/c;->c:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$c;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V
    .locals 2

    .line 262
    iget-object p1, p0, Lcom/google/android/material/shape/c;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/shape/ShapePath$c;

    .line 263
    iget-object v1, p0, Lcom/google/android/material/shape/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/material/shape/ShapePath$c;->draw(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method
