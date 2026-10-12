.class public abstract Landroidx/emoji2/text/EmojiCompat$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Config"
.end annotation


# instance fields
.field public final a:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

.field public b:Z

.field public c:Z

.field public d:[I

.field public e:Landroidx/collection/ArraySet;

.field public f:Z

.field public g:I

.field public h:I

.field public i:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;)V
    .locals 1
    .param p1    # Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xff0100

    .line 1300
    iput v0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->g:I

    const/4 v0, 0x0

    .line 1302
    iput v0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->h:I

    .line 1304
    new-instance v0, Landroidx/emoji2/text/d;

    invoke-direct {v0}, Landroidx/emoji2/text/d;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->i:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 1314
    const-string v0, "metadataLoader cannot be null."

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->a:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    return-void
.end method


# virtual methods
.method public final getMetadataRepoLoader()Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1508
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->a:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    return-object v0
.end method

.method public registerInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 1
    .param p1    # Landroidx/emoji2/text/EmojiCompat$InitCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1328
    const-string v0, "initCallback cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->e:Landroidx/collection/ArraySet;

    if-nez v0, :cond_0

    .line 1330
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->e:Landroidx/collection/ArraySet;

    .line 1333
    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->e:Landroidx/collection/ArraySet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setEmojiSpanIndicatorColor(I)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1444
    iput p1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->g:I

    return-object p0
.end method

.method public setEmojiSpanIndicatorEnabled(Z)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1432
    iput-boolean p1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->f:Z

    return-object p0
.end method

.method public setGlyphChecker(Landroidx/emoji2/text/EmojiCompat$GlyphChecker;)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 1
    .param p1    # Landroidx/emoji2/text/EmojiCompat$GlyphChecker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1498
    const-string v0, "GlyphChecker cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->i:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    return-object p0
.end method

.method public setMetadataLoadStrategy(I)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1486
    iput p1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->h:I

    return-object p0
.end method

.method public setReplaceAll(Z)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1365
    iput-boolean p1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->b:Z

    return-object p0
.end method

.method public setUseEmojiAsDefaultStyle(Z)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 1386
    invoke-virtual {p0, p1, v0}, Landroidx/emoji2/text/EmojiCompat$Config;->setUseEmojiAsDefaultStyle(ZLjava/util/List;)Landroidx/emoji2/text/EmojiCompat$Config;

    move-result-object p1

    return-object p1
.end method

.method public setUseEmojiAsDefaultStyle(ZLjava/util/List;)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 3
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/emoji2/text/EmojiCompat$Config;"
        }
    .end annotation

    .line 1408
    iput-boolean p1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->c:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1410
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->d:[I

    .line 1412
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1413
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->d:[I

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, p2

    move p2, v2

    goto :goto_0

    .line 1415
    :cond_0
    iget-object p1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->d:[I

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    return-object p0

    :cond_1
    const/4 p1, 0x0

    .line 1417
    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->d:[I

    return-object p0
.end method

.method public unregisterInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 1
    .param p1    # Landroidx/emoji2/text/EmojiCompat$InitCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1347
    const-string v0, "initCallback cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->e:Landroidx/collection/ArraySet;

    if-eqz v0, :cond_0

    .line 1349
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method
