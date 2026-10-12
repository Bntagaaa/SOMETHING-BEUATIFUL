.class Lcom/google/android/material/datepicker/MonthsPagerAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/MonthsPagerAdapter;->onBindViewHolder(Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/datepicker/p;

.field public final synthetic b:Lcom/google/android/material/datepicker/MonthsPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MonthsPagerAdapter;Lcom/google/android/material/datepicker/p;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter$a;->b:Lcom/google/android/material/datepicker/MonthsPagerAdapter;

    iput-object p2, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter$a;->a:Lcom/google/android/material/datepicker/p;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 123
    iget-object p1, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter$a;->a:Lcom/google/android/material/datepicker/p;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/p;->getAdapter()Lcom/google/android/material/datepicker/u;

    move-result-object p2

    .line 212
    iget-object p4, p2, Lcom/google/android/material/datepicker/u;->a:Lcom/google/android/material/datepicker/t;

    .line 212
    invoke-virtual {p4}, Lcom/google/android/material/datepicker/t;->c()I

    move-result p4

    if-lt p3, p4, :cond_0

    .line 245
    invoke-virtual {p2}, Lcom/google/android/material/datepicker/u;->a()I

    move-result p2

    if-gt p3, p2, :cond_0

    .line 38
    iget-object p2, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter$a;->b:Lcom/google/android/material/datepicker/MonthsPagerAdapter;

    iget-object p2, p2, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->c:Lcom/google/android/material/datepicker/MaterialCalendar$c;

    .line 124
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/p;->getAdapter()Lcom/google/android/material/datepicker/u;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/material/datepicker/u;->getItem(I)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-interface {p2, p3, p4}, Lcom/google/android/material/datepicker/MaterialCalendar$e;->onDayClick(J)V

    :cond_0
    return-void
.end method
