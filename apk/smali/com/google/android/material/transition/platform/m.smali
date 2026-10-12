.class Lcom/google/android/material/transition/platform/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/transition/platform/x$a;


# instance fields
.field public final synthetic a:Lcom/google/android/material/transition/platform/MaterialContainerTransform$d;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$d;)V
    .locals 0

    .line 1322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transition/platform/m;->a:Lcom/google/android/material/transition/platform/MaterialContainerTransform$d;

    return-void
.end method


# virtual methods
.method public run(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1076
    iget-object v0, p0, Lcom/google/android/material/transition/platform/m;->a:Lcom/google/android/material/transition/platform/MaterialContainerTransform$d;

    iget-object v0, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$d;->e:Landroid/view/View;

    .line 1325
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
