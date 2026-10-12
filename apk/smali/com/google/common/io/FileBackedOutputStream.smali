.class public final Lcom/google/common/io/FileBackedOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/FileBackedOutputStream$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Lcom/google/common/io/ByteSource;

.field public d:Ljava/io/OutputStream;

.field public e:Lcom/google/common/io/FileBackedOutputStream$a;

.field public f:Ljava/io/File;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, v0}, Lcom/google/common/io/FileBackedOutputStream;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 110
    iput p1, p0, Lcom/google/common/io/FileBackedOutputStream;->a:I

    .line 111
    iput-boolean p2, p0, Lcom/google/common/io/FileBackedOutputStream;->b:Z

    .line 113
    new-instance p1, Lcom/google/common/io/FileBackedOutputStream$a;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/common/io/FileBackedOutputStream$a;-><init>(I)V

    iput-object p1, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    .line 114
    iput-object p1, p0, Lcom/google/common/io/FileBackedOutputStream;->d:Ljava/io/OutputStream;

    if-eqz p2, :cond_0

    .line 117
    new-instance p1, Lcom/google/common/io/g;

    invoke-direct {p1, p0}, Lcom/google/common/io/g;-><init>(Lcom/google/common/io/FileBackedOutputStream;)V

    iput-object p1, p0, Lcom/google/common/io/FileBackedOutputStream;->c:Lcom/google/common/io/ByteSource;

    return-void

    .line 134
    :cond_0
    new-instance p1, Lcom/google/common/io/h;

    invoke-direct {p1, p0}, Lcom/google/common/io/h;-><init>(Lcom/google/common/io/FileBackedOutputStream;)V

    iput-object p1, p0, Lcom/google/common/io/FileBackedOutputStream;->c:Lcom/google/common/io/ByteSource;

    return-void
.end method

.method public static a(Lcom/google/common/io/FileBackedOutputStream;)Ljava/io/InputStream;
    .locals 4

    .line 0
    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->f:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->f:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 157
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    invoke-virtual {v1}, Lcom/google/common/io/FileBackedOutputStream$a;->a()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    invoke-virtual {v2}, Lcom/google/common/io/FileBackedOutputStream$a;->b()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public asByteSource()Lcom/google/common/io/ByteSource;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->c:Lcom/google/common/io/ByteSource;

    return-object v0
.end method

.method public final b(I)V
    .locals 5

    .line 220
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->f:Ljava/io/File;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    invoke-virtual {v0}, Lcom/google/common/io/FileBackedOutputStream$a;->b()I

    move-result v0

    add-int/2addr v0, p1

    iget p1, p0, Lcom/google/common/io/FileBackedOutputStream;->a:I

    if-le v0, p1, :cond_1

    .line 221
    const-string p1, "FileBackedOutputStream"

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 222
    iget-boolean v1, p0, Lcom/google/common/io/FileBackedOutputStream;->b:Z

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V

    .line 227
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 228
    iget-object v2, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    invoke-virtual {v2}, Lcom/google/common/io/FileBackedOutputStream$a;->a()[B

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    invoke-virtual {v3}, Lcom/google/common/io/FileBackedOutputStream$a;->b()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 229
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 232
    iput-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->d:Ljava/io/OutputStream;

    .line 233
    iput-object p1, p0, Lcom/google/common/io/FileBackedOutputStream;->f:Ljava/io/File;

    .line 234
    iput-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    :cond_1
    return-void
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Could not delete: "

    const-string v1, "Could not delete: "

    monitor-enter p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 169
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/FileBackedOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    :try_start_1
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/google/common/io/FileBackedOutputStream$a;

    invoke-direct {v0, v2}, Lcom/google/common/io/FileBackedOutputStream$a;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 174
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    iput-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->d:Ljava/io/OutputStream;

    .line 177
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->f:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 179
    iput-object v3, p0, Lcom/google/common/io/FileBackedOutputStream;->f:Ljava/io/File;

    .line 180
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 181
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v1

    .line 171
    :try_start_2
    iget-object v4, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    if-nez v4, :cond_3

    .line 172
    new-instance v4, Lcom/google/common/io/FileBackedOutputStream$a;

    invoke-direct {v4, v2}, Lcom/google/common/io/FileBackedOutputStream$a;-><init>(I)V

    iput-object v4, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    goto :goto_2

    .line 174
    :cond_3
    iget-object v2, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 176
    :goto_2
    iget-object v2, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    iput-object v2, p0, Lcom/google/common/io/FileBackedOutputStream;->d:Ljava/io/OutputStream;

    .line 177
    iget-object v2, p0, Lcom/google/common/io/FileBackedOutputStream;->f:Ljava/io/File;

    if-eqz v2, :cond_4

    .line 179
    iput-object v3, p0, Lcom/google/common/io/FileBackedOutputStream;->f:Ljava/io/File;

    .line 180
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_4

    .line 181
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_4
    throw v1

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 189
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/common/io/FileBackedOutputStream;->b(I)V

    .line 190
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->d:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 195
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/common/io/FileBackedOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 200
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/google/common/io/FileBackedOutputStream;->b(I)V

    .line 201
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->d:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
