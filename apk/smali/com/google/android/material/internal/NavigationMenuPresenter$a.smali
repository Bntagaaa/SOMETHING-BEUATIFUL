.class Lcom/google/android/material/internal/NavigationMenuPresenter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/internal/NavigationMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/NavigationMenuPresenter;)V
    .locals 0

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$a;->a:Lcom/google/android/material/internal/NavigationMenuPresenter;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 489
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 490
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$a;->a:Lcom/google/android/material/internal/NavigationMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 491
    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    .line 492
    iget-object v2, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->d:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v2

    if-eqz p1, :cond_0

    .line 494
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 495
    iget-object v2, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->f:Lcom/google/android/material/internal/NavigationMenuPresenter$c;

    invoke-virtual {v2, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 498
    :goto_0
    invoke-virtual {v0, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    if-eqz v1, :cond_1

    .line 500
    invoke-virtual {v0, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    :cond_1
    return-void
.end method
