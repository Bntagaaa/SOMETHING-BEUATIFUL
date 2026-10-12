.class Landroidx/core/provider/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/k$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/collection/LruCache;

.field public static final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final c:Ljava/lang/Object;

.field public static final d:Landroidx/collection/SimpleArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 58
    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Landroidx/core/provider/k;->a:Landroidx/collection/LruCache;

    .line 82
    new-instance v9, Landroidx/core/provider/l$a;

    .line 164
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 165
    const-string v0, "fonts-androidx"

    iput-object v0, v9, Landroidx/core/provider/l$a;->a:Ljava/lang/String;

    const/16 v0, 0xa

    .line 166
    iput v0, v9, Landroidx/core/provider/l$a;->b:I

    .line 85
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v0, 0x2710

    int-to-long v5, v0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x1

    .line 93
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 61
    sput-object v2, Landroidx/core/provider/k;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/provider/k;->c:Ljava/lang/Object;

    .line 72
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Landroidx/core/provider/k;->d:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/k$a;
    .locals 8

    .line 238
    sget-object v0, Landroidx/core/provider/k;->a:Landroidx/collection/LruCache;

    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 240
    new-instance p0, Landroidx/core/provider/k$a;

    invoke-direct {p0, v1}, Landroidx/core/provider/k$a;-><init>(Landroid/graphics/Typeface;)V

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 245
    :try_start_0
    invoke-static {p1, v1, p2}, Landroidx/core/provider/f;->a(Landroid/content/Context;Landroid/os/CancellationSignal;Landroidx/core/provider/FontRequest;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    invoke-virtual {p2}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x3

    if-eqz v2, :cond_2

    .line 270
    invoke-virtual {p2}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v2

    if-eq v2, v3, :cond_1

    :goto_0
    const/4 v3, -0x3

    goto :goto_2

    :cond_1
    const/4 v3, -0x2

    goto :goto_2

    .line 277
    :cond_2
    invoke-virtual {p2}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 278
    array-length v5, v2

    if-nez v5, :cond_3

    goto :goto_2

    .line 282
    :cond_3
    array-length v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_6

    aget-object v7, v2, v6

    .line 285
    invoke-virtual {v7}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v7

    if-eqz v7, :cond_5

    if-gez v7, :cond_4

    goto :goto_0

    :cond_4
    move v3, v7

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :cond_7
    :goto_2
    if-eqz v3, :cond_8

    .line 252
    new-instance p0, Landroidx/core/provider/k$a;

    invoke-direct {p0, v3}, Landroidx/core/provider/k$a;-><init>(I)V

    return-object p0

    .line 256
    :cond_8
    invoke-virtual {p2}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object p2

    .line 255
    invoke-static {p1, v1, p2, p3}, Landroidx/core/graphics/TypefaceCompat;->createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 259
    invoke-virtual {v0, p0, p1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance p0, Landroidx/core/provider/k$a;

    invoke-direct {p0, p1}, Landroidx/core/provider/k$a;-><init>(Landroid/graphics/Typeface;)V

    return-object p0

    .line 262
    :cond_9
    new-instance p0, Landroidx/core/provider/k$a;

    invoke-direct {p0, v4}, Landroidx/core/provider/k$a;-><init>(I)V

    return-object p0

    .line 247
    :catch_0
    new-instance p0, Landroidx/core/provider/k$a;

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Landroidx/core/provider/k$a;-><init>(I)V

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroidx/core/provider/FontRequest;ILjava/util/concurrent/Executor;Landroidx/core/provider/c;)Landroid/graphics/Typeface;
    .locals 5

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    iget-object v1, p1, Landroidx/core/provider/FontRequest;->f:Ljava/lang/String;

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    sget-object v1, Landroidx/core/provider/k;->a:Landroidx/collection/LruCache;

    invoke-virtual {v1, v0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 167
    new-instance p0, Landroidx/core/provider/k$a;

    invoke-direct {p0, v1}, Landroidx/core/provider/k$a;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p4, p0}, Landroidx/core/provider/c;->a(Landroidx/core/provider/k$a;)V

    return-object v1

    .line 171
    :cond_0
    new-instance v1, Landroidx/core/provider/h;

    invoke-direct {v1, p4}, Landroidx/core/provider/h;-><init>(Landroidx/core/provider/c;)V

    .line 181
    sget-object p4, Landroidx/core/provider/k;->c:Ljava/lang/Object;

    monitor-enter p4

    .line 182
    :try_start_0
    sget-object v2, Landroidx/core/provider/k;->d:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 186
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    monitor-exit p4

    return-object v4

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 189
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 190
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {v2, v0, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    new-instance p4, Landroidx/core/provider/i;

    invoke-direct {p4, v0, p0, p1, p2}, Landroidx/core/provider/i;-><init>(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)V

    if-nez p3, :cond_2

    .line 204
    sget-object p3, Landroidx/core/provider/k;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 206
    :cond_2
    new-instance p0, Landroidx/core/provider/j;

    invoke-direct {p0, v0}, Landroidx/core/provider/j;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Landroidx/core/provider/d;->a()Landroid/os/Handler;

    move-result-object p1

    .line 57
    new-instance p2, Landroidx/core/provider/l$c;

    .line 135
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p4, p2, Landroidx/core/provider/l$c;->a:Ljava/util/concurrent/Callable;

    .line 137
    iput-object p0, p2, Landroidx/core/provider/l$c;->b:Landroidx/core/util/Consumer;

    .line 138
    iput-object p1, p2, Landroidx/core/provider/l$c;->c:Landroid/os/Handler;

    .line 57
    invoke-interface {p3, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v4

    .line 192
    :goto_0
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
