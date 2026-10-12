.class Lcom/google/android/material/timepicker/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/timepicker/o;


# direct methods
.method public constructor <init>(Lcom/google/android/material/timepicker/o;)V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/timepicker/p;->a:Lcom/google/android/material/timepicker/o;

    return-void
.end method


# virtual methods
.method public onButtonChecked(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .locals 0

    .line 203
    sget p1, Lcom/google/android/material/R$id;->material_clock_period_pm_button:I

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 55
    :goto_0
    iget-object p2, p0, Lcom/google/android/material/timepicker/p;->a:Lcom/google/android/material/timepicker/o;

    iget-object p2, p2, Lcom/google/android/material/timepicker/o;->b:Lcom/google/android/material/timepicker/i;

    .line 204
    invoke-virtual {p2, p1}, Lcom/google/android/material/timepicker/i;->setPeriod(I)V

    return-void
.end method
