.class final Lcom/google/android/material/datepicker/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/material/datepicker/t;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/datepicker/t;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/Calendar;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:J

.field public g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 201
    new-instance v0, Lcom/google/android/material/datepicker/t$a;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/t$a;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/t;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 60
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 61
    invoke-static {p1}, Lcom/google/android/material/datepicker/y;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/t;->a:Ljava/util/Calendar;

    const/4 v2, 0x2

    .line 62
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/datepicker/t;->b:I

    .line 63
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/datepicker/t;->c:I

    const/4 v1, 0x7

    .line 64
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/datepicker/t;->d:I

    .line 65
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/t;->e:I

    .line 66
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/datepicker/t;->f:J

    return-void
.end method

.method public static a(II)Lcom/google/android/material/datepicker/t;
    .locals 2

    const/4 v0, 0x0

    .line 83
    invoke-static {v0}, Lcom/google/android/material/datepicker/y;->h(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 91
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    .line 92
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 93
    new-instance p0, Lcom/google/android/material/datepicker/t;

    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/t;-><init>(Ljava/util/Calendar;)V

    return-object p0
.end method

.method public static b(J)Lcom/google/android/material/datepicker/t;
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-static {v0}, Lcom/google/android/material/datepicker/y;->h(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 77
    new-instance p0, Lcom/google/android/material/datepicker/t;

    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/t;-><init>(Ljava/util/Calendar;)V

    return-object p0
.end method


# virtual methods
.method public final c()I
    .locals 2

    const/4 v0, 0x7

    .line 106
    iget-object v1, p0, Lcom/google/android/material/datepicker/t;->a:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 108
    iget v1, p0, Lcom/google/android/material/datepicker/t;->d:I

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public compareTo(Lcom/google/android/material/datepicker/t;)I
    .locals 1
    .param p1    # Lcom/google/android/material/datepicker/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 133
    iget-object v0, p0, Lcom/google/android/material/datepicker/t;->a:Ljava/util/Calendar;

    iget-object p1, p1, Lcom/google/android/material/datepicker/t;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    check-cast p1, Lcom/google/android/material/datepicker/t;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/t;->compareTo(Lcom/google/android/material/datepicker/t;)I

    move-result p1

    return p1
.end method

.method public final d(I)J
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/google/android/material/datepicker/t;->a:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/google/android/material/datepicker/y;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 168
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 169
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/google/android/material/datepicker/t;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/google/android/material/datepicker/t;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/16 v2, 0x2024

    const/4 v3, 0x0

    .line 36
    invoke-static {v3, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 193
    iput-object v0, p0, Lcom/google/android/material/datepicker/t;->g:Ljava/lang/String;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/t;->g:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 118
    :cond_0
    instance-of v1, p1, Lcom/google/android/material/datepicker/t;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 121
    :cond_1
    check-cast p1, Lcom/google/android/material/datepicker/t;

    .line 122
    iget v1, p1, Lcom/google/android/material/datepicker/t;->b:I

    iget v3, p0, Lcom/google/android/material/datepicker/t;->b:I

    if-ne v3, v1, :cond_2

    iget v1, p0, Lcom/google/android/material/datepicker/t;->c:I

    iget p1, p1, Lcom/google/android/material/datepicker/t;->c:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f(Lcom/google/android/material/datepicker/t;)I
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/google/android/material/datepicker/t;->a:Ljava/util/Calendar;

    instance-of v0, v0, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    .line 147
    iget v0, p1, Lcom/google/android/material/datepicker/t;->c:I

    iget v1, p0, Lcom/google/android/material/datepicker/t;->c:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    iget p1, p1, Lcom/google/android/material/datepicker/t;->b:I

    iget v1, p0, Lcom/google/android/material/datepicker/t;->b:I

    sub-int/2addr p1, v1

    add-int/2addr p1, v0

    return p1

    .line 149
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only Gregorian calendars are supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 4

    .line 127
    iget v0, p0, Lcom/google/android/material/datepicker/t;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/datepicker/t;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 128
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 225
    iget p2, p0, Lcom/google/android/material/datepicker/t;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget p2, p0, Lcom/google/android/material/datepicker/t;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
