.class Landroidx/appcompat/widget/AppCompatSpinner$h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatSpinner$h;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatSpinner$h;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner$h;)V
    .locals 0

    .line 1077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$h$b;->a:Landroidx/appcompat/widget/AppCompatSpinner$h;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1080
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$h$b;->a:Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 1108
    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatSpinner$h;->N:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroidx/appcompat/widget/AppCompatSpinner$h;->L:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1083
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner$h;->c()V

    .line 1087
    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatSpinner$h;->b(Landroidx/appcompat/widget/AppCompatSpinner$h;)V

    return-void

    .line 1081
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    return-void
.end method
