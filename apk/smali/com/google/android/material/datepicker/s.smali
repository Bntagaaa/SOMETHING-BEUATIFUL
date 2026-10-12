.class Lcom/google/android/material/datepicker/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/datepicker/MaterialDatePicker;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialDatePicker;)V
    .locals 0

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/s;->a:Lcom/google/android/material/datepicker/MaterialDatePicker;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 66
    iget-object p1, p0, Lcom/google/android/material/datepicker/s;->a:Lcom/google/android/material/datepicker/MaterialDatePicker;

    iget-object v0, p1, Lcom/google/android/material/datepicker/MaterialDatePicker;->L0:Landroid/widget/Button;

    .line 66
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->r()Lcom/google/android/material/datepicker/DateSelector;

    move-result-object v1

    .line 442
    invoke-interface {v1}, Lcom/google/android/material/datepicker/DateSelector;->isSelectionComplete()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 66
    iget-object v0, p1, Lcom/google/android/material/datepicker/MaterialDatePicker;->J0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 444
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    .line 66
    iget-object v0, p1, Lcom/google/android/material/datepicker/MaterialDatePicker;->J0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 66
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->v(Lcom/google/android/material/internal/CheckableImageButton;)V

    .line 66
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->u()V

    return-void
.end method
