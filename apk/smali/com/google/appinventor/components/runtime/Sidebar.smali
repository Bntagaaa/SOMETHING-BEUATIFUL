.class public Lcom/google/appinventor/components/runtime/Sidebar;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Sidebar component lets you help to create sidebar for your app"
    iconName = "images/sidebar.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private itemColor:I

.field private navigationView:Lcom/google/android/material/navigation/NavigationView;

.field private selectedItemColor:I

.field private sidebarDirection:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 40
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/high16 v0, -0x1000000

    .line 34
    iput v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->itemColor:I

    .line 35
    const-string v0, "#6200EE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->selectedItemColor:I

    const/4 v0, 0x3

    .line 37
    iput v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->sidebarDirection:I

    .line 41
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 42
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->context:Landroid/content/Context;

    .line 43
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 45
    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnOrientationChange(Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;)V

    .line 47
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->getDrawerLayout()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 48
    new-instance p1, Lcom/google/android/material/navigation/NavigationView;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    .line 49
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/Sidebar;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method private addListeners()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    new-instance v1, Lcom/google/appinventor/components/runtime/Sidebar$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Sidebar$1;-><init>(Lcom/google/appinventor/components/runtime/Sidebar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    .line 173
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v1, Lcom/google/appinventor/components/runtime/Sidebar$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Sidebar$2;-><init>(Lcom/google/appinventor/components/runtime/Sidebar;)V

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    return-void
.end method


# virtual methods
.method public AddItem(Ljava/lang/String;I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adds menu item"
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sidebar;->navigationCheck()V

    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-interface {v0, p2, v1, v2, p1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 119
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    const/4 p2, 0x0

    .line 120
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public AddItemWithIcon(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adds menu item"
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sidebar;->navigationCheck()V

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2

    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-interface {v0, p3, v1, v2, p1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    .line 131
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    const/4 p2, 0x0

    .line 132
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 134
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "Sidebar"

    const-string p3, "No icon found for menu item"

    invoke-direct {p1, p2, p3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public AddSidebar(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add custom layout to show as sidebar"
    .end annotation

    .line 86
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_1
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    .line 95
    iget v1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->sidebarDirection:I

    iput v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 96
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public ClearItems()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 141
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    return-void
.end method

.method public Close()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Closes the sidebar"
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->sidebarDirection:I

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    return-void
.end method

.method public DrawerClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when drawer closed"
    .end annotation

    const/4 v0, 0x0

    .line 218
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DrawerClosed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DrawerOpened()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when drawer opened"
    .end annotation

    const/4 v0, 0x0

    .line 213
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DrawerOpened"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Initialize()V
    .locals 2

    .line 53
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    .line 54
    iget v1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->sidebarDirection:I

    iput v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 55
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sidebar;->addListeners()V

    .line 57
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sidebar;->setColor()V

    .line 58
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->enableHamburger()V

    return-void
.end method

.method public ItemColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 224
    iput p1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->itemColor:I

    .line 225
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sidebar;->setColor()V

    return-void
.end method

.method public MenuItemSelected(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Item selected"
    .end annotation

    .line 198
    const-string v0, "MenuItemSelected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Open()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Opens the sidebar"
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->sidebarDirection:I

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    return-void
.end method

.method public SelectedItemColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF6200EE"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 231
    iput p1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->selectedItemColor:I

    .line 232
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sidebar;->setColor()V

    return-void
.end method

.method public SetHeader(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set header to the drawer"
    .end annotation

    .line 101
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 105
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sidebar;->navigationCheck()V

    .line 107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getHeaderCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationView;->addHeaderView(Landroid/view/View;)V

    return-void

    .line 110
    :cond_1
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "Sidebar"

    const-string v1, "More than 1 header is not allowed"

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public SetSelected(Ljava/lang/String;Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 147
    :goto_0
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 148
    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, p2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 151
    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public SidebarDirection()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Direction of the sidebar"
    .end annotation

    .line 77
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->sidebarDirection:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 78
    const-string v0, "Right"

    return-object v0

    .line 80
    :cond_0
    const-string v0, "Left"

    return-object v0
.end method

.method public SidebarDirection(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/SidebarDirection;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Direction of the sidebar"
    .end annotation

    .line 64
    const-string v0, "Right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    .line 65
    iput p1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->sidebarDirection:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 67
    iput p1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->sidebarDirection:I

    .line 70
    :goto_0
    new-instance p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    .line 71
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->sidebarDirection:I

    iput v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public navigationCheck()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 159
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    .line 160
    iget v1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->sidebarDirection:I

    iput v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 161
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Sidebar;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onOrientationChange()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 258
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getDrawerLayout()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 259
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 260
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sidebar;->Initialize()V

    return-void
.end method

.method public setColor()V
    .locals 5

    .line 236
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    new-array v2, v1, [I

    const/4 v3, 0x2

    new-array v3, v3, [[I

    const v4, 0x10100a0

    filled-new-array {v4}, [I

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object v2, v3, v1

    iget v1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->selectedItemColor:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/Sidebar;->itemColor:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 245
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/navigation/NavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 246
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/navigation/NavigationView;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
