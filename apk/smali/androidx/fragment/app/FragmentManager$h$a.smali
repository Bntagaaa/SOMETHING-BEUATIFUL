.class Landroidx/fragment/app/FragmentManager$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/fragment/app/FragmentManager$h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/fragment/app/FragmentManager$h;
    .locals 2

    .line 3646
    new-instance v0, Landroidx/fragment/app/FragmentManager$h;

    .line 3626
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3627
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/FragmentManager$h;->a:Ljava/lang/String;

    .line 3628
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, v0, Landroidx/fragment/app/FragmentManager$h;->b:I

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 3643
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager$h$a;->createFromParcel(Landroid/os/Parcel;)Landroidx/fragment/app/FragmentManager$h;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/fragment/app/FragmentManager$h;
    .locals 0

    .line 3651
    new-array p1, p1, [Landroidx/fragment/app/FragmentManager$h;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 3643
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager$h$a;->newArray(I)[Landroidx/fragment/app/FragmentManager$h;

    move-result-object p1

    return-object p1
.end method
