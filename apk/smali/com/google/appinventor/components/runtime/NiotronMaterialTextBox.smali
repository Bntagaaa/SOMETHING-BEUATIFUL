.class public final Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;
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

.field private backgroundColor:I

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

.field private hintColor:I

.field private inputType:I

.field private inputTypeArgs:[Ljava/lang/String;

.field private isBordered:Z

.field private isRepl:Z

.field private italic:Z

.field private mainView:Landroid/widget/LinearLayout;

.field private maxLength:I

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

.field private singleLine:Z

.field private size:F

.field private startIcon:Ljava/lang/String;

.field private startIconTint:I

.field private text:Ljava/lang/String;

.field private textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

.field private topleft:F

.field private topright:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 81
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 41
    const-string v0, "Hint"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->hint:Ljava/lang/String;

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->singleLine:Z

    const/high16 v1, -0x1000000

    .line 43
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->argb:I

    const v1, -0x777778

    .line 44
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->hintColor:I

    const/high16 v1, 0x41600000    # 14.0f

    .line 46
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->size:F

    const/4 v1, 0x5

    .line 47
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->topleft:F

    .line 48
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->topright:F

    .line 49
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bottomleft:F

    .line 50
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bottomright:F

    .line 51
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->helperText:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->errorText:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->text:Ljava/lang/String;

    .line 62
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->enabled:Z

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingLeft:I

    .line 68
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingTop:I

    .line 69
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingRight:I

    .line 70
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingBottom:I

    .line 71
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingLeft2:I

    .line 72
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingTop2:I

    .line 73
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingRight2:I

    .line 74
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingBottom2:I

    const v0, -0x9dff12

    .line 75
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->borderColor:I

    const v0, -0x444445

    .line 76
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->sborderColor:I

    const v0, 0xffffff

    .line 77
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->backgroundColor:I

    .line 82
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 83
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->context:Landroid/content/Context;

    .line 84
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->isRepl:Z

    .line 85
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->mainView:Landroid/widget/LinearLayout;

    .line 86
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/4 p1, -0x1

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->Width(I)V

    .line 88
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->Height(I)V

    .line 89
    const-string p1, "5,5,5,5"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->HeihMargin(Ljava/lang/String;)V

    return-void
.end method

.method private addListeners()V
    .locals 2

    .line 745
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 752
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private refreshMargin()V
    .locals 6

    .line 728
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->getView()Landroid/view/View;

    move-result-object v0

    .line 729
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 730
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 731
    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingLeft:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingTop:I

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingRight:I

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v4

    iget v5, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingBottom:I

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 732
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 734
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 735
    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingLeft:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingTop:I

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingRight:I

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v4

    iget v5, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingBottom:I

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 736
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private refreshPadding()V
    .locals 5

    .line 741
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingLeft2:I

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingTop2:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingRight2:I

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingBottom2:I

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private updateAppearance()V
    .locals 5

    .line 662
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->hint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 663
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->singleLine:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 664
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->argb:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 665
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->hintColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 666
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->size:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 667
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->topleft:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->topright:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bottomleft:F

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bottomright:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    .line 668
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->inputType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 670
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 672
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 674
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 677
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    .line 679
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 681
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 683
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 684
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the background color"
    .end annotation

    .line 157
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the background color"
    .end annotation

    .line 151
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->backgroundColor:I

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public Bordered(Z)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set to true if to create a material textbox with a outline background"
        userVisible = false
    .end annotation

    const/4 v0, 0x1

    const v1, 0x101009c

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 94
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->isBordered:Z

    .line 95
    const-string v4, "textbox"

    const-class v5, Lcom/google/android/material/R$layout;

    const-string v6, "layout_inflater"

    const/4 v7, 0x0

    if-nez p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 99
    :try_start_0
    const-string v6, "niotronmaterialtextfield2"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 100
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    iput v5, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->rid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :catch_0
    iget v5, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->rid:I

    invoke-virtual {p1, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 105
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 110
    :try_start_1
    const-string v6, "niotronmaterialtextfield1"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 111
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    iput v5, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->rid:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    :catch_1
    iget v5, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->rid:I

    invoke-virtual {p1, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 116
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    .line 118
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->topleft:F

    iget v5, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->topright:F

    iget v6, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bottomleft:F

    iget v7, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bottomright:F

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    .line 119
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->endIconMode:I

    invoke-virtual {p1, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 120
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->endIconTint:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintList(Landroid/content/res/ColorStateList;)V

    .line 121
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->startIconTint:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconTintList(Landroid/content/res/ColorStateList;)V

    .line 122
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v3, [I

    new-array v6, v2, [[I

    filled-new-array {v1}, [I

    move-result-object v7

    aput-object v7, v6, v3

    aput-object v5, v6, v0

    iget v5, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->borderColor:I

    iget v7, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->sborderColor:I

    filled-new-array {v5, v7}, [I

    move-result-object v5

    invoke-direct {v4, v6, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V

    .line 132
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v3, [I

    new-array v2, v2, [[I

    filled-new-array {v1}, [I

    move-result-object v1

    aput-object v1, v2, v3

    aput-object v5, v2, v0

    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->borderColor:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->hintColor:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-direct {v4, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 142
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->mainView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 143
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->mainView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->updateAppearance()V

    .line 145
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->addListeners()V

    return-void
.end method

.method public CursorVisible(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets if cursor visible"
    .end annotation

    .line 625
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setCursorVisible(Z)V

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

    .line 498
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->italic:Z

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
        description = "Sets enabled"
    .end annotation

    .line 558
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->enabled:Z

    .line 559
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns enabled"
    .end annotation

    .line 564
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->enabled:Z

    return v0
.end method

.method public EndIconMode()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns end icon mode"
    .end annotation

    .line 605
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->endIconMode:I

    return v0
.end method

.method public EndIconMode(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets end icon mode"
    .end annotation

    .line 599
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->endIconMode:I

    .line 600
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    return-void
.end method

.method public EndIconTint()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns end icon tint"
    .end annotation

    .line 617
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->endIconTint:I

    return v0
.end method

.method public EndIconTint(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 611
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->endIconTint:I

    .line 612
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public ErrorText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the error text"
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->errorText:Ljava/lang/String;

    return-object v0
.end method

.method public ErrorText(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the error text, It will be shown on the bottom of any textbox"
    .end annotation

    .line 367
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->errorText:Ljava/lang/String;

    return-void
.end method

.method public FocusedBorderColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Focused border color"
    .end annotation

    .line 190
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->borderColor:I

    return v0
.end method

.method public FocusedBorderColor(I)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF6200EE"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Focused bordered color"
    .end annotation

    .line 163
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->borderColor:I

    .line 164
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    new-array v2, v1, [I

    const/4 v3, 0x2

    new-array v4, v3, [[I

    const v5, 0x101009c

    filled-new-array {v5}, [I

    move-result-object v6

    aput-object v6, v4, v1

    const/4 v6, 0x1

    aput-object v2, v4, v6

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->borderColor:I

    iget v7, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->sborderColor:I

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v0, v4, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V

    .line 174
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v2, v1, [I

    new-array v3, v3, [[I

    filled-new-array {v5}, [I

    move-result-object v4

    aput-object v4, v3, v1

    aput-object v2, v3, v6

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->borderColor:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->hintColor:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 184
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 185
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public FontBold(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets font bold"
        userVisible = false
    .end annotation

    .line 533
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bold:Z

    .line 534
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->fontTypeface:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->italic:Z

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

    .line 519
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bold:Z

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

    .line 486
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->fontAwesome:Z

    .line 487
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->fontTypeface:Ljava/lang/String;

    .line 488
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->fontTypeface:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->italic:Z

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public Height(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets height"
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x38

    .line 658
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
        description = "Sets margin"
        userVisible = false
    .end annotation

    .line 708
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 709
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingLeft:I

    const/4 v0, 0x1

    .line 710
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingRight:I

    const/4 v0, 0x2

    .line 711
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingTop:I

    const/4 v0, 0x3

    .line 712
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingBottom:I

    .line 713
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->refreshMargin()V

    return-void
.end method

.method public HeihPadding(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "17,17,17,17"
        editorType = "four"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets padding"
        userVisible = false
    .end annotation

    .line 719
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 720
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingLeft2:I

    const/4 v0, 0x1

    .line 721
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingRight2:I

    const/4 v0, 0x2

    .line 722
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingTop2:I

    const/4 v0, 0x3

    .line 723
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingBottom2:I

    .line 724
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->refreshPadding()V

    return-void
.end method

.method public HelperText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns helper text"
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->helperText:Ljava/lang/String;

    return-object v0
.end method

.method public HelperText(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the helper text, It will be shown on the bottom of any textbox. To disable it use empty string"
    .end annotation

    .line 349
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->helperText:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 350
    const-string v0, ""

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 355
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->helperText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    return-void

    .line 351
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    return-void
.end method

.method public HideKeyboard()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide the keyboard.  Only multiline text boxes need this. \tSingle line text boxes close the keyboard when the users presses the Done key."
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 542
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 543
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public Hint()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the hint"
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getHint()Ljava/lang/CharSequence;

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
        description = "Set hint for material textbox"
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->hint:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public HintColor()I
    .locals 1

    .line 262
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->hintColor:I

    return v0
.end method

.method public HintColor(I)V
    .locals 5

    .line 269
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->hintColor:I

    .line 270
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

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

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->borderColor:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->hintColor:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public InputType()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the input type"
    .end annotation

    .line 306
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->inputType:I

    return v0
.end method

.method public InputType(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "input_type"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specify the input type of the text box, Possible integer values are\n1 for normal text\n2 for number only\n3 for email address\n4 for password text\n5 for phone number\n6 for date time"
    .end annotation

    .line 286
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->inputType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 289
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x20001

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 291
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    const/16 v0, 0x3002

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    return-void

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 293
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    return-void

    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 295
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    .line 296
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    return-void

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 298
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setInputType(I)V

    return-void

    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 300
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setInputType(I)V

    :cond_5
    return-void
.end method

.method public MaxLength()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns max length"
    .end annotation

    .line 401
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->maxLength:I

    return v0
.end method

.method public MaxLength(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the maximum length of the counter, It will be shown on the bottom left corner of any textbox. To disable it use 0 number"
    .end annotation

    .line 389
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->maxLength:I

    if-nez p1, :cond_0

    .line 391
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V

    .line 392
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V

    return-void

    .line 394
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V

    .line 395
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->maxLength:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V

    return-void
.end method

.method public OnFocusChange(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises when focus changes"
    .end annotation

    .line 630
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

.method public OnTextChange(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises when text changes"
    .end annotation

    .line 635
    const-string v0, "OnTextChange"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RadiousBottomLeft(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Bottom left radious"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 467
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result p1

    int-to-float p1, p1

    .line 468
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bottomleft:F

    .line 469
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->topleft:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->topright:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bottomright:F

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    return-void
.end method

.method public RadiousBottomRight(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Bottom right radious"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 458
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result p1

    int-to-float p1, p1

    .line 459
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bottomright:F

    .line 460
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->topleft:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->topright:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bottomleft:F

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    return-void
.end method

.method public RadiousTopLeft(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Top left radious"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 449
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result p1

    int-to-float p1, p1

    .line 450
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->topleft:F

    .line 451
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->topright:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bottomleft:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bottomright:F

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    return-void
.end method

.method public RadiousTopRight(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Top right radious"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 440
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result p1

    int-to-float p1, p1

    .line 441
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->topright:F

    .line 442
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->topleft:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bottomleft:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bottomright:F

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

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

    .line 431
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result p1

    int-to-float p1, p1

    .line 432
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bottomleft:F

    .line 433
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->topleft:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->topright:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bottomright:F

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

    .line 423
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result p1

    int-to-float p1, p1

    .line 424
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bottomright:F

    .line 425
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->topleft:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->topright:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bottomleft:F

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

    .line 415
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result p1

    int-to-float p1, p1

    .line 416
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->topleft:F

    .line 417
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->topright:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bottomleft:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bottomright:F

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

    .line 407
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result p1

    int-to-float p1, p1

    .line 408
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->topright:F

    .line 409
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->topleft:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bottomleft:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->bottomright:F

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    return-void
.end method

.method public SecondaryBorderColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Secondary border color"
    .end annotation

    .line 213
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->sborderColor:I

    return v0
.end method

.method public SecondaryBorderColor(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFBBBBBB"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Secondary border color"
    .end annotation

    .line 196
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->sborderColor:I

    .line 197
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

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

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->borderColor:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->sborderColor:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V

    .line 207
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 208
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public SelectText(II)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Select text"
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setSelection(II)V

    return-void
.end method

.method public SetCursorPosition(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set cursor position"
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public SetMargin(IIII)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets margin"
    .end annotation

    .line 689
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingTop:I

    .line 690
    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingBottom:I

    .line 691
    iput p3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingRight:I

    .line 692
    iput p4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingLeft:I

    .line 693
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->refreshMargin()V

    return-void
.end method

.method public SetPadding(IIII)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets padding"
    .end annotation

    .line 698
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingTop2:I

    .line 699
    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingBottom2:I

    .line 700
    iput p3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingRight2:I

    .line 701
    iput p4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->paddingLeft2:I

    .line 702
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->refreshPadding()V

    return-void
.end method

.method public ShowErrorMessage(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows error message"
    .end annotation

    if-nez p1, :cond_0

    .line 373
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 374
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    return-void

    .line 376
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 377
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->errorText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public ShowKeyboard()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the keyboard."
    .end annotation

    .line 549
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 550
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 551
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public SingleLine(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set to to, to make the text box a single line textbox"
    .end annotation

    .line 231
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->singleLine:Z

    .line 232
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void
.end method

.method public SingleLine()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get single line"
    .end annotation

    .line 237
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->singleLine:Z

    return v0
.end method

.method public StartIcon()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the start icon"
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->startIcon:Ljava/lang/String;

    return-object v0
.end method

.method public StartIcon(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets start icon"
    .end annotation

    .line 570
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->startIcon:Ljava/lang/String;

    .line 571
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

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
        description = "Returns start icon tint"
    .end annotation

    .line 593
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->startIconTint:I

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
        description = "Sets start icon tint"
        userVisible = false
    .end annotation

    .line 587
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->startIconTint:I

    .line 588
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

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

    .line 331
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

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

    .line 312
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->text:Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the text color"
    .end annotation

    .line 250
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->argb:I

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
        description = "Set text color of the textbox"
    .end annotation

    .line 244
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->argb:I

    .line 245
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public TextSize()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get text size"
    .end annotation

    .line 343
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->size:F

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

    .line 337
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->size:F

    .line 338
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->textInputeditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets width"
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0xa0

    .line 649
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->mainView:Landroid/widget/LinearLayout;

    return-object v0
.end method
