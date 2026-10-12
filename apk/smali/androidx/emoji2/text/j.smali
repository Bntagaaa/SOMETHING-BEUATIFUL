.class public final synthetic Landroidx/emoji2/text/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;


# direct methods
.method public synthetic constructor <init>(Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;I)V
    .locals 0

    iput p2, p0, Landroidx/emoji2/text/j;->a:I

    iput-object p1, p0, Landroidx/emoji2/text/j;->b:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Landroidx/emoji2/text/j;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/emoji2/text/j;->b:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;

    invoke-virtual {v0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->b()V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/emoji2/text/j;->b:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;

    .line 350
    const-string v1, "fetchFonts result is not OK. ("

    iget-object v2, v0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 351
    :try_start_0
    iget-object v3, v0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->i:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    if-nez v3, :cond_0

    .line 352
    monitor-exit v2

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 354
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    :try_start_1
    invoke-virtual {v0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->c()Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v2

    .line 358
    invoke-virtual {v2}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 361
    iget-object v4, v0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->d:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 362
    :try_start_2
    iget-object v5, v0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->h:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$RetryPolicy;

    if-eqz v5, :cond_1

    .line 363
    invoke-virtual {v5}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$RetryPolicy;->getRetryDelay()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-ltz v9, :cond_1

    .line 365
    invoke-virtual {v2}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->d(Landroid/net/Uri;J)V

    .line 366
    monitor-exit v4

    goto/16 :goto_7

    :catchall_1
    move-exception v1

    goto :goto_0

    .line 369
    :cond_1
    monitor-exit v4

    goto :goto_1

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v1

    goto :goto_5

    :cond_2
    :goto_1
    if-nez v3, :cond_5

    .line 378
    :try_start_4
    const-string v1, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    invoke-static {v1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 380
    iget-object v1, v0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->c:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontProviderHelper;

    iget-object v3, v0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->a:Landroid/content/Context;

    invoke-virtual {v1, v3, v2}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontProviderHelper;->buildTypeface(Landroid/content/Context;Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 381
    iget-object v3, v0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->a:Landroid/content/Context;

    .line 382
    invoke-virtual {v2}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    .line 381
    invoke-static {v3, v4, v2}, Landroidx/core/graphics/TypefaceCompatUtil;->mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 386
    invoke-static {v1, v2}, Landroidx/emoji2/text/MetadataRepo;->create(Landroid/graphics/Typeface;Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/MetadataRepo;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 388
    :try_start_5
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 390
    iget-object v2, v0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 391
    :try_start_6
    iget-object v3, v0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->i:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    if-eqz v3, :cond_3

    .line 392
    invoke-virtual {v3, v1}, Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;->onLoaded(Landroidx/emoji2/text/MetadataRepo;)V

    goto :goto_2

    :catchall_3
    move-exception v1

    goto :goto_3

    .line 394
    :cond_3
    :goto_2
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 395
    :try_start_7
    invoke-virtual {v0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->a()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_7

    .line 394
    :goto_3
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_4
    move-exception v1

    goto :goto_4

    .line 384
    :cond_4
    :try_start_a
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to open file."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 388
    :goto_4
    :try_start_b
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 389
    throw v1

    .line 373
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 397
    :goto_5
    iget-object v3, v0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 398
    :try_start_c
    iget-object v2, v0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->i:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    if-eqz v2, :cond_6

    .line 399
    invoke-virtual {v2, v1}, Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_5
    move-exception v0

    goto :goto_8

    .line 401
    :cond_6
    :goto_6
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 402
    invoke-virtual {v0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->a()V

    :goto_7
    return-void

    .line 401
    :goto_8
    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0

    .line 354
    :goto_9
    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
