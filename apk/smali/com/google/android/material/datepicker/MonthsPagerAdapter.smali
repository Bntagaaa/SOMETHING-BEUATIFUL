.class Lcom/google/android/material/datepicker/MonthsPagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/datepicker/CalendarConstraints;

.field public final b:Lcom/google/android/material/datepicker/DateSelector;

.field public final c:Lcom/google/android/material/datepicker/MaterialCalendar$c;

.field public final d:I


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/MaterialCalendar$c;)V
    .locals 3

    .line 49
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 89
    iget-object v0, p3, Lcom/google/android/material/datepicker/CalendarConstraints;->a:Lcom/google/android/material/datepicker/t;

    .line 101
    iget-object v1, p3, Lcom/google/android/material/datepicker/CalendarConstraints;->d:Lcom/google/android/material/datepicker/t;

    .line 54
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/t;->compareTo(Lcom/google/android/material/datepicker/t;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 57
    iget-object v0, p3, Lcom/google/android/material/datepicker/CalendarConstraints;->b:Lcom/google/android/material/datepicker/t;

    invoke-virtual {v1, v0}, Lcom/google/android/material/datepicker/t;->compareTo(Lcom/google/android/material/datepicker/t;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 61
    sget v0, Lcom/google/android/material/datepicker/u;->f:I

    .line 337
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_calendar_day_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int v1, v1, v0

    .line 63
    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/2addr v1, p1

    .line 65
    iput v1, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->d:I

    .line 66
    iput-object p3, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->a:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 67
    iput-object p2, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->b:Lcom/google/android/material/datepicker/DateSelector;

    .line 68
    iput-object p4, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->c:Lcom/google/android/material/datepicker/MaterialCalendar$c;

    const/4 p1, 0x1

    .line 69
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "currentPage cannot be after lastPage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "firstPage cannot be after currentPage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->a:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget v0, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->f:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->a:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->a:Lcom/google/android/material/datepicker/t;

    .line 184
    iget-object v0, v0, Lcom/google/android/material/datepicker/t;->a:Ljava/util/Calendar;

    .line 184
    invoke-static {v0}, Lcom/google/android/material/datepicker/y;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    .line 185
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 186
    new-instance p1, Lcom/google/android/material/datepicker/t;

    invoke-direct {p1, v0}, Lcom/google/android/material/datepicker/t;-><init>(Ljava/util/Calendar;)V

    .line 154
    iget-object p1, p1, Lcom/google/android/material/datepicker/t;->a:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    check-cast p1, Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->onBindViewHolder(Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;I)V
    .locals 3
    .param p1    # Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 89
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->a:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object v1, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->a:Lcom/google/android/material/datepicker/t;

    .line 184
    iget-object v1, v1, Lcom/google/android/material/datepicker/t;->a:Ljava/util/Calendar;

    .line 184
    invoke-static {v1}, Lcom/google/android/material/datepicker/y;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    .line 185
    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->add(II)V

    .line 186
    new-instance p2, Lcom/google/android/material/datepicker/t;

    invoke-direct {p2, v1}, Lcom/google/android/material/datepicker/t;-><init>(Ljava/util/Calendar;)V

    .line 107
    iget-object v1, p1, Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/t;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object p1, p1, Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;->b:Lcom/google/android/material/datepicker/p;

    sget v1, Lcom/google/android/material/R$id;->month_grid:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/p;

    .line 110
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/p;->getAdapter()Lcom/google/android/material/datepicker/u;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/p;->getAdapter()Lcom/google/android/material/datepicker/u;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/material/datepicker/u;->a:Lcom/google/android/material/datepicker/t;

    invoke-virtual {p2, v1}, Lcom/google/android/material/datepicker/t;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 112
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/p;->getAdapter()Lcom/google/android/material/datepicker/u;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/material/datepicker/u;->updateSelectedStates(Lcom/google/android/material/datepicker/p;)V

    goto :goto_0

    .line 114
    :cond_0
    new-instance v1, Lcom/google/android/material/datepicker/u;

    iget-object v2, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->b:Lcom/google/android/material/datepicker/DateSelector;

    invoke-direct {v1, p2, v2, v0}, Lcom/google/android/material/datepicker/u;-><init>(Lcom/google/android/material/datepicker/t;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;)V

    .line 115
    iget p2, p2, Lcom/google/android/material/datepicker/t;->d:I

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 116
    invoke-virtual {p1, v1}, Lcom/google/android/material/datepicker/p;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    :goto_0
    new-instance p2, Lcom/google/android/material/datepicker/MonthsPagerAdapter$a;

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/datepicker/MonthsPagerAdapter$a;-><init>(Lcom/google/android/material/datepicker/MonthsPagerAdapter;Lcom/google/android/material/datepicker/p;)V

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/google/android/material/R$layout;->mtrl_calendar_month_labeled:I

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->t(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    iget v1, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->d:I

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance p1, Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;-><init>(Landroid/widget/LinearLayout;Z)V

    return-object p1

    .line 100
    :cond_0
    new-instance p1, Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;

    invoke-direct {p1, p2, v1}, Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;-><init>(Landroid/widget/LinearLayout;Z)V

    return-object p1
.end method
