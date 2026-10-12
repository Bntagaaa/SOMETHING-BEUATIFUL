.class Lcom/google/android/material/timepicker/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final a:Lcom/google/android/material/timepicker/a;

.field public final b:Lcom/google/android/material/timepicker/a;

.field public final c:Lcom/google/android/material/timepicker/i;

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/timepicker/a;Lcom/google/android/material/timepicker/a;Lcom/google/android/material/timepicker/i;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/google/android/material/timepicker/n;->d:Z

    .line 53
    iput-object p1, p0, Lcom/google/android/material/timepicker/n;->a:Lcom/google/android/material/timepicker/a;

    .line 54
    iput-object p2, p0, Lcom/google/android/material/timepicker/n;->b:Lcom/google/android/material/timepicker/a;

    .line 55
    iput-object p3, p0, Lcom/google/android/material/timepicker/n;->c:Lcom/google/android/material/timepicker/i;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    const/16 v0, 0xc

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/timepicker/n;->b:Lcom/google/android/material/timepicker/a;

    invoke-virtual {v3, v0}, Lcom/google/android/material/timepicker/a;->setChecked(Z)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/timepicker/n;->a:Lcom/google/android/material/timepicker/a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/a;->setChecked(Z)V

    .line 76
    iget-object v0, p0, Lcom/google/android/material/timepicker/n;->c:Lcom/google/android/material/timepicker/i;

    iput p1, v0, Lcom/google/android/material/timepicker/i;->f:I

    return-void
.end method

.method public bind()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/google/android/material/timepicker/n;->a:Lcom/google/android/material/timepicker/a;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/a;->getTextInput()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/google/android/material/timepicker/n;->b:Lcom/google/android/material/timepicker/a;

    invoke-virtual {v1}, Lcom/google/android/material/timepicker/a;->getTextInput()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    .line 62
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 63
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const v2, 0x10000005

    .line 65
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    const v2, 0x10000006

    .line 66
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 68
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 69
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 70
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/16 p2, 0xc

    .line 83
    invoke-virtual {p0, p2}, Lcom/google/android/material/timepicker/n;->a(I)V

    :cond_1
    return p1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 91
    iget-boolean v0, p0, Lcom/google/android/material/timepicker/n;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/google/android/material/timepicker/n;->d:Z

    .line 96
    check-cast p1, Landroid/widget/EditText;

    .line 98
    iget-object v2, p0, Lcom/google/android/material/timepicker/n;->c:Lcom/google/android/material/timepicker/i;

    iget v2, v2, Lcom/google/android/material/timepicker/i;->f:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    const/16 v2, 0x43

    if-ne p2, v2, :cond_1

    .line 108
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    .line 109
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xa

    .line 111
    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/n;->a(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x7

    if-lt p2, v4, :cond_1

    const/16 v4, 0x10

    if-gt p2, v4, :cond_1

    .line 128
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v0, :cond_1

    .line 129
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 130
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ne p1, p2, :cond_1

    .line 132
    invoke-virtual {p0, v3}, Lcom/google/android/material/timepicker/n;->a(I)V

    .line 101
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/material/timepicker/n;->d:Z

    return v0
.end method
