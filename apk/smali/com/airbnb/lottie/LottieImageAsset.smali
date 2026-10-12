.class public Lcom/airbnb/lottie/LottieImageAsset;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public f:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/airbnb/lottie/LottieImageAsset;->a:I

    .line 25
    iput p2, p0, Lcom/airbnb/lottie/LottieImageAsset;->b:I

    .line 26
    iput-object p3, p0, Lcom/airbnb/lottie/LottieImageAsset;->c:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/airbnb/lottie/LottieImageAsset;->d:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/airbnb/lottie/LottieImageAsset;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/airbnb/lottie/LottieImageAsset;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDirName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/airbnb/lottie/LottieImageAsset;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/airbnb/lottie/LottieImageAsset;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/airbnb/lottie/LottieImageAsset;->b:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/airbnb/lottie/LottieImageAsset;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/airbnb/lottie/LottieImageAsset;->a:I

    return v0
.end method

.method public hasBitmap()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/airbnb/lottie/LottieImageAsset;->f:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const-string v0, "data:"

    iget-object v1, p0, Lcom/airbnb/lottie/LottieImageAsset;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "base64,"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 62
    iput-object p1, p0, Lcom/airbnb/lottie/LottieImageAsset;->f:Landroid/graphics/Bitmap;

    return-void
.end method
