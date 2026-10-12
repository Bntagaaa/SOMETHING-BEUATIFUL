.class Landroidx/emoji2/text/e;
.super Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/emoji2/text/EmojiCompat$a;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/EmojiCompat$a;)V
    .locals 0

    .line 1627
    iput-object p1, p0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/EmojiCompat$a;

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1635
    iget-object v0, p0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/EmojiCompat$a;

    iget-object v0, v0, Landroidx/emoji2/text/EmojiCompat$b;->a:Landroidx/emoji2/text/EmojiCompat;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/EmojiCompat;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onLoaded(Landroidx/emoji2/text/MetadataRepo;)V
    .locals 8
    .param p1    # Landroidx/emoji2/text/MetadataRepo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1630
    iget-object v0, p0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/EmojiCompat$a;

    if-nez p1, :cond_0

    .line 1648
    iget-object p1, v0, Landroidx/emoji2/text/EmojiCompat$b;->a:Landroidx/emoji2/text/EmojiCompat;

    .line 1648
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "metadataRepo cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/emoji2/text/EmojiCompat;->b(Ljava/lang/Throwable;)V

    return-void

    .line 1653
    :cond_0
    iput-object p1, v0, Landroidx/emoji2/text/EmojiCompat$a;->c:Landroidx/emoji2/text/MetadataRepo;

    .line 1654
    new-instance v2, Landroidx/emoji2/text/i;

    iget-object v3, v0, Landroidx/emoji2/text/EmojiCompat$a;->c:Landroidx/emoji2/text/MetadataRepo;

    new-instance v4, Landroidx/emoji2/text/EmojiCompat$d;

    invoke-direct {v4}, Landroidx/emoji2/text/EmojiCompat$d;-><init>()V

    iget-object p1, v0, Landroidx/emoji2/text/EmojiCompat$b;->a:Landroidx/emoji2/text/EmojiCompat;

    .line 111
    iget-object v5, p1, Landroidx/emoji2/text/EmojiCompat;->m:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 1657
    iget-boolean v6, p1, Landroidx/emoji2/text/EmojiCompat;->h:Z

    iget-object v7, p1, Landroidx/emoji2/text/EmojiCompat;->i:[I

    invoke-direct/range {v2 .. v7}, Landroidx/emoji2/text/i;-><init>(Landroidx/emoji2/text/MetadataRepo;Landroidx/emoji2/text/EmojiCompat$d;Landroidx/emoji2/text/EmojiCompat$GlyphChecker;Z[I)V

    iput-object v2, v0, Landroidx/emoji2/text/EmojiCompat$a;->b:Landroidx/emoji2/text/i;

    .line 1661
    iget-object p1, v0, Landroidx/emoji2/text/EmojiCompat$b;->a:Landroidx/emoji2/text/EmojiCompat;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 704
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 705
    iget-object v1, p1, Landroidx/emoji2/text/EmojiCompat;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x1

    .line 707
    :try_start_0
    iput v1, p1, Landroidx/emoji2/text/EmojiCompat;->c:I

    .line 708
    iget-object v1, p1, Landroidx/emoji2/text/EmojiCompat;->b:Landroidx/collection/ArraySet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 709
    iget-object v1, p1, Landroidx/emoji2/text/EmojiCompat;->b:Landroidx/collection/ArraySet;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    iget-object v1, p1, Landroidx/emoji2/text/EmojiCompat;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 714
    iget-object v1, p1, Landroidx/emoji2/text/EmojiCompat;->d:Landroid/os/Handler;

    new-instance v2, Landroidx/emoji2/text/EmojiCompat$c;

    iget p1, p1, Landroidx/emoji2/text/EmojiCompat;->c:I

    const/4 v3, 0x0

    .line 1529
    invoke-direct {v2, v0, p1, v3}, Landroidx/emoji2/text/EmojiCompat$c;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    .line 714
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 711
    iget-object p1, p1, Landroidx/emoji2/text/EmojiCompat;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 712
    throw v0
.end method
