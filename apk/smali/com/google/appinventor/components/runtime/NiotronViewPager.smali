.class public final Lcom/google/appinventor/components/runtime/NiotronViewPager;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "View pager component for android lets you you add pagination in your app"
    iconName = "images/viewpager.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private pager:Landroidx/viewpager/widget/ViewPager;

.field public pagerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 30
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 31
    new-instance v0, Landroidx/viewpager/widget/ViewPager;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewPager;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 32
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronViewPager;->pagerViews:Ljava/util/ArrayList;

    .line 35
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronViewPager;->pager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronViewPager$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronViewPager$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronViewPager;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const/4 p1, -0x2

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronViewPager;->Width(I)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronViewPager;->Height(I)V

    .line 59
    const-string p1, "View Pager"

    const-string v0, "View Pager initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public AddPage(Ljava/lang/Object;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adds page to ViewPager. Accepts Visible components or the list of visible components"
    .end annotation

    .line 64
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 65
    const-string v0, "AndroidViewComponent"

    const-string v3, "View Pager"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    check-cast p1, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 68
    const-string v0, "Was not visible"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewPager;->pagerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronViewPager;->pager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/google/appinventor/components/runtime/MyPagerAdaper;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronViewPager;->pagerViews:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/MyPagerAdaper;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void

    .line 74
    :cond_1
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v3, "Invalid Input"

    if-eqz v0, :cond_6

    .line 75
    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v0, 0x0

    .line 76
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 77
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    if-eqz v4, :cond_3

    .line 78
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 79
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v4

    .line 80
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v1, :cond_2

    .line 81
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 84
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NiotronViewPager;->pagerViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_3
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "Every iten of the ViewPager should be either component or layout"

    invoke-direct {p1, v0, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_4
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronViewPager;->pagerViews:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    .line 90
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewPager;->pager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/google/appinventor/components/runtime/MyPagerAdaper;

    invoke-direct {v1, p1}, Lcom/google/appinventor/components/runtime/MyPagerAdaper;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    :cond_5
    return-void

    .line 93
    :cond_6
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "The \"page\" parameter should be either component/layout or list of component/layout"

    invoke-direct {p1, v0, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public CurrentPage()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the position of current page"
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewPager;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public Height(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 173
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public LogEvent(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Logs message"
    .end annotation

    .line 145
    const-string v0, "LogEvent"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PageScrolled(IFI)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When viewpager page scrolls"
    .end annotation

    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "PageScrolled"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PageSelected(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When viewpager page changes"
    .end annotation

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "PageSelected"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RemovePage(Ljava/lang/Object;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Removes a page from viewpager"
    .end annotation

    .line 99
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v1, "Invalid Input"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 100
    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v0, 0x0

    .line 101
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 103
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 104
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronViewPager;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 105
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronViewPager;->pagerViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "List for removing page by index must be integer type"

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronViewPager;->pager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/google/appinventor/components/runtime/MyPagerAdaper;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronViewPager;->pagerViews:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/MyPagerAdaper;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void

    .line 113
    :cond_1
    :try_start_1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewPager;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewPager;->pagerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 116
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronViewPager;->pager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/google/appinventor/components/runtime/MyPagerAdaper;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronViewPager;->pagerViews:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Lcom/google/appinventor/components/runtime/MyPagerAdaper;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 118
    :catch_1
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "Argument for removing page should be either a index or list of index"

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public ScrollStateChanged(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When page scroll state changes"
    .end annotation

    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ScrollStateChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SetCurrentPage(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set current page of the viewpager"
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewPager;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 164
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewPager;->pager:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method
