.class public Landroidx/profileinstaller/DeviceProfileWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/AssetManager;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

.field public final d:[B

.field public final e:Ljava/io/File;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public i:Z

.field public j:[Landroidx/profileinstaller/c;

.field public k:[B


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p1    # Landroid/content/res/AssetManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->i:Z

    .line 103
    iput-object p1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->a:Landroid/content/res/AssetManager;

    .line 104
    iput-object p2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->b:Ljava/util/concurrent/Executor;

    .line 105
    iput-object p3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->c:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    .line 106
    iput-object p4, p0, Landroidx/profileinstaller/DeviceProfileWriter;->f:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Landroidx/profileinstaller/DeviceProfileWriter;->g:Ljava/lang/String;

    .line 108
    iput-object p6, p0, Landroidx/profileinstaller/DeviceProfileWriter;->h:Ljava/lang/String;

    .line 109
    iput-object p7, p0, Landroidx/profileinstaller/DeviceProfileWriter;->e:Ljava/io/File;

    .line 363
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    const/4 p3, 0x0

    if-lt p1, p2, :cond_1

    const/16 p2, 0x21

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 386
    :pswitch_0
    sget-object p3, Landroidx/profileinstaller/ProfileVersion;->a:[B

    goto :goto_0

    .line 381
    :pswitch_1
    sget-object p3, Landroidx/profileinstaller/ProfileVersion;->b:[B

    goto :goto_0

    .line 376
    :pswitch_2
    sget-object p3, Landroidx/profileinstaller/ProfileVersion;->c:[B

    goto :goto_0

    .line 374
    :pswitch_3
    sget-object p3, Landroidx/profileinstaller/ProfileVersion;->d:[B

    goto :goto_0

    .line 371
    :pswitch_4
    sget-object p3, Landroidx/profileinstaller/ProfileVersion;->e:[B

    .line 110
    :cond_1
    :goto_0
    iput-object p3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->d:[B

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 1

    .line 190
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 193
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 194
    const-string v0, "compressed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 195
    iget-object p1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->c:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    const/4 v0, 0x5

    invoke-interface {p1, v0, p2}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onDiagnosticReceived(ILjava/lang/Object;)V

    :cond_0
    return-object p2
.end method

.method public final b(Ljava/io/Serializable;I)V
    .locals 1

    .line 87
    new-instance v0, Landroidx/profileinstaller/b;

    invoke-direct {v0, p0, p2, p1}, Landroidx/profileinstaller/b;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;ILjava/io/Serializable;)V

    iget-object p1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deviceAllowsProfileInstallerAotWrites()Z
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->d:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->b(Ljava/io/Serializable;I)V

    return v1

    .line 123
    :cond_0
    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    const/4 v2, 0x0

    .line 127
    invoke-virtual {p0, v2, v0}, Landroidx/profileinstaller/DeviceProfileWriter;->b(Ljava/io/Serializable;I)V

    return v1

    :cond_1
    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->i:Z

    return v0
.end method

.method public read()Landroidx/profileinstaller/DeviceProfileWriter;
    .locals 12
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->a:Landroid/content/res/AssetManager;

    iget-object v1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->c:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    .line 136
    iget-boolean v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->i:Z

    if-eqz v2, :cond_9

    .line 160
    iget-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->d:[B

    if-nez v2, :cond_0

    goto/16 :goto_11

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x7

    .line 210
    :try_start_0
    iget-object v5, p0, Landroidx/profileinstaller/DeviceProfileWriter;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_1

    .line 214
    :goto_0
    invoke-interface {v1, v4, v5}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    goto :goto_2

    :goto_1
    const/4 v6, 0x6

    .line 212
    invoke-interface {v1, v6, v5}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    :goto_2
    move-object v5, v3

    .line 165
    :goto_3
    const-string v6, "Invalid magic"

    const/4 v7, 0x4

    const/16 v8, 0x8

    if-eqz v5, :cond_2

    .line 228
    :try_start_1
    sget-object v9, Landroidx/profileinstaller/h;->a:[B

    .line 70
    invoke-static {v5, v7}, Landroidx/profileinstaller/d;->b(Ljava/io/InputStream;I)[B

    move-result-object v10

    .line 71
    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 76
    invoke-static {v5, v7}, Landroidx/profileinstaller/d;->b(Ljava/io/InputStream;I)[B

    move-result-object v9

    .line 229
    iget-object v10, p0, Landroidx/profileinstaller/DeviceProfileWriter;->f:Ljava/lang/String;

    invoke-static {v5, v9, v10}, Landroidx/profileinstaller/h;->g(Ljava/io/FileInputStream;[BLjava/lang/String;)[Landroidx/profileinstaller/c;

    move-result-object v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v5

    .line 238
    invoke-interface {v1, v4, v5}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v9

    goto :goto_4

    :catch_4
    move-exception v9

    goto :goto_5

    .line 196
    :cond_1
    :try_start_3
    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-direct {v9, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    throw v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    :goto_4
    :try_start_4
    invoke-interface {v1, v8, v9}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 236
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    move-exception v5

    .line 238
    invoke-interface {v1, v4, v5}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    goto :goto_6

    .line 231
    :goto_5
    :try_start_6
    invoke-interface {v1, v4, v9}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 236
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :goto_6
    move-object v9, v3

    .line 166
    :goto_7
    iput-object v9, p0, Landroidx/profileinstaller/DeviceProfileWriter;->j:[Landroidx/profileinstaller/c;

    goto :goto_a

    .line 236
    :goto_8
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_9

    :catch_6
    move-exception v2

    .line 238
    invoke-interface {v1, v4, v2}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    .line 240
    :goto_9
    throw v0

    .line 168
    :cond_2
    :goto_a
    iget-object v5, p0, Landroidx/profileinstaller/DeviceProfileWriter;->j:[Landroidx/profileinstaller/c;

    if-eqz v5, :cond_8

    .line 395
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x18

    if-lt v9, v10, :cond_8

    const/16 v11, 0x21

    if-le v9, v11, :cond_3

    goto :goto_11

    :cond_3
    if-eq v9, v10, :cond_4

    const/16 v10, 0x19

    if-eq v9, v10, :cond_4

    packed-switch v9, :pswitch_data_0

    goto :goto_11

    .line 253
    :cond_4
    :pswitch_0
    :try_start_9
    iget-object v9, p0, Landroidx/profileinstaller/DeviceProfileWriter;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_7

    if-eqz v0, :cond_6

    .line 255
    :try_start_a
    sget-object v9, Landroidx/profileinstaller/h;->b:[B

    .line 70
    invoke-static {v0, v7}, Landroidx/profileinstaller/d;->b(Ljava/io/InputStream;I)[B

    move-result-object v10

    .line 71
    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 76
    invoke-static {v0, v7}, Landroidx/profileinstaller/d;->b(Ljava/io/InputStream;I)[B

    move-result-object v6

    .line 256
    invoke-static {v0, v6, v2, v5}, Landroidx/profileinstaller/h;->d(Ljava/io/FileInputStream;[B[B[Landroidx/profileinstaller/c;)[Landroidx/profileinstaller/c;

    move-result-object v2

    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->j:[Landroidx/profileinstaller/c;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 264
    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_7

    move-object v3, p0

    goto :goto_10

    :catch_7
    move-exception v0

    goto :goto_d

    :catch_8
    move-exception v0

    goto :goto_e

    :catch_9
    move-exception v0

    goto :goto_f

    :catchall_1
    move-exception v2

    goto :goto_b

    .line 196
    :cond_5
    :try_start_c
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 253
    :goto_b
    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    :try_start_e
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw v2

    :cond_6
    if-eqz v0, :cond_7

    .line 264
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_10

    .line 270
    :goto_d
    iput-object v3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->j:[Landroidx/profileinstaller/c;

    .line 271
    invoke-interface {v1, v8, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    goto :goto_10

    .line 268
    :goto_e
    invoke-interface {v1, v4, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    goto :goto_10

    :goto_f
    const/16 v2, 0x9

    .line 265
    invoke-interface {v1, v2, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    :cond_7
    :goto_10
    if-eqz v3, :cond_8

    return-object v3

    :cond_8
    :goto_11
    return-object p0

    .line 137
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This device doesn\'t support aot. Did you call deviceSupportsAotProfile()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public transcodeIfNeeded()Landroidx/profileinstaller/DeviceProfileWriter;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->c:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    iget-object v1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->j:[Landroidx/profileinstaller/c;

    if-eqz v1, :cond_3

    .line 298
    iget-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->d:[B

    if-nez v2, :cond_0

    goto :goto_5

    .line 136
    :cond_0
    iget-boolean v3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->i:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    .line 302
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :try_start_1
    sget-object v5, Landroidx/profileinstaller/h;->a:[B

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 81
    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V

    .line 304
    invoke-static {v4, v2, v1}, Landroidx/profileinstaller/h;->i(Ljava/io/ByteArrayOutputStream;[B[Landroidx/profileinstaller/c;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x5

    .line 311
    invoke-interface {v0, v1, v3}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    .line 315
    iput-object v3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->j:[Landroidx/profileinstaller/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 319
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->k:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 320
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    .line 302
    :goto_0
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_2
    const/16 v2, 0x8

    .line 323
    invoke-interface {v0, v2, v1}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    goto :goto_4

    :goto_3
    const/4 v2, 0x7

    .line 321
    invoke-interface {v0, v2, v1}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    .line 325
    :goto_4
    iput-object v3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->j:[Landroidx/profileinstaller/c;

    return-object p0

    .line 137
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This device doesn\'t support aot. Did you call deviceSupportsAotProfile()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_5
    return-object p0
.end method

.method public write()Z
    .locals 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 338
    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->k:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_8

    .line 136
    :cond_0
    iget-boolean v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->i:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 344
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 345
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v4, p0, Landroidx/profileinstaller/DeviceProfileWriter;->e:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v4, 0x200

    .line 188
    :try_start_2
    new-array v4, v4, [B

    .line 190
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_1

    .line 191
    invoke-virtual {v0, v4, v1, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    .line 348
    invoke-virtual {p0, v2, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->b(Ljava/io/Serializable;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 350
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 355
    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->k:[B

    .line 356
    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->j:[Landroidx/profileinstaller/c;

    return v4

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 343
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_6
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v3

    :try_start_8
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v0
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    const/4 v3, 0x7

    .line 353
    :try_start_9
    invoke-virtual {p0, v0, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->b(Ljava/io/Serializable;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 355
    :goto_6
    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->k:[B

    .line 356
    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->j:[Landroidx/profileinstaller/c;

    goto :goto_8

    :goto_7
    const/4 v3, 0x6

    .line 351
    :try_start_a
    invoke-virtual {p0, v0, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->b(Ljava/io/Serializable;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_6

    :goto_8
    return v1

    .line 355
    :goto_9
    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->k:[B

    .line 356
    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->j:[Landroidx/profileinstaller/c;

    .line 357
    throw v0

    .line 137
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This device doesn\'t support aot. Did you call deviceSupportsAotProfile()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
