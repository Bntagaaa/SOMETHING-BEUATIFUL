.class public Lcom/google/appinventor/components/runtime/util/TelnetRepl;
.super Lgnu/mapping/Procedure0;
.source "SourceFile"


# static fields
.field private static final REPL_STACK_SIZE:I = 0x40000


# instance fields
.field language:Lgnu/expr/Language;

.field socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/net/Socket;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lgnu/mapping/Procedure0;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/TelnetRepl;->language:Lgnu/expr/Language;

    .line 34
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/TelnetRepl;->socket:Ljava/net/Socket;

    return-void
.end method

.method public static serve(Lgnu/expr/Language;Ljava/net/Socket;)Ljava/lang/Thread;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    new-instance v0, Lkawa/Telnet;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lkawa/Telnet;-><init>(Ljava/net/Socket;Z)V

    .line 71
    invoke-virtual {v0}, Lkawa/Telnet;->getOutputStream()Lkawa/TelnetOutputStream;

    move-result-object v1

    .line 72
    invoke-virtual {v0}, Lkawa/Telnet;->getInputStream()Lkawa/TelnetInputStream;

    move-result-object v0

    .line 73
    new-instance v5, Lgnu/mapping/OutPort;

    const-string v2, "/dev/stdout"

    invoke-static {v2}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object v2

    invoke-direct {v5, v1, v2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;Lgnu/text/Path;)V

    .line 74
    new-instance v4, Lgnu/mapping/TtyInPort;

    const-string v1, "/dev/stdin"

    invoke-static {v1}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object v1

    invoke-direct {v4, v0, v1, v5}, Lgnu/mapping/TtyInPort;-><init>(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/OutPort;)V

    .line 83
    new-instance v2, Lcom/google/appinventor/components/runtime/util/BiggerFuture;

    new-instance v3, Lcom/google/appinventor/components/runtime/util/TelnetRepl;

    invoke-direct {v3, p0, p1}, Lcom/google/appinventor/components/runtime/util/TelnetRepl;-><init>(Lgnu/expr/Language;Ljava/net/Socket;)V

    const-string v7, "Telnet Repl Thread"

    const-wide/32 v8, 0x40000

    move-object v6, v5

    invoke-direct/range {v2 .. v9}, Lcom/google/appinventor/components/runtime/util/BiggerFuture;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Ljava/lang/String;J)V

    .line 86
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-object v2
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 5

    .line 38
    const-string v0, "Repl is exiting with error "

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_0

    .line 43
    const-class v2, Lkawa/Telnet;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 47
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/TelnetRepl;->language:Lgnu/expr/Language;

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v2

    invoke-static {v1, v2}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    .line 48
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :try_start_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/TelnetRepl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    .line 50
    :try_start_2
    const-string v2, "TelnetRepl"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/TelnetRepl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 59
    :catch_2
    throw v0
.end method
