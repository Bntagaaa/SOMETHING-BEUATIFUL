.class Landroidx/viewpager2/widget/ViewPager2$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/ViewPager2$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroidx/viewpager2/widget/ViewPager2$i;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/viewpager2/widget/ViewPager2$i;
    .locals 1

    const/4 v0, 0x0

    .line 430
    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2$i$a;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/viewpager2/widget/ViewPager2$i;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/viewpager2/widget/ViewPager2$i;
    .locals 2

    .line 423
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 424
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$i;

    invoke-direct {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2$i;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 425
    :cond_0
    new-instance p2, Landroidx/viewpager2/widget/ViewPager2$i;

    .line 397
    invoke-direct {p2, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p2, Landroidx/viewpager2/widget/ViewPager2$i;->a:I

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p2, Landroidx/viewpager2/widget/ViewPager2$i;->b:I

    const/4 v0, 0x0

    .line 409
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p2, Landroidx/viewpager2/widget/ViewPager2$i;->c:Landroid/os/Parcelable;

    return-object p2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 420
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$i$a;->createFromParcel(Landroid/os/Parcel;)Landroidx/viewpager2/widget/ViewPager2$i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 420
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2$i$a;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/viewpager2/widget/ViewPager2$i;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/viewpager2/widget/ViewPager2$i;
    .locals 0

    .line 435
    new-array p1, p1, [Landroidx/viewpager2/widget/ViewPager2$i;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 420
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$i$a;->newArray(I)[Landroidx/viewpager2/widget/ViewPager2$i;

    move-result-object p1

    return-object p1
.end method
