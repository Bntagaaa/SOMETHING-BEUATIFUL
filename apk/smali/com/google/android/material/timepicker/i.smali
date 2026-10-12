.class Lcom/google/android/material/timepicker/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/timepicker/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/android/material/timepicker/f;

.field public final b:Lcom/google/android/material/timepicker/f;

.field public final c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 159
    new-instance v0, Lcom/google/android/material/timepicker/i$a;

    invoke-direct {v0}, Lcom/google/android/material/timepicker/i$a;-><init>()V

    sput-object v0, Lcom/google/android/material/timepicker/i;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/i;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xa

    .line 56
    invoke-direct {p0, v0, v0, v1, p1}, Lcom/google/android/material/timepicker/i;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/google/android/material/timepicker/i;->d:I

    .line 61
    iput p2, p0, Lcom/google/android/material/timepicker/i;->e:I

    .line 62
    iput p3, p0, Lcom/google/android/material/timepicker/i;->f:I

    .line 63
    iput p4, p0, Lcom/google/android/material/timepicker/i;->c:I

    const/4 p2, 0x1

    const/16 p3, 0xc

    if-lt p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 64
    :goto_0
    iput p1, p0, Lcom/google/android/material/timepicker/i;->g:I

    .line 65
    new-instance p1, Lcom/google/android/material/timepicker/f;

    const/16 v0, 0x3b

    invoke-direct {p1, v0}, Lcom/google/android/material/timepicker/f;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/timepicker/i;->a:Lcom/google/android/material/timepicker/f;

    .line 66
    new-instance p1, Lcom/google/android/material/timepicker/f;

    if-ne p4, p2, :cond_1

    const/16 p3, 0x18

    :cond_1
    invoke-direct {p1, p3}, Lcom/google/android/material/timepicker/f;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/timepicker/i;->b:Lcom/google/android/material/timepicker/f;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/material/timepicker/i;-><init>(IIII)V

    return-void
.end method

.method public static formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 183
    const-string v0, "%02d"

    invoke-static {p0, p1, v0}, Lcom/google/android/material/timepicker/i;->formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 188
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 190
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 187
    invoke-static {p0, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 134
    :cond_0
    instance-of v1, p1, Lcom/google/android/material/timepicker/i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 138
    :cond_1
    check-cast p1, Lcom/google/android/material/timepicker/i;

    .line 139
    iget v1, p0, Lcom/google/android/material/timepicker/i;->d:I

    iget v3, p1, Lcom/google/android/material/timepicker/i;->d:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/material/timepicker/i;->e:I

    iget v3, p1, Lcom/google/android/material/timepicker/i;->e:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/material/timepicker/i;->c:I

    iget v3, p1, Lcom/google/android/material/timepicker/i;->c:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/material/timepicker/i;->f:I

    iget p1, p1, Lcom/google/android/material/timepicker/i;->f:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getHourForDisplay()I
    .locals 4

    .line 99
    iget v0, p0, Lcom/google/android/material/timepicker/i;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 100
    iget v0, p0, Lcom/google/android/material/timepicker/i;->d:I

    rem-int/lit8 v0, v0, 0x18

    return v0

    .line 103
    :cond_0
    iget v0, p0, Lcom/google/android/material/timepicker/i;->d:I

    rem-int/lit8 v2, v0, 0xc

    const/16 v3, 0xc

    if-nez v2, :cond_1

    return v3

    .line 107
    :cond_1
    iget v2, p0, Lcom/google/android/material/timepicker/i;->g:I

    if-ne v2, v1, :cond_2

    sub-int/2addr v0, v3

    :cond_2
    return v0
.end method

.method public getHourInputValidator()Lcom/google/android/material/timepicker/f;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/android/material/timepicker/i;->b:Lcom/google/android/material/timepicker/f;

    return-object v0
.end method

.method public getMinuteInputValidator()Lcom/google/android/material/timepicker/f;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/google/android/material/timepicker/i;->a:Lcom/google/android/material/timepicker/f;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 124
    iget v0, p0, Lcom/google/android/material/timepicker/i;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/timepicker/i;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/timepicker/i;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/material/timepicker/i;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    .line 125
    invoke-static {v4}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setHour(I)V
    .locals 3

    .line 86
    iget v0, p0, Lcom/google/android/material/timepicker/i;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 87
    iput p1, p0, Lcom/google/android/material/timepicker/i;->d:I

    return-void

    :cond_0
    const/16 v0, 0xc

    .line 91
    rem-int/2addr p1, v0

    iget v2, p0, Lcom/google/android/material/timepicker/i;->g:I

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/material/timepicker/i;->d:I

    return-void
.end method

.method public setHourOfDay(I)V
    .locals 1

    const/16 v0, 0xc

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    iput v0, p0, Lcom/google/android/material/timepicker/i;->g:I

    .line 76
    iput p1, p0, Lcom/google/android/material/timepicker/i;->d:I

    return-void
.end method

.method public setMinute(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x3bL
        .end annotation
    .end param

    .line 95
    rem-int/lit8 p1, p1, 0x3c

    iput p1, p0, Lcom/google/android/material/timepicker/i;->e:I

    return-void
.end method

.method public setPeriod(I)V
    .locals 3

    .line 172
    iget v0, p0, Lcom/google/android/material/timepicker/i;->g:I

    if-eq p1, v0, :cond_1

    .line 173
    iput p1, p0, Lcom/google/android/material/timepicker/i;->g:I

    .line 174
    iget v0, p0, Lcom/google/android/material/timepicker/i;->d:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    add-int/2addr v0, v1

    .line 175
    iput v0, p0, Lcom/google/android/material/timepicker/i;->d:I

    return-void

    :cond_0
    if-lt v0, v1, :cond_1

    if-nez p1, :cond_1

    sub-int/2addr v0, v1

    .line 177
    iput v0, p0, Lcom/google/android/material/timepicker/i;->d:I

    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 152
    iget p2, p0, Lcom/google/android/material/timepicker/i;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget p2, p0, Lcom/google/android/material/timepicker/i;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget p2, p0, Lcom/google/android/material/timepicker/i;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget p2, p0, Lcom/google/android/material/timepicker/i;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
