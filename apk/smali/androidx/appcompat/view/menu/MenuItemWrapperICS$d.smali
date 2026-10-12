.class Landroidx/appcompat/view/menu/MenuItemWrapperICS$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/MenuItemWrapperICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Landroid/view/MenuItem$OnActionExpandListener;

.field public final synthetic b:Landroidx/appcompat/view/menu/MenuItemWrapperICS;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnActionExpandListener;)V
    .locals 0

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$d;->b:Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    .line 415
    iput-object p2, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$d;->a:Landroid/view/MenuItem$OnActionExpandListener;

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1

    .line 425
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$d;->b:Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/a;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$d;->a:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v0, p1}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1

    .line 420
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$d;->b:Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/a;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$d;->a:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v0, p1}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
