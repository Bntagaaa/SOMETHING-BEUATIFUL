.class Landroidx/appcompat/app/b0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/app/AppCompatDelegateImpl$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/b0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/b0;)V
    .locals 0

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/b0$e;->a:Landroidx/appcompat/app/b0;

    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    .line 538
    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Landroidx/appcompat/app/b0$e;->a:Landroidx/appcompat/app/b0;

    iget-object v0, v0, Landroidx/appcompat/app/b0;->a:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onPreparePanel(I)Z
    .locals 1

    if-nez p1, :cond_0

    .line 523
    iget-object p1, p0, Landroidx/appcompat/app/b0$e;->a:Landroidx/appcompat/app/b0;

    iget-boolean v0, p1, Landroidx/appcompat/app/b0;->d:Z

    if-nez v0, :cond_0

    .line 524
    iget-object v0, p1, Landroidx/appcompat/app/b0;->a:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->setMenuPrepared()V

    const/4 v0, 0x1

    .line 525
    iput-boolean v0, p1, Landroidx/appcompat/app/b0;->d:Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
