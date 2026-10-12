.class Landroidx/appcompat/view/menu/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/e;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/e;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/e$a;->a:Landroidx/appcompat/view/menu/e;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 67
    iget-object v0, p0, Landroidx/appcompat/view/menu/e$a;->a:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ListPopupWindow;->isModal()Z

    move-result v1

    if-nez v1, :cond_2

    .line 68
    iget-object v1, v0, Landroidx/appcompat/view/menu/e;->n:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    return-void

    .line 70
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->dismiss()V

    :cond_2
    return-void
.end method
