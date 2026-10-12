.class public Lcom/airbnb/lottie/L;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static DBG:Z = false

.field public static final TAG:Ljava/lang/String; = "LOTTIE"

.field public static a:Z = false

.field public static b:[Ljava/lang/String;

.field public static c:[J

.field public static d:I

.field public static e:I

.field public static f:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

.field public static g:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

.field public static volatile h:Lcom/airbnb/lottie/network/NetworkFetcher;

.field public static volatile i:Lcom/airbnb/lottie/network/NetworkCache;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 4

    .line 51
    sget-boolean v0, Lcom/airbnb/lottie/L;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    sget v0, Lcom/airbnb/lottie/L;->d:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    .line 55
    sget p0, Lcom/airbnb/lottie/L;->e:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/airbnb/lottie/L;->e:I

    return-void

    .line 58
    :cond_1
    sget-object v1, Lcom/airbnb/lottie/L;->b:[Ljava/lang/String;

    aput-object p0, v1, v0

    .line 59
    sget-object v1, Lcom/airbnb/lottie/L;->c:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 60
    invoke-static {p0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 61
    sget p0, Lcom/airbnb/lottie/L;->d:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/airbnb/lottie/L;->d:I

    return-void
.end method

.method public static endSection(Ljava/lang/String;)F
    .locals 4

    .line 65
    sget v0, Lcom/airbnb/lottie/L;->e:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 66
    sput v0, Lcom/airbnb/lottie/L;->e:I

    return v1

    .line 69
    :cond_0
    sget-boolean v0, Lcom/airbnb/lottie/L;->a:Z

    if-nez v0, :cond_1

    return v1

    .line 72
    :cond_1
    sget v0, Lcom/airbnb/lottie/L;->d:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/airbnb/lottie/L;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 76
    sget-object v1, Lcom/airbnb/lottie/L;->b:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 81
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object p0, Lcom/airbnb/lottie/L;->c:[J

    sget v2, Lcom/airbnb/lottie/L;->d:I

    aget-wide v2, p0, v2

    sub-long/2addr v0, v2

    long-to-float p0, v0

    const v0, 0x49742400    # 1000000.0f

    div-float/2addr p0, v0

    return p0

    .line 77
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced trace call "

    const-string v2, ". Expected "

    .line 0
    invoke-static {v1, p0, v2}, L_COROUTINE/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 77
    sget-object v1, Lcom/airbnb/lottie/L;->b:[Ljava/lang/String;

    sget v2, Lcom/airbnb/lottie/L;->d:I

    aget-object v1, v1, v2

    const-string v2, "."

    .line 0
    invoke-static {p0, v1, v2}, L_COROUTINE/a;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t end trace section. There are none."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static networkCache(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkCache;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 108
    sget-object v0, Lcom/airbnb/lottie/L;->i:Lcom/airbnb/lottie/network/NetworkCache;

    if-nez v0, :cond_2

    .line 110
    const-class v1, Lcom/airbnb/lottie/network/NetworkCache;

    monitor-enter v1

    .line 111
    :try_start_0
    sget-object v0, Lcom/airbnb/lottie/L;->i:Lcom/airbnb/lottie/network/NetworkCache;

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Lcom/airbnb/lottie/network/NetworkCache;

    sget-object v2, Lcom/airbnb/lottie/L;->g:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/airbnb/lottie/L$a;

    invoke-direct {v2, p0}, Lcom/airbnb/lottie/L$a;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-direct {v0, v2}, Lcom/airbnb/lottie/network/NetworkCache;-><init>(Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;)V

    sput-object v0, Lcom/airbnb/lottie/L;->i:Lcom/airbnb/lottie/network/NetworkCache;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 119
    :cond_1
    :goto_1
    monitor-exit v1

    return-object v0

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-object v0
.end method

.method public static networkFetcher(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkFetcher;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 94
    sget-object v0, Lcom/airbnb/lottie/L;->h:Lcom/airbnb/lottie/network/NetworkFetcher;

    if-nez v0, :cond_2

    .line 96
    const-class v1, Lcom/airbnb/lottie/network/NetworkFetcher;

    monitor-enter v1

    .line 97
    :try_start_0
    sget-object v0, Lcom/airbnb/lottie/L;->h:Lcom/airbnb/lottie/network/NetworkFetcher;

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Lcom/airbnb/lottie/network/NetworkFetcher;

    invoke-static {p0}, Lcom/airbnb/lottie/L;->networkCache(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkCache;

    move-result-object p0

    sget-object v2, Lcom/airbnb/lottie/L;->f:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/airbnb/lottie/network/DefaultLottieNetworkFetcher;

    invoke-direct {v2}, Lcom/airbnb/lottie/network/DefaultLottieNetworkFetcher;-><init>()V

    :goto_0
    invoke-direct {v0, p0, v2}, Lcom/airbnb/lottie/network/NetworkFetcher;-><init>(Lcom/airbnb/lottie/network/NetworkCache;Lcom/airbnb/lottie/network/LottieNetworkFetcher;)V

    sput-object v0, Lcom/airbnb/lottie/L;->h:Lcom/airbnb/lottie/network/NetworkFetcher;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 101
    :cond_1
    :goto_1
    monitor-exit v1

    return-object v0

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-object v0
.end method

.method public static setCacheProvider(Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;)V
    .locals 0

    .line 89
    sput-object p0, Lcom/airbnb/lottie/L;->g:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    return-void
.end method

.method public static setFetcher(Lcom/airbnb/lottie/network/LottieNetworkFetcher;)V
    .locals 0

    .line 85
    sput-object p0, Lcom/airbnb/lottie/L;->f:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    return-void
.end method

.method public static setTraceEnabled(Z)V
    .locals 1

    .line 40
    sget-boolean v0, Lcom/airbnb/lottie/L;->a:Z

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    sput-boolean p0, Lcom/airbnb/lottie/L;->a:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x14

    .line 45
    new-array v0, p0, [Ljava/lang/String;

    sput-object v0, Lcom/airbnb/lottie/L;->b:[Ljava/lang/String;

    .line 46
    new-array p0, p0, [J

    sput-object p0, Lcom/airbnb/lottie/L;->c:[J

    :cond_1
    :goto_0
    return-void
.end method
