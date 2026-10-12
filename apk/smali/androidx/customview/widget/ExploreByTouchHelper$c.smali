.class Landroidx/customview/widget/ExploreByTouchHelper$c;
.super Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/widget/ExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:Landroidx/customview/widget/ExploreByTouchHelper;


# direct methods
.method public constructor <init>(Landroidx/customview/widget/ExploreByTouchHelper;)V
    .locals 0

    .line 1245
    iput-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper$c;->b:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1

    .line 1252
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper$c;->b:Landroidx/customview/widget/ExploreByTouchHelper;

    .line 1253
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->d(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    .line 1254
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    return-object p1
.end method

.method public findFocus(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2

    const/4 v0, 0x2

    .line 1264
    iget-object v1, p0, Landroidx/customview/widget/ExploreByTouchHelper$c;->b:Landroidx/customview/widget/ExploreByTouchHelper;

    if-ne p1, v0, :cond_0

    .line 1265
    iget p1, v1, Landroidx/customview/widget/ExploreByTouchHelper;->k:I

    goto :goto_0

    :cond_0
    iget p1, v1, Landroidx/customview/widget/ExploreByTouchHelper;->l:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1269
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper$c;->createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    return-object p1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 7

    .line 898
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper$c;->b:Landroidx/customview/widget/ExploreByTouchHelper;

    const/4 v1, -0x1

    .line 898
    iget-object v2, v0, Landroidx/customview/widget/ExploreByTouchHelper;->i:Landroid/view/View;

    if-eq p1, v1, :cond_8

    const/4 v1, 0x1

    if-eq p2, v1, :cond_7

    const/4 v3, 0x2

    if-eq p2, v3, :cond_6

    const/16 v3, 0x40

    const/4 v4, 0x0

    const/high16 v5, 0x10000

    const/high16 v6, -0x80000000

    if-eq p2, v3, :cond_2

    const/16 v3, 0x80

    if-eq p2, v3, :cond_0

    .line 921
    invoke-virtual {v0, p1, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 1001
    :cond_0
    iget p2, v0, Landroidx/customview/widget/ExploreByTouchHelper;->k:I

    if-ne p2, p1, :cond_1

    .line 1002
    iput v6, v0, Landroidx/customview/widget/ExploreByTouchHelper;->k:I

    .line 1003
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1004
    invoke-virtual {v0, p1, v5}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return v1

    :cond_1
    return v4

    .line 971
    :cond_2
    iget-object p2, v0, Landroidx/customview/widget/ExploreByTouchHelper;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    .line 975
    :cond_3
    iget p2, v0, Landroidx/customview/widget/ExploreByTouchHelper;->k:I

    if-eq p2, p1, :cond_5

    if-eq p2, v6, :cond_4

    .line 1002
    iput v6, v0, Landroidx/customview/widget/ExploreByTouchHelper;->k:I

    .line 1003
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1004
    invoke-virtual {v0, p2, v5}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 982
    :cond_4
    iput p1, v0, Landroidx/customview/widget/ExploreByTouchHelper;->k:I

    .line 985
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    const p2, 0x8000

    .line 986
    invoke-virtual {v0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return v1

    :cond_5
    :goto_0
    return v4

    .line 919
    :cond_6
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    move-result p1

    return p1

    .line 917
    :cond_7
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result p1

    return p1

    .line 907
    :cond_8
    invoke-static {v2, p2, p3}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
