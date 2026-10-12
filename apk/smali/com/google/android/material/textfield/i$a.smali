.class Lcom/google/android/material/textfield/i$a;
.super Lcom/google/android/material/internal/TextWatcherAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/textfield/i;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/i;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/google/android/material/textfield/i$a;->a:Lcom/google/android/material/textfield/i;

    invoke-direct {p0}, Lcom/google/android/material/internal/TextWatcherAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 82
    iget-object p1, p0, Lcom/google/android/material/textfield/i$a;->a:Lcom/google/android/material/textfield/i;

    iget-object v0, p1, Lcom/google/android/material/textfield/o;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 83
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 501
    instance-of v1, v0, Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_1

    .line 507
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 71
    iget-object v1, p1, Lcom/google/android/material/textfield/i;->q:Landroid/view/accessibility/AccessibilityManager;

    .line 85
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-static {v0}, Lcom/google/android/material/textfield/i;->g(Landroid/widget/EditText;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object p1, p1, Lcom/google/android/material/textfield/o;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 90
    :cond_0
    new-instance p1, Lcom/google/android/material/textfield/i$a$a;

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/textfield/i$a$a;-><init>(Lcom/google/android/material/textfield/i$a;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 502
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
