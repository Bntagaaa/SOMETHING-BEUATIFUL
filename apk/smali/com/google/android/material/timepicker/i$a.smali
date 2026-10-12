.class Lcom/google/android/material/timepicker/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/timepicker/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/timepicker/i;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/timepicker/i;
    .locals 1

    .line 162
    new-instance v0, Lcom/google/android/material/timepicker/i;

    invoke-direct {v0, p1}, Lcom/google/android/material/timepicker/i;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 159
    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/i$a;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/timepicker/i;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/material/timepicker/i;
    .locals 0

    .line 167
    new-array p1, p1, [Lcom/google/android/material/timepicker/i;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 159
    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/i$a;->newArray(I)[Lcom/google/android/material/timepicker/i;

    move-result-object p1

    return-object p1
.end method
