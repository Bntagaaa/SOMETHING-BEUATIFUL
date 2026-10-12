.class public final Lcom/google/appinventor/components/runtime/NiotronFAB;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MATERIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A new component "
    iconName = "images/niotronFAB.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field extendedFloatingActionButton:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

.field private marginBottom:I

.field private marginLeft:I

.field private marginRight:I

.field private marginTop:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 45
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->marginLeft:I

    .line 35
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->marginTop:I

    .line 36
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->marginRight:I

    .line 37
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->marginBottom:I

    .line 46
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 47
    new-instance v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->extendedFloatingActionButton:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 48
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->extendedFloatingActionButton:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/Form;->setFAB(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    .line 49
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->extendedFloatingActionButton:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 50
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronFAB;->addListeners()V

    .line 51
    const-string p1, "16,16,16,16"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFAB;->HeihMargin(Ljava/lang/String;)V

    .line 52
    const-string p1, "Text"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFAB;->Text(Ljava/lang/String;)V

    .line 53
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFAB;->Icon(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronFAB;->Extended(Z)V

    return-void
.end method

.method private addListeners()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getFAB()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFAB$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronFAB$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronFAB;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getFAB()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFAB$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronFAB$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronFAB;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private px(I)I
    .locals 1

    int-to-float p1, p1

    .line 179
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private refreshMargin()V
    .locals 6

    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getFAB()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 174
    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->marginLeft:I

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/NiotronFAB;->px(I)I

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->marginTop:I

    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/NiotronFAB;->px(I)I

    move-result v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->marginRight:I

    invoke-direct {p0, v4}, Lcom/google/appinventor/components/runtime/NiotronFAB;->px(I)I

    move-result v4

    iget v5, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->marginBottom:I

    invoke-direct {p0, v5}, Lcom/google/appinventor/components/runtime/NiotronFAB;->px(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 175
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFAFAF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set background color"
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getFAB()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundColor(I)V

    return-void
.end method

.method public Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Invokes when fab clicked"
    .end annotation

    const/4 v0, 0x0

    .line 146
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Click"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Extend()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows the FAB"
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getFAB()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extend()V

    return-void
.end method

.method public Extended(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set extended"
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getFAB()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtended(Z)V

    return-void
.end method

.method public HeihMargin(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "16,16,16,16"
        editorType = "four"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 131
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 132
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->marginLeft:I

    const/4 v0, 0x1

    .line 133
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->marginRight:I

    const/4 v0, 0x2

    .line 134
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->marginTop:I

    const/4 v0, 0x3

    .line 135
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->marginBottom:I

    .line 136
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronFAB;->refreshMargin()V

    return-void
.end method

.method public HeihPadding(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0,0,0,0"
        editorType = "four"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    return-void
.end method

.method public Hide()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hides the FAB"
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getFAB()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hide()V

    return-void
.end method

.method public Icon(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the icon"
    .end annotation

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getFAB()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 71
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "FAB"

    const-string v1, "Icon not found"

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_0
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/16 v0, 0xc

    .line 75
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronFAB;->px(I)I

    move-result v1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronFAB;->px(I)I

    move-result v2

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronFAB;->px(I)I

    move-result v3

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronFAB;->px(I)I

    move-result v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    .line 76
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getFAB()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public IconColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set icon color"
    .end annotation

    const v0, 0xffffff

    if-ne p1, v0, :cond_0

    .line 96
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->getFAB()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getFAB()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object v0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public LongClick()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Invokes when fab long clicked"
    .end annotation

    const/4 v0, 0x0

    .line 151
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LongClick"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Show()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows the FAB"
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getFAB()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->show()V

    return-void
.end method

.method public Shrink()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shrinks the FAB"
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getFAB()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrink()V

    return-void
.end method

.method public Text(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Text"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the text"
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getFAB()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public TextColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set text color"
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFAB;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getFAB()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setTextColor(I)V

    return-void
.end method
