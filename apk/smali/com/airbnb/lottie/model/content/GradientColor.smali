.class public Lcom/airbnb/lottie/model/content/GradientColor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[F

.field public final b:[I


# direct methods
.method public constructor <init>([F[I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/GradientColor;->a:[F

    .line 13
    iput-object p2, p0, Lcom/airbnb/lottie/model/content/GradientColor;->b:[I

    return-void
.end method


# virtual methods
.method public getColors()[I
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientColor;->b:[I

    return-object v0
.end method

.method public getPositions()[F
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientColor;->a:[F

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientColor;->b:[I

    array-length v0, v0

    return v0
.end method

.method public lerp(Lcom/airbnb/lottie/model/content/GradientColor;Lcom/airbnb/lottie/model/content/GradientColor;F)V
    .locals 5

    .line 29
    iget-object v0, p1, Lcom/airbnb/lottie/model/content/GradientColor;->b:[I

    array-length v0, v0

    iget-object v1, p2, Lcom/airbnb/lottie/model/content/GradientColor;->b:[I

    array-length v1, v1

    iget-object v2, p1, Lcom/airbnb/lottie/model/content/GradientColor;->b:[I

    iget-object v3, p2, Lcom/airbnb/lottie/model/content/GradientColor;->b:[I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 34
    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_0

    .line 35
    iget-object v1, p1, Lcom/airbnb/lottie/model/content/GradientColor;->a:[F

    aget v1, v1, v0

    iget-object v4, p2, Lcom/airbnb/lottie/model/content/GradientColor;->a:[F

    aget v4, v4, v0

    invoke-static {v1, v4, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v1

    iget-object v4, p0, Lcom/airbnb/lottie/model/content/GradientColor;->a:[F

    aput v1, v4, v0

    .line 36
    aget v1, v2, v0

    aget v4, v3, v0

    invoke-static {p3, v1, v4}, Lcom/airbnb/lottie/utils/GammaEvaluator;->evaluate(FII)I

    move-result v1

    iget-object v4, p0, Lcom/airbnb/lottie/model/content/GradientColor;->b:[I

    aput v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot interpolate between gradients. Lengths vary ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p3, v2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " vs "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, v3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
