.class public Lgnu/kawa/lispexpr/ReaderString;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    return-void
.end method

.method public static readString(Lgnu/text/Lexer;II)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 25
    iget p2, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 26
    invoke-virtual {p0}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v0

    .line 30
    instance-of v1, v0, Lgnu/mapping/InPort;

    if-eqz v1, :cond_0

    .line 32
    move-object v2, v0

    check-cast v2, Lgnu/mapping/InPort;

    iget-char v3, v2, Lgnu/text/LineBufferedReader;->readState:C

    int-to-char v4, p1

    .line 33
    iput-char v4, v2, Lgnu/text/LineBufferedReader;->readState:C

    :goto_0
    move v2, p1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :goto_1
    const/16 v4, 0xd

    const/16 v5, 0xa

    if-ne v2, v4, :cond_1

    .line 44
    :try_start_0
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v2

    if-ne v2, v5, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 48
    :cond_1
    iget v6, v0, Lgnu/text/LineBufferedReader;->pos:I

    iget v7, v0, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v6, v7, :cond_2

    if-eq v2, v5, :cond_2

    .line 49
    iget-object v2, v0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v2, v2, v6

    goto :goto_2

    .line 51
    :cond_2
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v2

    :cond_3
    :goto_2
    if-ne v2, p1, :cond_5

    .line 89
    new-instance p1, Ljava/lang/String;

    iget-object v2, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v4, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    sub-int/2addr v4, p2

    invoke-direct {p1, v2, p2, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iput p2, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    if-eqz v1, :cond_4

    .line 100
    check-cast v0, Lgnu/mapping/InPort;

    iput-char v3, v0, Lgnu/text/LineBufferedReader;->readState:C

    :cond_4
    return-object p1

    :cond_5
    if-eq v2, v4, :cond_a

    const/16 v4, 0x5c

    if-eq v2, v4, :cond_6

    goto :goto_4

    .line 71
    :cond_6
    :try_start_1
    instance-of v2, p0, Lgnu/kawa/lispexpr/LispReader;

    if-eqz v2, :cond_7

    .line 72
    move-object v2, p0

    check-cast v2, Lgnu/kawa/lispexpr/LispReader;

    invoke-virtual {v2}, Lgnu/kawa/lispexpr/LispReader;->readEscape()I

    move-result v2

    goto :goto_3

    .line 74
    :cond_7
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v2

    :goto_3
    const/4 v4, -0x2

    if-ne v2, v4, :cond_8

    const/16 v2, 0xa

    goto :goto_1

    :cond_8
    :goto_4
    if-gez v2, :cond_9

    .line 83
    const-string v4, "unexpected EOF in string literal"

    invoke-virtual {p0, v4}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    .line 84
    :cond_9
    invoke-virtual {p0, v2}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    goto :goto_1

    .line 60
    :cond_a
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v4, 0xa

    goto :goto_5

    :cond_b
    const/16 v2, 0x20

    .line 68
    :goto_5
    invoke-virtual {p0, v4}, Lgnu/text/Lexer;->tokenBufferAppend(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 98
    :goto_6
    iput p2, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    if-eqz v1, :cond_c

    .line 100
    check-cast v0, Lgnu/mapping/InPort;

    iput-char v3, v0, Lgnu/text/LineBufferedReader;->readState:C

    :cond_c
    throw p1
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 13
    invoke-static {p1, p2, p3}, Lgnu/kawa/lispexpr/ReaderString;->readString(Lgnu/text/Lexer;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
