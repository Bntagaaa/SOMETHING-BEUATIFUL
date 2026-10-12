.class Landroidx/appcompat/widget/AppCompatSpinner$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatSpinner$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/appcompat/widget/AppCompatSpinner$i;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/appcompat/widget/AppCompatSpinner$i;
    .locals 1

    .line 683
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner$i;

    .line 669
    invoke-direct {v0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 670
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Landroidx/appcompat/widget/AppCompatSpinner$i;->a:Z

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 680
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$i$a;->createFromParcel(Landroid/os/Parcel;)Landroidx/appcompat/widget/AppCompatSpinner$i;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/appcompat/widget/AppCompatSpinner$i;
    .locals 0

    .line 688
    new-array p1, p1, [Landroidx/appcompat/widget/AppCompatSpinner$i;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 680
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$i$a;->newArray(I)[Landroidx/appcompat/widget/AppCompatSpinner$i;

    move-result-object p1

    return-object p1
.end method
