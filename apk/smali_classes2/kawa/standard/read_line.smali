.class public Lkawa/standard/read_line;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Lgnu/text/LineBufferedReader;Ljava/lang/String;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 11
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v3

    if-gez v3, :cond_0

    .line 13
    sget-object p0, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    return-object p0

    .line 14
    :cond_0
    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v3, v2

    .line 16
    iget v4, p0, Lgnu/text/LineBufferedReader;->limit:I

    .line 17
    iget-object v5, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    move v6, v3

    .line 21
    :goto_0
    const-string v7, "concat"

    const-string v8, "peek"

    const/16 v9, 0xd

    const/16 v10, 0xa

    const/4 v11, -0x1

    if-ge v6, v4, :cond_8

    add-int/lit8 v12, v6, 0x1

    .line 23
    aget-char v13, v5, v6

    if-eq v13, v9, :cond_2

    if-ne v13, v10, :cond_1

    goto :goto_1

    :cond_1
    move v6, v12

    goto :goto_0

    .line 27
    :cond_2
    :goto_1
    const-string v12, "trim"

    if-eq p1, v12, :cond_4

    if-ne p1, v8, :cond_3

    goto :goto_2

    :cond_3
    if-ne p1, v7, :cond_8

    if-ne v13, v10, :cond_8

    add-int/2addr v6, v2

    .line 41
    iput v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    goto :goto_5

    :cond_4
    :goto_2
    if-ne p1, v8, :cond_5

    const/4 v11, 0x0

    :cond_5
    if-ne v13, v10, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v12, v6, 0x1

    if-ge v12, v4, :cond_8

    .line 34
    aget-char p1, v5, v12

    if-ne p1, v10, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x1

    :goto_3
    move v2, v1

    :goto_4
    add-int/2addr v2, v6

    .line 37
    iput v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 45
    :goto_5
    new-instance p0, Lgnu/lists/FString;

    sub-int/2addr v6, v3

    invoke-direct {p0, v5, v3, v6}, Lgnu/lists/FString;-><init>([CII)V

    return-object p0

    .line 51
    :cond_8
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v12, 0x64

    invoke-direct {v4, v12}, Ljava/lang/StringBuffer;-><init>(I)V

    if-le v6, v3, :cond_9

    sub-int v12, v6, v3

    .line 53
    invoke-virtual {v4, v5, v3, v12}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 54
    :cond_9
    iput v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 55
    const-string v3, "split"

    if-ne p1, v8, :cond_a

    const/16 v5, 0x50

    goto :goto_7

    :cond_a
    if-eq p1, v7, :cond_c

    if-ne p1, v3, :cond_b

    goto :goto_6

    :cond_b
    const/16 v5, 0x49

    goto :goto_7

    :cond_c
    :goto_6
    const/16 v5, 0x41

    .line 58
    :goto_7
    invoke-virtual {p0, v4, v5}, Lgnu/text/LineBufferedReader;->readLine(Ljava/lang/StringBuffer;C)V

    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-ne p1, v3, :cond_11

    if-nez p0, :cond_d

    const/4 v11, 0x0

    goto :goto_9

    :cond_d
    add-int/lit8 v5, p0, -0x1

    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_f

    :cond_e
    const/4 v11, 0x1

    goto :goto_8

    :cond_f
    if-eq v5, v10, :cond_10

    const/4 v11, 0x0

    goto :goto_8

    :cond_10
    if-le v5, v1, :cond_e

    add-int/lit8 v5, p0, -0x2

    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_e

    const/4 v11, 0x2

    :goto_8
    sub-int/2addr p0, v11

    .line 78
    :cond_11
    :goto_9
    new-instance v5, Lgnu/lists/FString;

    invoke-direct {v5, v4, v0, p0}, Lgnu/lists/FString;-><init>(Ljava/lang/StringBuffer;II)V

    if-ne p1, v3, :cond_12

    .line 81
    new-instance p1, Lgnu/lists/FString;

    sub-int/2addr p0, v11

    invoke-direct {p1, v4, p0, v11}, Lgnu/lists/FString;-><init>(Ljava/lang/StringBuffer;II)V

    .line 82
    new-array p0, v1, [Ljava/lang/Object;

    aput-object v5, p0, v0

    aput-object p1, p0, v2

    .line 83
    new-instance p1, Lgnu/mapping/Values;

    invoke-direct {p1, p0}, Lgnu/mapping/Values;-><init>([Ljava/lang/Object;)V

    return-object p1

    :cond_12
    return-object v5
.end method
