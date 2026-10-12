.class Lcom/airbnb/lottie/LottieAnimationView$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieAnimationView$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/airbnb/lottie/LottieAnimationView$f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/airbnb/lottie/LottieAnimationView$f;
    .locals 3

    .line 1236
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$f;

    .line 1212
    invoke-direct {v0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/airbnb/lottie/LottieAnimationView$f;->a:Ljava/lang/String;

    .line 1214
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/airbnb/lottie/LottieAnimationView$f;->c:F

    .line 1215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/airbnb/lottie/LottieAnimationView$f;->d:Z

    .line 1216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/airbnb/lottie/LottieAnimationView$f;->e:Ljava/lang/String;

    .line 1217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/airbnb/lottie/LottieAnimationView$f;->f:I

    .line 1218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, v0, Lcom/airbnb/lottie/LottieAnimationView$f;->g:I

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1233
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView$f$a;->createFromParcel(Landroid/os/Parcel;)Lcom/airbnb/lottie/LottieAnimationView$f;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/airbnb/lottie/LottieAnimationView$f;
    .locals 0

    .line 1241
    new-array p1, p1, [Lcom/airbnb/lottie/LottieAnimationView$f;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1233
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView$f$a;->newArray(I)[Lcom/airbnb/lottie/LottieAnimationView$f;

    move-result-object p1

    return-object p1
.end method
