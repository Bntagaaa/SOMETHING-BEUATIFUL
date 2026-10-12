.class Lcom/google/android/material/transition/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/transition/u$a;


# instance fields
.field public final synthetic a:Lcom/google/android/material/transition/MaterialContainerTransform$d;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transition/MaterialContainerTransform$d;)V
    .locals 0

    .line 1299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transition/l;->a:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    return-void
.end method


# virtual methods
.method public run(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1071
    iget-object v0, p0, Lcom/google/android/material/transition/l;->a:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    iget-object v0, v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;->a:Landroid/view/View;

    .line 1302
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
