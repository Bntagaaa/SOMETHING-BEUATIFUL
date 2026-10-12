.class Landroidx/appcompat/view/menu/MenuItemWrapperICS$b;
.super Landroidx/appcompat/view/menu/MenuItemWrapperICS$a;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/MenuItemWrapperICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public f:Landroidx/core/view/ActionProvider$VisibilityListener;


# virtual methods
.method public isVisible()Z
    .locals 1

    .line 479
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$a;->d:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onActionProviderVisibilityChanged(Z)V
    .locals 1

    .line 495
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$b;->f:Landroidx/core/view/ActionProvider$VisibilityListener;

    if-eqz v0, :cond_0

    .line 496
    invoke-interface {v0, p1}, Landroidx/core/view/ActionProvider$VisibilityListener;->onActionProviderVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    .line 469
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$a;->d:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public overridesItemVisibility()Z
    .locals 1

    .line 474
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$a;->d:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public refreshVisibility()V
    .locals 1

    .line 484
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$a;->d:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->refreshVisibility()V

    return-void
.end method

.method public setVisibilityListener(Landroidx/core/view/ActionProvider$VisibilityListener;)V
    .locals 1

    .line 489
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$b;->f:Landroidx/core/view/ActionProvider$VisibilityListener;

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 490
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$a;->d:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method
