.class Lcom/google/android/material/appbar/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final b:Landroid/view/View;

.field public final synthetic c:Lcom/google/android/material/appbar/g;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/g;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/appbar/g$a;->c:Lcom/google/android/material/appbar/g;

    .line 264
    iput-object p2, p0, Lcom/google/android/material/appbar/g$a;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 265
    iput-object p3, p0, Lcom/google/android/material/appbar/g$a;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/google/android/material/appbar/g$a;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/appbar/g$a;->c:Lcom/google/android/material/appbar/g;

    iget-object v2, v1, Lcom/google/android/material/appbar/g;->e:Landroid/widget/OverScroller;

    if-eqz v2, :cond_1

    .line 271
    invoke-virtual {v2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/appbar/g$a;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, v1, Lcom/google/android/material/appbar/g;->e:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    invoke-virtual {v1, v3, v0, v2}, Lcom/google/android/material/appbar/g;->g(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 274
    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 276
    :cond_0
    invoke-virtual {v1, v3, v0}, Lcom/google/android/material/appbar/g;->e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    :cond_1
    return-void
.end method
