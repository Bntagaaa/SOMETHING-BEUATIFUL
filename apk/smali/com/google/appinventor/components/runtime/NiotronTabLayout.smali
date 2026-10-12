.class public final Lcom/google/appinventor/components/runtime/NiotronTabLayout;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MATERIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A new component "
    iconName = "images/niotronTabLayout.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NiotronTabLayout"


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private nonSelectedColor:I

.field private selectedColor:I

.field private tabLayout:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 46
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 37
    const-string v0, "#6200EE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->selectedColor:I

    const v0, -0xbbbbbc

    .line 38
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->nonSelectedColor:I

    .line 48
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 49
    new-instance v0, Lcom/google/android/material/tabs/TabLayout;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 50
    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->nonSelectedColor:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->selectedColor:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(II)V

    .line 52
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 53
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->addListeners()V

    const p1, -0xff01

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->IndicatorColor(I)V

    return-void
.end method

.method private addListeners()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronTabLayout$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronTabLayout$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronTabLayout;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method


# virtual methods
.method public AddTab(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adds a tab item with text and icon"
    .end annotation

    .line 137
    const-string v0, "TabLayout"

    if-lez p3, :cond_1

    add-int/lit8 p3, p3, -0x1

    .line 141
    new-instance v1, Lcom/google/android/material/tabs/TabItem;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/material/tabs/TabItem;-><init>(Landroid/content/Context;)V

    .line 142
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, v1, p3}, Lcom/google/android/material/tabs/TabLayout;->addView(Landroid/view/View;I)V

    .line 143
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, p3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 145
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 147
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    .line 148
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p2, p3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/tabs/TabLayout$Tab;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 150
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "Icon not found, please check asset name properly"

    invoke-direct {p1, v0, p2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void

    .line 138
    :cond_1
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "Index Should Be Greater Than 0 in Add Tab Block"

    invoke-direct {p1, v0, p2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Background color"
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public ConnectViewPager(Lcom/google/appinventor/components/runtime/NiotronViewPager;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Connect View Pager With Tab View"
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronViewPager;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method public FullWidthTab(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Show Full Width Tab"
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->setTabIndicatorFullWidth(Z)V

    return-void
.end method

.method public IndicatorColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFF00FF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Selected indicator color"
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    return-void
.end method

.method public ReSelected(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Invoked when tab item re-selected"
    .end annotation

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ReSelected"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RemoveAllTabs()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove All Tabs"
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    return-void
.end method

.method public Scrollable(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Scrollable Tab View"
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    return-void
.end method

.method public Selected(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Invoked when tab item selected"
    .end annotation

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Selected"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SelectedTextColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF6200EE"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Selected text color"
    .end annotation

    .line 174
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->selectedColor:I

    .line 175
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->nonSelectedColor:I

    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(II)V

    return-void
.end method

.method public TabIcons(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Adds tab item button with icon"
        userVisible = false
    .end annotation

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 111
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NiotronTabLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    array-length v0, p1

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    .line 114
    const-string p1, "Tab icons length is less than 1"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 117
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_4

    .line 118
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    if-nez v2, :cond_2

    .line 119
    new-instance v2, Lcom/google/android/material/tabs/TabItem;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/material/tabs/TabItem;-><init>(Landroid/content/Context;)V

    .line 120
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3, v2, v0}, Lcom/google/android/material/tabs/TabLayout;->addView(Landroid/view/View;I)V

    .line 121
    const-string v2, "Tab (icon) created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tab icon set "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "null"

    goto :goto_1

    :cond_3
    const-string v2, "ok"

    :goto_1
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "TabLayout"

    const-string v1, "Icon not found, please check asset name properly"

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method public TabNames(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Adds tab item button with text"
        userVisible = false
    .end annotation

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NiotronTabLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    array-length v0, p1

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    .line 93
    const-string p1, "Length is less than 1"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 96
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 97
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    if-nez v2, :cond_2

    .line 98
    new-instance v2, Lcom/google/android/material/tabs/TabItem;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/material/tabs/TabItem;-><init>(Landroid/content/Context;)V

    .line 99
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3, v2, v0}, Lcom/google/android/material/tabs/TabLayout;->addView(Landroid/view/View;I)V

    .line 100
    const-string v2, "Tab created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 103
    aget-object v2, p1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tab text set to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public TextColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF444444"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Text color"
    .end annotation

    .line 187
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->nonSelectedColor:I

    .line 188
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->selectedColor:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(II)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-object v0
.end method
