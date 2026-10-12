.class Lcom/google/android/material/timepicker/q;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/timepicker/TimePickerControls;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/timepicker/q$b;,
        Lcom/google/android/material/timepicker/q$d;,
        Lcom/google/android/material/timepicker/q$c;
    }
.end annotation


# virtual methods
.method public addOnRotateListener(Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;)V
    .locals 0

    const/4 p1, 0x0

    .line 231
    throw p1
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 265
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 270
    throw v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 257
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 270
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setActiveSelection(I)V
    .locals 0

    const/4 p1, 0x0

    .line 222
    throw p1
.end method

.method public setAnimateOnTouchUp(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 194
    throw p1
.end method

.method public setHandRotation(FZ)V
    .locals 0

    const/4 p1, 0x0

    .line 190
    throw p1
.end method

.method public setHourClickDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public setMinuteHourDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V
    .locals 1

    const/4 v0, 0x0

    .line 161
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public setOnActionUpListener(Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;)V
    .locals 0

    const/4 p1, 0x0

    .line 235
    throw p1
.end method

.method public setValues([Ljava/lang/String;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 181
    throw p1
.end method

.method public showToggle()V
    .locals 1

    const/4 v0, 0x0

    .line 252
    throw v0
.end method

.method public updateTime(III)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 p1, 0x0

    .line 203
    throw p1
.end method
