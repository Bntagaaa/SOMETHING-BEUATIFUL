.class public Lcom/airbnb/lottie/LottieConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieConfig$Builder;
    }
.end annotation


# instance fields
.field public final a:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

.field public final b:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/network/LottieNetworkFetcher;Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;Z)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/airbnb/lottie/LottieConfig;->a:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    .line 25
    iput-object p2, p0, Lcom/airbnb/lottie/LottieConfig;->b:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    .line 26
    iput-boolean p3, p0, Lcom/airbnb/lottie/LottieConfig;->c:Z

    return-void
.end method
