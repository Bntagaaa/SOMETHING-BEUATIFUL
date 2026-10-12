.class Lcom/google/android/material/textfield/g;
.super Lcom/google/android/material/textfield/o;
.source "SourceFile"


# virtual methods
.method public final a()V
    .locals 2

    .line 38
    iget v0, p0, Lcom/google/android/material/textfield/o;->d:I

    iget-object v1, p0, Lcom/google/android/material/textfield/o;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(I)V

    const/4 v0, 0x0

    .line 39
    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
