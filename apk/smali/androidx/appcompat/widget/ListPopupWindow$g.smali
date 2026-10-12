.class Landroidx/appcompat/widget/ListPopupWindow$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/ListPopupWindow;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ListPopupWindow;)V
    .locals 0

    .line 1389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow$g;->a:Landroidx/appcompat/widget/ListPopupWindow;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1394
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 1395
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1396
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 1398
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow$g;->a:Landroidx/appcompat/widget/ListPopupWindow;

    if-nez p1, :cond_0

    iget-object v2, v1, Landroidx/appcompat/widget/ListPopupWindow;->F:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    .line 1399
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    if-ltz v0, :cond_0

    iget-object v2, v1, Landroidx/appcompat/widget/ListPopupWindow;->F:Landroid/widget/PopupWindow;

    .line 1400
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 1401
    iget-object p1, v1, Landroidx/appcompat/widget/ListPopupWindow;->B:Landroid/os/Handler;

    iget-object p2, v1, Landroidx/appcompat/widget/ListPopupWindow;->w:Landroidx/appcompat/widget/ListPopupWindow$h;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 1403
    iget-object p1, v1, Landroidx/appcompat/widget/ListPopupWindow;->B:Landroid/os/Handler;

    iget-object p2, v1, Landroidx/appcompat/widget/ListPopupWindow;->w:Landroidx/appcompat/widget/ListPopupWindow$h;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
