.class Lcom/google/android/material/textfield/u;
.super Lcom/google/android/material/textfield/o;
.source "SourceFile"


# instance fields
.field public final e:Landroid/text/TextWatcher;

.field public final f:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

.field public final g:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/o;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 36
    new-instance p1, Lcom/google/android/material/textfield/u$a;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/u$a;-><init>(Lcom/google/android/material/textfield/u;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/u;->e:Landroid/text/TextWatcher;

    .line 46
    new-instance p1, Lcom/google/android/material/textfield/u$b;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/u$b;-><init>(Lcom/google/android/material/textfield/u;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/u;->f:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    .line 57
    new-instance p1, Lcom/google/android/material/textfield/u$c;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/u$c;-><init>(Lcom/google/android/material/textfield/u;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/u;->g:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    return-void
.end method

.method public static d(Lcom/google/android/material/textfield/u;)Z
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/google/android/material/textfield/o;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 124
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 126
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p0

    instance-of p0, p0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 86
    iget v0, p0, Lcom/google/android/material/textfield/o;->d:I

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/material/R$drawable;->design_password_eye:I

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/o;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(I)V

    .line 88
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/material/R$string;->password_toggle_content_description:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 87
    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 89
    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 90
    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    .line 91
    new-instance v0, Lcom/google/android/material/textfield/v;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/v;-><init>(Lcom/google/android/material/textfield/u;)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/material/textfield/u;->f:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->addOnEditTextAttachedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/material/textfield/u;->g:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->addOnEndIconChangedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;)V

    .line 116
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 131
    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    .line 132
    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    .line 133
    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    const/16 v2, 0x90

    if-eq v1, v2, :cond_1

    .line 134
    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_2

    .line 119
    :cond_1
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_2
    return-void
.end method
