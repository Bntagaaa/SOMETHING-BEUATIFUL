.class public Lgnu/xml/XMLParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static XMLStreamReader(Ljava/io/InputStream;)Lgnu/text/LineInputStreamReader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Lgnu/text/LineInputStreamReader;

    invoke-direct {v0, p0}, Lgnu/text/LineInputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 68
    invoke-virtual {v0}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result p0

    const/4 v1, -0x1

    if-gez p0, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v0}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v2

    :goto_0
    if-gez v2, :cond_1

    const/4 v3, -0x1

    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {v0}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v3

    :goto_1
    const/16 v4, 0xef

    .line 71
    const-string v5, "UTF-8"

    const/4 v6, 0x0

    if-ne p0, v4, :cond_2

    const/16 v4, 0xbb

    if-ne v2, v4, :cond_2

    const/16 v4, 0xbf

    if-ne v3, v4, :cond_2

    const/4 p0, 0x3

    .line 73
    invoke-virtual {v0, p0}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    .line 74
    invoke-virtual {v0, v5}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2
    const/4 v4, 0x2

    const/16 v7, 0xfe

    const/16 v8, 0xff

    if-ne p0, v8, :cond_3

    if-ne v2, v7, :cond_3

    if-eqz v3, :cond_3

    .line 78
    invoke-virtual {v0, v4}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    .line 79
    const-string p0, "UTF-16LE"

    invoke-virtual {v0, p0}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_3
    if-ne p0, v7, :cond_4

    if-ne v2, v8, :cond_4

    if-eqz v3, :cond_4

    .line 83
    invoke-virtual {v0, v4}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    .line 84
    const-string p0, "UTF-16BE"

    invoke-virtual {v0, p0}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_4
    if-gez v3, :cond_5

    goto :goto_2

    .line 88
    :cond_5
    invoke-virtual {v0}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v1

    :goto_2
    const/16 v4, 0x4c

    if-ne p0, v4, :cond_7

    const/16 v4, 0x6f

    if-ne v2, v4, :cond_7

    const/16 v4, 0xa7

    if-ne v3, v4, :cond_7

    const/16 v4, 0x94

    if-eq v1, v4, :cond_6

    goto :goto_3

    .line 90
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "XMLParser: EBCDIC encodings not supported"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_7
    :goto_3
    invoke-virtual {v0, v6}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    const/16 v4, 0x3c

    const/16 v7, 0x3f

    if-ne p0, v4, :cond_9

    if-ne v2, v7, :cond_8

    const/16 v8, 0x78

    if-ne v3, v8, :cond_8

    const/16 v8, 0x6d

    if-eq v1, v8, :cond_a

    :cond_8
    if-nez v2, :cond_9

    if-ne v3, v7, :cond_9

    if-eqz v1, :cond_a

    :cond_9
    if-nez p0, :cond_12

    if-ne v2, v4, :cond_12

    if-nez v3, :cond_12

    if-ne v1, v7, :cond_12

    .line 96
    :cond_a
    iget-object p0, v0, Lgnu/text/LineBufferedReader;->buffer:[C

    if-nez p0, :cond_b

    const/16 p0, 0x2000

    .line 98
    new-array p0, p0, [C

    iput-object p0, v0, Lgnu/text/LineBufferedReader;->buffer:[C

    :cond_b
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 103
    :goto_4
    invoke-virtual {v0}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v3

    if-nez v3, :cond_c

    goto :goto_4

    :cond_c
    if-gez v3, :cond_d

    goto :goto_5

    :cond_d
    add-int/lit8 v4, v1, 0x1

    and-int/lit16 v5, v3, 0xff

    int-to-char v5, v5

    .line 108
    aput-char v5, p0, v1

    if-nez v2, :cond_10

    const/16 v1, 0x3e

    if-ne v3, v1, :cond_e

    move v1, v4

    .line 119
    :goto_5
    iput v6, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 120
    iput v1, v0, Lgnu/text/LineBufferedReader;->limit:I

    goto :goto_7

    :cond_e
    const/16 v1, 0x27

    if-eq v3, v1, :cond_f

    const/16 v1, 0x22

    if-ne v3, v1, :cond_11

    :cond_f
    move v2, v3

    goto :goto_6

    :cond_10
    if-ne v3, v2, :cond_11

    const/4 v2, 0x0

    :cond_11
    :goto_6
    move v1, v4

    goto :goto_4

    .line 123
    :cond_12
    invoke-virtual {v0, v5}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    .line 125
    :goto_7
    invoke-virtual {v0, v6}, Lgnu/text/LineBufferedReader;->setKeepFullLines(Z)V

    return-object v0
.end method

.method public static parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    new-instance v0, Lgnu/xml/XMLFilter;

    invoke-direct {v0, p2}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    .line 144
    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->setMessages(Lgnu/text/SourceMessages;)V

    .line 145
    invoke-virtual {v0, p0}, Lgnu/xml/XMLFilter;->setSourceLocator(Lgnu/text/LineBufferedReader;)V

    .line 146
    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->startDocument()V

    .line 147
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getPath()Lgnu/text/Path;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->writeDocumentUri(Ljava/lang/Object;)V

    .line 150
    :cond_0
    invoke-static {p0, v0}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/xml/XMLFilter;)V

    .line 151
    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->endDocument()V

    return-void
.end method

.method public static parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/xml/XMLFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-virtual {p2, p1}, Lgnu/xml/XMLFilter;->setMessages(Lgnu/text/SourceMessages;)V

    .line 158
    invoke-virtual {p2, p0}, Lgnu/xml/XMLFilter;->setSourceLocator(Lgnu/text/LineBufferedReader;)V

    .line 159
    invoke-virtual {p2}, Lgnu/xml/XMLFilter;->startDocument()V

    .line 160
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getPath()Lgnu/text/Path;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p2, p1}, Lgnu/xml/XMLFilter;->writeDocumentUri(Ljava/lang/Object;)V

    .line 163
    :cond_0
    invoke-static {p0, p2}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/xml/XMLFilter;)V

    .line 164
    invoke-virtual {p2}, Lgnu/xml/XMLFilter;->endDocument()V

    .line 165
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->close()V

    return-void
.end method

.method public static parse(Lgnu/text/LineBufferedReader;Lgnu/xml/XMLFilter;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 171
    iget-object v2, v0, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 172
    iget v3, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 173
    iget v4, v0, Lgnu/text/LineBufferedReader;->limit:I

    const/16 v5, 0xe

    const/4 v6, 0x0

    move v11, v4

    move-object v13, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v10, 0x3c

    const/16 v12, 0xe

    const/16 v14, 0x20

    const/4 v15, -0x1

    :goto_0
    const/16 v7, 0x3e

    const/16 v9, 0x65

    const/16 v20, 0x24

    const/4 v8, 0x1

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    move v7, v6

    move v6, v4

    move v4, v7

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/16 v19, 0x3c

    goto/16 :goto_36

    .line 253
    :pswitch_1
    iput v3, v0, Lgnu/text/LineBufferedReader;->pos:I

    const/16 v0, 0x66

    .line 254
    const-string v2, "unexpected end-of-file"

    invoke-virtual {v1, v0, v2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    return-void

    :goto_1
    :pswitch_2
    move-object v5, v13

    goto :goto_2

    .line 234
    :pswitch_3
    const-string v13, "invalid xml version specifier"

    move v3, v15

    goto :goto_1

    .line 238
    :goto_2
    iput v3, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 239
    invoke-virtual {v1, v9, v5}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    :goto_3
    if-lt v3, v11, :cond_0

    goto/16 :goto_45

    :cond_0
    add-int/lit8 v9, v3, 0x1

    .line 244
    aget-char v3, v2, v3

    if-ne v3, v7, :cond_2

    move v14, v3

    move-object v13, v5

    move v3, v9

    :cond_1
    :goto_4
    const/4 v5, 0x1

    :goto_5
    const/16 v8, 0x20

    const/16 v19, 0x3c

    goto/16 :goto_43

    :cond_2
    move v3, v9

    goto :goto_3

    :pswitch_4
    const/16 v5, 0x3f

    if-ne v14, v5, :cond_3

    const/16 v5, 0x21

    move v4, v3

    goto :goto_5

    :cond_3
    const/16 v5, 0xe

    goto :goto_0

    :pswitch_5
    const/16 v5, 0x3c

    if-ne v14, v5, :cond_4

    const/16 v5, 0x22

    goto :goto_5

    :cond_4
    :goto_6
    const/4 v5, 0x1

    goto :goto_0

    :pswitch_6
    const/16 v5, 0x3c

    const/16 v7, 0xa

    if-ne v14, v7, :cond_5

    const/4 v9, 0x1

    :goto_7
    const/16 v7, 0x85

    goto :goto_8

    :cond_5
    const/4 v9, 0x0

    goto :goto_7

    :goto_8
    if-ne v14, v7, :cond_6

    const/4 v7, 0x1

    goto :goto_9

    :cond_6
    const/4 v7, 0x0

    :goto_9
    or-int/2addr v7, v9

    if-eqz v7, :cond_7

    .line 352
    invoke-virtual {v0, v8, v3}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    goto :goto_4

    :cond_7
    add-int/lit8 v7, v3, -0x1

    .line 357
    invoke-virtual {v0, v8, v7}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    goto :goto_6

    :pswitch_7
    const/16 v5, 0x3c

    if-eq v14, v7, :cond_1

    .line 941
    const-string v13, "missing \'>\'"

    :goto_a
    const/16 v5, 0x24

    goto :goto_0

    :pswitch_8
    const/16 v19, 0x3c

    :goto_b
    const/16 v7, 0x3b

    if-ne v14, v7, :cond_9

    .line 446
    iput v3, v0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v4

    .line 447
    invoke-virtual {v1, v6, v2, v4, v5}, Lgnu/xml/XMLFilter;->emitCharacterReference(I[CII)V

    :goto_c
    const/4 v5, 0x1

    :cond_8
    :goto_d
    const/16 v8, 0x20

    goto/16 :goto_43

    :cond_9
    const/16 v7, 0x78

    if-ne v14, v7, :cond_a

    if-nez v15, :cond_a

    const/16 v7, 0x10

    const/16 v15, 0x10

    goto :goto_10

    :cond_a
    const/high16 v7, 0x8000000

    if-lt v6, v7, :cond_b

    goto :goto_f

    :cond_b
    if-nez v15, :cond_c

    const/16 v7, 0xa

    goto :goto_e

    :cond_c
    move v7, v15

    .line 459
    :goto_e
    invoke-static {v14, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v16

    if-gez v16, :cond_d

    .line 469
    :goto_f
    iput v3, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 470
    const-string v5, "invalid character reference"

    invoke-virtual {v1, v9, v5}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    goto :goto_c

    :cond_d
    mul-int v6, v6, v7

    add-int v6, v6, v16

    :goto_10
    if-ge v3, v11, :cond_8

    add-int/lit8 v7, v3, 0x1

    .line 465
    aget-char v14, v2, v3

    move v3, v7

    goto :goto_b

    :pswitch_9
    const/16 v4, 0x23

    const/16 v19, 0x3c

    if-ne v14, v4, :cond_e

    const/16 v5, 0x1a

    move v4, v3

    const/4 v6, 0x0

    const/16 v8, 0x20

    const/4 v15, 0x0

    goto/16 :goto_43

    :cond_e
    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x7

    goto/16 :goto_0

    :pswitch_a
    const/16 v18, 0x23

    const/16 v19, 0x3c

    if-gez v15, :cond_f

    add-int/lit8 v15, v3, -0x1

    :cond_f
    move/from16 v23, v14

    move v14, v3

    move v3, v15

    move/from16 v15, v23

    :goto_11
    if-ne v15, v7, :cond_31

    const/16 v21, 0x1

    add-int/lit8 v8, v14, -0x2

    .line 532
    aget-char v7, v2, v8

    const/16 v9, 0x3f

    if-ne v7, v9, :cond_30

    if-lt v8, v3, :cond_30

    .line 536
    iput v14, v0, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2f

    .line 537
    aget-char v7, v2, v4

    const/16 v9, 0x78

    if-ne v7, v9, :cond_2f

    add-int/lit8 v7, v4, 0x1

    aget-char v7, v2, v7

    const/16 v9, 0x6d

    if-ne v7, v9, :cond_2f

    add-int/lit8 v7, v4, 0x2

    aget-char v7, v2, v7

    const/16 v9, 0x6c

    if-ne v7, v9, :cond_2f

    const/16 v7, 0x1e

    if-ne v5, v7, :cond_2e

    add-int/lit8 v5, v3, 0x7

    if-le v8, v5, :cond_2d

    .line 544
    aget-char v7, v2, v3

    const/16 v9, 0x76

    if-ne v7, v9, :cond_2d

    add-int/lit8 v7, v3, 0x1

    aget-char v7, v2, v7

    const/16 v9, 0x65

    if-ne v7, v9, :cond_2d

    add-int/lit8 v7, v3, 0x2

    aget-char v7, v2, v7

    const/16 v9, 0x72

    if-ne v7, v9, :cond_2d

    add-int/lit8 v7, v3, 0x3

    aget-char v7, v2, v7

    const/16 v9, 0x73

    if-ne v7, v9, :cond_2d

    add-int/lit8 v7, v3, 0x4

    aget-char v7, v2, v7

    const/16 v9, 0x69

    if-ne v7, v9, :cond_2d

    add-int/lit8 v7, v3, 0x5

    aget-char v7, v2, v7

    const/16 v9, 0x6f

    if-ne v7, v9, :cond_2d

    add-int/lit8 v7, v3, 0x6

    aget-char v7, v2, v7

    const/16 v9, 0x6e

    if-eq v7, v9, :cond_10

    goto/16 :goto_23

    .line 559
    :cond_10
    aget-char v3, v2, v5

    .line 561
    :goto_12
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_11

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v8, :cond_11

    .line 562
    aget-char v3, v2, v5

    goto :goto_12

    :cond_11
    move v15, v5

    const/16 v5, 0x3d

    if-eq v3, v5, :cond_12

    move v5, v14

    move v14, v3

    move v3, v5

    :goto_13
    const/16 v5, 0x23

    goto/16 :goto_0

    :cond_12
    add-int/lit8 v15, v15, 0x1

    .line 568
    aget-char v3, v2, v15

    move v5, v3

    .line 570
    :goto_14
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_13

    add-int/lit8 v15, v15, 0x1

    if-ge v15, v8, :cond_13

    .line 571
    aget-char v5, v2, v15

    goto :goto_14

    :cond_13
    move v7, v15

    const/16 v3, 0x27

    if-eq v5, v3, :cond_14

    const/16 v3, 0x22

    if-eq v5, v3, :cond_14

    move v15, v7

    move v3, v14

    move v14, v5

    goto :goto_13

    :cond_14
    add-int/lit8 v16, v7, 0x1

    move v3, v5

    move/from16 v15, v16

    :goto_15
    if-ne v15, v8, :cond_15

    move v5, v14

    move v14, v3

    move v3, v5

    :goto_16
    move/from16 v15, v16

    goto :goto_13

    .line 586
    :cond_15
    aget-char v3, v2, v15

    if-ne v3, v5, :cond_2c

    add-int/lit8 v5, v7, 0x4

    if-ne v15, v5, :cond_16

    .line 590
    aget-char v5, v2, v16

    const/16 v9, 0x31

    if-ne v5, v9, :cond_16

    add-int/lit8 v5, v7, 0x2

    aget-char v5, v2, v5

    const/16 v9, 0x2e

    if-ne v5, v9, :cond_16

    add-int/lit8 v7, v7, 0x3

    aget-char v3, v2, v7

    const/16 v5, 0x30

    if-eq v3, v5, :cond_17

    :cond_16
    const/16 v5, 0x31

    if-ne v3, v5, :cond_2b

    :cond_17
    :goto_17
    add-int/lit8 v15, v15, 0x1

    if-ge v15, v8, :cond_18

    .line 603
    aget-char v5, v2, v15

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_18

    goto :goto_17

    :cond_18
    add-int/lit8 v5, v15, 0x7

    if-le v8, v5, :cond_20

    .line 605
    aget-char v7, v2, v15

    const/16 v9, 0x65

    if-ne v7, v9, :cond_20

    add-int/lit8 v7, v15, 0x1

    aget-char v7, v2, v7

    const/16 v9, 0x6e

    if-ne v7, v9, :cond_20

    add-int/lit8 v7, v15, 0x2

    aget-char v7, v2, v7

    const/16 v9, 0x63

    if-ne v7, v9, :cond_20

    add-int/lit8 v7, v15, 0x3

    aget-char v7, v2, v7

    const/16 v9, 0x6f

    if-ne v7, v9, :cond_20

    add-int/lit8 v7, v15, 0x4

    aget-char v7, v2, v7

    const/16 v9, 0x64

    if-ne v7, v9, :cond_20

    add-int/lit8 v7, v15, 0x5

    aget-char v7, v2, v7

    const/16 v9, 0x69

    if-ne v7, v9, :cond_20

    add-int/lit8 v7, v15, 0x6

    aget-char v7, v2, v7

    const/16 v9, 0x6e

    if-ne v7, v9, :cond_20

    aget-char v5, v2, v5

    const/16 v7, 0x67

    if-ne v5, v7, :cond_20

    add-int/lit8 v15, v15, 0x8

    .line 616
    aget-char v3, v2, v15

    .line 618
    :goto_18
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_19

    add-int/lit8 v15, v15, 0x1

    if-ge v15, v8, :cond_19

    .line 619
    aget-char v3, v2, v15

    goto :goto_18

    :cond_19
    const/16 v5, 0x3d

    if-eq v3, v5, :cond_1a

    .line 624
    const-string v13, "bad \'encoding\' declaration"

    :goto_19
    move v5, v14

    move v14, v3

    move v3, v5

    goto/16 :goto_a

    :cond_1a
    add-int/lit8 v15, v15, 0x1

    .line 626
    aget-char v3, v2, v15

    move v5, v3

    .line 628
    :goto_1a
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1b

    add-int/lit8 v15, v15, 0x1

    if-ge v15, v8, :cond_1b

    .line 629
    aget-char v5, v2, v15

    goto :goto_1a

    :cond_1b
    const/16 v3, 0x27

    if-eq v5, v3, :cond_1c

    const/16 v3, 0x22

    if-eq v5, v3, :cond_1c

    .line 634
    const-string v13, "bad \'encoding\' declaration"

    :goto_1b
    move v3, v14

    move v14, v5

    goto/16 :goto_a

    :cond_1c
    add-int/lit8 v7, v15, 0x1

    move v3, v5

    move v9, v7

    :goto_1c
    if-ne v9, v8, :cond_1d

    .line 644
    const-string v13, "bad \'encoding\' declaration"

    move v5, v14

    move v14, v3

    move v3, v5

    move v15, v7

    goto/16 :goto_a

    .line 646
    :cond_1d
    aget-char v3, v2, v9

    if-ne v3, v5, :cond_1f

    .line 650
    new-instance v5, Ljava/lang/String;

    sub-int v15, v9, v7

    invoke-direct {v5, v2, v7, v15}, Ljava/lang/String;-><init>([CII)V

    .line 651
    instance-of v7, v0, Lgnu/text/LineInputStreamReader;

    if-eqz v7, :cond_1e

    .line 652
    move-object v7, v0

    check-cast v7, Lgnu/text/LineInputStreamReader;

    invoke-virtual {v7, v5}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    :cond_1e
    add-int/lit8 v9, v9, 0x1

    move v15, v9

    :goto_1d
    if-ge v15, v8, :cond_20

    .line 655
    aget-char v5, v2, v15

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_20

    add-int/lit8 v15, v15, 0x1

    goto :goto_1d

    :cond_1f
    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    :cond_20
    add-int/lit8 v5, v15, 0x9

    if-le v8, v5, :cond_29

    .line 658
    aget-char v7, v2, v15

    const/16 v9, 0x73

    if-ne v7, v9, :cond_29

    add-int/lit8 v7, v15, 0x1

    aget-char v7, v2, v7

    const/16 v9, 0x74

    if-ne v7, v9, :cond_29

    add-int/lit8 v7, v15, 0x2

    aget-char v7, v2, v7

    const/16 v9, 0x61

    if-ne v7, v9, :cond_29

    add-int/lit8 v7, v15, 0x3

    aget-char v7, v2, v7

    const/16 v9, 0x6e

    if-ne v7, v9, :cond_29

    add-int/lit8 v7, v15, 0x4

    aget-char v7, v2, v7

    const/16 v9, 0x64

    if-ne v7, v9, :cond_29

    add-int/lit8 v7, v15, 0x5

    aget-char v7, v2, v7

    const/16 v9, 0x61

    if-ne v7, v9, :cond_29

    add-int/lit8 v7, v15, 0x6

    aget-char v7, v2, v7

    const/16 v9, 0x6c

    if-ne v7, v9, :cond_29

    add-int/lit8 v7, v15, 0x7

    aget-char v7, v2, v7

    const/16 v9, 0x6f

    if-ne v7, v9, :cond_29

    add-int/lit8 v7, v15, 0x8

    aget-char v7, v2, v7

    const/16 v9, 0x6e

    if-ne v7, v9, :cond_29

    aget-char v5, v2, v5

    const/16 v9, 0x65

    if-ne v5, v9, :cond_29

    add-int/lit8 v15, v15, 0xa

    .line 671
    aget-char v3, v2, v15

    .line 673
    :goto_1e
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_21

    add-int/lit8 v15, v15, 0x1

    if-ge v15, v8, :cond_21

    .line 674
    aget-char v3, v2, v15

    goto :goto_1e

    :cond_21
    const/16 v5, 0x3d

    if-eq v3, v5, :cond_22

    .line 679
    const-string v13, "bad \'standalone\' declaration"

    goto/16 :goto_19

    :cond_22
    add-int/lit8 v15, v15, 0x1

    .line 681
    aget-char v3, v2, v15

    move v5, v3

    .line 683
    :goto_1f
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_23

    add-int/lit8 v15, v15, 0x1

    if-ge v15, v8, :cond_23

    .line 684
    aget-char v5, v2, v15

    goto :goto_1f

    :cond_23
    move v7, v15

    const/16 v3, 0x27

    if-eq v5, v3, :cond_24

    const/16 v3, 0x22

    if-eq v5, v3, :cond_24

    .line 689
    const-string v13, "bad \'standalone\' declaration"

    move v15, v7

    goto/16 :goto_1b

    :cond_24
    add-int/lit8 v9, v7, 0x1

    move v3, v5

    move v15, v9

    :goto_20
    if-ne v15, v8, :cond_25

    .line 699
    const-string v13, "bad \'standalone\' declaration"

    move v5, v14

    move v14, v3

    move v3, v5

    :goto_21
    move v15, v9

    goto/16 :goto_a

    .line 701
    :cond_25
    aget-char v3, v2, v15

    if-ne v3, v5, :cond_28

    add-int/lit8 v5, v7, 0x4

    if-ne v15, v5, :cond_26

    .line 705
    aget-char v5, v2, v9

    const/16 v1, 0x79

    if-ne v5, v1, :cond_26

    add-int/lit8 v1, v7, 0x2

    aget-char v1, v2, v1

    const/16 v5, 0x65

    if-ne v1, v5, :cond_26

    add-int/lit8 v1, v7, 0x3

    aget-char v1, v2, v1

    const/16 v5, 0x73

    if-ne v1, v5, :cond_26

    goto :goto_22

    :cond_26
    add-int/lit8 v1, v7, 0x3

    if-ne v15, v1, :cond_27

    .line 711
    aget-char v1, v2, v9

    const/16 v5, 0x6e

    if-ne v1, v5, :cond_27

    add-int/lit8 v7, v7, 0x2

    aget-char v1, v2, v7

    const/16 v5, 0x6f

    if-ne v1, v5, :cond_27

    :goto_22
    add-int/lit8 v15, v15, 0x1

    if-ge v15, v8, :cond_29

    .line 724
    aget-char v1, v2, v15

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_22

    .line 720
    :cond_27
    const-string v13, "bad \'standalone\' declaration"

    move v1, v14

    move v14, v3

    move v3, v1

    move-object/from16 v1, p1

    goto :goto_21

    :cond_28
    const/16 v17, 0x6e

    const/16 v22, 0x65

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    goto :goto_20

    :cond_29
    if-eq v8, v15, :cond_2a

    .line 732
    const-string v13, "junk at end of xml declaration"

    move-object/from16 v1, p1

    move v14, v3

    move v3, v15

    goto/16 :goto_a

    :cond_2a
    move-object/from16 v1, p1

    move v15, v3

    move v4, v6

    goto :goto_24

    :cond_2b
    move v1, v14

    move v14, v3

    move v3, v1

    move-object/from16 v1, p1

    goto/16 :goto_16

    :cond_2c
    const/16 v17, 0x6e

    const/16 v22, 0x65

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    const/16 v9, 0x6e

    goto/16 :goto_15

    .line 556
    :cond_2d
    :goto_23
    const-string v13, "xml declaration without version"

    move-object/from16 v1, p1

    move v14, v15

    const/16 v5, 0x24

    move v15, v3

    goto/16 :goto_0

    .line 739
    :cond_2e
    const-string v13, "<?xml must be at start of file"

    move v1, v15

    move v15, v3

    move v3, v14

    move v14, v1

    move-object/from16 v1, p1

    goto/16 :goto_a

    :cond_2f
    sub-int/2addr v8, v3

    move-object/from16 v1, p1

    move v5, v3

    move v3, v4

    move v4, v6

    move v6, v8

    .line 743
    invoke-virtual/range {v1 .. v6}, Lgnu/xml/XMLFilter;->processingInstructionFromParser([CIIII)V

    :goto_24
    move v6, v4

    move v4, v11

    move v3, v14

    move v14, v15

    const/4 v5, 0x1

    const/16 v8, 0x20

    :goto_25
    const/4 v15, -0x1

    goto/16 :goto_43

    :cond_30
    move v7, v6

    move v6, v4

    move v4, v7

    const/4 v7, 0x3

    :goto_26
    const/16 v22, 0x65

    goto :goto_27

    :cond_31
    move v7, v6

    move v6, v4

    move v4, v7

    const/4 v7, 0x3

    const/16 v21, 0x1

    goto :goto_26

    :goto_27
    if-ge v14, v11, :cond_32

    add-int/lit8 v8, v14, 0x1

    .line 751
    aget-char v15, v2, v14

    move v7, v6

    move v6, v4

    move v4, v7

    move v14, v8

    const/16 v7, 0x3e

    const/4 v8, 0x1

    const/16 v9, 0x65

    goto/16 :goto_11

    :cond_32
    move v8, v15

    move v15, v3

    move v3, v14

    move v14, v8

    :cond_33
    :goto_28
    move v8, v6

    move v6, v4

    move v4, v8

    goto/16 :goto_d

    :pswitch_b
    move/from16 v19, v6

    move v6, v4

    move/from16 v4, v19

    const/16 v19, 0x3c

    const/16 v21, 0x1

    :goto_29
    if-ne v14, v7, :cond_36

    add-int/lit8 v4, v3, -0x1

    sub-int/2addr v4, v6

    const/4 v7, 0x4

    if-lt v4, v7, :cond_34

    .line 763
    aget-char v7, v2, v6

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_34

    add-int/lit8 v7, v6, 0x1

    aget-char v7, v2, v7

    if-ne v7, v8, :cond_34

    add-int/lit8 v7, v3, -0x2

    .line 767
    aget-char v7, v2, v7

    if-ne v7, v8, :cond_37

    add-int/lit8 v7, v3, -0x3

    aget-char v7, v2, v7

    if-ne v7, v8, :cond_37

    .line 770
    iput v3, v0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v5, v6, 0x2

    add-int/lit8 v6, v4, -0x4

    .line 771
    invoke-virtual {v1, v2, v5, v6}, Lgnu/xml/XMLFilter;->commentFromParser([CII)V

    goto :goto_2a

    :cond_34
    const/4 v7, 0x6

    if-lt v4, v7, :cond_35

    .line 775
    aget-char v7, v2, v6

    const/16 v8, 0x5b

    if-ne v7, v8, :cond_35

    add-int/lit8 v7, v6, 0x1

    aget-char v7, v2, v7

    const/16 v8, 0x43

    if-ne v7, v8, :cond_35

    add-int/lit8 v7, v6, 0x2

    aget-char v7, v2, v7

    const/16 v8, 0x44

    if-ne v7, v8, :cond_35

    add-int/lit8 v7, v6, 0x3

    aget-char v7, v2, v7

    const/16 v8, 0x41

    if-ne v7, v8, :cond_35

    add-int/lit8 v7, v6, 0x4

    aget-char v7, v2, v7

    const/16 v8, 0x54

    if-ne v7, v8, :cond_35

    add-int/lit8 v7, v6, 0x5

    aget-char v7, v2, v7

    const/16 v8, 0x41

    if-ne v7, v8, :cond_35

    add-int/lit8 v7, v6, 0x6

    aget-char v7, v2, v7

    const/16 v8, 0x5b

    if-ne v7, v8, :cond_35

    add-int/lit8 v7, v3, -0x2

    .line 784
    aget-char v7, v2, v7

    const/16 v8, 0x5d

    if-ne v7, v8, :cond_37

    add-int/lit8 v7, v3, -0x3

    aget-char v7, v2, v7

    const/16 v8, 0x5d

    if-ne v7, v8, :cond_37

    .line 787
    iput v3, v0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v5, v6, 0x7

    add-int/lit8 v7, v3, -0xa

    sub-int/2addr v7, v6

    .line 788
    invoke-virtual {v1, v2, v5, v7}, Lgnu/xml/XMLFilter;->writeCDATA([CII)V

    :cond_35
    :goto_2a
    move v6, v4

    move v4, v11

    goto/16 :goto_c

    :cond_36
    add-int/lit8 v7, v6, 0x7

    if-ne v3, v7, :cond_37

    .line 798
    aget-char v7, v2, v6

    const/16 v8, 0x44

    if-ne v7, v8, :cond_37

    add-int/lit8 v7, v6, 0x1

    aget-char v7, v2, v7

    const/16 v8, 0x4f

    if-ne v7, v8, :cond_37

    add-int/lit8 v7, v6, 0x2

    aget-char v7, v2, v7

    const/16 v8, 0x43

    if-ne v7, v8, :cond_37

    add-int/lit8 v7, v6, 0x3

    aget-char v7, v2, v7

    const/16 v8, 0x54

    if-ne v7, v8, :cond_37

    add-int/lit8 v7, v6, 0x4

    aget-char v7, v2, v7

    const/16 v8, 0x59

    if-ne v7, v8, :cond_37

    add-int/lit8 v7, v6, 0x5

    aget-char v7, v2, v7

    const/16 v8, 0x50

    if-ne v7, v8, :cond_37

    const/16 v7, 0x45

    if-ne v14, v7, :cond_37

    const/16 v5, 0xf

    move v6, v4

    move v4, v11

    goto/16 :goto_d

    :cond_37
    if-ge v3, v11, :cond_33

    add-int/lit8 v7, v3, 0x1

    .line 812
    aget-char v14, v2, v3

    move v3, v7

    const/16 v7, 0x3e

    goto/16 :goto_29

    :pswitch_c
    move v4, v6

    const/16 v19, 0x3c

    add-int/lit8 v5, v3, -0x1

    const/4 v6, 0x5

    move v6, v4

    move v4, v5

    const/4 v5, 0x5

    goto/16 :goto_0

    :pswitch_d
    move/from16 v19, v6

    move v6, v4

    move/from16 v4, v19

    const/16 v19, 0x3c

    const/16 v21, 0x1

    if-gez v15, :cond_38

    add-int/lit8 v7, v3, -0x1

    sub-int/2addr v7, v6

    shl-int/lit8 v15, v7, 0x1

    move v7, v3

    const/16 v3, 0x27

    const/4 v10, 0x0

    goto :goto_2c

    :cond_38
    :goto_2b
    move v7, v3

    const/16 v3, 0x27

    :goto_2c
    if-eq v14, v3, :cond_3c

    const/16 v3, 0x22

    if-ne v14, v3, :cond_39

    goto :goto_2e

    :cond_39
    if-nez v10, :cond_3e

    const/16 v3, 0x5b

    if-ne v14, v3, :cond_3a

    or-int/lit8 v3, v15, 0x1

    :goto_2d
    move v15, v3

    goto :goto_2f

    :cond_3a
    const/16 v3, 0x5d

    if-ne v14, v3, :cond_3b

    and-int/lit8 v3, v15, -0x2

    goto :goto_2d

    :cond_3b
    const/16 v3, 0x3e

    if-ne v14, v3, :cond_3e

    and-int/lit8 v3, v15, 0x1

    if-nez v3, :cond_3e

    .line 852
    iput v7, v0, Lgnu/text/LineBufferedReader;->pos:I

    shr-int/lit8 v3, v15, 0x1

    add-int v5, v3, v6

    add-int/lit8 v3, v7, -0x1

    sub-int/2addr v3, v5

    move/from16 v23, v6

    move v6, v3

    move/from16 v3, v23

    .line 855
    invoke-virtual/range {v1 .. v6}, Lgnu/xml/XMLFilter;->emitDoctypeDecl([CIIII)V

    move v6, v4

    move v3, v7

    move v4, v11

    const/4 v5, 0x1

    const/16 v8, 0x20

    const/16 v10, 0x3c

    goto/16 :goto_25

    :cond_3c
    :goto_2e
    if-nez v10, :cond_3d

    move v10, v14

    goto :goto_2f

    :cond_3d
    if-ne v10, v14, :cond_3e

    const/4 v10, 0x0

    :cond_3e
    :goto_2f
    if-ge v7, v11, :cond_3f

    add-int/lit8 v3, v7, 0x1

    .line 865
    aget-char v14, v2, v7

    goto :goto_2b

    :cond_3f
    move v3, v6

    move v6, v4

    move v4, v3

    move v3, v7

    goto/16 :goto_d

    :pswitch_e
    move v7, v6

    move v6, v4

    move v4, v7

    const/4 v7, 0x3

    const/16 v19, 0x3c

    const/16 v21, 0x1

    const/16 v5, 0x2f

    if-ne v14, v5, :cond_40

    const/16 v5, 0x13

    goto/16 :goto_28

    :cond_40
    const/16 v5, 0x3f

    if-ne v14, v5, :cond_41

    const/16 v5, 0x18

    :goto_30
    move v6, v4

    const/16 v8, 0x20

    move v4, v3

    goto/16 :goto_43

    :cond_41
    const/16 v5, 0x21

    if-ne v14, v5, :cond_42

    const/16 v5, 0x14

    goto :goto_30

    :cond_42
    add-int/lit8 v5, v3, -0x1

    move v6, v4

    move v4, v5

    const/4 v5, 0x3

    goto/16 :goto_0

    :pswitch_f
    move v4, v6

    const/16 v19, 0x3c

    add-int/lit8 v5, v3, -0x1

    const/16 v6, 0x11

    move v6, v4

    move v4, v5

    const/16 v5, 0x11

    goto/16 :goto_0

    :pswitch_10
    move v7, v6

    move v6, v4

    move v4, v7

    const/16 v7, 0x20

    const/16 v19, 0x3c

    const/16 v21, 0x1

    if-eq v14, v7, :cond_43

    const/16 v7, 0x9

    if-ne v14, v7, :cond_44

    :cond_43
    :goto_31
    const/4 v7, 0x0

    const/16 v8, 0x20

    goto/16 :goto_36

    :cond_44
    const/16 v7, 0xa

    if-eq v14, v7, :cond_45

    const/16 v7, 0xd

    if-eq v14, v7, :cond_45

    const/16 v7, 0x85

    if-eq v14, v7, :cond_45

    const/16 v7, 0x2028

    if-ne v14, v7, :cond_46

    :cond_45
    const/4 v7, 0x1

    goto :goto_32

    :cond_46
    add-int/lit8 v5, v5, -0x2

    :cond_47
    move/from16 v23, v6

    move v6, v4

    move/from16 v4, v23

    goto/16 :goto_0

    .line 372
    :goto_32
    invoke-virtual {v0, v7, v3}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    goto :goto_31

    :pswitch_11
    move v7, v6

    move v6, v4

    move v4, v7

    const/16 v7, 0x27

    const/16 v19, 0x3c

    if-eq v14, v7, :cond_4a

    const/16 v7, 0x22

    if-ne v14, v7, :cond_48

    goto :goto_34

    :cond_48
    const/16 v7, 0x20

    if-eq v14, v7, :cond_43

    const/16 v7, 0x9

    if-eq v14, v7, :cond_43

    const/16 v7, 0xd

    if-eq v14, v7, :cond_43

    const/16 v7, 0xa

    if-eq v14, v7, :cond_43

    const/16 v7, 0x85

    if-eq v14, v7, :cond_43

    const/16 v7, 0x2028

    if-ne v14, v7, :cond_49

    goto :goto_31

    .line 920
    :cond_49
    const-string v13, "missing or unquoted attribute value"

    :goto_33
    move v5, v6

    move v6, v4

    move v4, v5

    goto/16 :goto_a

    :cond_4a
    :goto_34
    const/16 v5, 0xc

    move v5, v6

    move v6, v4

    move v4, v5

    move v10, v14

    const/4 v5, 0x1

    const/16 v8, 0x20

    const/16 v12, 0xc

    goto/16 :goto_43

    :pswitch_12
    move/from16 v19, v6

    move v6, v4

    move/from16 v4, v19

    const/16 v19, 0x3c

    const/16 v5, 0x2f

    const/16 v12, 0xe

    if-ne v14, v5, :cond_4b

    .line 875
    iput v3, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 876
    invoke-virtual {v1}, Lgnu/xml/XMLFilter;->emitEndAttributes()V

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 877
    invoke-virtual {v1, v5, v7, v7}, Lgnu/xml/XMLFilter;->emitEndElement([CII)V

    const/16 v5, 0x1b

    move v8, v6

    move v6, v4

    move v4, v8

    :goto_35
    const/16 v8, 0x20

    const/16 v10, 0x3c

    goto/16 :goto_43

    :cond_4b
    const/16 v5, 0x3e

    const/4 v7, 0x0

    if-ne v14, v5, :cond_4c

    .line 883
    iput v3, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 884
    invoke-virtual {v1}, Lgnu/xml/XMLFilter;->emitEndAttributes()V

    move v5, v6

    move v6, v4

    move v4, v5

    const/4 v5, 0x1

    goto :goto_35

    :cond_4c
    add-int/lit8 v5, v3, -0x1

    move v6, v4

    move v4, v5

    const/16 v5, 0x9

    const/16 v10, 0x3c

    goto/16 :goto_0

    :pswitch_13
    move v7, v6

    move v6, v4

    move v4, v7

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/16 v19, 0x3c

    if-eq v14, v8, :cond_4f

    const/16 v9, 0x9

    if-eq v14, v9, :cond_4f

    const/16 v9, 0xd

    if-eq v14, v9, :cond_4f

    const/16 v9, 0xa

    if-eq v14, v9, :cond_4f

    const/16 v9, 0x85

    if-eq v14, v9, :cond_4f

    const/16 v9, 0x2028

    if-ne v14, v9, :cond_4d

    goto :goto_36

    :cond_4d
    sub-int v5, v3, v4

    .line 895
    iput v5, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 896
    invoke-virtual {v1, v2, v6, v4}, Lgnu/xml/XMLFilter;->emitStartAttribute([CII)V

    const/16 v5, 0x3d

    if-ne v14, v5, :cond_4e

    const/16 v5, 0xb

    move v6, v4

    move v4, v11

    goto/16 :goto_43

    .line 903
    :cond_4e
    invoke-virtual {v1}, Lgnu/xml/XMLFilter;->emitEndAttributes()V

    .line 906
    const-string v13, "missing or misplaced \'=\' after attribute name"

    move v6, v4

    move v4, v11

    goto/16 :goto_a

    :cond_4f
    :goto_36
    move/from16 v23, v6

    move v6, v4

    move/from16 v4, v23

    goto/16 :goto_43

    :pswitch_14
    move v7, v6

    move v6, v4

    move v4, v7

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/16 v19, 0x3c

    .line 488
    iput v3, v0, Lgnu/text/LineBufferedReader;->pos:I

    const/16 v5, 0x3b

    if-eq v14, v5, :cond_50

    const/16 v5, 0x77

    .line 490
    const-string v9, "missing \';\'"

    invoke-virtual {v1, v5, v9}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 491
    :cond_50
    invoke-virtual {v1, v2, v6, v4}, Lgnu/xml/XMLFilter;->emitEntityReference([CII)V

    move v6, v4

    move v4, v11

    const/4 v5, 0x1

    goto/16 :goto_43

    :pswitch_15
    move v7, v6

    move v6, v4

    move v4, v7

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/16 v19, 0x3c

    .line 929
    iput v3, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 930
    invoke-virtual {v1, v2, v6, v4}, Lgnu/xml/XMLFilter;->emitEndElement([CII)V

    const/16 v5, 0x1d

    :goto_37
    move v6, v4

    move v4, v11

    goto/16 :goto_0

    :pswitch_16
    move v6, v4

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/16 v19, 0x3c

    add-int/lit8 v4, v6, 0x1

    :goto_38
    const/16 v9, 0x61

    if-lt v14, v9, :cond_52

    const/16 v9, 0x7a

    if-le v14, v9, :cond_51

    goto :goto_39

    :cond_51
    const/4 v7, 0x4

    const/16 v9, 0x2d

    goto/16 :goto_3c

    :cond_52
    :goto_39
    const/16 v9, 0x41

    if-lt v14, v9, :cond_53

    const/16 v9, 0x5a

    if-le v14, v9, :cond_51

    :cond_53
    const/16 v9, 0x5f

    if-eq v14, v9, :cond_51

    const/16 v9, 0x3a

    if-eq v14, v9, :cond_51

    const/16 v9, 0xc0

    if-lt v14, v9, :cond_58

    const/16 v9, 0x2ff

    if-le v14, v9, :cond_51

    const/16 v9, 0x370

    if-lt v14, v9, :cond_58

    const/16 v9, 0x1fff

    if-gt v14, v9, :cond_54

    const/16 v9, 0x37e

    if-ne v14, v9, :cond_51

    :cond_54
    const/16 v9, 0x200c

    if-lt v14, v9, :cond_58

    const/16 v9, 0x200d

    if-le v14, v9, :cond_51

    const/16 v9, 0x2070

    if-lt v14, v9, :cond_55

    const/16 v9, 0x218f

    if-le v14, v9, :cond_51

    :cond_55
    const/16 v9, 0x2c00

    if-lt v14, v9, :cond_56

    const/16 v9, 0x2fef

    if-le v14, v9, :cond_51

    :cond_56
    const/16 v9, 0x3001

    if-lt v14, v9, :cond_57

    const v9, 0xd7ff

    if-le v14, v9, :cond_51

    :cond_57
    const v9, 0xf900

    if-lt v14, v9, :cond_58

    const v9, 0xfffd

    if-le v14, v9, :cond_51

    :cond_58
    if-le v3, v4, :cond_59

    const/16 v9, 0x30

    if-lt v14, v9, :cond_59

    const/16 v9, 0x39

    if-le v14, v9, :cond_51

    :cond_59
    const/16 v9, 0x2e

    if-eq v14, v9, :cond_51

    const/16 v9, 0x2d

    if-eq v14, v9, :cond_5a

    const/16 v7, 0xb7

    if-eq v14, v7, :cond_5a

    const/16 v7, 0x300

    if-le v14, v7, :cond_5b

    const/16 v7, 0x36f

    if-le v14, v7, :cond_5a

    const/16 v7, 0x203f

    if-lt v14, v7, :cond_5b

    const/16 v7, 0x2040

    if-gt v14, v7, :cond_5b

    :cond_5a
    const/4 v7, 0x4

    goto :goto_3c

    :cond_5b
    add-int/lit8 v5, v5, -0x1

    sub-int v4, v3, v4

    if-nez v4, :cond_47

    const/16 v7, 0x8

    if-ne v5, v7, :cond_5c

    .line 426
    const-string v5, "missing or invalid attribute name"

    :goto_3a
    move-object v13, v5

    goto/16 :goto_33

    :cond_5c
    const/4 v7, 0x2

    if-eq v5, v7, :cond_5e

    const/4 v7, 0x4

    if-ne v5, v7, :cond_5d

    goto :goto_3b

    .line 431
    :cond_5d
    const-string v5, "missing or invalid name"

    goto :goto_3a

    .line 429
    :cond_5e
    :goto_3b
    const-string v5, "missing or invalid element name"

    goto :goto_3a

    :goto_3c
    if-ge v3, v11, :cond_4f

    add-int/lit8 v14, v3, 0x1

    .line 437
    aget-char v3, v2, v3

    move v7, v14

    move v14, v3

    move v3, v7

    const/4 v7, 0x0

    goto/16 :goto_38

    :pswitch_17
    move v8, v6

    move v6, v4

    move v4, v8

    const/16 v8, 0x20

    const/16 v19, 0x3c

    sub-int v5, v3, v4

    .line 519
    iput v5, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 520
    invoke-virtual {v1, v2, v6, v4}, Lgnu/xml/XMLFilter;->emitStartElement([CII)V

    const/16 v5, 0xc

    goto/16 :goto_37

    :pswitch_18
    const/16 v8, 0x20

    const/16 v19, 0x3c

    add-int/lit8 v4, v3, -0x1

    move v6, v4

    move v4, v3

    :goto_3d
    if-ne v14, v10, :cond_5f

    move v5, v12

    goto/16 :goto_42

    :cond_5f
    const/16 v7, 0x26

    if-ne v14, v7, :cond_60

    const/16 v5, 0x19

    goto/16 :goto_42

    :cond_60
    const/16 v7, 0xd

    if-ne v14, v7, :cond_65

    sub-int v4, v3, v4

    .line 279
    iput v3, v0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v4, :cond_61

    .line 281
    invoke-virtual {v1, v2, v6, v4}, Lgnu/xml/XMLFilter;->textFromParser([CII)V

    :cond_61
    if-ge v3, v11, :cond_64

    .line 284
    aget-char v14, v2, v3

    const/16 v7, 0xa

    if-ne v14, v7, :cond_62

    add-int/lit8 v4, v3, 0x1

    move v6, v4

    :goto_3e
    const/4 v7, 0x1

    goto :goto_3f

    .line 292
    :cond_62
    invoke-virtual {v1}, Lgnu/xml/XMLFilter;->linefeedFromParser()V

    const/16 v7, 0x85

    if-ne v14, v7, :cond_63

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v6, v3, 0x2

    goto :goto_3e

    .line 306
    :goto_3f
    invoke-virtual {v0, v7, v4}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    move v9, v6

    move v6, v3

    move v3, v4

    move v4, v9

    const/16 v9, 0xa

    goto :goto_41

    :cond_63
    const/4 v7, 0x1

    .line 300
    invoke-virtual {v0, v7, v3}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    add-int/lit8 v4, v3, 0x1

    move v6, v3

    move v3, v4

    goto :goto_3d

    .line 310
    :cond_64
    invoke-virtual {v1}, Lgnu/xml/XMLFilter;->linefeedFromParser()V

    const/16 v5, 0x1c

    goto/16 :goto_36

    :cond_65
    const/16 v7, 0x85

    if-eq v14, v7, :cond_66

    const/16 v9, 0x2028

    if-ne v14, v9, :cond_67

    :cond_66
    const/16 v9, 0xa

    goto :goto_40

    :cond_67
    const/16 v9, 0xa

    if-ne v14, v9, :cond_69

    const/4 v7, 0x1

    .line 328
    invoke-virtual {v0, v7, v3}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    goto :goto_41

    :goto_40
    sub-int v4, v3, v4

    add-int/lit8 v7, v3, -0x1

    .line 318
    iput v7, v0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v4, :cond_68

    .line 320
    invoke-virtual {v1, v2, v6, v4}, Lgnu/xml/XMLFilter;->textFromParser([CII)V

    .line 321
    :cond_68
    invoke-virtual {v1}, Lgnu/xml/XMLFilter;->linefeedFromParser()V

    const/4 v7, 0x1

    .line 322
    invoke-virtual {v0, v7, v3}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    add-int/lit8 v4, v3, 0x1

    move v6, v3

    :cond_69
    :goto_41
    if-ne v3, v11, :cond_6b

    add-int/lit8 v4, v4, -0x1

    :goto_42
    sub-int v4, v3, v4

    if-lez v4, :cond_6a

    .line 340
    iput v3, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 341
    invoke-virtual {v1, v2, v6, v4}, Lgnu/xml/XMLFilter;->textFromParser([CII)V

    .line 343
    :cond_6a
    array-length v6, v2

    goto/16 :goto_36

    :cond_6b
    add-int/lit8 v7, v3, 0x1

    .line 335
    aget-char v14, v2, v3

    move v3, v7

    goto/16 :goto_3d

    :pswitch_19
    move v8, v6

    move v6, v4

    move v4, v8

    const/16 v8, 0x20

    const/16 v19, 0x3c

    const/16 v5, 0x1f

    goto/16 :goto_36

    :goto_43
    if-ge v3, v11, :cond_6c

    add-int/lit8 v7, v3, 0x1

    .line 949
    aget-char v14, v2, v3

    :goto_44
    move v3, v7

    goto/16 :goto_0

    :cond_6c
    sub-int v7, v3, v4

    if-lez v7, :cond_6d

    .line 957
    :try_start_0
    iput v4, v0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v9, v7, 0x1

    .line 958
    invoke-virtual {v0, v9}, Lgnu/text/LineBufferedReader;->mark(I)V

    .line 960
    :cond_6d
    iput v3, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 961
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v9

    if-gez v9, :cond_70

    const/4 v9, 0x1

    if-eq v5, v9, :cond_6f

    const/16 v7, 0x1c

    if-ne v5, v7, :cond_6e

    goto :goto_45

    :cond_6e
    const/16 v5, 0x25

    goto/16 :goto_0

    :cond_6f
    :goto_45
    return-void

    :cond_70
    if-lez v7, :cond_71

    .line 971
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->reset()V

    .line 972
    invoke-virtual {v0, v7}, Lgnu/text/LineBufferedReader;->skip(I)I

    goto :goto_46

    .line 975
    :cond_71
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->unread_quick()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    :goto_46
    iget v2, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 982
    iget-object v3, v0, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 984
    iget v11, v0, Lgnu/text/LineBufferedReader;->limit:I

    if-lez v7, :cond_72

    sub-int v4, v2, v7

    goto :goto_47

    :cond_72
    move v4, v11

    :goto_47
    add-int/lit8 v7, v2, 0x1

    .line 986
    aget-char v14, v3, v2

    move-object v2, v3

    goto :goto_44

    :catch_0
    move-exception v0

    .line 979
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_14
        :pswitch_16
        :pswitch_13
        :pswitch_16
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_10
        :pswitch_d
        :pswitch_16
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_10
        :pswitch_16
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_10
        :pswitch_a
        :pswitch_5
        :pswitch_10
        :pswitch_16
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-static {p0}, Lgnu/xml/XMLParser;->XMLStreamReader(Ljava/io/InputStream;)Lgnu/text/LineInputStreamReader;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p0, p1}, Lgnu/text/LineBufferedReader;->setName(Ljava/lang/Object;)V

    .line 136
    :cond_0
    invoke-static {p0, p2, p3}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V

    .line 137
    invoke-virtual {p0}, Lgnu/text/LineInputStreamReader;->close()V

    return-void
.end method

.method public static parse(Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-static {p0}, Lgnu/text/Path;->openInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lgnu/xml/XMLParser;->parse(Ljava/io/InputStream;Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V

    return-void
.end method
