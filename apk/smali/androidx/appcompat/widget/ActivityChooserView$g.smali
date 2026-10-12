.class Landroidx/appcompat/widget/ActivityChooserView$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;)V
    .locals 0

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$g;->a:Landroidx/appcompat/widget/ActivityChooserView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 623
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$g;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, v0, Landroidx/appcompat/widget/ActivityChooserView;->g:Landroid/widget/FrameLayout;

    if-ne p1, v1, :cond_1

    .line 624
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->dismissPopup()Z

    .line 625
    iget-object p1, v0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$f;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView$f;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 626
    iget-object v1, v0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$f;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserView$f;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/ActivityChooserModel;->getActivityIndex(Landroid/content/pm/ResolveInfo;)I

    move-result p1

    .line 627
    iget-object v1, v0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$f;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserView$f;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/high16 v1, 0x80000

    .line 629
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 630
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    .line 632
    :cond_1
    iget-object v1, v0, Landroidx/appcompat/widget/ActivityChooserView;->e:Landroid/widget/FrameLayout;

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    .line 633
    iput-boolean p1, v0, Landroidx/appcompat/widget/ActivityChooserView;->o:Z

    .line 634
    iget p1, v0, Landroidx/appcompat/widget/ActivityChooserView;->p:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActivityChooserView;->b(I)V

    return-void

    .line 636
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public onDismiss()V
    .locals 2

    .line 664
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$g;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, v0, Landroidx/appcompat/widget/ActivityChooserView;->n:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v1, :cond_0

    .line 665
    invoke-interface {v1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 658
    :cond_0
    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->j:Landroidx/core/view/ActionProvider;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 659
    invoke-virtual {v0, v1}, Landroidx/core/view/ActionProvider;->subUiVisibilityChanged(Z)V

    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 591
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActivityChooserView$f;

    .line 592
    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/ActivityChooserView$f;->getItemViewType(I)I

    move-result p1

    .line 593
    iget-object p2, p0, Landroidx/appcompat/widget/ActivityChooserView$g;->a:Landroidx/appcompat/widget/ActivityChooserView;

    if-eqz p1, :cond_1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const p1, 0x7fffffff

    .line 595
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/ActivityChooserView;->b(I)V

    return-void

    .line 616
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 598
    :cond_1
    invoke-virtual {p2}, Landroidx/appcompat/widget/ActivityChooserView;->dismissPopup()Z

    .line 599
    iget-boolean p1, p2, Landroidx/appcompat/widget/ActivityChooserView;->o:Z

    iget-object p4, p2, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$f;

    if-eqz p1, :cond_2

    if-lez p3, :cond_4

    .line 602
    invoke-virtual {p4}, Landroidx/appcompat/widget/ActivityChooserView$f;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/ActivityChooserModel;->setDefaultActivity(I)V

    return-void

    .line 607
    :cond_2
    invoke-virtual {p4}, Landroidx/appcompat/widget/ActivityChooserView$f;->getShowDefaultActivity()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 p3, p3, 0x1

    .line 608
    :goto_0
    invoke-virtual {p4}, Landroidx/appcompat/widget/ActivityChooserView$f;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    const/high16 p3, 0x80000

    .line 610
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 611
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 643
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$g;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, v0, Landroidx/appcompat/widget/ActivityChooserView;->g:Landroid/widget/FrameLayout;

    if-ne p1, v1, :cond_1

    .line 644
    iget-object p1, v0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$f;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView$f;->getCount()I

    move-result p1

    const/4 v1, 0x1

    if-lez p1, :cond_0

    .line 645
    iput-boolean v1, v0, Landroidx/appcompat/widget/ActivityChooserView;->o:Z

    .line 646
    iget p1, v0, Landroidx/appcompat/widget/ActivityChooserView;->p:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActivityChooserView;->b(I)V

    :cond_0
    return v1

    .line 649
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
