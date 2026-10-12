.class Landroidx/documentfile/provider/c;
.super Landroidx/documentfile/provider/DocumentFile;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation


# instance fields
.field public b:Landroid/content/Context;

.field public c:Landroid/net/Uri;


# virtual methods
.method public canRead()Z
    .locals 2

    .line 91
    iget-object v0, p0, Landroidx/documentfile/provider/c;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/c;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/a;->canRead(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .locals 2

    .line 96
    iget-object v0, p0, Landroidx/documentfile/provider/c;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/c;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/a;->canWrite(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public createDirectory(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;
    .locals 0

    .line 44
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;
    .locals 0

    .line 39
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public delete()Z
    .locals 2

    .line 102
    :try_start_0
    iget-object v0, p0, Landroidx/documentfile/provider/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroidx/documentfile/provider/c;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public exists()Z
    .locals 2

    .line 110
    iget-object v0, p0, Landroidx/documentfile/provider/c;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/c;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/a;->exists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 55
    iget-object v0, p0, Landroidx/documentfile/provider/c;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/c;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/a;->getName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 61
    iget-object v0, p0, Landroidx/documentfile/provider/c;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/c;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/a;->getType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 49
    iget-object v0, p0, Landroidx/documentfile/provider/c;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 2

    .line 66
    iget-object v0, p0, Landroidx/documentfile/provider/c;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/c;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/a;->isDirectory(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .locals 2

    .line 71
    iget-object v0, p0, Landroidx/documentfile/provider/c;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/c;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/a;->isFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public isVirtual()Z
    .locals 2

    .line 76
    iget-object v0, p0, Landroidx/documentfile/provider/c;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/c;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/a;->isVirtual(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2

    .line 81
    iget-object v0, p0, Landroidx/documentfile/provider/c;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/c;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/a;->lastModified(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2

    .line 86
    iget-object v0, p0, Landroidx/documentfile/provider/c;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/c;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/a;->length(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public listFiles()[Landroidx/documentfile/provider/DocumentFile;
    .locals 1

    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public renameTo(Ljava/lang/String;)Z
    .locals 0

    .line 120
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
