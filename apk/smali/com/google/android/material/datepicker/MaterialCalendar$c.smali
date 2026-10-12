.class Lcom/google/android/material/datepicker/MaterialCalendar$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/datepicker/MaterialCalendar$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/MaterialCalendar;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$c;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    return-void
.end method


# virtual methods
.method public onDayClick(J)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$c;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object v1, v0, Lcom/google/android/material/datepicker/MaterialCalendar;->d0:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 195
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/CalendarConstraints;->getDateValidator()Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->isValid(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, v0, Lcom/google/android/material/datepicker/MaterialCalendar;->c0:Lcom/google/android/material/datepicker/DateSelector;

    .line 196
    invoke-interface {v1, p1, p2}, Lcom/google/android/material/datepicker/DateSelector;->select(J)V

    .line 197
    iget-object p1, v0, Lcom/google/android/material/datepicker/v;->onSelectionChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/datepicker/OnSelectionChangedListener;

    .line 61
    iget-object v1, v0, Lcom/google/android/material/datepicker/MaterialCalendar;->c0:Lcom/google/android/material/datepicker/DateSelector;

    .line 198
    invoke-interface {v1}, Lcom/google/android/material/datepicker/DateSelector;->getSelection()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/material/datepicker/OnSelectionChangedListener;->onSelectionChanged(Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, v0, Lcom/google/android/material/datepicker/MaterialCalendar;->i0:Landroidx/recyclerview/widget/RecyclerView;

    .line 201
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 61
    iget-object p1, v0, Lcom/google/android/material/datepicker/MaterialCalendar;->h0:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    .line 203
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
