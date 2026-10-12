.class Lcom/google/android/material/datepicker/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V
    .locals 0

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/l;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 359
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object v0, p1, Lcom/google/android/material/datepicker/MaterialCalendar;->f0:Lcom/google/android/material/datepicker/MaterialCalendar$d;

    .line 359
    sget-object v1, Lcom/google/android/material/datepicker/MaterialCalendar$d;->b:Lcom/google/android/material/datepicker/MaterialCalendar$d;

    sget-object v2, Lcom/google/android/material/datepicker/MaterialCalendar$d;->a:Lcom/google/android/material/datepicker/MaterialCalendar$d;

    if-ne v0, v1, :cond_0

    .line 360
    invoke-virtual {p1, v2}, Lcom/google/android/material/datepicker/MaterialCalendar;->r(Lcom/google/android/material/datepicker/MaterialCalendar$d;)V

    return-void

    :cond_0
    if-ne v0, v2, :cond_1

    .line 362
    invoke-virtual {p1, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->r(Lcom/google/android/material/datepicker/MaterialCalendar$d;)V

    :cond_1
    return-void
.end method
