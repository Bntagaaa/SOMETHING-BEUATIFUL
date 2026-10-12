.class Landroidx/appcompat/widget/b$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/b$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/appcompat/widget/b$g;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/appcompat/widget/b$g;
    .locals 1

    .line 615
    new-instance v0, Landroidx/appcompat/widget/b$g;

    .line 597
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 598
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, v0, Landroidx/appcompat/widget/b$g;->a:I

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 612
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/b$g$a;->createFromParcel(Landroid/os/Parcel;)Landroidx/appcompat/widget/b$g;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/appcompat/widget/b$g;
    .locals 0

    .line 620
    new-array p1, p1, [Landroidx/appcompat/widget/b$g;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 612
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/b$g$a;->newArray(I)[Landroidx/appcompat/widget/b$g;

    move-result-object p1

    return-object p1
.end method
