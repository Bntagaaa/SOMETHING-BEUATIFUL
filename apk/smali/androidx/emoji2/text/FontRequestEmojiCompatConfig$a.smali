.class Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/FontRequestEmojiCompatConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/core/provider/FontRequest;

.field public final c:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontProviderHelper;

.field public final d:Ljava/lang/Object;

.field public e:Landroid/os/Handler;

.field public f:Ljava/util/concurrent/Executor;

.field public g:Ljava/util/concurrent/ThreadPoolExecutor;

.field public h:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$RetryPolicy;

.field public i:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

.field public j:Landroid/database/ContentObserver;

.field public k:Landroidx/emoji2/text/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontProviderHelper;)V
    .locals 1

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->d:Ljava/lang/Object;

    .line 236
    const-string v0, "Context cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v0, "FontRequest cannot be null"

    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->a:Landroid/content/Context;

    .line 239
    iput-object p2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->b:Landroidx/core/provider/FontRequest;

    .line 240
    iput-object p3, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->c:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontProviderHelper;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 326
    iget-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 327
    :try_start_0
    iput-object v1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->i:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    .line 328
    iget-object v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->j:Landroid/database/ContentObserver;

    if-eqz v2, :cond_0

    .line 329
    iget-object v3, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->c:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontProviderHelper;

    iget-object v4, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->a:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontProviderHelper;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 330
    iput-object v1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->j:Landroid/database/ContentObserver;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 332
    :cond_0
    :goto_0
    iget-object v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->e:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 333
    iget-object v3, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->k:Landroidx/emoji2/text/j;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 335
    :cond_1
    iput-object v1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->e:Landroid/os/Handler;

    .line 336
    iget-object v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v2, :cond_2

    .line 338
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 340
    :cond_2
    iput-object v1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->f:Ljava/util/concurrent/Executor;

    .line 341
    iput-object v1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 342
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()V
    .locals 10

    .line 267
    iget-object v1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_0
    iget-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->i:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    if-nez v0, :cond_0

    .line 270
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->f:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 273
    const-string v0, "emojiCompat"

    .line 56
    new-instance v9, Landroidx/emoji2/text/b;

    invoke-direct {v9, v0}, Landroidx/emoji2/text/b;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const-wide/16 v5, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x1

    .line 69
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 273
    iput-object v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 275
    iput-object v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->f:Ljava/util/concurrent/Executor;

    .line 277
    :cond_1
    iget-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->f:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/emoji2/text/j;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroidx/emoji2/text/j;-><init>(Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 278
    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()Landroidx/core/provider/FontsContractCompat$FontInfo;
    .locals 4

    .line 285
    :try_start_0
    iget-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->c:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontProviderHelper;

    iget-object v1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->b:Landroidx/core/provider/FontRequest;

    invoke-virtual {v0, v1, v2}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontProviderHelper;->fetchFonts(Landroid/content/Context;Landroidx/core/provider/FontRequest;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    invoke-virtual {v0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v1

    if-nez v1, :cond_1

    .line 292
    invoke-virtual {v0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    array-length v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 296
    aget-object v0, v0, v1

    return-object v0

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fetchFonts failed (empty result)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fetchFonts failed ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    .line 287
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "provider not found"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final d(Landroid/net/Uri;J)V
    .locals 5

    .line 302
    iget-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_0
    iget-object v1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->e:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 77
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 78
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroidx/emoji2/text/c$a;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    goto :goto_0

    .line 80
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 306
    :goto_0
    iput-object v1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->e:Landroid/os/Handler;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 308
    :cond_1
    :goto_1
    iget-object v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->j:Landroid/database/ContentObserver;

    if-nez v2, :cond_2

    .line 309
    new-instance v2, Landroidx/emoji2/text/k;

    invoke-direct {v2, p0, v1}, Landroidx/emoji2/text/k;-><init>(Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;Landroid/os/Handler;)V

    iput-object v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->j:Landroid/database/ContentObserver;

    .line 315
    iget-object v3, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->c:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontProviderHelper;

    iget-object v4, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->a:Landroid/content/Context;

    invoke-virtual {v3, v4, p1, v2}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontProviderHelper;->registerObserver(Landroid/content/Context;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 317
    :cond_2
    iget-object p1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->k:Landroidx/emoji2/text/j;

    if-nez p1, :cond_3

    .line 318
    new-instance p1, Landroidx/emoji2/text/j;

    const/4 v2, 0x1

    invoke-direct {p1, p0, v2}, Landroidx/emoji2/text/j;-><init>(Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;I)V

    iput-object p1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->k:Landroidx/emoji2/text/j;

    .line 320
    :cond_3
    iget-object p1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->k:Landroidx/emoji2/text/j;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 321
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public load(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;)V
    .locals 1
    .param p1    # Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .line 258
    const-string v0, "LoaderCallback cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_0
    iput-object p1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->i:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    .line 261
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-virtual {p0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->b()V

    return-void

    :catchall_0
    move-exception p1

    .line 261
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 244
    iget-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iput-object p1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->f:Ljava/util/concurrent/Executor;

    .line 246
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRetryPolicy(Landroidx/emoji2/text/FontRequestEmojiCompatConfig$RetryPolicy;)V
    .locals 1
    .param p1    # Landroidx/emoji2/text/FontRequestEmojiCompatConfig$RetryPolicy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 250
    iget-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    iput-object p1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->h:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$RetryPolicy;

    .line 252
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
