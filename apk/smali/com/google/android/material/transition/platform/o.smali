.class Lcom/google/android/material/transition/platform/o;
.super Lcom/google/android/material/transition/platform/u;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/google/android/material/transition/platform/o;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/google/android/material/transition/platform/u;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1

    .line 53
    sget-object p1, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->f:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 267
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 269
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    .line 53
    sput-object p1, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->f:Ljava/lang/ref/WeakReference;

    .line 275
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/transition/platform/o;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
