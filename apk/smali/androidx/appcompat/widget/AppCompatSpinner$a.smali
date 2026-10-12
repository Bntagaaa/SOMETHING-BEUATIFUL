.class Landroidx/appcompat/widget/AppCompatSpinner$a;
.super Landroidx/appcompat/widget/ForwardingListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic j:Landroidx/appcompat/widget/AppCompatSpinner$h;

.field public final synthetic k:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroidx/appcompat/widget/AppCompatSpinner;Landroidx/appcompat/widget/AppCompatSpinner$h;)V
    .locals 0

    .line 272
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->k:Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object p3, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->j:Landroidx/appcompat/widget/AppCompatSpinner$h;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;
    .locals 1

    .line 275
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->j:Landroidx/appcompat/widget/AppCompatSpinner$h;

    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 611
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->k:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$j;

    .line 281
    invoke-interface {v1}, Landroidx/appcompat/widget/AppCompatSpinner$j;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 616
    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatSpinner$d;->b(Landroid/view/View;)I

    move-result v1

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatSpinner$d;->a(Landroid/view/View;)I

    move-result v2

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$j;

    invoke-interface {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatSpinner$j;->show(II)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
