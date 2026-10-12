.class public Lkawa/lang/CompileFile;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final read(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/expr/Compilation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 37
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lgnu/expr/Language;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;I)Lgnu/expr/Compilation;

    move-result-object p0

    return-object p0
.end method

.method public static final read(Ljava/lang/String;Lgnu/text/SourceMessages;)Lgnu/expr/Compilation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 19
    :try_start_0
    invoke-static {p0}, Lgnu/mapping/InPort;->openFile(Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object v0

    .line 20
    invoke-static {v0, p1}, Lkawa/lang/CompileFile;->read(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/expr/Compilation;

    move-result-object p1

    .line 21
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 30
    :goto_0
    new-instance v0, Lgnu/mapping/WrappedException;

    const-string v1, "compile-file: read-error: "

    .line 0
    invoke-static {v1, p0}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-direct {v0, p0, p1}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 26
    :goto_1
    new-instance v0, Lgnu/mapping/WrappedException;

    const-string v1, "compile-file: file not found: "

    .line 0
    invoke-static {v1, p0}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-direct {v0, p0, p1}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
