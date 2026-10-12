.class Landroidx/appcompat/app/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/b0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/b0;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/b0$a;->a:Landroidx/appcompat/app/b0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 451
    iget-object v0, p0, Landroidx/appcompat/app/b0$a;->a:Landroidx/appcompat/app/b0;

    iget-object v1, v0, Landroidx/appcompat/app/b0;->b:Landroid/view/Window$Callback;

    .line 545
    iget-boolean v2, v0, Landroidx/appcompat/app/b0;->e:Z

    iget-object v3, v0, Landroidx/appcompat/app/b0;->a:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    if-nez v2, :cond_0

    .line 546
    new-instance v2, Landroidx/appcompat/app/b0$c;

    invoke-direct {v2, v0}, Landroidx/appcompat/app/b0$c;-><init>(Landroidx/appcompat/app/b0;)V

    new-instance v4, Landroidx/appcompat/app/b0$d;

    invoke-direct {v4, v0}, Landroidx/appcompat/app/b0$d;-><init>(Landroidx/appcompat/app/b0;)V

    invoke-interface {v3, v2, v4}, Landroidx/appcompat/widget/DecorToolbar;->setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    const/4 v2, 0x1

    .line 548
    iput-boolean v2, v0, Landroidx/appcompat/app/b0;->e:Z

    .line 550
    :cond_0
    invoke-interface {v3}, Landroidx/appcompat/widget/DecorToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 452
    instance-of v2, v0, Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Landroidx/appcompat/view/menu/MenuBuilder;

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_2

    .line 454
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 457
    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    const/4 v4, 0x0

    .line 458
    invoke-interface {v1, v4, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 459
    invoke-interface {v1, v4, v3, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 460
    :cond_3
    :goto_1
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz v2, :cond_5

    .line 464
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    :cond_5
    return-void

    :goto_2
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 466
    :cond_6
    throw v0
.end method
