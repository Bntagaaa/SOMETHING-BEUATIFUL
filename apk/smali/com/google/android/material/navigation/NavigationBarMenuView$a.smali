.class Lcom/google/android/material/navigation/NavigationBarMenuView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigation/NavigationBarMenuView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/navigation/NavigationBarMenuView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigation/NavigationBarMenuView;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView$a;->a:Lcom/google/android/material/navigation/NavigationBarMenuView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 136
    check-cast p1, Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 137
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    .line 65
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView$a;->a:Lcom/google/android/material/navigation/NavigationBarMenuView;

    iget-object v1, v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->B:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 65
    iget-object v0, v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->A:Lcom/google/android/material/navigation/NavigationBarPresenter;

    const/4 v2, 0x0

    .line 138
    invoke-virtual {v1, p1, v0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 139
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
