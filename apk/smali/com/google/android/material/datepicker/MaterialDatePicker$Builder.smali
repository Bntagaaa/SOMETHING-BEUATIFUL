.class public final Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/MaterialDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/datepicker/DateSelector;

.field public b:I

.field public c:Lcom/google/android/material/datepicker/CalendarConstraints;

.field public d:I

.field public e:Ljava/lang/CharSequence;

.field public f:I

.field public g:Ljava/lang/CharSequence;

.field public h:I

.field public i:Ljava/lang/CharSequence;

.field public j:Ljava/lang/Object;

.field public k:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/DateSelector;)V
    .locals 2

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 594
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->b:I

    .line 597
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->d:I

    const/4 v1, 0x0

    .line 598
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->e:Ljava/lang/CharSequence;

    .line 599
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->f:I

    .line 600
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->g:Ljava/lang/CharSequence;

    .line 601
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->h:I

    .line 602
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->i:Ljava/lang/CharSequence;

    .line 603
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->j:Ljava/lang/Object;

    .line 604
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->k:I

    .line 607
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->a:Lcom/google/android/material/datepicker/DateSelector;

    return-void
.end method

.method public static customDatePicker(Lcom/google/android/material/datepicker/DateSelector;)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 1
    .param p0    # Lcom/google/android/material/datepicker/DateSelector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;)",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 618
    new-instance v0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;-><init>(Lcom/google/android/material/datepicker/DateSelector;)V

    return-object v0
.end method

.method public static datePicker()Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 627
    new-instance v0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;

    new-instance v1, Lcom/google/android/material/datepicker/SingleDateSelector;

    invoke-direct {v1}, Lcom/google/android/material/datepicker/SingleDateSelector;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;-><init>(Lcom/google/android/material/datepicker/DateSelector;)V

    return-object v0
.end method

.method public static dateRangePicker()Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 636
    new-instance v0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;

    new-instance v1, Lcom/google/android/material/datepicker/RangeDateSelector;

    invoke-direct {v1}, Lcom/google/android/material/datepicker/RangeDateSelector;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;-><init>(Lcom/google/android/material/datepicker/DateSelector;)V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/material/datepicker/MaterialDatePicker;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/MaterialDatePicker<",
            "TS;>;"
        }
    .end annotation

    .line 739
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->c:Lcom/google/android/material/datepicker/CalendarConstraints;

    if-nez v0, :cond_0

    .line 740
    new-instance v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->build()Lcom/google/android/material/datepicker/CalendarConstraints;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->c:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 742
    :cond_0
    iget v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->d:I

    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->a:Lcom/google/android/material/datepicker/DateSelector;

    if-nez v0, :cond_1

    .line 743
    invoke-interface {v1}, Lcom/google/android/material/datepicker/DateSelector;->getDefaultTitleResId()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->d:I

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->j:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 747
    invoke-interface {v1, v0}, Lcom/google/android/material/datepicker/DateSelector;->setSelection(Ljava/lang/Object;)V

    .line 750
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->c:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 101
    iget-object v2, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->d:Lcom/google/android/material/datepicker/t;

    if-nez v2, :cond_5

    .line 758
    invoke-interface {v1}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 760
    invoke-interface {v1}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/t;->b(J)Lcom/google/android/material/datepicker/t;

    move-result-object v2

    .line 762
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->c:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 89
    iget-object v4, v3, Lcom/google/android/material/datepicker/CalendarConstraints;->a:Lcom/google/android/material/datepicker/t;

    .line 773
    invoke-virtual {v2, v4}, Lcom/google/android/material/datepicker/t;->compareTo(Lcom/google/android/material/datepicker/t;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 774
    iget-object v3, v3, Lcom/google/android/material/datepicker/CalendarConstraints;->b:Lcom/google/android/material/datepicker/t;

    invoke-virtual {v2, v3}, Lcom/google/android/material/datepicker/t;->compareTo(Lcom/google/android/material/datepicker/t;)I

    move-result v3

    if-gtz v3, :cond_3

    goto :goto_0

    .line 102
    :cond_3
    new-instance v2, Lcom/google/android/material/datepicker/t;

    invoke-static {}, Lcom/google/android/material/datepicker/y;->g()Ljava/util/Calendar;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/material/datepicker/t;-><init>(Ljava/util/Calendar;)V

    .line 768
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->c:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 89
    iget-object v4, v3, Lcom/google/android/material/datepicker/CalendarConstraints;->a:Lcom/google/android/material/datepicker/t;

    .line 773
    invoke-virtual {v2, v4}, Lcom/google/android/material/datepicker/t;->compareTo(Lcom/google/android/material/datepicker/t;)I

    move-result v4

    if-ltz v4, :cond_4

    .line 774
    iget-object v3, v3, Lcom/google/android/material/datepicker/CalendarConstraints;->b:Lcom/google/android/material/datepicker/t;

    invoke-virtual {v2, v3}, Lcom/google/android/material/datepicker/t;->compareTo(Lcom/google/android/material/datepicker/t;)I

    move-result v3

    if-gtz v3, :cond_4

    goto :goto_0

    .line 769
    :cond_4
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->c:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 89
    iget-object v2, v2, Lcom/google/android/material/datepicker/CalendarConstraints;->a:Lcom/google/android/material/datepicker/t;

    .line 106
    :goto_0
    iput-object v2, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->d:Lcom/google/android/material/datepicker/t;

    .line 148
    :cond_5
    new-instance v0, Lcom/google/android/material/datepicker/MaterialDatePicker;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;-><init>()V

    .line 149
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 150
    iget v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->b:I

    const-string v4, "OVERRIDE_THEME_RES_ID"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 151
    const-string v3, "DATE_SELECTOR_KEY"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 152
    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->c:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 153
    const-string v1, "TITLE_TEXT_RES_ID_KEY"

    iget v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->d:I

    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 154
    const-string v1, "TITLE_TEXT_KEY"

    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->e:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 155
    const-string v1, "INPUT_MODE_KEY"

    iget v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->k:I

    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 156
    const-string v1, "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

    iget v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->f:I

    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 157
    const-string v1, "POSITIVE_BUTTON_TEXT_KEY"

    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->g:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 158
    const-string v1, "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

    iget v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->h:I

    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 159
    const-string v1, "NEGATIVE_BUTTON_TEXT_KEY"

    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->i:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public setCalendarConstraints(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            ")",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 655
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->c:Lcom/google/android/material/datepicker/CalendarConstraints;

    return-object p0
.end method

.method public setInputMode(I)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 732
    iput p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->k:I

    return-object p0
.end method

.method public setNegativeButtonText(I)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 712
    iput p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->h:I

    const/4 p1, 0x0

    .line 713
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->i:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 724
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->i:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 725
    iput p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->h:I

    return-object p0
.end method

.method public setPositiveButtonText(I)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 688
    iput p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->f:I

    const/4 p1, 0x0

    .line 689
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->g:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 700
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->g:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 701
    iput p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->f:I

    return-object p0
.end method

.method public setSelection(Ljava/lang/Object;)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 641
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->j:Ljava/lang/Object;

    return-object p0
.end method

.method public setTheme(I)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 648
    iput p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->b:I

    return-object p0
.end method

.method public setTitleText(I)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 665
    iput p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->d:I

    const/4 p1, 0x0

    .line 666
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitleText(Ljava/lang/CharSequence;)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;"
        }
    .end annotation

    .line 676
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->e:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 677
    iput p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->d:I

    return-object p0
.end method
