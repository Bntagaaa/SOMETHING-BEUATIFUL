.class Lcom/google/android/material/snackbar/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/snackbar/i;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 807
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 808
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 810
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/snackbar/i;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->dispatchDismiss(I)V

    return-void
.end method

.method public onDragStateChanged(I)V
    .locals 2

    .line 815
    iget-object v0, p0, Lcom/google/android/material/snackbar/i;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return-void

    .line 819
    :cond_0
    invoke-static {}, Lcom/google/android/material/snackbar/l;->b()Lcom/google/android/material/snackbar/l;

    move-result-object p1

    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->r:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/l;->pauseTimeout(Lcom/google/android/material/snackbar/l$b;)V

    return-void

    .line 823
    :cond_1
    invoke-static {}, Lcom/google/android/material/snackbar/l;->b()Lcom/google/android/material/snackbar/l;

    move-result-object p1

    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->r:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/l;->restoreTimeoutIfPaused(Lcom/google/android/material/snackbar/l$b;)V

    return-void
.end method
