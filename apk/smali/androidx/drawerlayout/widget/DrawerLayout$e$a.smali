.class Landroidx/drawerlayout/widget/DrawerLayout$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/drawerlayout/widget/DrawerLayout$e;


# direct methods
.method public constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout$e;)V
    .locals 0

    .line 2221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$e$a;->a:Landroidx/drawerlayout/widget/DrawerLayout$e;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 2312
    iget-object v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$e$a;->a:Landroidx/drawerlayout/widget/DrawerLayout$e;

    iget-object v2, v1, Landroidx/drawerlayout/widget/DrawerLayout$e;->b:Landroidx/customview/widget/ViewDragHelper;

    .line 2312
    invoke-virtual {v2}, Landroidx/customview/widget/ViewDragHelper;->getEdgeSize()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 2313
    iget v5, v1, Landroidx/drawerlayout/widget/DrawerLayout$e;->a:I

    const/4 v6, 0x0

    if-ne v5, v3, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 2314
    :goto_0
    iget-object v8, v1, Landroidx/drawerlayout/widget/DrawerLayout$e;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v9, 0x5

    if-eqz v7, :cond_2

    .line 2315
    invoke-virtual {v8, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 2316
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v11

    neg-int v11, v11

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    add-int/2addr v11, v2

    goto :goto_2

    .line 2318
    :cond_2
    invoke-virtual {v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v10

    .line 2319
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int/2addr v11, v2

    :goto_2
    if-eqz v10, :cond_8

    if-eqz v7, :cond_3

    .line 2322
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v2, v11, :cond_4

    :cond_3
    if-nez v7, :cond_8

    .line 2323
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v2

    if-le v2, v11, :cond_8

    .line 2324
    :cond_4
    invoke-virtual {v8, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_8

    .line 2325
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 2326
    iget-object v1, v1, Landroidx/drawerlayout/widget/DrawerLayout$e;->b:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v1, v10, v11, v7}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 2327
    iput-boolean v4, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->b:Z

    .line 2328
    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    if-ne v5, v3, :cond_5

    const/4 v3, 0x5

    .line 2279
    :cond_5
    invoke-virtual {v8, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2281
    invoke-virtual {v8, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 2036
    :cond_6
    iget-boolean v1, v8, Landroidx/drawerlayout/widget/DrawerLayout;->r:Z

    if-nez v1, :cond_8

    .line 2037
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide v11, v9

    .line 2038
    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 2040
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_3
    if-ge v6, v2, :cond_7

    .line 2042
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2044
    :cond_7
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 2045
    iput-boolean v4, v8, Landroidx/drawerlayout/widget/DrawerLayout;->r:Z

    :cond_8
    return-void
.end method
