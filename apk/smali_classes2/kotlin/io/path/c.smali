.class public abstract synthetic Lkotlin/io/path/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A([Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 1

    const-string v0, ".."

    invoke-static {v0, p0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B()V
    .locals 1

    new-instance v0, Ljava/nio/file/FileSystemLoopException;

    return-void
.end method

.method public static bridge synthetic C()Ljava/nio/file/FileVisitResult;
    .locals 1

    sget-object v0, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    return-object v0
.end method

.method public static bridge synthetic D(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic a(Ljava/nio/file/Path;)I
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->getNameCount()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Ljava/nio/file/FileSystem;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->getSeparator()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Ljava/nio/file/FileSystemException;Ljava/lang/Exception;)Ljava/lang/Throwable;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/nio/file/FileSystemException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Ljava/lang/Object;)Ljava/nio/file/DirectoryStream;
    .locals 0

    check-cast p0, Ljava/nio/file/DirectoryStream;

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;
    .locals 0

    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/nio/file/Path;)Ljava/nio/file/FileSystem;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/lang/String;)Ljava/nio/file/FileSystemException;
    .locals 1

    new-instance v0, Ljava/nio/file/FileSystemException;

    invoke-direct {v0, p0}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic h(Ljava/lang/Throwable;)Ljava/nio/file/FileSystemException;
    .locals 0

    check-cast p0, Ljava/nio/file/FileSystemException;

    return-object p0
.end method

.method public static synthetic i(Ljava/lang/String;)Ljava/nio/file/FileSystemLoopException;
    .locals 1

    new-instance v0, Ljava/nio/file/FileSystemLoopException;

    invoke-direct {v0, p0}, Ljava/nio/file/FileSystemLoopException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic j()Ljava/nio/file/FileVisitOption;
    .locals 1

    sget-object v0, Ljava/nio/file/FileVisitOption;->FOLLOW_LINKS:Ljava/nio/file/FileVisitOption;

    return-object v0
.end method

.method public static bridge synthetic k()Ljava/nio/file/FileVisitResult;
    .locals 1

    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v0
.end method

.method public static bridge synthetic l()Ljava/nio/file/LinkOption;
    .locals 1

    sget-object v0, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    return-object v0
.end method

.method public static bridge synthetic m(Ljava/nio/file/FileSystem;Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Ljava/nio/file/Path;I)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r([Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 1

    const-string v0, ""

    invoke-static {v0, p0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic s(Ljava/lang/Object;)Ljava/nio/file/SecureDirectoryStream;
    .locals 0

    check-cast p0, Ljava/nio/file/SecureDirectoryStream;

    return-object p0
.end method

.method public static bridge synthetic t()Ljava/nio/file/StandardOpenOption;
    .locals 1

    sget-object v0, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    return-object v0
.end method

.method public static synthetic u()V
    .locals 1

    new-instance v0, Ljava/nio/file/FileSystemException;

    return-void
.end method

.method public static bridge synthetic v(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/nio/file/SecureDirectoryStream;

    return p0
.end method

.method public static bridge synthetic w(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 0

    invoke-static {p0, p1}, Ljava/nio/file/Files;->isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic x()Ljava/nio/file/FileVisitResult;
    .locals 1

    sget-object v0, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    return-object v0
.end method

.method public static bridge synthetic y(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic z(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method
