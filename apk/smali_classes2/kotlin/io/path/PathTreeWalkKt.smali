.class public final Lkotlin/io/path/PathTreeWalkKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "kotlin-stdlib-jdk7"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final access$createsCycle(Lkotlin/io/path/f;)Z
    .locals 4

    .line 123
    invoke-virtual {p0}, Lkotlin/io/path/f;->getParent()Lkotlin/io/path/f;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v0}, Lkotlin/io/path/f;->getKey()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lkotlin/io/path/f;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v0}, Lkotlin/io/path/f;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lkotlin/io/path/f;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 130
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lkotlin/io/path/f;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {p0}, Lkotlin/io/path/f;->getPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/io/path/c;->w(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    goto :goto_1

    .line 136
    :catch_0
    :cond_1
    invoke-virtual {v0}, Lkotlin/io/path/f;->getParent()Lkotlin/io/path/f;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public static final access$keyOf(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;
    .locals 2

    .line 111
    :try_start_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/file/LinkOption;

    const-class v0, Ljava/nio/file/attribute/BasicFileAttributes;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0, p1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p0

    const-string p1, "readAttributes(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method
