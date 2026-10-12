.class public final Lokio/internal/ZipFilesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u001a5\u0010\t\u001a\u00020\u00082\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0014\u0008\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0000\u00a2\u0006\u0004\u0008\t\u0010\n\u001a\u0013\u0010\u000c\u001a\u00020\u0005*\u00020\u000bH\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\r\u001a\u0013\u0010\u000f\u001a\u00020\u000e*\u00020\u000bH\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u001a\u001b\u0010\u0013\u001a\u00020\u0011*\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\"\u0014\u0010\u0016\u001a\u00020\u00158\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\"\u0014\u0010\u0018\u001a\u00020\u00158\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lokio/Path;",
        "zipPath",
        "Lokio/FileSystem;",
        "fileSystem",
        "Lkotlin/Function1;",
        "Lokio/internal/ZipEntry;",
        "",
        "predicate",
        "Lokio/ZipFileSystem;",
        "openZip",
        "(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/functions/Function1;)Lokio/ZipFileSystem;",
        "Lokio/BufferedSource;",
        "readEntry",
        "(Lokio/BufferedSource;)Lokio/internal/ZipEntry;",
        "",
        "skipLocalHeader",
        "(Lokio/BufferedSource;)V",
        "Lokio/FileMetadata;",
        "basicMetadata",
        "readLocalHeader",
        "(Lokio/BufferedSource;Lokio/FileMetadata;)Lokio/FileMetadata;",
        "",
        "COMPRESSION_METHOD_DEFLATED",
        "I",
        "COMPRESSION_METHOD_STORED",
        "okio"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nZipFiles.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZipFiles.kt\nokio/internal/ZipFilesKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,459:1\n1045#2:460\n*S KotlinDebug\n*F\n+ 1 ZipFiles.kt\nokio/internal/ZipFilesKt\n*L\n156#1:460\n*E\n"
    }
.end annotation


# static fields
.field public static final COMPRESSION_METHOD_DEFLATED:I = 0x8

.field public static final COMPRESSION_METHOD_STORED:I


# direct methods
.method public static final a(Ljava/util/ArrayList;)Ljava/util/Map;
    .locals 21

    .line 150
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    const-string v1, "/"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;

    move-result-object v6

    .line 152
    new-instance v5, Lokio/internal/ZipEntry;

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x1fc

    const/16 v20, 0x0

    invoke-direct/range {v5 .. v20}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJILjava/lang/Long;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    new-array v1, v3, [Lkotlin/Pair;

    aput-object v0, v1, v2

    .line 151
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 460
    new-instance v1, Lokio/internal/ZipFilesKt$buildIndex$$inlined$sortedBy$1;

    invoke-direct {v1}, Lokio/internal/ZipFilesKt$buildIndex$$inlined$sortedBy$1;-><init>()V

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->q(Ljava/util/List;Lokio/internal/ZipFilesKt$buildIndex$$inlined$sortedBy$1;)Ljava/util/List;

    move-result-object v1

    .line 156
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/internal/ZipEntry;

    .line 159
    invoke-virtual {v2}, Lokio/internal/ZipEntry;->getCanonicalPath()Lokio/Path;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/internal/ZipEntry;

    if-nez v3, :cond_0

    .line 165
    :goto_1
    invoke-virtual {v2}, Lokio/internal/ZipEntry;->getCanonicalPath()Lokio/Path;

    move-result-object v3

    invoke-virtual {v3}, Lokio/Path;->parent()Lokio/Path;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 166
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/internal/ZipEntry;

    if-eqz v3, :cond_2

    .line 170
    invoke-virtual {v3}, Lokio/internal/ZipEntry;->getChildren()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2}, Lokio/internal/ZipEntry;->getCanonicalPath()Lokio/Path;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_2
    new-instance v4, Lokio/internal/ZipEntry;

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x1fc

    const/16 v19, 0x0

    invoke-direct/range {v4 .. v19}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJILjava/lang/Long;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 179
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {v4}, Lokio/internal/ZipEntry;->getChildren()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2}, Lokio/internal/ZipEntry;->getCanonicalPath()Lokio/Path;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v2, v4

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static final b(I)Ljava/lang/String;
    .locals 2

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x10

    invoke-static {v1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "toString(this, checkRadix(radix))"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lokio/BufferedSource;ILkotlin/jvm/functions/Function2;)V
    .locals 10

    int-to-long v0, p1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_4

    const-wide/16 v4, 0x4

    cmp-long p1, v0, v4

    if-ltz p1, :cond_3

    .line 329
    invoke-interface {p0}, Lokio/BufferedSource;->readShortLe()S

    move-result p1

    const v4, 0xffff

    and-int/2addr p1, v4

    .line 330
    invoke-interface {p0}, Lokio/BufferedSource;->readShortLe()S

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    const/4 v6, 0x4

    int-to-long v6, v6

    sub-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-ltz v6, :cond_2

    .line 335
    invoke-interface {p0, v4, v5}, Lokio/BufferedSource;->require(J)V

    .line 336
    invoke-interface {p0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v6

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v6

    .line 337
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    invoke-interface {p0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v8

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v8

    add-long/2addr v8, v4

    sub-long/2addr v8, v6

    cmp-long v6, v8, v2

    if-ltz v6, :cond_1

    if-lez v6, :cond_0

    .line 344
    invoke-interface {p0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object p1

    invoke-virtual {p1, v8, v9}, Lokio/Buffer;->skip(J)V

    :cond_0
    sub-long/2addr v0, v4

    goto :goto_0

    .line 341
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p2, "unsupported zip: too many bytes processed for "

    .line 0
    invoke-static {p1, p2}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 341
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 333
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: truncated value in extra field"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 327
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: truncated header in extra field"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method public static final d(Lokio/BufferedSource;Lokio/FileMetadata;)Lokio/FileMetadata;
    .locals 17

    move-object/from16 v0, p0

    .line 364
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lokio/FileMetadata;->getLastModifiedAtMillis()Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 365
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 366
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 368
    invoke-interface {v0}, Lokio/BufferedSource;->readIntLe()I

    move-result v5

    const v6, 0x4034b50

    if-ne v5, v6, :cond_3

    const-wide/16 v5, 0x2

    .line 374
    invoke-interface {v0, v5, v6}, Lokio/BufferedSource;->skip(J)V

    .line 375
    invoke-interface {v0}, Lokio/BufferedSource;->readShortLe()S

    move-result v5

    const v6, 0xffff

    and-int v7, v5, v6

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    const-wide/16 v7, 0x12

    .line 379
    invoke-interface {v0, v7, v8}, Lokio/BufferedSource;->skip(J)V

    .line 380
    invoke-interface {v0}, Lokio/BufferedSource;->readShortLe()S

    move-result v5

    int-to-long v7, v5

    const-wide/32 v9, 0xffff

    and-long/2addr v7, v9

    .line 381
    invoke-interface {v0}, Lokio/BufferedSource;->readShortLe()S

    move-result v5

    and-int/2addr v5, v6

    .line 382
    invoke-interface {v0, v7, v8}, Lokio/BufferedSource;->skip(J)V

    if-nez p1, :cond_1

    int-to-long v3, v5

    .line 385
    invoke-interface {v0, v3, v4}, Lokio/BufferedSource;->skip(J)V

    return-object v2

    .line 389
    :cond_1
    new-instance v2, Lokio/internal/c;

    invoke-direct {v2, v0, v1, v3, v4}, Lokio/internal/c;-><init>(Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v0, v5, v2}, Lokio/internal/ZipFilesKt;->c(Lokio/BufferedSource;ILkotlin/jvm/functions/Function2;)V

    .line 418
    new-instance v6, Lokio/FileMetadata;

    .line 419
    invoke-virtual/range {p1 .. p1}, Lokio/FileMetadata;->isRegularFile()Z

    move-result v7

    .line 420
    invoke-virtual/range {p1 .. p1}, Lokio/FileMetadata;->isDirectory()Z

    move-result v8

    .line 422
    invoke-virtual/range {p1 .. p1}, Lokio/FileMetadata;->getSize()Ljava/lang/Long;

    move-result-object v10

    .line 423
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Ljava/lang/Long;

    .line 424
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/lang/Long;

    .line 425
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Ljava/lang/Long;

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x80

    const/16 v16, 0x0

    .line 418
    invoke-direct/range {v6 .. v16}, Lokio/FileMetadata;-><init>(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    .line 377
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported zip: general purpose bit flag="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lokio/internal/ZipFilesKt;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad zip: expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lokio/internal/ZipFilesKt;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lokio/internal/ZipFilesKt;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final openZip(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/functions/Function1;)Lokio/ZipFileSystem;
    .locals 27
    .param p0    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/FileSystem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            "Lokio/FileSystem;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokio/internal/ZipEntry;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lokio/ZipFileSystem;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "not a zip: size="

    const-string v4, "zipPath"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "fileSystem"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "predicate"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1, v0}, Lokio/FileSystem;->openReadOnly(Lokio/Path;)Lokio/FileHandle;

    move-result-object v4

    .line 72
    :try_start_0
    invoke-virtual {v4}, Lokio/FileHandle;->size()J

    move-result-wide v5

    const/16 v7, 0x16

    int-to-long v7, v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-ltz v9, :cond_b

    const-wide/32 v9, 0x10000

    sub-long v9, v5, v9

    .line 76
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 81
    :goto_0
    invoke-virtual {v4, v5, v6}, Lokio/FileHandle;->source(J)Lokio/Source;

    move-result-object v3

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 83
    :try_start_1
    invoke-interface {v3}, Lokio/BufferedSource;->readIntLe()I

    move-result v11

    const v12, 0x6054b50

    if-ne v11, v12, :cond_9

    .line 275
    invoke-interface {v3}, Lokio/BufferedSource;->readShortLe()S

    move-result v9

    const v10, 0xffff

    and-int/2addr v9, v10

    .line 276
    invoke-interface {v3}, Lokio/BufferedSource;->readShortLe()S

    move-result v11

    and-int/2addr v11, v10

    .line 277
    invoke-interface {v3}, Lokio/BufferedSource;->readShortLe()S

    move-result v12

    and-int/2addr v12, v10

    int-to-long v14, v12

    .line 278
    invoke-interface {v3}, Lokio/BufferedSource;->readShortLe()S

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    and-int/2addr v12, v10

    int-to-long v12, v12

    move-wide/from16 v19, v7

    .line 279
    const-string v7, "unsupported zip: spanned"

    cmp-long v8, v14, v12

    if-nez v8, :cond_8

    if-nez v9, :cond_8

    if-nez v11, :cond_8

    const-wide/16 v8, 0x4

    .line 282
    :try_start_2
    invoke-interface {v3, v8, v9}, Lokio/BufferedSource;->skip(J)V

    .line 283
    invoke-interface {v3}, Lokio/BufferedSource;->readIntLe()I

    move-result v8

    int-to-long v8, v8

    const-wide v11, 0xffffffffL

    and-long v16, v8, v11

    .line 284
    invoke-interface {v3}, Lokio/BufferedSource;->readShortLe()S

    move-result v8

    and-int v18, v8, v10

    .line 286
    new-instance v13, Lokio/internal/a;

    invoke-direct/range {v13 .. v18}, Lokio/internal/a;-><init>(JJI)V

    .line 86
    invoke-virtual {v13}, Lokio/internal/a;->getCommentByteCount()I

    move-result v8

    int-to-long v8, v8

    invoke-interface {v3, v8, v9}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 90
    :try_start_3
    invoke-interface {v3}, Lokio/Source;->close()V

    const/16 v3, 0x14

    int-to-long v9, v3

    sub-long/2addr v5, v9

    const/4 v3, 0x0

    cmp-long v9, v5, v19

    if-lez v9, :cond_4

    .line 102
    invoke-virtual {v4, v5, v6}, Lokio/FileHandle;->source(J)Lokio/Source;

    move-result-object v5

    invoke-static {v5}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 103
    :try_start_4
    invoke-interface {v5}, Lokio/BufferedSource;->readIntLe()I

    move-result v6

    const v9, 0x7064b50

    if-ne v6, v9, :cond_3

    .line 104
    invoke-interface {v5}, Lokio/BufferedSource;->readIntLe()I

    move-result v6

    .line 105
    invoke-interface {v5}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide v9

    .line 106
    invoke-interface {v5}, Lokio/BufferedSource;->readIntLe()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    if-nez v6, :cond_2

    .line 110
    invoke-virtual {v4, v9, v10}, Lokio/FileHandle;->source(J)Lokio/Source;

    move-result-object v6

    invoke-static {v6}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 111
    :try_start_5
    invoke-interface {v6}, Lokio/BufferedSource;->readIntLe()I

    move-result v9

    const v10, 0x6064b50

    if-ne v9, v10, :cond_1

    const-wide/16 v9, 0xc

    .line 295
    invoke-interface {v6, v9, v10}, Lokio/BufferedSource;->skip(J)V

    .line 296
    invoke-interface {v6}, Lokio/BufferedSource;->readIntLe()I

    move-result v9

    .line 297
    invoke-interface {v6}, Lokio/BufferedSource;->readIntLe()I

    move-result v10

    .line 298
    invoke-interface {v6}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide v22

    .line 299
    invoke-interface {v6}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide v11

    cmp-long v14, v22, v11

    if-nez v14, :cond_0

    if-nez v9, :cond_0

    if-nez v10, :cond_0

    const-wide/16 v9, 0x8

    .line 303
    invoke-interface {v6, v9, v10}, Lokio/BufferedSource;->skip(J)V

    .line 304
    invoke-interface {v6}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide v24

    .line 306
    new-instance v21, Lokio/internal/a;

    .line 309
    invoke-virtual {v13}, Lokio/internal/a;->getCommentByteCount()I

    move-result v26

    .line 306
    invoke-direct/range {v21 .. v26}, Lokio/internal/a;-><init>(JJI)V

    .line 119
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 110
    :try_start_6
    invoke-static {v6, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v13, v21

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_1

    .line 301
    :cond_0
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad zip: expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lokio/internal/ZipFilesKt;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-static {v9}, Lokio/internal/ZipFilesKt;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 110
    :goto_1
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_9
    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 108
    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_3
    :goto_2
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 102
    :try_start_a
    invoke-static {v5, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v1, v0

    goto/16 :goto_9

    :goto_3
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_c
    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 125
    :cond_4
    :goto_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-virtual {v13}, Lokio/internal/a;->getCentralDirectoryOffset()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lokio/FileHandle;->source(J)Lokio/Source;

    move-result-object v6

    invoke-static {v6}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 127
    :try_start_d
    invoke-virtual {v13}, Lokio/internal/a;->getEntryCount()J

    move-result-wide v9

    :goto_5
    cmp-long v7, v19, v9

    if-gez v7, :cond_7

    .line 128
    invoke-static {v6}, Lokio/internal/ZipFilesKt;->readEntry(Lokio/BufferedSource;)Lokio/internal/ZipEntry;

    move-result-object v7

    .line 129
    invoke-virtual {v7}, Lokio/internal/ZipEntry;->getOffset()J

    move-result-wide v11

    invoke-virtual {v13}, Lokio/internal/a;->getCentralDirectoryOffset()J

    move-result-wide v14

    cmp-long v16, v11, v14

    if-gez v16, :cond_6

    .line 132
    invoke-interface {v2, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 133
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v1, v0

    goto :goto_7

    :cond_5
    :goto_6
    const-wide/16 v11, 0x1

    add-long v19, v19, v11

    goto :goto_5

    .line 130
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: local file header offset >= central directory offset"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_7
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 126
    :try_start_e
    invoke-static {v6, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 139
    invoke-static {v5}, Lokio/internal/ZipFilesKt;->a(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v2

    .line 141
    new-instance v5, Lokio/ZipFileSystem;

    invoke-direct {v5, v0, v1, v2, v8}, Lokio/ZipFileSystem;-><init>(Lokio/Path;Lokio/FileSystem;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    invoke-static {v4, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v5

    .line 126
    :goto_7
    :try_start_f
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :catchall_6
    move-exception v0

    :try_start_10
    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :catchall_7
    move-exception v0

    goto :goto_8

    .line 280
    :cond_8
    :try_start_11
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :cond_9
    move-wide/from16 v19, v7

    .line 90
    :try_start_12
    invoke-interface {v3}, Lokio/Source;->close()V

    const-wide/16 v7, -0x1

    add-long/2addr v5, v7

    cmp-long v3, v5, v9

    if-ltz v3, :cond_a

    move-wide/from16 v7, v19

    goto/16 :goto_0

    .line 95
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not a zip: end of central directory signature not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :goto_8
    invoke-interface {v3}, Lokio/Source;->close()V

    throw v0

    .line 74
    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lokio/FileHandle;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 141
    :goto_9
    :try_start_13
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    :catchall_8
    move-exception v0

    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic openZip$default(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lokio/ZipFileSystem;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 65
    sget-object p2, Lokio/internal/ZipFilesKt$a;->b:Lokio/internal/ZipFilesKt$a;

    .line 62
    :cond_0
    invoke-static {p0, p1, p2}, Lokio/internal/ZipFilesKt;->openZip(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/functions/Function1;)Lokio/ZipFileSystem;

    move-result-object p0

    return-object p0
.end method

.method public static final readEntry(Lokio/BufferedSource;)Lokio/internal/ZipEntry;
    .locals 24
    .param p0    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v5, p0

    const-string v0, "<this>"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-interface {v5}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    const v1, 0x2014b50

    if-ne v0, v1, :cond_8

    const-wide/16 v0, 0x4

    .line 198
    invoke-interface {v5, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 199
    invoke-interface {v5}, Lokio/BufferedSource;->readShortLe()S

    move-result v0

    const v1, 0xffff

    and-int v2, v0, v1

    const/4 v8, 0x1

    and-int/2addr v0, v8

    if-nez v0, :cond_7

    .line 204
    invoke-interface {v5}, Lokio/BufferedSource;->readShortLe()S

    move-result v0

    and-int v19, v0, v1

    .line 205
    invoke-interface {v5}, Lokio/BufferedSource;->readShortLe()S

    move-result v0

    and-int v2, v0, v1

    .line 206
    invoke-interface {v5}, Lokio/BufferedSource;->readShortLe()S

    move-result v3

    and-int v4, v3, v1

    const/4 v6, -0x1

    const/4 v10, 0x0

    if-ne v2, v6, :cond_0

    const/16 v20, 0x0

    goto :goto_0

    .line 439
    :cond_0
    new-instance v11, Ljava/util/GregorianCalendar;

    invoke-direct {v11}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v6, 0xe

    .line 440
    invoke-virtual {v11, v6, v10}, Ljava/util/Calendar;->set(II)V

    shr-int/lit8 v6, v4, 0x9

    and-int/lit8 v6, v6, 0x7f

    add-int/lit16 v12, v6, 0x7bc

    shr-int/lit8 v4, v4, 0x5

    and-int/lit8 v4, v4, 0xf

    and-int/lit8 v14, v3, 0x1f

    shr-int/lit8 v3, v2, 0xb

    and-int/lit8 v15, v3, 0x1f

    shr-int/lit8 v2, v2, 0x5

    and-int/lit8 v16, v2, 0x3f

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v17, v0, 0x1

    add-int/lit8 v13, v4, -0x1

    .line 447
    invoke-virtual/range {v11 .. v17}, Ljava/util/Calendar;->set(IIIIII)V

    .line 448
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v20, v0

    .line 211
    :goto_0
    invoke-interface {v5}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    int-to-long v2, v0

    const-wide v6, 0xffffffffL

    and-long v13, v2, v6

    move-wide v2, v6

    .line 212
    new-instance v6, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-interface {v5}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    int-to-long v11, v0

    and-long/2addr v11, v2

    iput-wide v11, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 213
    new-instance v4, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-interface {v5}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    int-to-long v11, v0

    and-long/2addr v11, v2

    iput-wide v11, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 214
    invoke-interface {v5}, Lokio/BufferedSource;->readShortLe()S

    move-result v0

    and-int/2addr v0, v1

    .line 215
    invoke-interface {v5}, Lokio/BufferedSource;->readShortLe()S

    move-result v7

    and-int v11, v7, v1

    .line 216
    invoke-interface {v5}, Lokio/BufferedSource;->readShortLe()S

    move-result v7

    and-int v12, v7, v1

    move-wide v15, v2

    const-wide/16 v2, 0x8

    .line 218
    invoke-interface {v5, v2, v3}, Lokio/BufferedSource;->skip(J)V

    .line 219
    new-instance v7, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-interface {v5}, Lokio/BufferedSource;->readIntLe()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v15

    iput-wide v1, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    int-to-long v0, v0

    .line 220
    invoke-interface {v5, v0, v1}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0, v10}, Lkotlin/text/StringsKt;->g(Ljava/lang/String;C)Z

    move-result v1

    if-nez v1, :cond_6

    .line 225
    iget-wide v1, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v17, 0x0

    const/16 v3, 0x8

    cmp-long v21, v1, v15

    if-nez v21, :cond_1

    int-to-long v1, v3

    goto :goto_1

    :cond_1
    move-wide/from16 v1, v17

    .line 226
    :goto_1
    iget-wide v8, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v23, v8, v15

    if-nez v23, :cond_2

    int-to-long v8, v3

    add-long/2addr v1, v8

    .line 227
    :cond_2
    iget-wide v8, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v23, v8, v15

    if-nez v23, :cond_3

    int-to-long v8, v3

    add-long/2addr v1, v8

    :cond_3
    move-wide v2, v1

    .line 231
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object v8, v0

    .line 232
    new-instance v0, Lokio/internal/ZipFilesKt$b;

    invoke-direct/range {v0 .. v7}, Lokio/internal/ZipFilesKt$b;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;JLkotlin/jvm/internal/Ref$LongRef;Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V

    invoke-static {v5, v11, v0}, Lokio/internal/ZipFilesKt;->c(Lokio/BufferedSource;ILkotlin/jvm/functions/Function2;)V

    cmp-long v0, v2, v17

    if-lez v0, :cond_5

    .line 252
    iget-boolean v0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_4

    goto :goto_2

    .line 253
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: zip64 extra required but absent"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    int-to-long v0, v12

    .line 256
    invoke-interface {v5, v0, v1}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v12

    .line 257
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    const-string v1, "/"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v10, v2, v3}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;

    move-result-object v0

    invoke-virtual {v0, v8}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    move-result-object v10

    .line 258
    invoke-static {v8, v1}, Lkotlin/text/StringsKt;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 260
    new-instance v9, Lokio/internal/ZipEntry;

    .line 265
    iget-wide v0, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 266
    iget-wide v2, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 269
    iget-wide v4, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-wide v15, v0

    move-wide/from16 v17, v2

    move-wide/from16 v21, v4

    .line 260
    invoke-direct/range {v9 .. v22}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJILjava/lang/Long;J)V

    return-object v9

    .line 221
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: filename contains 0x00"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "unsupported zip: general purpose bit flag="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lokio/internal/ZipFilesKt;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_8
    new-instance v2, Ljava/io/IOException;

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bad zip: expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lokio/internal/ZipFilesKt;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lokio/internal/ZipFilesKt;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final readLocalHeader(Lokio/BufferedSource;Lokio/FileMetadata;)Lokio/FileMetadata;
    .locals 1
    .param p0    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/FileMetadata;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "basicMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    invoke-static {p0, p1}, Lokio/internal/ZipFilesKt;->d(Lokio/BufferedSource;Lokio/FileMetadata;)Lokio/FileMetadata;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final skipLocalHeader(Lokio/BufferedSource;)V
    .locals 1
    .param p0    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 352
    invoke-static {p0, v0}, Lokio/internal/ZipFilesKt;->d(Lokio/BufferedSource;Lokio/FileMetadata;)Lokio/FileMetadata;

    return-void
.end method
