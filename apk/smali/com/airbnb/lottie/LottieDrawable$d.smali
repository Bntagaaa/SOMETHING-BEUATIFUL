.class Lcom/airbnb/lottie/LottieDrawable$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxProgress(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F

.field public final synthetic c:Lcom/airbnb/lottie/LottieDrawable;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;FF)V
    .locals 0

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$d;->c:Lcom/airbnb/lottie/LottieDrawable;

    iput p2, p0, Lcom/airbnb/lottie/LottieDrawable$d;->a:F

    iput p3, p0, Lcom/airbnb/lottie/LottieDrawable$d;->b:F

    return-void
.end method


# virtual methods
.method public run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 2

    .line 713
    iget p1, p0, Lcom/airbnb/lottie/LottieDrawable$d;->a:F

    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable$d;->b:F

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable$d;->c:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1, p1, v0}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxProgress(FF)V

    return-void
.end method
