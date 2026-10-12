.class Lcom/google/android/material/datepicker/u;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field public static final f:I


# instance fields
.field public final a:Lcom/google/android/material/datepicker/t;

.field public final b:Lcom/google/android/material/datepicker/DateSelector;

.field public c:Ljava/util/Collection;

.field public d:Lcom/google/android/material/datepicker/b;

.field public final e:Lcom/google/android/material/datepicker/CalendarConstraints;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 83
    invoke-static {v0}, Lcom/google/android/material/datepicker/y;->h(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x4

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    sput v0, Lcom/google/android/material/datepicker/u;->f:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/datepicker/t;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/material/datepicker/u;->a:Lcom/google/android/material/datepicker/t;

    .line 58
    iput-object p2, p0, Lcom/google/android/material/datepicker/u;->b:Lcom/google/android/material/datepicker/DateSelector;

    .line 59
    iput-object p3, p0, Lcom/google/android/material/datepicker/u;->e:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 60
    invoke-interface {p2}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/u;->c:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->a:Lcom/google/android/material/datepicker/t;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/t;->c()I

    move-result v1

    iget v0, v0, Lcom/google/android/material/datepicker/t;->e:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public final b(Landroid/widget/TextView;J)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->e:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getDateValidator()Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->isValid(J)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 174
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->b:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 191
    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/y;->a(J)J

    move-result-wide v3

    invoke-static {v1, v2}, Lcom/google/android/material/datepicker/y;->a(J)J

    move-result-wide v1

    cmp-long v5, v3, v1

    if-nez v5, :cond_1

    .line 176
    iget-object p2, p0, Lcom/google/android/material/datepicker/u;->d:Lcom/google/android/material/datepicker/b;

    iget-object p2, p2, Lcom/google/android/material/datepicker/b;->b:Lcom/google/android/material/datepicker/a;

    goto :goto_0

    .line 177
    :cond_2
    invoke-static {}, Lcom/google/android/material/datepicker/y;->g()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v2, v0, p2

    if-nez v2, :cond_3

    .line 178
    iget-object p2, p0, Lcom/google/android/material/datepicker/u;->d:Lcom/google/android/material/datepicker/b;

    iget-object p2, p2, Lcom/google/android/material/datepicker/b;->c:Lcom/google/android/material/datepicker/a;

    goto :goto_0

    .line 180
    :cond_3
    iget-object p2, p0, Lcom/google/android/material/datepicker/u;->d:Lcom/google/android/material/datepicker/b;

    iget-object p2, p2, Lcom/google/android/material/datepicker/b;->a:Lcom/google/android/material/datepicker/a;

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    .line 183
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 184
    iget-object p2, p0, Lcom/google/android/material/datepicker/u;->d:Lcom/google/android/material/datepicker/b;

    iget-object p2, p2, Lcom/google/android/material/datepicker/b;->g:Lcom/google/android/material/datepicker/a;

    .line 186
    :goto_0
    invoke-virtual {p2, p1}, Lcom/google/android/material/datepicker/a;->b(Landroid/widget/TextView;)V

    return-void
.end method

.method public final c(Lcom/google/android/material/datepicker/p;J)V
    .locals 2

    .line 157
    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/t;->b(J)Lcom/google/android/material/datepicker/t;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->a:Lcom/google/android/material/datepicker/t;

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, v1, Lcom/google/android/material/datepicker/t;->a:Ljava/util/Calendar;

    .line 173
    invoke-static {v0}, Lcom/google/android/material/datepicker/y;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 174
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x5

    .line 175
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 163
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/p;->getAdapter()Lcom/google/android/material/datepicker/u;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    .line 212
    iget-object v1, v1, Lcom/google/android/material/datepicker/u;->a:Lcom/google/android/material/datepicker/t;

    .line 212
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/t;->c()I

    move-result v1

    add-int/2addr v1, v0

    .line 163
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr v1, v0

    .line 162
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 160
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/datepicker/u;->b(Landroid/widget/TextView;J)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->a:Lcom/google/android/material/datepicker/t;

    iget v1, v0, Lcom/google/android/material/datepicker/t;->e:I

    .line 212
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/t;->c()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public getItem(I)Ljava/lang/Long;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->a:Lcom/google/android/material/datepicker/t;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/t;->c()I

    move-result v1

    if-lt p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/u;->a()I

    move-result v1

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/t;->c()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    .line 82
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/t;->d(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/u;->getItem(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->a:Lcom/google/android/material/datepicker/t;

    iget v0, v0, Lcom/google/android/material/datepicker/t;->d:I

    div-int/2addr p1, v0

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/datepicker/u;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 6
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 199
    iget-object v3, p0, Lcom/google/android/material/datepicker/u;->d:Lcom/google/android/material/datepicker/b;

    if-nez v3, :cond_0

    .line 200
    new-instance v3, Lcom/google/android/material/datepicker/b;

    invoke-direct {v3, v2}, Lcom/google/android/material/datepicker/b;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/material/datepicker/u;->d:Lcom/google/android/material/datepicker/b;

    .line 107
    :cond_0
    move-object v2, p2

    check-cast v2, Landroid/widget/TextView;

    if-nez p2, :cond_1

    .line 109
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 110
    sget v2, Lcom/google/android/material/R$layout;->mtrl_calendar_day:I

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/widget/TextView;

    .line 212
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/datepicker/u;->a:Lcom/google/android/material/datepicker/t;

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/t;->c()I

    move-result p3

    sub-int p3, p1, p3

    if-ltz p3, :cond_6

    .line 113
    iget v3, p2, Lcom/google/android/material/datepicker/t;->e:I

    if-lt p3, v3, :cond_2

    goto/16 :goto_3

    :cond_2
    add-int/2addr p3, v0

    .line 119
    invoke-virtual {v2, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 121
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v4, v5, v1

    const-string v4, "%d"

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p2, p3}, Lcom/google/android/material/datepicker/t;->d(I)J

    move-result-wide v3

    .line 102
    new-instance p3, Lcom/google/android/material/datepicker/t;

    invoke-static {}, Lcom/google/android/material/datepicker/y;->g()Ljava/util/Calendar;

    move-result-object v5

    invoke-direct {p3, v5}, Lcom/google/android/material/datepicker/t;-><init>(Ljava/util/Calendar;)V

    .line 123
    iget p2, p2, Lcom/google/android/material/datepicker/t;->c:I

    iget p3, p3, Lcom/google/android/material/datepicker/t;->c:I

    const/16 v5, 0x18

    if-ne p2, p3, :cond_4

    .line 82
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    .line 86
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, v5, :cond_3

    .line 139
    const-string p3, "MMMEd"

    invoke-static {p3, p2}, Landroidx/core/os/f;->f(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p2

    .line 59
    invoke-static {}, Landroidx/core/os/f;->g()Landroid/icu/util/TimeZone;

    move-result-object p3

    .line 140
    invoke-static {p2, p3}, Landroidx/core/os/f;->t(Landroid/icu/text/DateFormat;Landroid/icu/util/TimeZone;)V

    .line 87
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {p2, p3}, Landroidx/core/os/f;->m(Landroid/icu/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 229
    :cond_3
    invoke-static {v1, p2}, Lcom/google/android/material/datepicker/y;->d(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p2

    .line 89
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 124
    :goto_0
    invoke-virtual {v2, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 93
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    .line 97
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, v5, :cond_5

    .line 139
    const-string p3, "yMMMEd"

    invoke-static {p3, p2}, Landroidx/core/os/f;->f(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p2

    .line 59
    invoke-static {}, Landroidx/core/os/f;->g()Landroid/icu/util/TimeZone;

    move-result-object p3

    .line 140
    invoke-static {p2, p3}, Landroidx/core/os/f;->t(Landroid/icu/text/DateFormat;Landroid/icu/util/TimeZone;)V

    .line 98
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {p2, p3}, Landroidx/core/os/f;->m(Landroid/icu/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 229
    :cond_5
    invoke-static {v1, p2}, Lcom/google/android/material/datepicker/y;->d(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p2

    .line 100
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 126
    :goto_1
    invoke-virtual {v2, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 128
    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_4

    :cond_6
    :goto_3
    const/16 p2, 0x8

    .line 114
    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 132
    :goto_4
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/u;->getItem(I)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_7

    return-object v2

    .line 136
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, v2, p1, p2}, Lcom/google/android/material/datepicker/u;->b(Landroid/widget/TextView;J)V

    return-object v2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateSelectedStates(Lcom/google/android/material/datepicker/p;)V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 143
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/material/datepicker/u;->c(Lcom/google/android/material/datepicker/p;J)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->b:Lcom/google/android/material/datepicker/DateSelector;

    if-eqz v0, :cond_2

    .line 148
    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 149
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/android/material/datepicker/u;->c(Lcom/google/android/material/datepicker/p;J)V

    goto :goto_1

    .line 152
    :cond_1
    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/u;->c:Ljava/util/Collection;

    :cond_2
    return-void
.end method
