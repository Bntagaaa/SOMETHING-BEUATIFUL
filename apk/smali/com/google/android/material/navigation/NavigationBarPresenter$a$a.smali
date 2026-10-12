.class Lcom/google/android/material/navigation/NavigationBarPresenter$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/navigation/NavigationBarPresenter$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/navigation/NavigationBarPresenter$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/navigation/NavigationBarPresenter$a;
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 165
    new-instance v0, Lcom/google/android/material/navigation/NavigationBarPresenter$a;

    .line 144
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/google/android/material/navigation/NavigationBarPresenter$a;->a:I

    .line 146
    const-class v1, Lcom/google/android/material/navigation/NavigationBarPresenter$a;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/ParcelableSparseArray;

    iput-object p1, v0, Lcom/google/android/material/navigation/NavigationBarPresenter$a;->b:Lcom/google/android/material/internal/ParcelableSparseArray;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 161
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarPresenter$a$a;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/navigation/NavigationBarPresenter$a;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/material/navigation/NavigationBarPresenter$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 171
    new-array p1, p1, [Lcom/google/android/material/navigation/NavigationBarPresenter$a;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 161
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarPresenter$a$a;->newArray(I)[Lcom/google/android/material/navigation/NavigationBarPresenter$a;

    move-result-object p1

    return-object p1
.end method
