.class abstract Lcom/google/android/material/datepicker/e;
.super Lcom/google/android/material/internal/TextWatcherAdapter;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/textfield/TextInputLayout;

.field public final b:Ljava/text/SimpleDateFormat;

.field public final c:Lcom/google/android/material/datepicker/CalendarConstraints;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/text/SimpleDateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/google/android/material/internal/TextWatcherAdapter;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/google/android/material/datepicker/e;->b:Ljava/text/SimpleDateFormat;

    .line 51
    iput-object p3, p0, Lcom/google/android/material/datepicker/e;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 52
    iput-object p4, p0, Lcom/google/android/material/datepicker/e;->c:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 53
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/google/android/material/R$string;->mtrl_picker_out_of_range:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/datepicker/e;->d:Ljava/lang/String;

    .line 54
    new-instance p2, Lcom/google/android/material/datepicker/c;

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/datepicker/c;-><init>(Lcom/google/android/material/datepicker/e;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/material/datepicker/e;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public abstract b(Ljava/lang/Long;)V
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    iget-object p2, p0, Lcom/google/android/material/datepicker/e;->c:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object p3, p0, Lcom/google/android/material/datepicker/e;->e:Ljava/lang/Runnable;

    iget-object p4, p0, Lcom/google/android/material/datepicker/e;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p4, p3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 82
    iget-object v0, p0, Lcom/google/android/material/datepicker/e;->f:Ljava/lang/Runnable;

    invoke-virtual {p4, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p4, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/e;->b(Ljava/lang/Long;)V

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/material/datepicker/e;->b:Ljava/text/SimpleDateFormat;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 91
    invoke-virtual {p4, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 93
    invoke-virtual {p2}, Lcom/google/android/material/datepicker/CalendarConstraints;->getDateValidator()Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->isValid(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    iget-object v2, p2, Lcom/google/android/material/datepicker/CalendarConstraints;->a:Lcom/google/android/material/datepicker/t;

    const/4 v3, 0x1

    .line 76
    invoke-virtual {v2, v3}, Lcom/google/android/material/datepicker/t;->d(I)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_1

    iget-object p2, p2, Lcom/google/android/material/datepicker/CalendarConstraints;->b:Lcom/google/android/material/datepicker/t;

    iget v2, p2, Lcom/google/android/material/datepicker/t;->e:I

    invoke-virtual {p2, v2}, Lcom/google/android/material/datepicker/t;->d(I)J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-gtz p2, :cond_1

    .line 95
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/e;->b(Ljava/lang/Long;)V

    return-void

    .line 107
    :cond_1
    new-instance p1, Lcom/google/android/material/datepicker/d;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/material/datepicker/d;-><init>(Lcom/google/android/material/datepicker/e;J)V

    .line 99
    iput-object p1, p0, Lcom/google/android/material/datepicker/e;->f:Ljava/lang/Runnable;

    .line 100
    invoke-virtual {p0, p4, p1}, Lcom/google/android/material/datepicker/e;->runValidation(Landroid/view/View;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 102
    :catch_0
    invoke-virtual {p0, p4, p3}, Lcom/google/android/material/datepicker/e;->runValidation(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public runValidation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 118
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
