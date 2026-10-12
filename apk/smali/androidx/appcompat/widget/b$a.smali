.class Landroidx/appcompat/widget/b$a;
.super Landroidx/appcompat/view/menu/MenuPopupHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic m:Landroidx/appcompat/widget/b;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/b;Landroid/content/Context;Landroidx/appcompat/view/menu/SubMenuBuilder;Landroid/view/View;)V
    .locals 6

    .line 733
    iput-object p1, p0, Landroidx/appcompat/widget/b$a;->m:Landroidx/appcompat/widget/b;

    const/4 v4, 0x0

    .line 734
    sget v5, Landroidx/appcompat/R$attr;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 736
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 737
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionButton()Z

    move-result p2

    if-nez p2, :cond_1

    .line 739
    iget-object p2, p1, Landroidx/appcompat/widget/b;->e:Landroidx/appcompat/widget/b$d;

    if-nez p2, :cond_0

    invoke-static {p1}, Landroidx/appcompat/widget/b;->c(Landroidx/appcompat/widget/b;)Landroidx/appcompat/view/menu/MenuView;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setAnchorView(Landroid/view/View;)V

    .line 742
    :cond_1
    iget-object p1, p1, Landroidx/appcompat/widget/b;->s:Landroidx/appcompat/widget/b$f;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setPresenterCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    const/4 v0, 0x0

    .line 747
    iget-object v1, p0, Landroidx/appcompat/widget/b$a;->m:Landroidx/appcompat/widget/b;

    iput-object v0, v1, Landroidx/appcompat/widget/b;->p:Landroidx/appcompat/widget/b$a;

    const/4 v0, 0x0

    .line 748
    iput v0, v1, Landroidx/appcompat/widget/b;->t:I

    .line 750
    invoke-super {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->onDismiss()V

    return-void
.end method
