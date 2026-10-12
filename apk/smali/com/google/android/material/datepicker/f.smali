.class Lcom/google/android/material/datepicker/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 3

    .line 119
    invoke-static {}, Lcom/google/android/material/datepicker/y;->g()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    .line 83
    invoke-static {v1}, Lcom/google/android/material/datepicker/y;->h(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 121
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x1

    .line 126
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 61
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/material/datepicker/f;->b(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 40
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/material/datepicker/f;->c(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(JLjava/util/Locale;)Ljava/lang/String;
    .locals 6

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 193
    sget-object v0, Lcom/google/android/material/datepicker/y;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 139
    const-string v0, "MMMd"

    invoke-static {v0, p2}, Landroidx/core/os/f;->f(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p2

    .line 59
    invoke-static {}, Landroidx/core/os/f;->g()Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 140
    invoke-static {p2, v0}, Landroidx/core/os/f;->t(Landroid/icu/text/DateFormat;Landroid/icu/util/TimeZone;)V

    .line 76
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {p2, v0}, Landroidx/core/os/f;->m(Landroid/icu/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    .line 211
    invoke-static {v0, p2}, Lcom/google/android/material/datepicker/y;->d(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p2

    .line 219
    check-cast p2, Ljava/text/SimpleDateFormat;

    .line 220
    invoke-virtual {p2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 236
    const-string v1, "yY"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/material/datepicker/y;->b(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 238
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    goto :goto_0

    .line 245
    :cond_1
    const-string v3, "EMd"

    invoke-static {v2, v1, v0, v3}, Lcom/google/android/material/datepicker/y;->b(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 247
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 248
    const-string v3, "EMd,"

    :cond_2
    const/4 v5, -0x1

    .line 252
    invoke-static {v5, v1, v0, v3}, Lcom/google/android/material/datepicker/y;->b(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    .line 255
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 256
    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 220
    :goto_0
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(JLjava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 188
    sget-object v0, Lcom/google/android/material/datepicker/y;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 139
    const-string v0, "yMMMd"

    invoke-static {v0, p2}, Landroidx/core/os/f;->f(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p2

    .line 59
    invoke-static {}, Landroidx/core/os/f;->g()Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 140
    invoke-static {p2, v0}, Landroidx/core/os/f;->t(Landroid/icu/text/DateFormat;Landroid/icu/util/TimeZone;)V

    .line 55
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {p2, v0}, Landroidx/core/os/f;->m(Landroid/icu/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    .line 211
    invoke-static {v0, p2}, Lcom/google/android/material/datepicker/y;->d(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p2

    .line 57
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
