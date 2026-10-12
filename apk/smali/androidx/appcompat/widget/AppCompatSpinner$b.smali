.class Landroidx/appcompat/widget/AppCompatSpinner$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatSpinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;)V
    .locals 0

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroidx/appcompat/widget/AppCompatSpinner;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 611
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$j;

    .line 643
    invoke-interface {v1}, Landroidx/appcompat/widget/AppCompatSpinner$j;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 616
    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatSpinner$d;->b(Landroid/view/View;)I

    move-result v1

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatSpinner$d;->a(Landroid/view/View;)I

    move-result v2

    iget-object v3, v0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$j;

    invoke-interface {v3, v1, v2}, Landroidx/appcompat/widget/AppCompatSpinner$j;->show(II)V

    .line 646
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 649
    invoke-static {v0, p0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method
