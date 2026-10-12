.class Lcom/google/android/material/datepicker/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/datepicker/YearGridAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/YearGridAdapter;I)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/z;->b:Lcom/google/android/material/datepicker/YearGridAdapter;

    iput p2, p0, Lcom/google/android/material/datepicker/z;->a:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 31
    iget-object p1, p0, Lcom/google/android/material/datepicker/z;->b:Lcom/google/android/material/datepicker/YearGridAdapter;

    iget-object v0, p1, Lcom/google/android/material/datepicker/YearGridAdapter;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 286
    iget-object v0, v0, Lcom/google/android/material/datepicker/MaterialCalendar;->e0:Lcom/google/android/material/datepicker/t;

    .line 87
    iget v0, v0, Lcom/google/android/material/datepicker/t;->b:I

    iget v1, p0, Lcom/google/android/material/datepicker/z;->a:I

    invoke-static {v1, v0}, Lcom/google/android/material/datepicker/t;->a(II)Lcom/google/android/material/datepicker/t;

    move-result-object v0

    .line 31
    iget-object v1, p1, Lcom/google/android/material/datepicker/YearGridAdapter;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 292
    iget-object v1, v1, Lcom/google/android/material/datepicker/MaterialCalendar;->d0:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 185
    iget-object v2, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->a:Lcom/google/android/material/datepicker/t;

    .line 185
    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/t;->compareTo(Lcom/google/android/material/datepicker/t;)I

    move-result v3

    if-gez v3, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 189
    :cond_0
    iget-object v1, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->b:Lcom/google/android/material/datepicker/t;

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/t;->compareTo(Lcom/google/android/material/datepicker/t;)I

    move-result v2

    if-lez v2, :cond_1

    move-object v0, v1

    .line 31
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/google/android/material/datepicker/YearGridAdapter;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 90
    invoke-virtual {v1, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->q(Lcom/google/android/material/datepicker/t;)V

    .line 31
    iget-object p1, p1, Lcom/google/android/material/datepicker/YearGridAdapter;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 91
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$d;->a:Lcom/google/android/material/datepicker/MaterialCalendar$d;

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->r(Lcom/google/android/material/datepicker/MaterialCalendar$d;)V

    return-void
.end method
