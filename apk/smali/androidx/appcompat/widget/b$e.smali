.class Landroidx/appcompat/widget/b$e;
.super Landroidx/appcompat/view/menu/MenuPopupHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic m:Landroidx/appcompat/widget/b;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/b;Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 6

    .line 715
    iput-object p1, p0, Landroidx/appcompat/widget/b$e;->m:Landroidx/appcompat/widget/b;

    .line 716
    sget v5, Landroidx/appcompat/R$attr;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    const p2, 0x800005

    .line 717
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setGravity(I)V

    .line 718
    iget-object p1, p1, Landroidx/appcompat/widget/b;->s:Landroidx/appcompat/widget/b$f;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setPresenterCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 723
    iget-object v0, p0, Landroidx/appcompat/widget/b$e;->m:Landroidx/appcompat/widget/b;

    invoke-static {v0}, Landroidx/appcompat/widget/b;->a(Landroidx/appcompat/widget/b;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 724
    invoke-static {v0}, Landroidx/appcompat/widget/b;->b(Landroidx/appcompat/widget/b;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->close()V

    :cond_0
    const/4 v1, 0x0

    .line 726
    iput-object v1, v0, Landroidx/appcompat/widget/b;->o:Landroidx/appcompat/widget/b$e;

    .line 728
    invoke-super {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->onDismiss()V

    return-void
.end method
