.class final Lcom/airbnb/lottie/LottieComposition$Factory$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;
.implements Lcom/airbnb/lottie/Cancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieComposition$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/LottieListener<",
        "Lcom/airbnb/lottie/LottieComposition;",
        ">;",
        "Lcom/airbnb/lottie/Cancellable;"
    }
.end annotation


# instance fields
.field public final a:Lcom/airbnb/lottie/OnCompositionLoadedListener;

.field public b:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/OnCompositionLoadedListener;)V
    .locals 1

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 347
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieComposition$Factory$a;->b:Z

    .line 350
    iput-object p1, p0, Lcom/airbnb/lottie/LottieComposition$Factory$a;->a:Lcom/airbnb/lottie/OnCompositionLoadedListener;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 361
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieComposition$Factory$a;->b:Z

    return-void
.end method

.method public onResult(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 1

    .line 354
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieComposition$Factory$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition$Factory$a;->a:Lcom/airbnb/lottie/OnCompositionLoadedListener;

    invoke-interface {v0, p1}, Lcom/airbnb/lottie/OnCompositionLoadedListener;->onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 344
    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieComposition$Factory$a;->onResult(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
