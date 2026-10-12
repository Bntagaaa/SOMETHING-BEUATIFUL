.class final Landroidx/appcompat/app/b0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Landroidx/appcompat/app/b0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/b0;)V
    .locals 0

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/b0$c;->b:Landroidx/appcompat/app/b0;

    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 567
    iget-boolean p2, p0, Landroidx/appcompat/app/b0$c;->a:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 571
    iput-boolean p2, p0, Landroidx/appcompat/app/b0$c;->a:Z

    .line 572
    iget-object p2, p0, Landroidx/appcompat/app/b0$c;->b:Landroidx/appcompat/app/b0;

    iget-object v0, p2, Landroidx/appcompat/app/b0;->a:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->dismissPopupMenus()V

    .line 573
    iget-object p2, p2, Landroidx/appcompat/app/b0;->b:Landroid/view/Window$Callback;

    const/16 v0, 0x6c

    invoke-interface {p2, v0, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    const/4 p1, 0x0

    .line 574
    iput-boolean p1, p0, Landroidx/appcompat/app/b0$c;->a:Z

    return-void
.end method

.method public onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 2
    .param p1    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 561
    iget-object v0, p0, Landroidx/appcompat/app/b0$c;->b:Landroidx/appcompat/app/b0;

    iget-object v0, v0, Landroidx/appcompat/app/b0;->b:Landroid/view/Window$Callback;

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method
