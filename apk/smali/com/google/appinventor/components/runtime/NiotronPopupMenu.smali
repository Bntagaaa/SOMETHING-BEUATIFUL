.class public final Lcom/google/appinventor/components/runtime/NiotronPopupMenu;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MATERIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A new component "
    iconName = "images/niotronPopupMenu.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private popupMenu:Landroidx/appcompat/widget/PopupMenu;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 41
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 42
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public AddItem(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add item"
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->popupMenu:Landroidx/appcompat/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->activity:Landroid/app/Activity;

    const-string v0, "Target Not Set For Popup Menu"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public AddItemWithIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add item with icon"
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->popupMenu:Landroidx/appcompat/widget/PopupMenu;

    if-eqz v0, :cond_1

    .line 87
    :try_start_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 88
    invoke-interface {v0, p1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronPopupMenu$3;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/NiotronPopupMenu$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronPopupMenu;Ljava/lang/String;)V

    .line 89
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object p1

    .line 95
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2

    .line 97
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    const/16 v2, 0x24

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->px(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->px(I)I

    move-result v2

    const/4 v4, 0x1

    invoke-static {p2, v3, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 98
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->activity:Landroid/app/Activity;

    const-string p2, "Target Not Set For Popup Menu"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public AddItems(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add items"
    .end annotation

    .line 110
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->popupMenu:Landroidx/appcompat/widget/PopupMenu;

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    const/4 v0, 0x1

    .line 112
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 113
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->popupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v3}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 116
    invoke-interface {v3, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/NiotronPopupMenu$4;

    invoke-direct {v4, p0, v1}, Lcom/google/appinventor/components/runtime/NiotronPopupMenu$4;-><init>(Lcom/google/appinventor/components/runtime/NiotronPopupMenu;Ljava/lang/String;)V

    .line 117
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    .line 123
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 125
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v5, 0x18

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->px(I)I

    move-result v5

    const/16 v6, 0x24

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->px(I)I

    move-result v6

    invoke-static {v2, v5, v6, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 126
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-void

    .line 133
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->activity:Landroid/app/Activity;

    const-string p2, "Target Not Set For Popup Menu"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public Clear()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear the items"
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->popupMenu:Landroidx/appcompat/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    :cond_0
    return-void
.end method

.method public Dismiss()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Dismisses the popup menu"
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->popupMenu:Landroidx/appcompat/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method public MenuDismissed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Menu dismissed"
    .end annotation

    const/4 v0, 0x0

    .line 52
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MenuDismissed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MenuItemClick(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Menu item clicked"
    .end annotation

    .line 47
    const-string v0, "MenuItemClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RemoveItem(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Removes item"
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->popupMenu:Landroidx/appcompat/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Landroid/view/Menu;->removeItem(I)V

    :cond_0
    return-void
.end method

.method public Show()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows the popup menu"
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->popupMenu:Landroidx/appcompat/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->activity:Landroid/app/Activity;

    const-string v1, "Target Not Set For Popup Menu"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public Target(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "VisibleComponents"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set target"
    .end annotation

    .line 58
    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->popupMenu:Landroidx/appcompat/widget/PopupMenu;

    .line 59
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->setOptionalIconsVisible(Z)V

    .line 60
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->popupMenu:Landroidx/appcompat/widget/PopupMenu;

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronPopupMenu$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronPopupMenu;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 66
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->popupMenu:Landroidx/appcompat/widget/PopupMenu;

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronPopupMenu$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronPopupMenu;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/PopupMenu;->setOnDismissListener(Landroidx/appcompat/widget/PopupMenu$OnDismissListener;)V

    return-void
.end method

.method public px(I)I
    .locals 1

    int-to-float p1, p1

    .line 169
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method
