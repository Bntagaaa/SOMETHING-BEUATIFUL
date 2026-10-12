.class Lcom/google/android/material/timepicker/a;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/timepicker/a$b;
    }
.end annotation


# static fields
.field public static final synthetic a:I


# virtual methods
.method public addInputFilter(Landroid/text/InputFilter;)V
    .locals 0

    const/4 p1, 0x0

    .line 150
    throw p1
.end method

.method public getTextInput()Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    const/4 v0, 0x0

    .line 97
    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 181
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 90
    invoke-static {p1}, Landroidx/appcompat/app/q;->h(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    const/4 p1, 0x0

    .line 91
    throw p1
.end method

.method public setChecked(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 102
    throw p1
.end method

.method public setChipDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V
    .locals 1

    const/4 v0, 0x0

    .line 161
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 133
    throw p1
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    .line 138
    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/timepicker/i;->formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;)Ljava/lang/String;

    const/4 p1, 0x0

    .line 119
    throw p1
.end method

.method public toggle()V
    .locals 1

    const/4 v0, 0x0

    .line 115
    throw v0
.end method
