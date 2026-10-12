.class public final Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/timepicker/MaterialTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/google/android/material/timepicker/i;

.field public b:I

.field public c:I

.field public d:Ljava/lang/CharSequence;

.field public e:I

.field public f:Ljava/lang/CharSequence;

.field public g:I

.field public h:Ljava/lang/CharSequence;

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    new-instance v0, Lcom/google/android/material/timepicker/i;

    invoke-direct {v0}, Lcom/google/android/material/timepicker/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->a:Lcom/google/android/material/timepicker/i;

    const/4 v0, 0x0

    .line 542
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->c:I

    .line 545
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->e:I

    .line 548
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->g:I

    .line 551
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->i:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/material/timepicker/MaterialTimePicker;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 118
    new-instance v0, Lcom/google/android/material/timepicker/MaterialTimePicker;

    invoke-direct {v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;-><init>()V

    .line 119
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 537
    iget-object v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->a:Lcom/google/android/material/timepicker/i;

    .line 120
    const-string v3, "TIME_PICKER_TIME_MODEL"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 537
    iget v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->b:I

    .line 121
    const-string v3, "TIME_PICKER_INPUT_MODE"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 537
    iget v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->c:I

    .line 122
    const-string v3, "TIME_PICKER_TITLE_RES"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 537
    iget-object v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->d:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 124
    const-string v3, "TIME_PICKER_TITLE_TEXT"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 537
    :cond_0
    iget v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->e:I

    .line 126
    const-string v3, "TIME_PICKER_POSITIVE_BUTTON_TEXT_RES"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 537
    iget-object v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->f:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 128
    const-string v3, "TIME_PICKER_POSITIVE_BUTTON_TEXT"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 537
    :cond_1
    iget v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->g:I

    .line 130
    const-string v3, "TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 537
    iget-object v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->h:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 132
    const-string v3, "TIME_PICKER_NEGATIVE_BUTTON_TEXT"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 537
    :cond_2
    iget v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->i:I

    .line 134
    const-string v3, "TIME_PICKER_OVERRIDE_THEME_RES_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 136
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public setHour(I)Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x17L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->a:Lcom/google/android/material/timepicker/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/i;->setHourOfDay(I)V

    return-object p0
.end method

.method public setInputMode(I)Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 556
    iput p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->b:I

    return-object p0
.end method

.method public setMinute(I)Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x3bL
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->a:Lcom/google/android/material/timepicker/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/i;->setMinute(I)V

    return-object p0
.end method

.method public setNegativeButtonText(I)Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 636
    iput p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->g:I

    return-object p0
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 645
    iput-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setPositiveButtonText(I)Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 618
    iput p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->e:I

    return-object p0
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 627
    iput-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTheme(I)Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 652
    iput p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->i:I

    return-object p0
.end method

.method public setTimeFormat(I)Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 587
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->a:Lcom/google/android/material/timepicker/i;

    iget v1, v0, Lcom/google/android/material/timepicker/i;->d:I

    .line 588
    iget v0, v0, Lcom/google/android/material/timepicker/i;->e:I

    .line 589
    new-instance v2, Lcom/google/android/material/timepicker/i;

    invoke-direct {v2, p1}, Lcom/google/android/material/timepicker/i;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->a:Lcom/google/android/material/timepicker/i;

    .line 590
    invoke-virtual {v2, v0}, Lcom/google/android/material/timepicker/i;->setMinute(I)V

    .line 591
    iget-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->a:Lcom/google/android/material/timepicker/i;

    invoke-virtual {p1, v1}, Lcom/google/android/material/timepicker/i;->setHourOfDay(I)V

    return-object p0
.end method

.method public setTitleText(I)Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 600
    iput p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->c:I

    return-object p0
.end method

.method public setTitleText(Ljava/lang/CharSequence;)Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 609
    iput-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->d:Ljava/lang/CharSequence;

    return-object p0
.end method
