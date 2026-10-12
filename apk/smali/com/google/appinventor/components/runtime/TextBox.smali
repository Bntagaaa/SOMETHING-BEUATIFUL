.class public final Lcom/google/appinventor/components/runtime/TextBox;
.super Lcom/google/appinventor/components/runtime/TextBoxBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A box for the user to enter text.  The initial or user-entered text value is in the <code>Text</code> property.  If blank, the <code>Hint</code> property, which appears as faint text in the box, can provide the user with guidance as to what to type.</p><p>The <code>MultiLine</code> property determines if the text can havemore than one line.  For a single line text box, the keyboard will closeautomatically when the user presses the Done key.  To close the keyboard for multiline text boxes, the app should use  the HideKeyboard method or  rely on the user to press the Back key.</p><p>The <code> NumbersOnly</code> property restricts the keyboard to acceptnumeric input only.</p><p>Other properties affect the appearance of the text box (<code>TextAlignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be used (<code>Enabled</code>).</p><p>Text boxes are usually used with the <code>Button</code> component, with the user clicking on the button when text entry is complete.</p><p>If the text entered by the user should not be displayed, use <code>PasswordTextBox</code> instead.</p>"
    iconName = "images/textbox.png"
    version = 0xe
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesAssets;
    fileNames = "MaterialIcons-Regular.ttf, fontawesome-webfont.ttf,fa-brands-400.ttf, fa-regular-400.ttf, fa-solid-900.ttf"
.end annotation


# instance fields
.field private acceptsNumbersOnly:Z

.field private inputType:I

.field private multiLine:Z

.field private paddingBottom2:I

.field private paddingLeft2:I

.field private paddingRight2:I

.field private paddingTop2:I

.field private readOnly:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 117
    new-instance v0, Landroid/widget/EditText;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/EditText;)V

    const/4 p1, 0x0

    .line 106
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->paddingLeft2:I

    .line 107
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->paddingTop2:I

    .line 108
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->paddingRight2:I

    .line 109
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->paddingBottom2:I

    .line 118
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/TextBox;->MultiLine(Z)V

    .line 119
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/TextBox;->ReadOnly(Z)V

    .line 129
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/EditText;)V
    .locals 1

    .line 133
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/EditText;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 106
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->paddingLeft2:I

    .line 107
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->paddingTop2:I

    .line 108
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->paddingRight2:I

    .line 109
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->paddingBottom2:I

    return-void
.end method

.method private refreshPadding()V
    .locals 5

    .line 247
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->getView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/TextBox;->paddingLeft2:I

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/TextBox;->paddingTop2:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/TextBox;->paddingRight2:I

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/TextBox;->paddingBottom2:I

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public HeihPadding(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "10,10,10,10"
        editorType = "four"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 238
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 239
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->paddingLeft2:I

    const/4 v0, 0x1

    .line 240
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->paddingRight2:I

    const/4 v0, 0x2

    .line 241
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->paddingTop2:I

    const/4 v0, 0x3

    .line 242
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->paddingBottom2:I

    .line 243
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/TextBox;->refreshPadding()V

    return-void
.end method

.method public HideKeyboard()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide the keyboard.  Only multiline text boxes need this. Single line text boxes close the keyboard when the users presses the Done key."
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 145
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 146
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
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

    .line 216
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->inputType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 219
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const v0, 0x20001

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 221
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/16 v0, 0x3002

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 223
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    return-void

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 225
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    return-void

    :cond_3
    const/4 v2, 0x5

    if-ne p1, v2, :cond_4

    .line 227
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    return-void

    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 229
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setInputType(I)V

    :cond_5
    return-void
.end method

.method public MultiLine(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 186
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->multiLine:Z

    .line 187
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void
.end method

.method public MultiLine()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then this text box accepts multiple lines of input, which are entered using the return key.  For single line text boxes there is a Done key instead of a return key, and pressing Done hides the keyboard.  The app should call the HideKeyboard method to hide the keyboard for a mutiline text box."
    .end annotation

    .line 171
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->multiLine:Z

    return v0
.end method

.method public ReadOnly(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 208
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->readOnly:Z

    .line 209
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public ReadOnly()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the %type% is read-only. By default, this is false."
    .end annotation

    .line 195
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->readOnly:Z

    return v0
.end method

.method public ShowKeyboard()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the keyboard."
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 154
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
