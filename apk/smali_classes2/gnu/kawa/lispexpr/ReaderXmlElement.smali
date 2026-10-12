.class public Lgnu/kawa/lispexpr/ReaderXmlElement;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "SourceFile"


# static fields
.field static final DEFAULT_ELEMENT_NAMESPACE:Ljava/lang/String; = "[default-element-namespace]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    return-void
.end method

.method public static namedEntity(Lgnu/kawa/lispexpr/LispReader;Ljava/lang/String;)V
    .locals 2

    .line 543
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 545
    const-string v0, "lt"

    if-ne p1, v0, :cond_0

    const/16 p1, 0x3c

    goto :goto_0

    .line 547
    :cond_0
    const-string v0, "gt"

    if-ne p1, v0, :cond_1

    const/16 p1, 0x3e

    goto :goto_0

    .line 549
    :cond_1
    const-string v0, "amp"

    if-ne p1, v0, :cond_2

    const/16 p1, 0x26

    goto :goto_0

    .line 551
    :cond_2
    const-string v0, "quot"

    if-ne p1, v0, :cond_3

    const/16 p1, 0x22

    goto :goto_0

    .line 553
    :cond_3
    const-string v0, "apos"

    if-ne p1, v0, :cond_4

    const/16 p1, 0x27

    goto :goto_0

    .line 556
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown enity reference: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    const/16 p1, 0x3f

    .line 557
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    return-void
.end method

.method public static quote(Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 2

    .line 24
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "quote"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 25
    invoke-static {v0, p0}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static readCharRef(Lgnu/kawa/lispexpr/LispReader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 469
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    .line 473
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    const/16 v1, 0x10

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ltz v0, :cond_3

    int-to-char v3, v0

    .line 481
    invoke-static {v3, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-gez v3, :cond_1

    goto :goto_2

    :cond_1
    const/high16 v4, 0x8000000

    if-lt v2, v4, :cond_2

    goto :goto_2

    :cond_2
    mul-int v2, v2, v1

    add-int/2addr v2, v3

    .line 488
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    goto :goto_1

    :cond_3
    :goto_2
    const/16 v1, 0x3b

    if-eq v0, v1, :cond_4

    .line 492
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->unread(I)V

    .line 493
    const-string v0, "invalid character reference"

    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    return-void

    :cond_4
    if-lez v2, :cond_5

    const v0, 0xd7ff

    if-le v2, v0, :cond_7

    :cond_5
    const v0, 0xe000

    if-lt v2, v0, :cond_6

    const v0, 0xfffd

    if-le v2, v0, :cond_7

    :cond_6
    const/high16 v0, 0x10000

    if-lt v2, v0, :cond_8

    const v0, 0x10ffff

    if-gt v2, v0, :cond_8

    .line 500
    :cond_7
    invoke-virtual {p0, v2}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    return-void

    .line 503
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid character value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    return-void
.end method

.method public static readContent(Lgnu/kawa/lispexpr/LispReader;CLgnu/lists/Pair;)Lgnu/lists/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 370
    iput v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    const/4 v1, 0x0

    .line 376
    :goto_0
    invoke-virtual {p0}, Lgnu/text/Lexer;->getLineNumber()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 377
    invoke-virtual {p0}, Lgnu/text/Lexer;->getColumnNumber()I

    move-result v4

    .line 378
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v5

    const/4 v6, 0x0

    if-gez v5, :cond_1

    .line 381
    const-string v3, "unexpected end-of-file"

    invoke-virtual {p0, v3}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 382
    sget-object v3, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    move-object v5, v3

    move v3, v1

    :cond_0
    move-object v1, v6

    goto/16 :goto_7

    :cond_1
    const/16 v7, 0x3c

    if-ne v5, p1, :cond_6

    if-ne p1, v7, :cond_4

    .line 388
    iget v1, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    if-lez v1, :cond_2

    .line 390
    invoke-virtual {p0}, Lgnu/text/Lexer;->tokenBufferString()Ljava/lang/String;

    move-result-object v1

    .line 391
    iput v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    goto :goto_1

    :cond_2
    move-object v1, v6

    .line 393
    :goto_1
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v5

    const/16 v7, 0x2f

    if-ne v5, v7, :cond_3

    .line 395
    sget-object v3, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    goto :goto_2

    .line 397
    :cond_3
    invoke-static {p0, v5, v3}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readXMLConstructor(Lgnu/kawa/lispexpr/LispReader;IZ)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 399
    :cond_4
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->checkNext(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 401
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    move-object v1, v6

    move-object v3, v1

    goto :goto_2

    .line 404
    :cond_5
    sget-object v1, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    move-object v3, v1

    move-object v1, v6

    :goto_2
    move-object v5, v3

    const/4 v3, 0x0

    goto :goto_7

    :cond_6
    const/16 v8, 0x26

    if-ne v5, v8, :cond_c

    .line 409
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v5

    const/16 v7, 0x23

    if-ne v5, v7, :cond_7

    .line 411
    invoke-static {p0}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readCharRef(Lgnu/kawa/lispexpr/LispReader;)V

    goto :goto_6

    :cond_7
    const/16 v7, 0x28

    if-eq v5, v7, :cond_9

    const/16 v7, 0x7b

    if-ne v5, v7, :cond_8

    goto :goto_3

    .line 421
    :cond_8
    invoke-static {p0, v5}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readEntity(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v1, :cond_0

    .line 422
    iget v1, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    if-nez v1, :cond_0

    .line 423
    const-string v1, ""

    goto :goto_7

    .line 414
    :cond_9
    :goto_3
    iget v7, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    if-gtz v7, :cond_b

    if-eqz v1, :cond_a

    goto :goto_4

    :cond_a
    move-object v1, v6

    goto :goto_5

    .line 415
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lgnu/text/Lexer;->tokenBufferString()Ljava/lang/String;

    move-result-object v1

    .line 416
    :goto_5
    iput v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 417
    invoke-static {p0, v5}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readEscapedExpression(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_7

    :cond_c
    if-eq p1, v7, :cond_e

    const/16 v3, 0x9

    if-eq v5, v3, :cond_d

    const/16 v3, 0xa

    if-eq v5, v3, :cond_d

    const/16 v3, 0xd

    if-ne v5, v3, :cond_e

    :cond_d
    const/16 v5, 0x20

    :cond_e
    if-ne v5, v7, :cond_f

    const/16 v3, 0x65

    .line 433
    const-string v7, "\'<\' must be quoted in a direct attribute value"

    invoke-virtual {p0, v3, v7}, Lgnu/text/Lexer;->error(CLjava/lang/String;)V

    :cond_f
    int-to-char v3, v5

    .line 434
    invoke-virtual {p0, v3}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    move v3, v1

    :goto_6
    move-object v1, v6

    move-object v5, v1

    :goto_7
    if-eqz v5, :cond_10

    .line 436
    iget v7, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    if-lez v7, :cond_10

    .line 438
    invoke-virtual {p0}, Lgnu/text/Lexer;->tokenBufferString()Ljava/lang/String;

    move-result-object v1

    .line 439
    iput v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    :cond_10
    if-eqz v1, :cond_11

    .line 445
    sget-object v7, Lgnu/kawa/xml/MakeText;->makeText:Lgnu/kawa/xml/MakeText;

    invoke-static {v7, v1}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    .line 446
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v7

    const/4 v8, -0x1

    invoke-static {v1, v7, v6, v8, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v1

    .line 448
    invoke-virtual {p2, v1}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    move-object p2, v1

    .line 451
    :cond_11
    sget-object v1, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    if-ne v5, v1, :cond_12

    return-object p2

    :cond_12
    if-eqz v5, :cond_13

    .line 455
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1, v6, v2, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v1

    .line 457
    invoke-virtual {p2, v1}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    move-object p2, v1

    :cond_13
    move v1, v3

    goto/16 :goto_0
.end method

.method public static readElementConstructor(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 238
    invoke-virtual {v0}, Lgnu/text/Lexer;->getLineNumber()I

    move-result v1

    const/4 v2, 0x1

    add-int/lit8 v6, v1, 0x1

    .line 239
    invoke-virtual {v0}, Lgnu/text/Lexer;->getColumnNumber()I

    move-result v1

    const/4 v3, 0x2

    add-int/lit8 v7, v1, -0x2

    move/from16 v1, p1

    .line 240
    invoke-static {v0, v1, v2}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readQNameExpression(Lgnu/kawa/lispexpr/LispReader;IZ)Ljava/lang/Object;

    move-result-object v1

    .line 244
    iget v4, v0, Lgnu/text/Lexer;->tokenBufferLength:I

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lgnu/text/Lexer;->tokenBufferString()Ljava/lang/String;

    move-result-object v4

    .line 246
    :goto_0
    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {v0}, Lgnu/text/Lexer;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v8, v9, v6, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v9

    move-object v1, v9

    .line 255
    :goto_1
    invoke-virtual {v0}, Lgnu/text/Lexer;->readUnicodeChar()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ltz v10, :cond_1

    .line 256
    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 258
    invoke-virtual {v0}, Lgnu/text/Lexer;->read()I

    move-result v10

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/16 v13, 0x3a

    const/16 v14, 0x2f

    const/16 v15, 0x3e

    if-ltz v10, :cond_2

    if-eq v10, v15, :cond_2

    if-ne v10, v14, :cond_3

    :cond_2
    const/16 v16, 0x1

    goto/16 :goto_5

    :cond_3
    if-nez v12, :cond_4

    .line 264
    const-string v12, "missing space before attribute"

    invoke-virtual {v0, v12}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 265
    :cond_4
    invoke-static {v0, v10, v11}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readQNameExpression(Lgnu/kawa/lispexpr/LispReader;IZ)Ljava/lang/Object;

    move-result-object v10

    .line 266
    invoke-virtual {v0}, Lgnu/text/Lexer;->getLineNumber()I

    .line 267
    invoke-virtual {v0}, Lgnu/text/Lexer;->getColumnNumber()I

    iget v12, v0, Lgnu/text/Lexer;->tokenBufferLength:I

    const/4 v14, 0x5

    if-lt v12, v14, :cond_6

    .line 269
    iget-object v15, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    aget-char v11, v15, v11

    const/16 v16, 0x1

    const/16 v2, 0x78

    if-ne v11, v2, :cond_7

    aget-char v2, v15, v16

    const/16 v11, 0x6d

    if-ne v2, v11, :cond_7

    aget-char v2, v15, v3

    const/16 v11, 0x6c

    if-ne v2, v11, :cond_7

    const/4 v2, 0x3

    aget-char v2, v15, v2

    const/16 v11, 0x6e

    if-ne v2, v11, :cond_7

    const/4 v2, 0x4

    aget-char v2, v15, v2

    const/16 v11, 0x73

    if-ne v2, v11, :cond_7

    if-ne v12, v14, :cond_5

    .line 277
    const-string v2, ""

    goto :goto_3

    .line 278
    :cond_5
    aget-char v2, v15, v14

    if-ne v2, v13, :cond_7

    .line 279
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v12, v12, -0x6

    const/4 v11, 0x6

    invoke-direct {v2, v15, v11, v12}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_6
    const/16 v16, 0x1

    :cond_7
    move-object v2, v5

    :goto_3
    const/16 v11, 0x20

    .line 282
    invoke-static {v0, v11}, Lgnu/kawa/lispexpr/ReaderXmlElement;->skipSpace(Lgnu/kawa/lispexpr/LispReader;I)I

    move-result v12

    const/16 v13, 0x3d

    if-eq v12, v13, :cond_8

    .line 285
    const-string v12, "missing \'=\' after attribute"

    invoke-virtual {v0, v12}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 287
    :cond_8
    invoke-static {v0, v11}, Lgnu/kawa/lispexpr/ReaderXmlElement;->skipSpace(Lgnu/kawa/lispexpr/LispReader;I)I

    move-result v11

    .line 288
    sget-object v12, Lgnu/kawa/xml/MakeAttribute;->makeAttribute:Lgnu/kawa/xml/MakeAttribute;

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {v0}, Lgnu/text/Lexer;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14, v6, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v12

    .line 292
    invoke-virtual {v0}, Lgnu/text/Lexer;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v13, v14, v6, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v10

    .line 295
    invoke-virtual {v0, v12, v10}, Lgnu/kawa/lispexpr/LispReader;->setCdr(Ljava/lang/Object;Ljava/lang/Object;)V

    int-to-char v11, v11

    .line 297
    invoke-static {v0, v11, v10}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readContent(Lgnu/kawa/lispexpr/LispReader;CLgnu/lists/Pair;)Lgnu/lists/Pair;

    if-eqz v2, :cond_9

    .line 301
    new-instance v11, Lgnu/lists/PairWithPosition;

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v2, v12}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    invoke-direct {v11, v10, v2, v8}, Lgnu/lists/PairWithPosition;-><init>(Lgnu/text/SourceLocator;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v11

    goto :goto_4

    .line 307
    :cond_9
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v2

    const/4 v10, -0x1

    invoke-static {v12, v2, v5, v10, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v2

    .line 309
    invoke-virtual {v1, v2}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_1

    :goto_5
    if-ne v10, v14, :cond_b

    .line 317
    invoke-virtual {v0}, Lgnu/text/Lexer;->read()I

    move-result v10

    if-ne v10, v15, :cond_a

    const/4 v2, 0x1

    goto :goto_6

    .line 321
    :cond_a
    invoke-virtual {v0, v10}, Lgnu/text/Lexer;->unread(I)V

    :cond_b
    const/4 v2, 0x0

    :goto_6
    if-nez v2, :cond_12

    if-eq v10, v15, :cond_c

    .line 327
    const-string v1, "missing \'>\' after start element"

    invoke-virtual {v0, v1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 328
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_c
    const/16 v2, 0x3c

    .line 330
    invoke-static {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readContent(Lgnu/kawa/lispexpr/LispReader;CLgnu/lists/Pair;)Lgnu/lists/Pair;

    .line 331
    invoke-virtual {v0}, Lgnu/text/Lexer;->readUnicodeChar()I

    move-result v1

    .line 332
    invoke-static {v1}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 334
    iput v11, v0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 337
    :goto_7
    invoke-virtual {v0, v1}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 338
    invoke-virtual {v0}, Lgnu/text/Lexer;->readUnicodeChar()I

    move-result v10

    .line 339
    invoke-static {v10}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v1

    if-nez v1, :cond_10

    if-eq v10, v13, :cond_10

    .line 342
    invoke-virtual {v0}, Lgnu/text/Lexer;->tokenBufferString()Ljava/lang/String;

    move-result-object v1

    if-eqz v4, :cond_d

    .line 343
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 344
    :cond_d
    invoke-virtual {v0}, Lgnu/text/Lexer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lgnu/text/Lexer;->getLineNumber()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Lgnu/text/Lexer;->getColumnNumber()I

    move-result v5

    iget v12, v0, Lgnu/text/Lexer;->tokenBufferLength:I

    sub-int/2addr v5, v12

    const-string v12, ">\'"

    if-nez v4, :cond_e

    const-string v4, "computed start tag closed by \'</"

    .line 0
    invoke-static {v4, v1, v12}, L_COROUTINE/a;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 344
    :cond_e
    const-string v13, "\'<"

    const-string v14, ">\' closed by \'</"

    .line 0
    invoke-static {v13, v4, v14, v1, v12}, L_COROUTINE/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_8
    const/16 v4, 0x65

    move v4, v5

    move-object v5, v1

    const/16 v1, 0x65

    .line 344
    invoke-virtual/range {v0 .. v5}, Lgnu/text/Lexer;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 350
    :cond_f
    iput v11, v0, Lgnu/text/Lexer;->tokenBufferLength:I

    move v1, v10

    goto :goto_9

    :cond_10
    move v1, v10

    goto :goto_7

    .line 352
    :cond_11
    :goto_9
    invoke-static {v0, v1}, Lgnu/kawa/lispexpr/ReaderXmlElement;->skipSpace(Lgnu/kawa/lispexpr/LispReader;I)I

    move-result v1

    if-eq v1, v15, :cond_12

    .line 354
    const-string v1, "missing \'>\' after end element"

    invoke-virtual {v0, v1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 356
    :cond_12
    invoke-static {v8}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v1

    .line 357
    sget-object v2, Lgnu/kawa/lispexpr/MakeXmlElement;->makeXml:Lgnu/kawa/lispexpr/MakeXmlElement;

    invoke-static {v1, v9}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    invoke-virtual {v0}, Lgnu/text/Lexer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0, v6, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v0

    return-object v0
.end method

.method public static readEntity(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 515
    iget v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    :goto_0
    if-ltz p1, :cond_1

    int-to-char v1, p1

    .line 519
    invoke-static {v1}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 521
    :cond_0
    invoke-virtual {p0, v1}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 522
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result p1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v1, 0x3b

    if-eq p1, v1, :cond_2

    .line 526
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->unread(I)V

    .line 527
    const-string p1, "invalid entity reference"

    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 538
    const-string p0, "?"

    return-object p0

    .line 531
    :cond_2
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v2, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    sub-int/2addr v2, v0

    invoke-direct {p1, v1, v0, v2}, Ljava/lang/String;-><init>([CII)V

    .line 533
    iput v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 534
    invoke-static {p0, p1}, Lgnu/kawa/lispexpr/ReaderXmlElement;->namedEntity(Lgnu/kawa/lispexpr/LispReader;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static readEscapedExpression(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/16 v0, 0x28

    if-ne p1, v0, :cond_0

    .line 93
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->unread(I)V

    .line 94
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object p1

    const/16 v0, 0x7b

    .line 99
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->pushNesting(C)C

    move-result v0

    .line 100
    invoke-virtual {p1}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v1

    .line 101
    invoke-virtual {p1}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v2

    .line 104
    :try_start_0
    new-instance v3, Lgnu/expr/PrimProcedure;

    sget-object v4, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string v5, "values"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    invoke-direct {v3, v4}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    .line 106
    invoke-virtual {p0, v3, v1, v2}, Lgnu/kawa/lispexpr/LispReader;->makePair(Ljava/lang/Object;II)Lgnu/lists/Pair;

    move-result-object v3

    .line 108
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v4

    move-object v5, v3

    .line 111
    :goto_0
    invoke-virtual {p1}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v7

    .line 112
    invoke-virtual {p1}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v8

    .line 113
    invoke-virtual {p1}, Lgnu/text/LineBufferedReader;->read()I

    move-result v9

    const/16 v10, 0x7d

    if-ne v9, v10, :cond_2

    const/4 p1, 0x0

    .line 129
    iput p1, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 131
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    if-ne v5, p1, :cond_1

    .line 132
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->popNesting(C)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->popNesting(C)V

    return-object v3

    :cond_2
    if-gez v9, :cond_3

    .line 117
    :try_start_1
    const-string v10, "unexpected EOF in list starting here"

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {p0, v10, v11, v2}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;II)V

    .line 119
    :cond_3
    invoke-virtual {v4, v9}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v10

    .line 120
    invoke-virtual {p0, v9, v10, v4}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v9

    .line 121
    sget-object v10, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v9, v10, :cond_4

    goto :goto_0

    .line 123
    :cond_4
    invoke-virtual {p0, v9, v4, v7, v8}, Lgnu/kawa/lispexpr/LispReader;->handlePostfix(Ljava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;II)Ljava/lang/Object;

    move-result-object v9

    .line 125
    invoke-virtual {p0, v9, v7, v8}, Lgnu/kawa/lispexpr/LispReader;->makePair(Ljava/lang/Object;II)Lgnu/lists/Pair;

    move-result-object v7

    .line 126
    invoke-virtual {p0, v5, v7}, Lgnu/kawa/lispexpr/LispReader;->setCdr(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v7

    goto :goto_0

    .line 137
    :goto_1
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->popNesting(C)V

    throw p1
.end method

.method public static readQNameExpression(Lgnu/kawa/lispexpr/LispReader;IZ)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lgnu/text/Lexer;->getName()Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lgnu/text/Lexer;->getLineNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 40
    invoke-virtual {p0}, Lgnu/text/Lexer;->getColumnNumber()I

    move-result v1

    const/4 v2, 0x0

    .line 41
    iput v2, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 42
    invoke-static {p1}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, -0x1

    .line 47
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 48
    invoke-virtual {p0}, Lgnu/text/Lexer;->readUnicodeChar()I

    move-result p1

    const/16 v4, 0x3a

    if-ne p1, v4, :cond_1

    if-gez v3, :cond_1

    .line 50
    iget v3, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    goto :goto_0

    .line 51
    :cond_1
    invoke-static {p1}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->unread(I)V

    if-gez v3, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {p0}, Lgnu/text/Lexer;->tokenBufferString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgnu/mapping/Namespace;->getDefaultSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    .line 74
    invoke-static {p0}, Lgnu/kawa/lispexpr/ReaderXmlElement;->quote(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    return-object p0

    .line 59
    :cond_3
    :goto_1
    iget p1, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    sub-int/2addr p1, v3

    add-int/lit8 p1, p1, -0x1

    .line 60
    new-instance p2, Ljava/lang/String;

    iget-object v4, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    add-int/lit8 v5, v3, 0x1

    invoke-direct {p2, v4, v5, p1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    if-gez v3, :cond_4

    .line 62
    const-string p2, "[default-element-namespace]"

    goto :goto_2

    :cond_4
    new-instance p2, Ljava/lang/String;

    iget-object v4, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    invoke-direct {p2, v4, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 64
    :goto_2
    sget-object v2, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v2, p2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p2

    .line 66
    new-instance v2, Lgnu/lists/Pair;

    sget-object v3, Lgnu/kawa/lispexpr/ResolveNamespace;->resolveQName:Lgnu/kawa/lispexpr/ResolveNamespace;

    new-instance v4, Lgnu/lists/Pair;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v4, p1, v5}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lgnu/text/Lexer;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v4, p0, v0, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_5
    const/16 p2, 0x7b

    if-eq p1, p2, :cond_7

    const/16 p2, 0x28

    if-ne p1, p2, :cond_6

    goto :goto_3

    .line 83
    :cond_6
    const-string p1, "missing element name"

    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 79
    :cond_7
    :goto_3
    invoke-static {p0, p1}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readEscapedExpression(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static readXMLConstructor(Lgnu/kawa/lispexpr/LispReader;IZ)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lgnu/text/Lexer;->getLineNumber()I

    move-result p2

    add-int/lit8 v4, p2, 0x1

    .line 151
    invoke-virtual {p0}, Lgnu/text/Lexer;->getColumnNumber()I

    move-result p2

    add-int/lit8 v5, p2, -0x2

    const/16 p2, 0x21

    if-ne p1, p2, :cond_5

    .line 154
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result p1

    const/16 p2, 0x2d

    if-ne p1, p2, :cond_1

    .line 155
    invoke-virtual {p0}, Lgnu/text/Lexer;->peek()I

    move-result p1

    if-ne p1, p2, :cond_1

    .line 157
    invoke-virtual {p0}, Lgnu/text/Lexer;->skip()V

    .line 158
    const-string p1, "-->"

    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->readDelimited(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 159
    invoke-virtual {p0}, Lgnu/text/Lexer;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "unexpected end-of-file in XML comment starting here - expected \"-->\""

    const/16 v2, 0x66

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lgnu/text/Lexer;->error(CLjava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    .line 160
    :goto_0
    invoke-virtual {v1}, Lgnu/text/Lexer;->tokenBufferString()Ljava/lang/String;

    move-result-object p0

    .line 161
    sget-object p1, Lgnu/kawa/xml/CommentConstructor;->commentConstructor:Lgnu/kawa/xml/CommentConstructor;

    invoke-static {p1, p0}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    return-object p0

    :cond_1
    move-object v1, p0

    const/16 p0, 0x5b

    if-ne p1, p0, :cond_3

    .line 163
    invoke-virtual {v1}, Lgnu/text/Lexer;->read()I

    move-result p1

    const/16 p2, 0x43

    if-ne p1, p2, :cond_3

    invoke-virtual {v1}, Lgnu/text/Lexer;->read()I

    move-result p1

    const/16 p2, 0x44

    if-ne p1, p2, :cond_3

    invoke-virtual {v1}, Lgnu/text/Lexer;->read()I

    move-result p1

    const/16 p2, 0x41

    if-ne p1, p2, :cond_3

    invoke-virtual {v1}, Lgnu/text/Lexer;->read()I

    move-result p1

    const/16 v0, 0x54

    if-ne p1, v0, :cond_3

    invoke-virtual {v1}, Lgnu/text/Lexer;->read()I

    move-result p1

    if-ne p1, p2, :cond_3

    invoke-virtual {v1}, Lgnu/text/Lexer;->read()I

    move-result p1

    if-ne p1, p0, :cond_3

    .line 171
    const-string p0, "]]>"

    invoke-virtual {v1, p0}, Lgnu/text/Lexer;->readDelimited(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 172
    invoke-virtual {v1}, Lgnu/text/Lexer;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "unexpected end-of-file in CDATA starting here - expected \"]]>\""

    const/16 v2, 0x66

    invoke-virtual/range {v1 .. v6}, Lgnu/text/Lexer;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 174
    :cond_2
    invoke-virtual {v1}, Lgnu/text/Lexer;->tokenBufferString()Ljava/lang/String;

    move-result-object p0

    .line 175
    sget-object p1, Lgnu/kawa/xml/MakeCDATA;->makeCDATA:Lgnu/kawa/xml/MakeCDATA;

    invoke-static {p1, p0}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    return-object p0

    .line 179
    :cond_3
    invoke-virtual {v1}, Lgnu/text/Lexer;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "\'<!\' must be followed by \'--\' or \'[CDATA[\'"

    const/16 v2, 0x66

    invoke-virtual/range {v1 .. v6}, Lgnu/text/Lexer;->error(CLjava/lang/String;IILjava/lang/String;)V

    :goto_1
    if-ltz p1, :cond_4

    const/16 p0, 0x3e

    if-eq p1, p0, :cond_4

    const/16 p0, 0xa

    if-eq p1, p0, :cond_4

    const/16 p0, 0xd

    if-eq p1, p0, :cond_4

    .line 184
    invoke-virtual {v1}, Lgnu/text/Lexer;->read()I

    move-result p1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    return-object p0

    :cond_5
    move-object v1, p0

    const/16 p0, 0x3f

    if-ne p1, p0, :cond_b

    .line 191
    invoke-virtual {v1}, Lgnu/text/Lexer;->readUnicodeChar()I

    move-result p1

    if-ltz p1, :cond_6

    .line 192
    invoke-static {p1}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result p2

    if-nez p2, :cond_7

    .line 193
    :cond_6
    const-string p2, "missing target after \'<?\'"

    invoke-virtual {v1, p2}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 196
    :cond_7
    invoke-virtual {v1, p1}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 197
    invoke-virtual {v1}, Lgnu/text/Lexer;->readUnicodeChar()I

    move-result p1

    .line 198
    invoke-static {p1}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result p2

    if-nez p2, :cond_7

    .line 201
    invoke-virtual {v1}, Lgnu/text/Lexer;->tokenBufferString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    :goto_2
    if-ltz p1, :cond_8

    .line 203
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 206
    invoke-virtual {v1}, Lgnu/text/Lexer;->read()I

    move-result p1

    goto :goto_2

    .line 208
    :cond_8
    invoke-virtual {v1, p1}, Lgnu/text/Lexer;->unread(I)V

    .line 209
    invoke-virtual {v1, p0}, Lgnu/text/Lexer;->pushNesting(C)C

    move-result p0

    .line 212
    :try_start_0
    const-string p1, "?>"

    invoke-virtual {v1, p1}, Lgnu/text/Lexer;->readDelimited(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 213
    invoke-virtual {v1}, Lgnu/text/Lexer;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "unexpected end-of-file looking for \"?>\""

    const/16 v2, 0x66

    invoke-virtual/range {v1 .. v6}, Lgnu/text/Lexer;->error(CLjava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    .line 218
    :cond_9
    :goto_3
    invoke-virtual {v1, p0}, Lgnu/text/Lexer;->popNesting(C)V

    if-nez v0, :cond_a

    .line 220
    iget p0, v1, Lgnu/text/Lexer;->tokenBufferLength:I

    if-lez p0, :cond_a

    .line 221
    const-string p0, "target must be followed by space or \'?>\'"

    invoke-virtual {v1, p0}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 222
    :cond_a
    invoke-virtual {v1}, Lgnu/text/Lexer;->tokenBufferString()Ljava/lang/String;

    move-result-object p0

    .line 223
    sget-object p1, Lgnu/kawa/xml/MakeProcInst;->makeProcInst:Lgnu/kawa/xml/MakeProcInst;

    invoke-static {p1, p2, p0}, Lgnu/lists/LList;->list3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    return-object p0

    .line 218
    :goto_4
    invoke-virtual {v1, p0}, Lgnu/text/Lexer;->popNesting(C)V

    throw p1

    .line 226
    :cond_b
    invoke-static {v1, p1}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readElementConstructor(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static skipSpace(Lgnu/kawa/lispexpr/LispReader;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    :goto_0
    if-ltz p1, :cond_1

    .line 566
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 568
    :cond_0
    invoke-virtual {p0}, Lgnu/text/Lexer;->readUnicodeChar()I

    move-result p1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
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

    .line 18
    check-cast p1, Lgnu/kawa/lispexpr/LispReader;

    .line 19
    invoke-virtual {p1}, Lgnu/text/Lexer;->readUnicodeChar()I

    move-result p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readXMLConstructor(Lgnu/kawa/lispexpr/LispReader;IZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
