.class Landroidx/appcompat/app/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/ActionBarDrawerToggle;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/ActionBarDrawerToggle;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/a;->a:Landroidx/appcompat/app/ActionBarDrawerToggle;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 203
    iget-object v0, p0, Landroidx/appcompat/app/a;->a:Landroidx/appcompat/app/ActionBarDrawerToggle;

    iget-boolean v1, v0, Landroidx/appcompat/app/ActionBarDrawerToggle;->f:Z

    if-eqz v1, :cond_1

    .line 284
    iget-object p1, v0, Landroidx/appcompat/app/ActionBarDrawerToggle;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(I)I

    move-result v1

    .line 285
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 287
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    return-void

    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 289
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    return-void

    .line 205
    :cond_1
    iget-object v0, v0, Landroidx/appcompat/app/ActionBarDrawerToggle;->j:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    .line 206
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_2
    return-void
.end method
