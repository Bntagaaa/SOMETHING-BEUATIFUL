.class Lcom/google/android/material/datepicker/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/datepicker/t;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/t;
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 208
    invoke-static {v0, p1}, Lcom/google/android/material/datepicker/t;->a(II)Lcom/google/android/material/datepicker/t;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 202
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/t$a;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/t;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/material/datepicker/t;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 214
    new-array p1, p1, [Lcom/google/android/material/datepicker/t;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 202
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/t$a;->newArray(I)[Lcom/google/android/material/datepicker/t;

    move-result-object p1

    return-object p1
.end method
