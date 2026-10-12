.class Landroidx/documentfile/provider/d;
.super Landroidx/documentfile/provider/DocumentFile;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field public final b:Landroid/content/Context;

.field public c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroidx/documentfile/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroidx/documentfile/provider/DocumentFile;-><init>(Landroidx/documentfile/provider/DocumentFile;)V

    .line 38
    iput-object p2, p0, Landroidx/documentfile/provider/d;->b:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Landroidx/documentfile/provider/d;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public canRead()Z
    .locals 2

    .line 112
    iget-object v0, p0, Landroidx/documentfile/provider/d;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/d;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/a;->canRead(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .locals 2

    .line 117
    iget-object v0, p0, Landroidx/documentfile/provider/d;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/d;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/a;->canWrite(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public createDirectory(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 63
    iget-object v0, p0, Landroidx/documentfile/provider/d;->c:Landroid/net/Uri;

    const-string v1, "vnd.android.document/directory"

    iget-object v2, p0, Landroidx/documentfile/provider/d;->b:Landroid/content/Context;

    const/4 v3, 0x0

    .line 53
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0, v1, p1}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_0

    .line 65
    new-instance v0, Landroidx/documentfile/provider/d;

    invoke-direct {v0, p0, v2, p1}, Landroidx/documentfile/provider/d;-><init>(Landroidx/documentfile/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0

    :cond_0
    return-object v3
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 45
    iget-object v0, p0, Landroidx/documentfile/provider/d;->c:Landroid/net/Uri;

    iget-object v1, p0, Landroidx/documentfile/provider/d;->b:Landroid/content/Context;

    const/4 v2, 0x0

    .line 53
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, p1, p2}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_0

    .line 46
    new-instance p2, Landroidx/documentfile/provider/d;

    invoke-direct {p2, p0, v1, p1}, Landroidx/documentfile/provider/d;-><init>(Landroidx/documentfile/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V

    return-object p2

    :cond_0
    return-object v2
.end method

.method public delete()Z
    .locals 2

    .line 123
    :try_start_0
    iget-object v0, p0, Landroidx/documentfile/provider/d;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroidx/documentfile/provider/d;->c:Landroid/net/Uri;

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

    .line 131
    iget-object v0, p0, Landroidx/documentfile/provider/d;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/d;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/a;->exists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 76
    iget-object v0, p0, Landroidx/documentfile/provider/d;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/d;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/a;->getName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 82
    iget-object v0, p0, Landroidx/documentfile/provider/d;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/d;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/a;->getType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 70
    iget-object v0, p0, Landroidx/documentfile/provider/d;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 2

    .line 87
    iget-object v0, p0, Landroidx/documentfile/provider/d;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/d;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/a;->isDirectory(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .locals 2

    .line 92
    iget-object v0, p0, Landroidx/documentfile/provider/d;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/d;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/a;->isFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public isVirtual()Z
    .locals 2

    .line 97
    iget-object v0, p0, Landroidx/documentfile/provider/d;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/d;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/a;->isVirtual(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2

    .line 102
    iget-object v0, p0, Landroidx/documentfile/provider/d;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/d;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/a;->lastModified(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2

    .line 107
    iget-object v0, p0, Landroidx/documentfile/provider/d;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/d;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/a;->length(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public listFiles()[Landroidx/documentfile/provider/DocumentFile;
    .locals 11

    .line 136
    iget-object v1, p0, Landroidx/documentfile/provider/d;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 137
    iget-object v0, p0, Landroidx/documentfile/provider/d;->c:Landroid/net/Uri;

    .line 138
    invoke-static {v0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-static {v0, v3}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 139
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 143
    :try_start_0
    const-string v0, "document_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 145
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v2, p0, Landroidx/documentfile/provider/d;->c:Landroid/net/Uri;

    invoke-static {v2, v0}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 149
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_1

    .line 168
    :cond_0
    :try_start_1
    invoke-interface {v10}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    :catch_1
    move-exception v0

    .line 170
    throw v0

    .line 152
    :goto_1
    :try_start_2
    const-string v2, "DocumentFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed query: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_1

    .line 168
    :try_start_3
    invoke-interface {v10}, Ljava/lang/AutoCloseable;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_2
    move-exception v0

    .line 170
    throw v0

    .line 157
    :catch_3
    :cond_1
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/Uri;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    .line 158
    array-length v2, v0

    new-array v2, v2, [Landroidx/documentfile/provider/DocumentFile;

    .line 159
    :goto_3
    array-length v3, v0

    if-ge v9, v3, :cond_2

    .line 160
    new-instance v3, Landroidx/documentfile/provider/d;

    aget-object v4, v0, v9

    invoke-direct {v3, p0, v1, v4}, Landroidx/documentfile/provider/d;-><init>(Landroidx/documentfile/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V

    aput-object v3, v2, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    return-object v2

    :goto_4
    if-eqz v10, :cond_3

    .line 168
    :try_start_4
    invoke-interface {v10}, Ljava/lang/AutoCloseable;->close()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_5

    :catch_4
    move-exception v0

    .line 170
    throw v0

    .line 154
    :catch_5
    :cond_3
    :goto_5
    throw v0
.end method

.method public renameTo(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 179
    :try_start_0
    iget-object v1, p0, Landroidx/documentfile/provider/d;->b:Landroid/content/Context;

    .line 180
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroidx/documentfile/provider/d;->c:Landroid/net/Uri;

    .line 179
    invoke-static {v1, v2, p1}, Landroid/provider/DocumentsContract;->renameDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 182
    iput-object p1, p0, Landroidx/documentfile/provider/d;->c:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v0
.end method
