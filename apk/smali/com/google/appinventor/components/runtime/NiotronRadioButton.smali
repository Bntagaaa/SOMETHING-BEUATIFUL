.class public final Lcom/google/appinventor/components/runtime/NiotronRadioButton;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component dor radio buttons"
    iconName = "images/niotronRadioButton.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private radioGroup:Landroid/widget/RadioGroup;

.field private selectedColor:I

.field private unselectedColor:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 39
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const v0, -0xff7f80

    .line 30
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->selectedColor:I

    const v0, -0x777778

    .line 31
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->unselectedColor:I

    .line 40
    new-instance v0, Landroid/widget/RadioGroup;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->radioGroup:Landroid/widget/RadioGroup;

    .line 43
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 44
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 45
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->addListener()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/NiotronRadioButton;)Lcom/google/appinventor/components/runtime/ComponentContainer;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    return-object p0
.end method

.method private addListener()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->radioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronRadioButton$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronRadioButton$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronRadioButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public AddRadioButton(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adds radio button"
    .end annotation

    .line 100
    new-instance v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    new-instance p1, Landroid/content/res/ColorStateList;

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

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->selectedColor:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->unselectedColor:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-direct {p1, v3, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 112
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public CheckChange(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Invoked when check changes"
    .end annotation

    .line 60
    const-string v0, "CheckChange"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetCheckedRadioButton()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public Horizontal(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set true is horizonal"
    .end annotation

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->radioGroup:Landroid/widget/RadioGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->radioGroup:Landroid/widget/RadioGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method public IsChecked(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public RadioButtons(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Adds radio button"
        userVisible = false
    .end annotation

    const/4 v0, 0x1

    .line 80
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 81
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 82
    new-instance v3, Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 83
    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v1, [I

    const/4 v6, 0x2

    new-array v6, v6, [[I

    const v7, 0x10100a0

    filled-new-array {v7}, [I

    move-result-object v7

    aput-object v7, v6, v1

    aput-object v5, v6, v0

    iget v5, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->selectedColor:I

    iget v7, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->unselectedColor:I

    filled-new-array {v5, v7}, [I

    move-result-object v5

    invoke-direct {v4, v6, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 94
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public SelectedColor(I)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF008080"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    const/4 v0, 0x1

    .line 129
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->selectedColor:I

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 130
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 132
    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v4, p1, [I

    const/4 v5, 0x2

    new-array v5, v5, [[I

    const v6, 0x10100a0

    filled-new-array {v6}, [I

    move-result-object v6

    aput-object v6, v5, p1

    aput-object v4, v5, v0

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->selectedColor:I

    iget v6, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->unselectedColor:I

    filled-new-array {v4, v6}, [I

    move-result-object v4

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public UnselectedColor(I)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF888888"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    const/4 v0, 0x1

    .line 149
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->unselectedColor:I

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 150
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 152
    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v4, p1, [I

    const/4 v5, 0x2

    new-array v5, v5, [[I

    const v6, 0x10100a0

    filled-new-array {v6}, [I

    move-result-object v6

    aput-object v6, v5, p1

    aput-object v4, v5, v0

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->selectedColor:I

    iget v6, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->unselectedColor:I

    filled-new-array {v4, v6}, [I

    move-result-object v4

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->radioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method
