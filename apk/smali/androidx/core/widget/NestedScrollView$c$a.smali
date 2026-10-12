.class Landroidx/core/widget/NestedScrollView$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/NestedScrollView$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/core/widget/NestedScrollView$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/core/widget/NestedScrollView$c;
    .locals 1

    .line 2457
    new-instance v0, Landroidx/core/widget/NestedScrollView$c;

    .line 2435
    invoke-direct {v0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, v0, Landroidx/core/widget/NestedScrollView$c;->a:I

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2454
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView$c$a;->createFromParcel(Landroid/os/Parcel;)Landroidx/core/widget/NestedScrollView$c;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/core/widget/NestedScrollView$c;
    .locals 0

    .line 2462
    new-array p1, p1, [Landroidx/core/widget/NestedScrollView$c;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2454
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView$c$a;->newArray(I)[Landroidx/core/widget/NestedScrollView$c;

    move-result-object p1

    return-object p1
.end method
