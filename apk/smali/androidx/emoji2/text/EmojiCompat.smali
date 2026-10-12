.class public Landroidx/emoji2/text/EmojiCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/AnyThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/EmojiCompat$a;,
        Landroidx/emoji2/text/EmojiCompat$b;,
        Landroidx/emoji2/text/EmojiCompat$c;,
        Landroidx/emoji2/text/EmojiCompat$Config;,
        Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;,
        Landroidx/emoji2/text/EmojiCompat$GlyphChecker;,
        Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;,
        Landroidx/emoji2/text/EmojiCompat$InitCallback;,
        Landroidx/emoji2/text/EmojiCompat$d;,
        Landroidx/emoji2/text/EmojiCompat$CodepointSequenceMatchResult;,
        Landroidx/emoji2/text/EmojiCompat$LoadStrategy;,
        Landroidx/emoji2/text/EmojiCompat$ReplaceStrategy;
    }
.end annotation


# static fields
.field public static final EDITOR_INFO_METAVERSION_KEY:Ljava/lang/String; = "android.support.text.emoji.emojiCompat_metadataVersion"

.field public static final EDITOR_INFO_REPLACE_ALL_KEY:Ljava/lang/String; = "android.support.text.emoji.emojiCompat_replaceAll"

.field public static final EMOJI_FALLBACK:I = 0x2

.field public static final EMOJI_SUPPORTED:I = 0x1

.field public static final EMOJI_UNSUPPORTED:I = 0x0

.field public static final LOAD_STATE_DEFAULT:I = 0x3

.field public static final LOAD_STATE_FAILED:I = 0x2

.field public static final LOAD_STATE_LOADING:I = 0x0

.field public static final LOAD_STATE_SUCCEEDED:I = 0x1

.field public static final LOAD_STRATEGY_DEFAULT:I = 0x0

.field public static final LOAD_STRATEGY_MANUAL:I = 0x1

.field public static final REPLACE_STRATEGY_ALL:I = 0x1

.field public static final REPLACE_STRATEGY_DEFAULT:I = 0x0

.field public static final REPLACE_STRATEGY_NON_EXISTENT:I = 0x2

.field public static final n:Ljava/lang/Object;

.field public static final o:Ljava/lang/Object;

.field public static volatile p:Landroidx/emoji2/text/EmojiCompat;

.field public static volatile q:Z


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final b:Landroidx/collection/ArraySet;

.field public volatile c:I

.field public final d:Landroid/os/Handler;

.field public final e:Landroidx/emoji2/text/EmojiCompat$a;

.field public final f:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

.field public final g:Z

.field public final h:Z

.field public final i:[I

.field public final j:Z

.field public final k:I

.field public final l:I

.field public final m:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 349
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/emoji2/text/EmojiCompat;->n:Ljava/lang/Object;

    .line 350
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/emoji2/text/EmojiCompat;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/EmojiCompat$Config;)V
    .locals 5

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x3

    .line 461
    iput v1, p0, Landroidx/emoji2/text/EmojiCompat;->c:I

    .line 462
    iget-boolean v1, p1, Landroidx/emoji2/text/EmojiCompat$Config;->b:Z

    iput-boolean v1, p0, Landroidx/emoji2/text/EmojiCompat;->g:Z

    .line 463
    iget-boolean v1, p1, Landroidx/emoji2/text/EmojiCompat$Config;->c:Z

    iput-boolean v1, p0, Landroidx/emoji2/text/EmojiCompat;->h:Z

    .line 464
    iget-object v1, p1, Landroidx/emoji2/text/EmojiCompat$Config;->d:[I

    iput-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->i:[I

    .line 465
    iget-boolean v1, p1, Landroidx/emoji2/text/EmojiCompat$Config;->f:Z

    iput-boolean v1, p0, Landroidx/emoji2/text/EmojiCompat;->j:Z

    .line 466
    iget v1, p1, Landroidx/emoji2/text/EmojiCompat$Config;->g:I

    iput v1, p0, Landroidx/emoji2/text/EmojiCompat;->k:I

    .line 467
    iget-object v1, p1, Landroidx/emoji2/text/EmojiCompat$Config;->a:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    iput-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->f:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    .line 468
    iget v2, p1, Landroidx/emoji2/text/EmojiCompat$Config;->h:I

    iput v2, p0, Landroidx/emoji2/text/EmojiCompat;->l:I

    .line 469
    iget-object v3, p1, Landroidx/emoji2/text/EmojiCompat$Config;->i:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    iput-object v3, p0, Landroidx/emoji2/text/EmojiCompat;->m:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 470
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Landroidx/emoji2/text/EmojiCompat;->d:Landroid/os/Handler;

    .line 471
    new-instance v3, Landroidx/collection/ArraySet;

    invoke-direct {v3}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v3, p0, Landroidx/emoji2/text/EmojiCompat;->b:Landroidx/collection/ArraySet;

    .line 472
    iget-object v4, p1, Landroidx/emoji2/text/EmojiCompat$Config;->e:Landroidx/collection/ArraySet;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 473
    iget-object p1, p1, Landroidx/emoji2/text/EmojiCompat$Config;->e:Landroidx/collection/ArraySet;

    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 475
    :cond_0
    new-instance p1, Landroidx/emoji2/text/EmojiCompat$a;

    .line 1621
    invoke-direct {p1, p0}, Landroidx/emoji2/text/EmojiCompat$b;-><init>(Landroidx/emoji2/text/EmojiCompat;)V

    .line 475
    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat;->e:Landroidx/emoji2/text/EmojiCompat$a;

    .line 688
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 691
    :try_start_0
    iput v2, p0, Landroidx/emoji2/text/EmojiCompat;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 694
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 695
    throw p1

    .line 694
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 697
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    move-result v0

    if-nez v0, :cond_2

    .line 1627
    :try_start_1
    new-instance v0, Landroidx/emoji2/text/e;

    invoke-direct {v0, p1}, Landroidx/emoji2/text/e;-><init>(Landroidx/emoji2/text/EmojiCompat$a;)V

    .line 1638
    invoke-interface {v1, v0}, Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;->load(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 1640
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/EmojiCompat;->b(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public static get()Landroidx/emoji2/text/EmojiCompat;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 648
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 649
    :try_start_0
    sget-object v1, Landroidx/emoji2/text/EmojiCompat;->p:Landroidx/emoji2/text/EmojiCompat;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 650
    :goto_0
    const-string v3, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK\'s manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message."

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 651
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 652
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .locals 7
    .param p0    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/text/Editable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    if-nez p0, :cond_0

    goto/16 :goto_9

    :cond_0
    if-ltz p2, :cond_1a

    if-gez p3, :cond_1

    goto/16 :goto_9

    .line 432
    :cond_1
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 433
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1a

    if-eq v2, v3, :cond_1a

    if-eq v1, v2, :cond_2

    goto/16 :goto_9

    :cond_2
    const/4 v4, 0x1

    if-eqz p4, :cond_17

    .line 444
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 725
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-ltz v1, :cond_4

    if-ge p4, v1, :cond_3

    goto :goto_0

    :cond_3
    if-gez p2, :cond_5

    :cond_4
    :goto_0
    const/4 v1, -0x1

    goto :goto_3

    :cond_5
    :goto_1
    const/4 p4, 0x0

    :goto_2
    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_8

    if-eqz p4, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 746
    :cond_8
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eqz p4, :cond_a

    .line 748
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p4

    if-nez p4, :cond_9

    goto :goto_0

    :cond_9
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 755
    :cond_a
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_b

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 759
    :cond_b
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p4

    if-eqz p4, :cond_c

    goto :goto_0

    :cond_c
    const/4 p4, 0x1

    goto :goto_2

    .line 446
    :goto_3
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 781
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-ltz v2, :cond_e

    if-ge p3, v2, :cond_d

    goto :goto_4

    :cond_d
    if-gez p2, :cond_f

    :cond_e
    :goto_4
    const/4 p3, -0x1

    goto :goto_7

    :cond_f
    :goto_5
    const/4 p4, 0x0

    :goto_6
    if-nez p2, :cond_10

    move p3, v2

    goto :goto_7

    :cond_10
    if-lt v2, p3, :cond_11

    if-eqz p4, :cond_16

    goto :goto_4

    .line 802
    :cond_11
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eqz p4, :cond_13

    .line 804
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p4

    if-nez p4, :cond_12

    goto :goto_4

    :cond_12
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 812
    :cond_13
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_14

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 817
    :cond_14
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p4

    if-eqz p4, :cond_15

    goto :goto_4

    :cond_15
    add-int/lit8 v2, v2, 0x1

    const/4 p4, 0x1

    goto :goto_6

    :cond_16
    :goto_7
    if-eq v1, v3, :cond_1a

    if-ne p3, v3, :cond_18

    goto :goto_9

    :cond_17
    sub-int/2addr v1, p2

    .line 453
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v2, p3

    .line 454
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 457
    :cond_18
    const-class p2, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {p1, v1, p3, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/emoji2/text/EmojiSpan;

    if-eqz p2, :cond_1a

    .line 458
    array-length p4, p2

    if-lez p4, :cond_1a

    .line 459
    array-length p4, p2

    const/4 v2, 0x0

    :goto_8
    if-ge v2, p4, :cond_19

    .line 461
    aget-object v3, p2, v2

    .line 462
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 463
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 464
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 465
    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 468
    :cond_19
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 469
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 471
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 472
    invoke-interface {p1, p2, p3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 473
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    return v4

    :cond_1a
    :goto_9
    return v0
.end method

.method public static handleOnKeyDown(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p0    # Landroid/text/Editable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x43

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x70

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 358
    :cond_0
    invoke-static {p0, p2, v1}, Landroidx/emoji2/text/i;->a(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z

    move-result p1

    goto :goto_0

    .line 355
    :cond_1
    invoke-static {p0, p2, v2}, Landroidx/emoji2/text/i;->a(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_2

    .line 366
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    return v1

    :cond_2
    return v2
.end method

.method public static init(Landroid/content/Context;)Landroidx/emoji2/text/EmojiCompat;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 497
    invoke-static {p0, v0}, Landroidx/emoji2/text/EmojiCompat;->init(Landroid/content/Context;Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;)Landroidx/emoji2/text/EmojiCompat;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;)Landroidx/emoji2/text/EmojiCompat;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 509
    sget-boolean v0, Landroidx/emoji2/text/EmojiCompat;->q:Z

    if-eqz v0, :cond_0

    .line 514
    sget-object p0, Landroidx/emoji2/text/EmojiCompat;->p:Landroidx/emoji2/text/EmojiCompat;

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 518
    :cond_1
    new-instance p1, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;-><init>(Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;)V

    .line 519
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->create(Landroid/content/Context;)Landroidx/emoji2/text/EmojiCompat$Config;

    move-result-object p0

    .line 521
    sget-object p1, Landroidx/emoji2/text/EmojiCompat;->o:Ljava/lang/Object;

    monitor-enter p1

    .line 522
    :try_start_0
    sget-boolean v0, Landroidx/emoji2/text/EmojiCompat;->q:Z

    if-nez v0, :cond_3

    if-eqz p0, :cond_2

    .line 526
    invoke-static {p0}, Landroidx/emoji2/text/EmojiCompat;->init(Landroidx/emoji2/text/EmojiCompat$Config;)Landroidx/emoji2/text/EmojiCompat;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 529
    sput-boolean p0, Landroidx/emoji2/text/EmojiCompat;->q:Z

    .line 532
    :cond_3
    sget-object p0, Landroidx/emoji2/text/EmojiCompat;->p:Landroidx/emoji2/text/EmojiCompat;

    monitor-exit p1

    return-object p0

    .line 533
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static init(Landroidx/emoji2/text/EmojiCompat$Config;)Landroidx/emoji2/text/EmojiCompat;
    .locals 2
    .param p0    # Landroidx/emoji2/text/EmojiCompat$Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 549
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->p:Landroidx/emoji2/text/EmojiCompat;

    if-nez v0, :cond_1

    .line 551
    sget-object v1, Landroidx/emoji2/text/EmojiCompat;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 552
    :try_start_0
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->p:Landroidx/emoji2/text/EmojiCompat;

    if-nez v0, :cond_0

    .line 554
    new-instance v0, Landroidx/emoji2/text/EmojiCompat;

    invoke-direct {v0, p0}, Landroidx/emoji2/text/EmojiCompat;-><init>(Landroidx/emoji2/text/EmojiCompat$Config;)V

    .line 555
    sput-object v0, Landroidx/emoji2/text/EmojiCompat;->p:Landroidx/emoji2/text/EmojiCompat;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 557
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object v0
.end method

.method public static isConfigured()Z
    .locals 1

    .line 593
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->p:Landroidx/emoji2/text/EmojiCompat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static reset(Landroidx/emoji2/text/EmojiCompat$Config;)Landroidx/emoji2/text/EmojiCompat;
    .locals 2
    .param p0    # Landroidx/emoji2/text/EmojiCompat$Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 605
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 606
    :try_start_0
    new-instance v1, Landroidx/emoji2/text/EmojiCompat;

    invoke-direct {v1, p0}, Landroidx/emoji2/text/EmojiCompat;-><init>(Landroidx/emoji2/text/EmojiCompat$Config;)V

    .line 607
    sput-object v1, Landroidx/emoji2/text/EmojiCompat;->p:Landroidx/emoji2/text/EmojiCompat;

    .line 608
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 609
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static reset(Landroidx/emoji2/text/EmojiCompat;)Landroidx/emoji2/text/EmojiCompat;
    .locals 1
    .param p0    # Landroidx/emoji2/text/EmojiCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->TESTS:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 620
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 621
    :try_start_0
    sput-object p0, Landroidx/emoji2/text/EmojiCompat;->p:Landroidx/emoji2/text/EmojiCompat;

    .line 622
    sget-object p0, Landroidx/emoji2/text/EmojiCompat;->p:Landroidx/emoji2/text/EmojiCompat;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 623
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static skipDefaultConfigurationLookup(Z)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->TESTS:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 633
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 634
    :try_start_0
    sput-boolean p0, Landroidx/emoji2/text/EmojiCompat;->q:Z

    .line 635
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 795
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 4

    .line 719
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 720
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x2

    .line 722
    :try_start_0
    iput v1, p0, Landroidx/emoji2/text/EmojiCompat;->c:I

    .line 723
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->b:Landroidx/collection/ArraySet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 724
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->b:Landroidx/collection/ArraySet;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 728
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->d:Landroid/os/Handler;

    new-instance v2, Landroidx/emoji2/text/EmojiCompat$c;

    iget v3, p0, Landroidx/emoji2/text/EmojiCompat;->c:I

    invoke-direct {v2, v0, v3, p1}, Landroidx/emoji2/text/EmojiCompat$c;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 726
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 727
    throw p1
.end method

.method public getAssetSignature()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1118
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiCompat;->a()Z

    move-result v0

    const-string v1, "Not initialized yet"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1119
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->e:Landroidx/emoji2/text/EmojiCompat$a;

    .line 1694
    iget-object v0, v0, Landroidx/emoji2/text/EmojiCompat$a;->c:Landroidx/emoji2/text/MetadataRepo;

    .line 1694
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo;->getMetadataList()Landroidx/emoji2/text/flatbuffer/MetadataList;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->sourceSha()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1695
    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getEmojiMatch(Ljava/lang/CharSequence;I)I
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 934
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiCompat;->a()Z

    move-result v0

    const-string v1, "Not initialized yet"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 935
    const-string v0, "sequence cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->e:Landroidx/emoji2/text/EmojiCompat$a;

    invoke-virtual {v0, p1, p2}, Landroidx/emoji2/text/EmojiCompat$a;->getEmojiMatch(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public getEmojiSpanIndicatorColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 813
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->k:I

    return v0
.end method

.method public getLoadState()I
    .locals 2

    .line 783
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 785
    :try_start_0
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 788
    throw v0
.end method

.method public hasEmojiGlyph(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 889
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiCompat;->a()Z

    move-result v0

    const-string v1, "Not initialized yet"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 890
    const-string v0, "sequence cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->e:Landroidx/emoji2/text/EmojiCompat$a;

    .line 1666
    iget-object v0, v0, Landroidx/emoji2/text/EmojiCompat$a;->b:Landroidx/emoji2/text/i;

    .line 185
    iget-object v1, v0, Landroidx/emoji2/text/i;->a:Landroidx/emoji2/text/MetadataRepo;

    .line 185
    iget-object v1, v1, Landroidx/emoji2/text/MetadataRepo;->a:Landroidx/emoji2/text/flatbuffer/MetadataList;

    .line 185
    invoke-virtual {v1}, Landroidx/emoji2/text/flatbuffer/MetadataList;->version()I

    move-result v1

    .line 122
    invoke-virtual {v0, p1, v1}, Landroidx/emoji2/text/i;->b(Ljava/lang/CharSequence;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasEmojiGlyph(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 911
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiCompat;->a()Z

    move-result v0

    const-string v1, "Not initialized yet"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 912
    const-string v0, "sequence cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->e:Landroidx/emoji2/text/EmojiCompat$a;

    .line 1671
    iget-object v0, v0, Landroidx/emoji2/text/EmojiCompat$a;->b:Landroidx/emoji2/text/i;

    .line 1671
    invoke-virtual {v0, p1, p2}, Landroidx/emoji2/text/i;->b(Ljava/lang/CharSequence;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEmojiSpanIndicatorEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 804
    iget-boolean v0, p0, Landroidx/emoji2/text/EmojiCompat;->j:Z

    return v0
.end method

.method public load()V
    .locals 3

    .line 672
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v0, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading"

    invoke-static {v2, v0}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 674
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiCompat;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 676
    :cond_1
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 678
    :try_start_0
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    .line 681
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 679
    :cond_2
    :try_start_1
    iput v1, p0, Landroidx/emoji2/text/EmojiCompat;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 681
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 684
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->e:Landroidx/emoji2/text/EmojiCompat$a;

    .line 1627
    iget-object v1, v0, Landroidx/emoji2/text/EmojiCompat$b;->a:Landroidx/emoji2/text/EmojiCompat;

    .line 1627
    :try_start_2
    new-instance v2, Landroidx/emoji2/text/e;

    invoke-direct {v2, v0}, Landroidx/emoji2/text/e;-><init>(Landroidx/emoji2/text/EmojiCompat$a;)V

    .line 1638
    iget-object v0, v1, Landroidx/emoji2/text/EmojiCompat;->f:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    invoke-interface {v0, v2}, Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;->load(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 1640
    invoke-virtual {v1, v0}, Landroidx/emoji2/text/EmojiCompat;->b(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    .line 681
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 682
    throw v0
.end method

.method public process(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 956
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 957
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public process(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const v0, 0x7fffffff

    .line 991
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public process(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;
    .locals 6
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1029
    invoke-virtual/range {v0 .. v5}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public process(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;
    .locals 17
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 1071
    invoke-virtual {v1}, Landroidx/emoji2/text/EmojiCompat;->a()Z

    move-result v6

    const-string v7, "Not initialized yet"

    invoke-static {v6, v7}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1072
    const-string v6, "start cannot be negative"

    invoke-static {v0, v6}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 1073
    const-string v6, "end cannot be negative"

    invoke-static {v3, v6}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 1074
    const-string v6, "maxEmojiCount cannot be negative"

    invoke-static {v4, v6}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    const/4 v7, 0x1

    if-gt v0, v3, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 1075
    :goto_0
    const-string v9, "start should be <= than end"

    invoke-static {v8, v9}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v8, 0x0

    if-nez v2, :cond_1

    return-object v8

    .line 1082
    :cond_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-gt v0, v9, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    const-string v10, "start should be < than charSequence length"

    invoke-static {v9, v10}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1084
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-gt v3, v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    const-string v10, "end should be < than charSequence length"

    invoke-static {v9, v10}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1088
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-eqz v9, :cond_26

    if-ne v0, v3, :cond_4

    goto/16 :goto_10

    :cond_4
    const/4 v9, 0x2

    if-eq v5, v7, :cond_6

    if-eq v5, v9, :cond_5

    .line 1102
    iget-boolean v5, v1, Landroidx/emoji2/text/EmojiCompat;->g:Z

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    const/4 v5, 0x1

    .line 1106
    :goto_3
    iget-object v10, v1, Landroidx/emoji2/text/EmojiCompat;->e:Landroidx/emoji2/text/EmojiCompat$a;

    .line 1683
    iget-object v10, v10, Landroidx/emoji2/text/EmojiCompat$a;->b:Landroidx/emoji2/text/i;

    .line 1683
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    instance-of v11, v2, Landroidx/emoji2/text/SpannableBuilder;

    if-eqz v11, :cond_7

    .line 212
    move-object v12, v2

    check-cast v12, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {v12}, Landroidx/emoji2/text/SpannableBuilder;->beginBatchEdit()V

    .line 220
    :cond_7
    const-class v12, Landroidx/emoji2/text/EmojiSpan;

    if-nez v11, :cond_9

    :try_start_0
    instance-of v13, v2, Landroid/text/Spannable;

    if-eqz v13, :cond_8

    goto :goto_4

    .line 222
    :cond_8
    instance-of v13, v2, Landroid/text/Spanned;

    if-eqz v13, :cond_a

    .line 225
    move-object v13, v2

    check-cast v13, Landroid/text/Spanned;

    add-int/lit8 v14, v0, -0x1

    add-int/lit8 v15, v3, 0x1

    invoke-interface {v13, v14, v15, v12}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v13

    if-gt v13, v3, :cond_a

    .line 229
    new-instance v8, Landroidx/emoji2/text/m;

    invoke-direct {v8, v2}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    .line 221
    :cond_9
    :goto_4
    new-instance v8, Landroidx/emoji2/text/m;

    move-object v13, v2

    check-cast v13, Landroid/text/Spannable;

    invoke-direct {v8, v13}, Landroidx/emoji2/text/m;-><init>(Landroid/text/Spannable;)V

    :cond_a
    :goto_5
    if-eqz v8, :cond_c

    .line 234
    invoke-virtual {v8, v0, v3, v12}, Landroidx/emoji2/text/m;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroidx/emoji2/text/EmojiSpan;

    if-eqz v13, :cond_c

    .line 235
    array-length v14, v13

    if-lez v14, :cond_c

    .line 238
    array-length v14, v13

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v14, :cond_c

    .line 240
    aget-object v9, v13, v15

    .line 241
    invoke-virtual {v8, v9}, Landroidx/emoji2/text/m;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 242
    invoke-virtual {v8, v9}, Landroidx/emoji2/text/m;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-eq v7, v3, :cond_b

    .line 248
    invoke-virtual {v8, v9}, Landroidx/emoji2/text/m;->removeSpan(Ljava/lang/Object;)V

    .line 250
    :cond_b
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 251
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x1

    const/4 v9, 0x2

    goto :goto_6

    :cond_c
    if-eq v0, v3, :cond_24

    .line 256
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lt v0, v6, :cond_d

    goto/16 :goto_e

    :cond_d
    const v6, 0x7fffffff

    if-eq v4, v6, :cond_e

    if-eqz v8, :cond_e

    .line 263
    invoke-virtual {v8}, Landroidx/emoji2/text/m;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v8, v7, v6, v12}, Landroidx/emoji2/text/m;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroidx/emoji2/text/EmojiSpan;

    array-length v6, v6

    sub-int/2addr v4, v6

    goto :goto_7

    :cond_e
    const/4 v7, 0x0

    .line 267
    :goto_7
    new-instance v6, Landroidx/emoji2/text/i$b;

    iget-object v9, v10, Landroidx/emoji2/text/i;->a:Landroidx/emoji2/text/MetadataRepo;

    .line 194
    iget-object v9, v9, Landroidx/emoji2/text/MetadataRepo;->c:Landroidx/emoji2/text/MetadataRepo$a;

    .line 267
    iget-boolean v12, v10, Landroidx/emoji2/text/i;->c:Z

    iget-object v13, v10, Landroidx/emoji2/text/i;->d:[I

    invoke-direct {v6, v9, v12, v13}, Landroidx/emoji2/text/i$b;-><init>(Landroidx/emoji2/text/MetadataRepo$a;Z[I)V

    .line 271
    invoke-static {v2, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v9

    move v12, v9

    const/4 v13, 0x0

    move-object v9, v8

    move v8, v0

    :goto_8
    if-ge v0, v3, :cond_19

    if-ge v13, v4, :cond_19

    .line 274
    invoke-virtual {v6, v12}, Landroidx/emoji2/text/i$b;->a(I)I

    move-result v15

    const/4 v7, 0x1

    if-eq v15, v7, :cond_16

    const/4 v7, 0x2

    if-eq v15, v7, :cond_15

    const/4 v7, 0x3

    if-eq v15, v7, :cond_f

    goto :goto_a

    :cond_f
    if-nez v5, :cond_12

    .line 635
    iget-object v7, v6, Landroidx/emoji2/text/i$b;->d:Landroidx/emoji2/text/MetadataRepo$a;

    .line 255
    iget-object v7, v7, Landroidx/emoji2/text/MetadataRepo$a;->b:Landroidx/emoji2/text/EmojiMetadata;

    .line 509
    invoke-virtual {v7}, Landroidx/emoji2/text/EmojiMetadata;->getHasGlyph()I

    move-result v15

    if-nez v15, :cond_10

    .line 510
    iget-object v15, v10, Landroidx/emoji2/text/i;->b:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 511
    invoke-virtual {v7}, Landroidx/emoji2/text/EmojiMetadata;->getSdkAdded()S

    move-result v14

    .line 510
    invoke-interface {v15, v2, v8, v0, v14}, Landroidx/emoji2/text/EmojiCompat$GlyphChecker;->hasGlyph(Ljava/lang/CharSequence;III)Z

    move-result v14

    .line 512
    invoke-virtual {v7, v14}, Landroidx/emoji2/text/EmojiMetadata;->setHasGlyph(Z)V

    .line 515
    :cond_10
    invoke-virtual {v7}, Landroidx/emoji2/text/EmojiMetadata;->getHasGlyph()I

    move-result v7

    const/4 v14, 0x2

    if-ne v7, v14, :cond_11

    const/4 v7, 0x1

    goto :goto_9

    :cond_11
    const/4 v7, 0x0

    :goto_9
    if-nez v7, :cond_14

    :cond_12
    if-nez v9, :cond_13

    .line 294
    new-instance v9, Landroidx/emoji2/text/m;

    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v9, v7}, Landroidx/emoji2/text/m;-><init>(Landroid/text/Spannable;)V

    .line 635
    :cond_13
    iget-object v7, v6, Landroidx/emoji2/text/i$b;->d:Landroidx/emoji2/text/MetadataRepo$a;

    .line 255
    iget-object v7, v7, Landroidx/emoji2/text/MetadataRepo$a;->b:Landroidx/emoji2/text/EmojiMetadata;

    .line 1168
    new-instance v14, Landroidx/emoji2/text/TypefaceEmojiSpan;

    invoke-direct {v14, v7}, Landroidx/emoji2/text/TypefaceEmojiSpan;-><init>(Landroidx/emoji2/text/EmojiMetadata;)V

    const/16 v7, 0x21

    .line 491
    invoke-interface {v9, v14, v8, v0, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v13, v13, 0x1

    :cond_14
    move v8, v0

    goto :goto_a

    .line 285
    :cond_15
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v0, v7

    if-ge v0, v3, :cond_18

    .line 287
    invoke-static {v2, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v7

    move v12, v7

    goto :goto_a

    .line 278
    :cond_16
    invoke-static {v2, v8}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v8, v0

    if-ge v8, v3, :cond_17

    .line 281
    invoke-static {v2, v8}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    move v12, v0

    :cond_17
    move v0, v8

    :cond_18
    :goto_a
    const/4 v7, 0x0

    goto :goto_8

    .line 653
    :cond_19
    iget v3, v6, Landroidx/emoji2/text/i$b;->a:I

    const/4 v14, 0x2

    if-ne v3, v14, :cond_1b

    iget-object v3, v6, Landroidx/emoji2/text/i$b;->c:Landroidx/emoji2/text/MetadataRepo$a;

    .line 255
    iget-object v3, v3, Landroidx/emoji2/text/MetadataRepo$a;->b:Landroidx/emoji2/text/EmojiMetadata;

    if-eqz v3, :cond_1b

    .line 653
    iget v3, v6, Landroidx/emoji2/text/i$b;->f:I

    const/4 v7, 0x1

    if-gt v3, v7, :cond_1a

    .line 654
    invoke-virtual {v6}, Landroidx/emoji2/text/i$b;->c()Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_1a
    const/4 v3, 0x1

    goto :goto_b

    :cond_1b
    const/4 v7, 0x1

    :cond_1c
    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_21

    if-ge v13, v4, :cond_21

    if-nez v5, :cond_1f

    .line 642
    iget-object v3, v6, Landroidx/emoji2/text/i$b;->c:Landroidx/emoji2/text/MetadataRepo$a;

    .line 255
    iget-object v3, v3, Landroidx/emoji2/text/MetadataRepo$a;->b:Landroidx/emoji2/text/EmojiMetadata;

    .line 509
    invoke-virtual {v3}, Landroidx/emoji2/text/EmojiMetadata;->getHasGlyph()I

    move-result v4

    if-nez v4, :cond_1d

    .line 510
    iget-object v4, v10, Landroidx/emoji2/text/i;->b:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 511
    invoke-virtual {v3}, Landroidx/emoji2/text/EmojiMetadata;->getSdkAdded()S

    move-result v5

    .line 510
    invoke-interface {v4, v2, v8, v0, v5}, Landroidx/emoji2/text/EmojiCompat$GlyphChecker;->hasGlyph(Ljava/lang/CharSequence;III)Z

    move-result v4

    .line 512
    invoke-virtual {v3, v4}, Landroidx/emoji2/text/EmojiMetadata;->setHasGlyph(Z)V

    .line 515
    :cond_1d
    invoke-virtual {v3}, Landroidx/emoji2/text/EmojiMetadata;->getHasGlyph()I

    move-result v3

    const/4 v14, 0x2

    if-ne v3, v14, :cond_1e

    const/16 v16, 0x1

    goto :goto_c

    :cond_1e
    const/16 v16, 0x0

    :goto_c
    if-nez v16, :cond_21

    :cond_1f
    if-nez v9, :cond_20

    .line 313
    new-instance v9, Landroidx/emoji2/text/m;

    invoke-direct {v9, v2}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/CharSequence;)V

    .line 642
    :cond_20
    iget-object v3, v6, Landroidx/emoji2/text/i$b;->c:Landroidx/emoji2/text/MetadataRepo$a;

    .line 255
    iget-object v3, v3, Landroidx/emoji2/text/MetadataRepo$a;->b:Landroidx/emoji2/text/EmojiMetadata;

    .line 1168
    new-instance v4, Landroidx/emoji2/text/TypefaceEmojiSpan;

    invoke-direct {v4, v3}, Landroidx/emoji2/text/TypefaceEmojiSpan;-><init>(Landroidx/emoji2/text/EmojiMetadata;)V

    const/16 v7, 0x21

    .line 491
    invoke-interface {v9, v4, v8, v0, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_21
    if-eqz v9, :cond_23

    .line 69
    iget-object v0, v9, Landroidx/emoji2/text/m;->b:Landroid/text/Spannable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_22

    .line 327
    check-cast v2, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {v2}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    :cond_22
    return-object v0

    :cond_23
    if-eqz v11, :cond_26

    :goto_d
    move-object v0, v2

    check-cast v0, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {v0}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    return-object v2

    :cond_24
    :goto_e
    if-eqz v11, :cond_26

    goto :goto_d

    :goto_f
    if-eqz v11, :cond_25

    check-cast v2, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {v2}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    .line 329
    :cond_25
    throw v0

    :cond_26
    :goto_10
    return-object v2
.end method

.method public registerInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)V
    .locals 5
    .param p1    # Landroidx/emoji2/text/EmojiCompat$InitCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 746
    const-string v1, "initCallback cannot be null"

    invoke-static {p1, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    iget-object v2, p0, Landroidx/emoji2/text/EmojiCompat;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 750
    :try_start_0
    iget v2, p0, Landroidx/emoji2/text/EmojiCompat;->c:I

    if-eq v2, v0, :cond_1

    iget v2, p0, Landroidx/emoji2/text/EmojiCompat;->c:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 753
    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->b:Landroidx/collection/ArraySet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 751
    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/emoji2/text/EmojiCompat;->d:Landroid/os/Handler;

    new-instance v3, Landroidx/emoji2/text/EmojiCompat$c;

    iget v4, p0, Landroidx/emoji2/text/EmojiCompat;->c:I

    .line 1523
    invoke-static {p1, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/emoji2/text/EmojiCompat$InitCallback;

    new-array v0, v0, [Landroidx/emoji2/text/EmojiCompat$InitCallback;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {v3, p1, v4, v0}, Landroidx/emoji2/text/EmojiCompat$c;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    .line 751
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    :goto_1
    iget-object p1, p0, Landroidx/emoji2/text/EmojiCompat;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_2
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 757
    throw p1
.end method

.method public unregisterInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)V
    .locals 2
    .param p1    # Landroidx/emoji2/text/EmojiCompat$InitCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 766
    const-string v0, "initCallback cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 769
    :try_start_0
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->b:Landroidx/collection/ArraySet;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 772
    throw p1
.end method

.method public updateEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .param p1    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1143
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiCompat;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1146
    :cond_0
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 1147
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 1149
    :cond_1
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->e:Landroidx/emoji2/text/EmojiCompat$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1688
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    iget-object v2, v0, Landroidx/emoji2/text/EmojiCompat$a;->c:Landroidx/emoji2/text/MetadataRepo;

    .line 185
    iget-object v2, v2, Landroidx/emoji2/text/MetadataRepo;->a:Landroidx/emoji2/text/flatbuffer/MetadataList;

    .line 185
    invoke-virtual {v2}, Landroidx/emoji2/text/flatbuffer/MetadataList;->version()I

    move-result v2

    .line 1688
    const-string v3, "android.support.text.emoji.emojiCompat_metadataVersion"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1689
    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    iget-object v0, v0, Landroidx/emoji2/text/EmojiCompat$b;->a:Landroidx/emoji2/text/EmojiCompat;

    iget-boolean v0, v0, Landroidx/emoji2/text/EmojiCompat;->g:Z

    const-string v1, "android.support.text.emoji.emojiCompat_replaceAll"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method
