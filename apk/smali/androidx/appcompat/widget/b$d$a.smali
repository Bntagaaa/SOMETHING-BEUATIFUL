.class Landroidx/appcompat/widget/b$d$a;
.super Landroidx/appcompat/widget/ForwardingListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/b$d;-><init>(Landroidx/appcompat/widget/b;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic j:Landroidx/appcompat/widget/b$d;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/b$d;Landroid/view/View;)V
    .locals 0

    .line 638
    iput-object p1, p0, Landroidx/appcompat/widget/b$d$a;->j:Landroidx/appcompat/widget/b$d;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;
    .locals 1

    .line 641
    iget-object v0, p0, Landroidx/appcompat/widget/b$d$a;->j:Landroidx/appcompat/widget/b$d;

    iget-object v0, v0, Landroidx/appcompat/widget/b$d;->d:Landroidx/appcompat/widget/b;

    iget-object v0, v0, Landroidx/appcompat/widget/b;->o:Landroidx/appcompat/widget/b$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 645
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->getPopup()Landroidx/appcompat/view/menu/d;

    move-result-object v0

    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .line 650
    iget-object v0, p0, Landroidx/appcompat/widget/b$d$a;->j:Landroidx/appcompat/widget/b$d;

    iget-object v0, v0, Landroidx/appcompat/widget/b$d;->d:Landroidx/appcompat/widget/b;

    invoke-virtual {v0}, Landroidx/appcompat/widget/b;->showOverflowMenu()Z

    const/4 v0, 0x1

    return v0
.end method

.method public onForwardingStopped()Z
    .locals 2

    .line 659
    iget-object v0, p0, Landroidx/appcompat/widget/b$d$a;->j:Landroidx/appcompat/widget/b$d;

    iget-object v0, v0, Landroidx/appcompat/widget/b$d;->d:Landroidx/appcompat/widget/b;

    iget-object v1, v0, Landroidx/appcompat/widget/b;->q:Landroidx/appcompat/widget/b$c;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 663
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/b;->hideOverflowMenu()Z

    const/4 v0, 0x1

    return v0
.end method
