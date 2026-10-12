.class Landroidx/transition/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/transition/i;


# direct methods
.method public constructor <init>(Landroidx/transition/i;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/transition/i$a;->a:Landroidx/transition/i;

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 56
    iget-object v0, p0, Landroidx/transition/i$a;->a:Landroidx/transition/i;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 57
    iget-object v1, v0, Landroidx/transition/i;->a:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v2, v0, Landroidx/transition/i;->b:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 59
    iget-object v1, v0, Landroidx/transition/i;->a:Landroid/view/ViewGroup;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 60
    iput-object v1, v0, Landroidx/transition/i;->a:Landroid/view/ViewGroup;

    .line 61
    iput-object v1, v0, Landroidx/transition/i;->b:Landroid/view/View;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
