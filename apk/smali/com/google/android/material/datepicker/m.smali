.class Lcom/google/android/material/datepicker/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/datepicker/MonthsPagerAdapter;

.field public final synthetic b:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/MonthsPagerAdapter;)V
    .locals 0

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/MaterialCalendar;

    iput-object p2, p0, Lcom/google/android/material/datepicker/m;->a:Lcom/google/android/material/datepicker/MonthsPagerAdapter;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 433
    iget-object p1, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 480
    iget-object v0, p1, Lcom/google/android/material/datepicker/MaterialCalendar;->i0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 433
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 61
    iget-object v1, p1, Lcom/google/android/material/datepicker/MaterialCalendar;->i0:Landroidx/recyclerview/widget/RecyclerView;

    .line 434
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/google/android/material/datepicker/m;->a:Lcom/google/android/material/datepicker/MonthsPagerAdapter;

    .line 89
    iget-object v1, v1, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->a:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object v1, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->a:Lcom/google/android/material/datepicker/t;

    .line 184
    iget-object v1, v1, Lcom/google/android/material/datepicker/t;->a:Ljava/util/Calendar;

    .line 184
    invoke-static {v1}, Lcom/google/android/material/datepicker/y;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    .line 185
    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 186
    new-instance v0, Lcom/google/android/material/datepicker/t;

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/t;-><init>(Ljava/util/Calendar;)V

    .line 435
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->q(Lcom/google/android/material/datepicker/t;)V

    :cond_0
    return-void
.end method
