.class Landroidx/appcompat/widget/ToolbarWidgetWrapper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ToolbarWidgetWrapper;-><init>(Landroidx/appcompat/widget/Toolbar;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/ActionMenuItem;

.field public final synthetic b:Landroidx/appcompat/widget/ToolbarWidgetWrapper;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ToolbarWidgetWrapper;)V
    .locals 7

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$a;->b:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 183
    new-instance v0, Landroidx/appcompat/view/menu/ActionMenuItem;

    iget-object v1, p1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v6, p1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->j:Ljava/lang/CharSequence;

    const v3, 0x102002c

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$a;->a:Landroidx/appcompat/view/menu/ActionMenuItem;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 187
    iget-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$a;->b:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    iget-object v0, p1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->m:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->n:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 188
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$a;->a:Landroidx/appcompat/view/menu/ActionMenuItem;

    invoke-interface {v0, p1, v1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method
