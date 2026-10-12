.class public final Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MATERIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "New Material design textbox. Helps to create textbox with matial design provided by google"
    iconName = "images/material_textbox.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NiotronMaterialTextBox"


# instance fields
.field private argb:I

.field private bold:Z

.field borderColor:I

.field private bottomleft:F

.field private bottomright:F

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private enabled:Z

.field private endIconMode:I

.field private endIconTint:I

.field private errorText:Ljava/lang/String;

.field private fontAwesome:Z

.field private fontTypeface:Ljava/lang/String;

.field private helperText:Ljava/lang/String;

.field private hint:Ljava/lang/String;

.field private inputType:I

.field private inputTypeArgs:[Ljava/lang/String;

.field private isBordered:Z

.field private isRepl:Z

.field private italic:Z

.field private mainView:Landroid/widget/LinearLayout;

.field private paddingBottom:I

.field private paddingBottom2:I

.field private paddingLeft:I

.field private paddingLeft2:I

.field private paddingRight:I

.field private paddingRight2:I

.field private paddingTop:I

.field private paddingTop2:I

.field private rid:I

.field sborderColor:I

.field private size:F

.field private startIcon:Ljava/lang/String;

.field private startIconTint:I

.field private text:Ljava/lang/String;

.field private textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private textInputeditText:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

.field private topleft:F

.field private topright:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 74
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 39
    const-string v0, "Hint"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->hint:Ljava/lang/String;

    const/high16 v0, -0x1000000

    .line 40
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->argb:I

    const/high16 v0, 0x41600000    # 14.0f

    .line 42
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->size:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 43
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->topleft:F

    .line 44
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->topright:F

    .line 45
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->bottomleft:F

    .line 46
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->bottomright:F

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->helperText:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->errorText:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->text:Ljava/lang/String;

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->enabled:Z

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingLeft:I

    .line 63
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingTop:I

    .line 64
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingRight:I

    .line 65
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingBottom:I

    .line 66
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingLeft2:I

    .line 67
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingTop2:I

    .line 68
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingRight2:I

    .line 69
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingBottom2:I

    const v0, -0x9dff12

    .line 70
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->borderColor:I

    const v0, -0x616162

    .line 71
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->sborderColor:I

    .line 75
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 76
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->context:Landroid/content/Context;

    .line 77
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->isRepl:Z

    .line 78
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->mainView:Landroid/widget/LinearLayout;

    .line 79
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/4 p1, -0x1

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->Width(I)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->Height(I)V

    .line 82
    const-string p1, "5,5,5,5"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->HeihMargin(Ljava/lang/String;)V

    return-void
.end method

.method private addListeners()V
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputeditText:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private refreshMargin()V
    .locals 6

    .line 452
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->getView()Landroid/view/View;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 454
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 455
    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingLeft:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingTop:I

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingRight:I

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v4

    iget v5, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingBottom:I

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 456
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 458
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 459
    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingLeft:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingTop:I

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingRight:I

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v4

    iget v5, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingBottom:I

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 460
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private refreshPadding()V
    .locals 5

    .line 465
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputeditText:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingLeft2:I

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingTop2:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingRight2:I

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingBottom2:I

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private updateAppearance()V
    .locals 5

    .line 469
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->hint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputeditText:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->argb:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 471
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputeditText:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->size:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 472
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->topleft:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->topright:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->bottomleft:F

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->bottomright:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    return-void
.end method


# virtual methods
.method public Bordered(Z)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set to true if to create a material textbox with a outline background"
        userVisible = false
    .end annotation

    const/4 v0, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->isBordered:Z

    .line 88
    const-string v1, "spinner"

    const-class v2, Lcom/google/android/material/R$layout;

    const-string v3, "layout_inflater"

    const/4 v4, 0x0

    if-nez p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 92
    :try_start_0
    const-string v3, "niotronmaterialspinner2"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 93
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->rid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :catch_0
    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->rid:I

    invoke-virtual {p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 98
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputeditText:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 103
    :try_start_1
    const-string v3, "niotronmaterialspinner1"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 104
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->rid:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    :catch_1
    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->rid:I

    invoke-virtual {p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 109
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputeditText:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    .line 111
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputeditText:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 112
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->topleft:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->topright:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->bottomleft:F

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->bottomright:F

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    .line 113
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->startIconTint:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconTintList(Landroid/content/res/ColorStateList;)V

    .line 114
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v0, [I

    const/4 v3, 0x2

    new-array v3, v3, [[I

    const v4, 0x101009c

    filled-new-array {v4}, [I

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    aput-object v2, v3, v0

    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->borderColor:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->sborderColor:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V

    .line 124
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->mainView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 125
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->mainView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->updateAppearance()V

    .line 127
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->addListeners()V

    return-void
.end method

.method public CustomFontTypeFace(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets custom font typeface"
    .end annotation

    if-eqz p1, :cond_1

    .line 282
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputeditText:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->italic:Z

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Enabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set enabled"
    .end annotation

    .line 325
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->enabled:Z

    .line 326
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get enabled"
    .end annotation

    .line 331
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->enabled:Z

    return v0
.end method

.method public FocusedBorderColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns focused border color"
    .end annotation

    .line 148
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->borderColor:I

    return v0
.end method

.method public FocusedBorderColor(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF6200EE"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Focused border color"
    .end annotation

    .line 133
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->borderColor:I

    .line 134
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    new-array v2, v1, [I

    const/4 v3, 0x2

    new-array v3, v3, [[I

    const v4, 0x101009c

    filled-new-array {v4}, [I

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object v2, v3, v1

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->borderColor:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->sborderColor:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public FontBold(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 317
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->bold:Z

    .line 318
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputeditText:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->fontTypeface:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->italic:Z

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the font for the text should be bold.  By default, it is not."
        userVisible = false
    .end annotation

    .line 303
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->bold:Z

    return v0
.end method

.method public FontTypeface(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets font typeface"
        userVisible = false
    .end annotation

    .line 270
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->fontAwesome:Z

    .line 271
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->fontTypeface:Ljava/lang/String;

    .line 272
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputeditText:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->fontTypeface:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->italic:Z

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public Height(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the height"
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    .line 408
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public HeihMargin(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5,5,5,5"
        editorType = "four"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the margin"
        userVisible = false
    .end annotation

    .line 432
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 433
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingLeft:I

    const/4 v0, 0x1

    .line 434
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingRight:I

    const/4 v0, 0x2

    .line 435
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingTop:I

    const/4 v0, 0x3

    .line 436
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingBottom:I

    .line 437
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->refreshMargin()V

    return-void
.end method

.method public HeihPadding(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "17,17,17,17"
        editorType = "four"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the padding"
        userVisible = false
    .end annotation

    .line 443
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 444
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingLeft2:I

    const/4 v0, 0x1

    .line 445
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingRight2:I

    const/4 v0, 0x2

    .line 446
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingTop2:I

    const/4 v0, 0x3

    .line 447
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingBottom2:I

    .line 448
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->refreshPadding()V

    return-void
.end method

.method public Hint()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the hint"
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputeditText:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Hint(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Hint"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set hint for material spinner"
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->hint:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public ItemClick(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises when item is selected"
    .end annotation

    .line 371
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ItemClick"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ItemsFromString(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set icon from string"
    .end annotation

    .line 377
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 378
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->context:Landroid/content/Context;

    const v2, 0x1090003

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 379
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputeditText:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 380
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputeditText:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public OnFocusChange(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises when focus changes"
    .end annotation

    .line 366
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnFocusChange"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RadiusBottomLeft(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Bottom left radious"
    .end annotation

    .line 251
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result p1

    int-to-float p1, p1

    .line 252
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->bottomleft:F

    .line 253
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->topleft:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->topright:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->bottomright:F

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    return-void
.end method

.method public RadiusBottomRight(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Bottom right radious"
    .end annotation

    .line 243
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result p1

    int-to-float p1, p1

    .line 244
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->bottomright:F

    .line 245
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->topleft:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->topright:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->bottomleft:F

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    return-void
.end method

.method public RadiusTopLeft(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Top left radious"
    .end annotation

    .line 235
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result p1

    int-to-float p1, p1

    .line 236
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->topleft:F

    .line 237
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->topright:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->bottomleft:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->bottomright:F

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    return-void
.end method

.method public RadiusTopRight(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Top right radious"
    .end annotation

    .line 227
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result p1

    int-to-float p1, p1

    .line 228
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->topright:F

    .line 229
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->topleft:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->bottomleft:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->bottomright:F

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    return-void
.end method

.method public SecondaryBorderColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Secondary border color"
    .end annotation

    .line 169
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->sborderColor:I

    return v0
.end method

.method public SecondaryBorderColor(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Secondary border color"
    .end annotation

    .line 154
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->sborderColor:I

    .line 155
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    new-array v2, v1, [I

    const/4 v3, 0x2

    new-array v3, v3, [[I

    const v4, 0x101009c

    filled-new-array {v4}, [I

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object v2, v3, v1

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->borderColor:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->sborderColor:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public SetMargin(IIII)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the margin"
    .end annotation

    .line 413
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingTop:I

    .line 414
    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingBottom:I

    .line 415
    iput p3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingRight:I

    .line 416
    iput p4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingLeft:I

    .line 417
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->refreshMargin()V

    return-void
.end method

.method public SetPadding(IIII)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets padding"
    .end annotation

    .line 422
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingTop2:I

    .line 423
    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingBottom2:I

    .line 424
    iput p3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingRight2:I

    .line 425
    iput p4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->paddingLeft2:I

    .line 426
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->refreshPadding()V

    return-void
.end method

.method public StartIcon()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns start icon"
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->startIcon:Ljava/lang/String;

    return-object v0
.end method

.method public StartIcon(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set start icon"
    .end annotation

    .line 337
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->startIcon:Ljava/lang/String;

    .line 338
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public StartIconTint()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets start icon tint"
    .end annotation

    .line 360
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->startIconTint:I

    return v0
.end method

.method public StartIconTint(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set start icon tint"
        userVisible = false
    .end annotation

    .line 354
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->startIconTint:I

    .line 355
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "returns the text"
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputeditText:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the text"
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->text:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputeditText:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the text color"
    .end annotation

    .line 195
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->argb:I

    return v0
.end method

.method public TextColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set text color of the spinner"
    .end annotation

    .line 189
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->argb:I

    .line 190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputeditText:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public TextSize()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the text size"
    .end annotation

    .line 220
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->size:F

    return v0
.end method

.method public TextSize(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the text size"
    .end annotation

    .line 214
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->size:F

    .line 215
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->textInputeditText:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the width"
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0xa0

    .line 399
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->mainView:Landroid/widget/LinearLayout;

    return-object v0
.end method
