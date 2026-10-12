.class Landroidx/fragment/app/FragmentManager$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/fragment/app/FragmentManager$h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3642
    new-instance v0, Landroidx/fragment/app/FragmentManager$h$a;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentManager$h$a;-><init>()V

    sput-object v0, Landroidx/fragment/app/FragmentManager$h;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3622
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$h;->a:Ljava/lang/String;

    .line 3623
    iput p2, p0, Landroidx/fragment/app/FragmentManager$h;->b:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 3638
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager$h;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3639
    iget p2, p0, Landroidx/fragment/app/FragmentManager$h;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
