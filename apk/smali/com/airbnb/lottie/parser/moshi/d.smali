.class final Lcom/airbnb/lottie/parser/moshi/d;
.super Lcom/airbnb/lottie/parser/moshi/JsonReader;
.source "SourceFile"


# static fields
.field public static final l:Lokio/ByteString;

.field public static final m:Lokio/ByteString;

.field public static final n:Lokio/ByteString;


# instance fields
.field public final f:Lokio/BufferedSource;

.field public final g:Lokio/Buffer;

.field public h:I

.field public i:J

.field public j:I

.field public k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-string v0, "\'\\"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/d;->l:Lokio/ByteString;

    .line 31
    const-string v0, "\"\\"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/d;->m:Lokio/ByteString;

    .line 32
    const-string v0, "{}[]:, \n\t\r\u000c/\\;#="

    .line 33
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/d;->n:Lokio/ByteString;

    .line 34
    const-string v0, "\n\r"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 35
    const-string v0, "*/"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    return-void
.end method

.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    if-eqz p1, :cond_0

    .line 104
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/d;->f:Lokio/BufferedSource;

    .line 106
    invoke-interface {p1}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/d;->g:Lokio/Buffer;

    const/4 p1, 0x6

    .line 107
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a(I)V

    return-void

    .line 102
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public beginArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->d()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 117
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a(I)V

    .line 118
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d:[I

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    .line 119
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    return-void

    .line 121
    :cond_1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 122
    throw v0
.end method

.method public beginObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->d()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 147
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a(I)V

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    return-void

    .line 150
    :cond_1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 151
    throw v0
.end method

.method public final c()V
    .locals 1

    .line 967
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 840
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    .line 841
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    .line 842
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    .line 843
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->g:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    .line 844
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->f:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/Source;->close()V

    return-void
.end method

.method public final d()I
    .locals 22

    move-object/from16 v0, p0

    .line 220
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b:[I

    iget v2, v0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v4, v1, v2

    const/16 v8, 0x5d

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x3

    const/16 v12, 0x3b

    const/16 v13, 0x2c

    const/4 v14, 0x7

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x2

    .line 221
    iget-object v7, v0, Lcom/airbnb/lottie/parser/moshi/d;->g:Lokio/Buffer;

    if-ne v4, v3, :cond_0

    .line 222
    aput v6, v1, v2

    goto :goto_0

    :cond_0
    if-ne v4, v6, :cond_3

    .line 225
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/d;->g(Z)I

    move-result v1

    .line 226
    invoke-virtual {v7}, Lokio/Buffer;->readByte()B

    if-eq v1, v13, :cond_b

    if-eq v1, v12, :cond_2

    if-ne v1, v8, :cond_1

    .line 229
    iput v15, v0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    return v15

    .line 235
    :cond_1
    const-string v1, "Unterminated array"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b(Ljava/lang/String;)V

    throw v16

    .line 231
    :cond_2
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/d;->c()V

    throw v16

    :cond_3
    if-eq v4, v11, :cond_4

    if-ne v4, v5, :cond_5

    :cond_4
    const/16 v19, 0x4

    goto/16 :goto_17

    :cond_5
    if-ne v4, v15, :cond_7

    .line 279
    aput v5, v1, v2

    .line 281
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/d;->g(Z)I

    move-result v1

    .line 282
    invoke-virtual {v7}, Lokio/Buffer;->readByte()B

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_b

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_6

    .line 293
    const-string v1, "Expected \':\'"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b(Ljava/lang/String;)V

    throw v16

    .line 287
    :cond_6
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/d;->c()V

    throw v16

    :cond_7
    if-ne v4, v10, :cond_8

    .line 296
    aput v14, v1, v2

    goto :goto_0

    :cond_8
    if-ne v4, v14, :cond_a

    .line 298
    invoke-virtual {v0, v9}, Lcom/airbnb/lottie/parser/moshi/d;->g(Z)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    const/16 v1, 0x12

    .line 300
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    return v1

    .line 302
    :cond_9
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/d;->c()V

    throw v16

    :cond_a
    const/16 v1, 0x8

    if-eq v4, v1, :cond_39

    .line 308
    :cond_b
    :goto_0
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/d;->g(Z)I

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_38

    const/16 v2, 0x27

    if-eq v1, v2, :cond_37

    if-eq v1, v13, :cond_34

    if-eq v1, v12, :cond_34

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_33

    if-eq v1, v8, :cond_32

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_31

    const-wide/16 v1, 0x0

    .line 361
    invoke-virtual {v7, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result v4

    const/16 v8, 0x74

    .line 365
    iget-object v12, v0, Lcom/airbnb/lottie/parser/moshi/d;->f:Lokio/BufferedSource;

    if-eq v4, v8, :cond_11

    const/16 v8, 0x54

    if-ne v4, v8, :cond_c

    goto :goto_4

    :cond_c
    const/16 v8, 0x66

    if-eq v4, v8, :cond_10

    const/16 v8, 0x46

    if-ne v4, v8, :cond_d

    goto :goto_3

    :cond_d
    const/16 v8, 0x6e

    if-eq v4, v8, :cond_f

    const/16 v8, 0x4e

    if-ne v4, v8, :cond_e

    goto :goto_2

    :cond_e
    move-wide/from16 v17, v1

    :goto_1
    const/4 v13, 0x0

    goto :goto_8

    .line 376
    :cond_f
    :goto_2
    const-string v4, "null"

    const-string v8, "NULL"

    const/4 v13, 0x7

    goto :goto_5

    .line 372
    :cond_10
    :goto_3
    const-string v4, "false"

    const-string v8, "FALSE"

    const/4 v13, 0x6

    goto :goto_5

    .line 368
    :cond_11
    :goto_4
    const-string v4, "true"

    const-string v8, "TRUE"

    const/4 v13, 0x5

    .line 382
    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    move-wide/from16 v17, v1

    const/4 v1, 0x1

    :goto_6
    if-ge v1, v9, :cond_14

    add-int/lit8 v2, v1, 0x1

    int-to-long v14, v2

    .line 384
    invoke-interface {v12, v14, v15}, Lokio/BufferedSource;->request(J)Z

    move-result v14

    if-nez v14, :cond_12

    :goto_7
    goto :goto_1

    :cond_12
    int-to-long v14, v1

    .line 387
    invoke-virtual {v7, v14, v15}, Lokio/Buffer;->getByte(J)B

    move-result v14

    .line 388
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v14, v15, :cond_13

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v14, v1, :cond_13

    goto :goto_7

    :cond_13
    move v1, v2

    const/4 v14, 0x7

    const/4 v15, 0x4

    goto :goto_6

    :cond_14
    add-int/lit8 v1, v9, 0x1

    int-to-long v1, v1

    .line 393
    invoke-interface {v12, v1, v2}, Lokio/BufferedSource;->request(J)Z

    move-result v1

    if-eqz v1, :cond_15

    int-to-long v1, v9

    invoke-virtual {v7, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/d;->f(I)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_7

    :cond_15
    int-to-long v1, v9

    .line 398
    invoke-virtual {v7, v1, v2}, Lokio/Buffer;->skip(J)V

    .line 399
    iput v13, v0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    :goto_8
    if-eqz v13, :cond_16

    return v13

    :cond_16
    move-wide/from16 v8, v17

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v13, 0x0

    :goto_9
    add-int/lit8 v14, v2, 0x1

    int-to-long v10, v14

    .line 412
    invoke-interface {v12, v10, v11}, Lokio/BufferedSource;->request(J)Z

    move-result v10

    if-nez v10, :cond_17

    goto/16 :goto_11

    :cond_17
    int-to-long v10, v2

    .line 416
    invoke-virtual {v7, v10, v11}, Lokio/Buffer;->getByte(J)B

    move-result v10

    const/16 v11, 0x2b

    if-eq v10, v11, :cond_2e

    const/16 v11, 0x45

    if-eq v10, v11, :cond_2c

    const/16 v11, 0x65

    if-eq v10, v11, :cond_2c

    const/16 v11, 0x2d

    if-eq v10, v11, :cond_2a

    const/16 v11, 0x2e

    if-eq v10, v11, :cond_29

    const/16 v11, 0x30

    if-lt v10, v11, :cond_23

    const/16 v11, 0x39

    if-le v10, v11, :cond_18

    goto :goto_10

    :cond_18
    if-eq v1, v3, :cond_19

    if-nez v1, :cond_1a

    :cond_19
    const/4 v15, 0x6

    goto :goto_f

    :cond_1a
    if-ne v1, v6, :cond_1f

    cmp-long v2, v8, v17

    if-nez v2, :cond_1c

    :cond_1b
    const/4 v9, 0x0

    goto/16 :goto_15

    :cond_1c
    const-wide/16 v20, 0xa

    mul-long v20, v20, v8

    add-int/lit8 v10, v10, -0x30

    int-to-long v10, v10

    sub-long v20, v20, v10

    const-wide v10, -0xcccccccccccccccL

    cmp-long v2, v8, v10

    if-gtz v2, :cond_1e

    if-nez v2, :cond_1d

    cmp-long v2, v20, v8

    if-gez v2, :cond_1d

    goto :goto_a

    :cond_1d
    const/4 v2, 0x0

    goto :goto_b

    :cond_1e
    :goto_a
    const/4 v2, 0x1

    :goto_b
    and-int/2addr v4, v2

    move-wide/from16 v8, v20

    :goto_c
    const/4 v10, 0x7

    const/4 v15, 0x6

    goto/16 :goto_14

    :cond_1f
    const/4 v2, 0x3

    if-ne v1, v2, :cond_20

    const/4 v1, 0x4

    goto :goto_c

    :cond_20
    const/4 v15, 0x6

    if-eq v1, v5, :cond_22

    if-ne v1, v15, :cond_21

    goto :goto_e

    :cond_21
    :goto_d
    const/4 v10, 0x7

    goto/16 :goto_14

    :cond_22
    :goto_e
    const/4 v1, 0x7

    goto :goto_d

    :goto_f
    add-int/lit8 v10, v10, -0x30

    neg-int v1, v10

    int-to-long v8, v1

    const/4 v1, 0x2

    goto :goto_d

    .line 453
    :cond_23
    :goto_10
    invoke-virtual {v0, v10}, Lcom/airbnb/lottie/parser/moshi/d;->f(I)Z

    move-result v3

    if-nez v3, :cond_1b

    :goto_11
    if-ne v1, v6, :cond_27

    if-eqz v4, :cond_27

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v8, v3

    if-nez v5, :cond_24

    if-eqz v13, :cond_27

    :cond_24
    cmp-long v3, v8, v17

    if-nez v3, :cond_25

    if-nez v13, :cond_27

    :cond_25
    if-eqz v13, :cond_26

    goto :goto_12

    :cond_26
    neg-long v8, v8

    .line 480
    :goto_12
    iput-wide v8, v0, Lcom/airbnb/lottie/parser/moshi/d;->i:J

    int-to-long v1, v2

    .line 481
    invoke-virtual {v7, v1, v2}, Lokio/Buffer;->skip(J)V

    const/16 v9, 0x10

    .line 482
    iput v9, v0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    goto :goto_15

    :cond_27
    if-eq v1, v6, :cond_28

    const/4 v3, 0x4

    if-eq v1, v3, :cond_28

    const/4 v10, 0x7

    if-ne v1, v10, :cond_1b

    .line 485
    :cond_28
    iput v2, v0, Lcom/airbnb/lottie/parser/moshi/d;->j:I

    const/16 v9, 0x11

    .line 486
    iput v9, v0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    goto :goto_15

    :cond_29
    const/4 v10, 0x7

    const/4 v15, 0x6

    if-ne v1, v6, :cond_1b

    const/4 v1, 0x3

    goto :goto_14

    :cond_2a
    const/4 v10, 0x7

    const/4 v15, 0x6

    if-nez v1, :cond_2b

    const/4 v1, 0x1

    const/4 v13, 0x1

    goto :goto_14

    :cond_2b
    if-ne v1, v5, :cond_1b

    :goto_13
    const/4 v1, 0x6

    goto :goto_14

    :cond_2c
    const/4 v10, 0x7

    const/4 v15, 0x6

    if-eq v1, v6, :cond_2d

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1b

    :cond_2d
    const/4 v1, 0x5

    goto :goto_14

    :cond_2e
    const/4 v10, 0x7

    const/4 v15, 0x6

    if-ne v1, v5, :cond_1b

    goto :goto_13

    :goto_14
    move v2, v14

    const/4 v10, 0x6

    const/4 v11, 0x3

    goto/16 :goto_9

    :goto_15
    if-eqz v9, :cond_2f

    return v9

    :cond_2f
    move-wide/from16 v1, v17

    .line 351
    invoke-virtual {v7, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/d;->f(I)Z

    move-result v1

    if-nez v1, :cond_30

    .line 352
    const-string v1, "Expected value"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b(Ljava/lang/String;)V

    throw v16

    .line 355
    :cond_30
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/d;->c()V

    throw v16

    .line 336
    :cond_31
    invoke-virtual {v7}, Lokio/Buffer;->readByte()B

    .line 337
    iput v3, v0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    return v3

    :cond_32
    if-ne v4, v3, :cond_34

    .line 312
    invoke-virtual {v7}, Lokio/Buffer;->readByte()B

    const/4 v2, 0x4

    .line 313
    iput v2, v0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    return v2

    .line 333
    :cond_33
    invoke-virtual {v7}, Lokio/Buffer;->readByte()B

    const/4 v2, 0x3

    .line 334
    iput v2, v0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    return v2

    :cond_34
    if-eq v4, v3, :cond_36

    if-ne v4, v6, :cond_35

    goto :goto_16

    .line 323
    :cond_35
    const-string v1, "Unexpected value"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b(Ljava/lang/String;)V

    throw v16

    .line 320
    :cond_36
    :goto_16
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/d;->c()V

    throw v16

    .line 326
    :cond_37
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/d;->c()V

    throw v16

    .line 330
    :cond_38
    invoke-virtual {v7}, Lokio/Buffer;->readByte()B

    const/16 v1, 0x9

    .line 331
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    return v1

    .line 305
    :cond_39
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JsonReader is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :goto_17
    aput v19, v1, v2

    const/16 v1, 0x7d

    if-ne v4, v5, :cond_3c

    .line 241
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/d;->g(Z)I

    move-result v2

    .line 242
    invoke-virtual {v7}, Lokio/Buffer;->readByte()B

    if-eq v2, v13, :cond_3c

    if-eq v2, v12, :cond_3b

    if-ne v2, v1, :cond_3a

    .line 245
    iput v6, v0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    return v6

    .line 251
    :cond_3a
    const-string v1, "Unterminated object"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b(Ljava/lang/String;)V

    throw v16

    .line 247
    :cond_3b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/d;->c()V

    throw v16

    .line 254
    :cond_3c
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/d;->g(Z)I

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_40

    const/16 v3, 0x27

    if-eq v2, v3, :cond_3f

    if-ne v2, v1, :cond_3e

    if-eq v4, v5, :cond_3d

    .line 265
    invoke-virtual {v7}, Lokio/Buffer;->readByte()B

    .line 266
    iput v6, v0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    return v6

    .line 268
    :cond_3d
    const-string v1, "Expected name"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b(Ljava/lang/String;)V

    throw v16

    .line 271
    :cond_3e
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/d;->c()V

    throw v16

    .line 260
    :cond_3f
    invoke-virtual {v7}, Lokio/Buffer;->readByte()B

    .line 261
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/d;->c()V

    throw v16

    .line 257
    :cond_40
    invoke-virtual {v7}, Lokio/Buffer;->readByte()B

    const/16 v1, 0xd

    .line 258
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    return v1
.end method

.method public final e(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I
    .locals 4

    .line 602
    iget-object v0, p2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->a:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 603
    iget-object v3, p2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->a:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 604
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    .line 605
    iget-object p2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->c:[Ljava/lang/String;

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    add-int/lit8 v0, v0, -0x1

    aput-object p1, p2, v0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public endArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->d()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 132
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    .line 133
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d:[I

    add-int/lit8 v0, v0, -0x2

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    return-void

    .line 136
    :cond_1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 137
    throw v0
.end method

.method public endObject()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->d()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 161
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    .line 162
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->c:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 163
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d:[I

    sub-int/2addr v0, v1

    aget v1, v2, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, v2, v0

    const/4 v0, 0x0

    .line 164
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    return-void

    .line 166
    :cond_1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 167
    throw v0
.end method

.method public final f(I)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    .line 499
    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->c()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final g(Z)I
    .locals 7

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    .line 912
    iget-object v4, p0, Lcom/airbnb/lottie/parser/moshi/d;->f:Lokio/BufferedSource;

    invoke-interface {v4, v2, v3}, Lokio/BufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_5

    int-to-long v2, v0

    .line 913
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->g:Lokio/Buffer;

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_4

    const/16 v6, 0x20

    if-eq v5, v6, :cond_4

    const/16 v6, 0xd

    if-eq v5, v6, :cond_4

    const/16 v6, 0x9

    if-ne v5, v6, :cond_0

    goto :goto_2

    .line 918
    :cond_0
    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->skip(J)V

    const/16 p1, 0x2f

    const/4 v0, 0x0

    if-ne v5, p1, :cond_2

    const-wide/16 v1, 0x2

    .line 920
    invoke-interface {v4, v1, v2}, Lokio/BufferedSource;->request(J)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 924
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->c()V

    throw v0

    :cond_2
    const/16 p1, 0x23

    if-eq v5, p1, :cond_3

    :goto_1
    return v5

    .line 951
    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->c()V

    throw v0

    :cond_4
    :goto_2
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    const/4 p1, -0x1

    return p1

    .line 959
    :cond_6
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "End of input"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Lokio/ByteString;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    move-object v1, v0

    .line 725
    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/d;->f:Lokio/BufferedSource;

    invoke-interface {v2, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 731
    iget-object v4, p0, Lcom/airbnb/lottie/parser/moshi/d;->g:Lokio/Buffer;

    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_1

    if-nez v1, :cond_0

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    :cond_0
    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    .line 737
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->j()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 743
    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    .line 744
    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    return-object p1

    .line 747
    :cond_2
    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    .line 749
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 727
    :cond_3
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->d()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 6

    .line 758
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->f:Lokio/BufferedSource;

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/d;->n:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    .line 759
    iget-object v4, p0, Lcom/airbnb/lottie/parser/moshi/d;->g:Lokio/Buffer;

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    invoke-virtual {v4, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v4}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()C
    .locals 9

    .line 1004
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->f:Lokio/BufferedSource;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->request(J)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 1008
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/d;->g:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_b

    const/16 v5, 0x22

    if-eq v3, v5, :cond_b

    const/16 v5, 0x27

    if-eq v3, v5, :cond_b

    const/16 v5, 0x2f

    if-eq v3, v5, :cond_b

    const/16 v5, 0x5c

    if-eq v3, v5, :cond_b

    const/16 v5, 0x62

    if-eq v3, v5, :cond_a

    const/16 v5, 0x66

    if-eq v3, v5, :cond_9

    const/16 v6, 0x6e

    if-eq v3, v6, :cond_8

    const/16 v4, 0x72

    if-eq v3, v4, :cond_7

    const/16 v4, 0x74

    if-eq v3, v4, :cond_6

    const/16 v4, 0x75

    if-ne v3, v4, :cond_5

    const-wide/16 v3, 0x4

    .line 1011
    invoke-interface {v0, v3, v4}, Lokio/BufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x4

    if-ge v0, v7, :cond_3

    int-to-long v7, v0

    .line 1017
    invoke-virtual {v1, v7, v8}, Lokio/Buffer;->getByte(J)B

    move-result v7

    shl-int/lit8 v6, v6, 0x4

    int-to-char v6, v6

    const/16 v8, 0x30

    if-lt v7, v8, :cond_0

    const/16 v8, 0x39

    if-gt v7, v8, :cond_0

    add-int/lit8 v7, v7, -0x30

    :goto_1
    add-int/2addr v7, v6

    int-to-char v6, v7

    goto :goto_2

    :cond_0
    const/16 v8, 0x61

    if-lt v7, v8, :cond_1

    if-gt v7, v5, :cond_1

    add-int/lit8 v7, v7, -0x57

    goto :goto_1

    :cond_1
    const/16 v8, 0x41

    if-lt v7, v8, :cond_2

    const/16 v8, 0x46

    if-gt v7, v8, :cond_2

    add-int/lit8 v7, v7, -0x37

    goto :goto_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1026
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "\\u"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b(Ljava/lang/String;)V

    throw v2

    .line 1029
    :cond_3
    invoke-virtual {v1, v3, v4}, Lokio/Buffer;->skip(J)V

    return v6

    .line 1012
    :cond_4
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unterminated escape sequence at path "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1056
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid escape sequence: \\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b(Ljava/lang/String;)V

    throw v2

    :cond_6
    const/16 v0, 0x9

    return v0

    :cond_7
    const/16 v0, 0xd

    return v0

    :cond_8
    return v4

    :cond_9
    const/16 v0, 0xc

    return v0

    :cond_a
    const/16 v0, 0x8

    return v0

    :cond_b
    int-to-char v0, v3

    return v0

    .line 1005
    :cond_c
    const-string v0, "Unterminated escape sequence"

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b(Ljava/lang/String;)V

    throw v2
.end method

.method public final k(Lokio/ByteString;)V
    .locals 7

    .line 764
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->f:Lokio/BufferedSource;

    invoke-interface {v0, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 769
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/d;->g:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v3

    const/16 v4, 0x5c

    const-wide/16 v5, 0x1

    if-ne v3, v4, :cond_0

    add-long/2addr v0, v5

    .line 770
    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 771
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->j()C

    goto :goto_0

    :cond_0
    add-long/2addr v0, v5

    .line 773
    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    return-void

    .line 766
    :cond_1
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public nextBoolean()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    if-nez v0, :cond_0

    .line 659
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->d()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 662
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    .line 663
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d:[I

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    sub-int/2addr v1, v3

    aget v2, v0, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    return v3

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 666
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    .line 667
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d:[I

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    sub-int/2addr v1, v3

    aget v4, v0, v1

    add-int/2addr v4, v3

    aput v4, v0, v1

    return v2

    .line 670
    :cond_2
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 670
    throw v0
.end method

.method public nextDouble()D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 674
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    if-nez v0, :cond_0

    .line 676
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->d()I

    move-result v0

    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 680
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    .line 681
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d:[I

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 682
    iget-wide v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->i:J

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x11

    .line 685
    const-string v3, "Expected a double but was "

    const/16 v4, 0xb

    const-string v5, " at path "

    if-ne v0, v1, :cond_2

    .line 686
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->j:I

    int-to-long v0, v0

    iget-object v6, p0, Lcom/airbnb/lottie/parser/moshi/d;->g:Lokio/Buffer;

    invoke-virtual {v6, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->k:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 688
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/d;->m:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/d;->h(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->k:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 690
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/d;->l:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/d;->h(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->k:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 692
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->k:Ljava/lang/String;

    goto :goto_0

    :cond_5
    if-ne v0, v4, :cond_7

    .line 697
    :goto_0
    iput v4, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    .line 700
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    .line 709
    iput-object v3, p0, Lcom/airbnb/lottie/parser/moshi/d;->k:Ljava/lang/String;

    .line 710
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    .line 711
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d:[I

    iget v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    return-wide v0

    .line 706
    :cond_6
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 707
    throw v2

    .line 702
    :catch_0
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/d;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 703
    throw v0

    .line 694
    :cond_7
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 694
    throw v0
.end method

.method public nextInt()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 785
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    if-nez v0, :cond_0

    .line 787
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->d()I

    move-result v0

    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 791
    const-string v3, " at path "

    const-string v4, "Expected an int but was "

    if-ne v0, v1, :cond_2

    .line 792
    iget-wide v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->i:J

    long-to-int v5, v0

    int-to-long v6, v5

    cmp-long v8, v0, v6

    if-nez v8, :cond_1

    .line 797
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    .line 798
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d:[I

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v5

    .line 794
    :cond_1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/airbnb/lottie/parser/moshi/d;->i:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 795
    throw v0

    :cond_2
    const/16 v1, 0x11

    const/16 v5, 0xb

    if-ne v0, v1, :cond_3

    .line 803
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->j:I

    int-to-long v0, v0

    iget-object v6, p0, Lcom/airbnb/lottie/parser/moshi/d;->g:Lokio/Buffer;

    invoke-virtual {v6, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->k:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/16 v1, 0x9

    if-eq v0, v1, :cond_6

    const/16 v6, 0x8

    if-ne v0, v6, :cond_4

    goto :goto_0

    :cond_4
    if-ne v0, v5, :cond_5

    goto :goto_2

    .line 817
    :cond_5
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 817
    throw v0

    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    .line 806
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/d;->m:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/d;->h(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 807
    :cond_7
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/d;->l:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/d;->h(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->k:Ljava/lang/String;

    .line 809
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 810
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    .line 811
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d:[I

    iget v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v1, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 820
    :catch_0
    :goto_2
    iput v5, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    .line 823
    :try_start_1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    double-to-int v5, v0

    int-to-double v6, v5

    cmpl-double v8, v6, v0

    if-nez v8, :cond_8

    const/4 v0, 0x0

    .line 833
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->k:Ljava/lang/String;

    .line 834
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    .line 835
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d:[I

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v5

    .line 830
    :cond_8
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/d;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 831
    throw v0

    .line 825
    :catch_1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/d;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 826
    throw v0
.end method

.method public nextName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    if-nez v0, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->d()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 524
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 526
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/d;->m:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/d;->h(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 528
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/d;->l:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/d;->h(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 530
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->k:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    .line 534
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    .line 535
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->c:[Ljava/lang/String;

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    .line 532
    :cond_4
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 532
    throw v0
.end method

.method public nextString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 614
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    if-nez v0, :cond_0

    .line 616
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->d()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 620
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 622
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/d;->m:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/d;->h(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 624
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/d;->l:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/d;->h(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 626
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->k:Ljava/lang/String;

    const/4 v1, 0x0

    .line 627
    iput-object v1, p0, Lcom/airbnb/lottie/parser/moshi/d;->k:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    .line 629
    iget-wide v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x11

    if-ne v0, v1, :cond_6

    .line 631
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->j:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/d;->g:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 635
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    .line 636
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d:[I

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    .line 633
    :cond_6
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 633
    throw v0
.end method

.method public peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->d()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 215
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 213
    :pswitch_0
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_DOCUMENT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v0

    .line 211
    :pswitch_1
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v0

    .line 198
    :pswitch_2
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NAME:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v0

    .line 208
    :pswitch_3
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v0

    .line 203
    :pswitch_4
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NULL:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v0

    .line 201
    :pswitch_5
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BOOLEAN:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v0

    .line 193
    :pswitch_6
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v0

    .line 191
    :pswitch_7
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v0

    .line 189
    :pswitch_8
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v0

    .line 187
    :pswitch_9
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    if-nez v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->d()I

    move-result v0

    :cond_0
    const/16 v1, 0xc

    const/4 v2, -0x1

    if-lt v0, v1, :cond_5

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 548
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/parser/moshi/d;->e(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result p1

    return p1

    .line 551
    :cond_2
    iget-object v0, p1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->b:Lokio/Options;

    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/d;->f:Lokio/BufferedSource;

    invoke-interface {v3, v0}, Lokio/BufferedSource;->select(Lokio/Options;)I

    move-result v0

    if-eq v0, v2, :cond_3

    const/4 v1, 0x0

    .line 553
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    .line 554
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->c:[Ljava/lang/String;

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    add-int/lit8 v2, v2, -0x1

    iget-object p1, p1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->a:[Ljava/lang/String;

    aget-object p1, p1, v0

    aput-object p1, v1, v2

    return v0

    .line 561
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->c:[Ljava/lang/String;

    iget v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    .line 563
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 564
    invoke-virtual {p0, v3, p1}, Lcom/airbnb/lottie/parser/moshi/d;->e(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 567
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    .line 568
    iput-object v3, p0, Lcom/airbnb/lottie/parser/moshi/d;->k:Ljava/lang/String;

    .line 570
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->c:[Ljava/lang/String;

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    :cond_4
    return p1

    :cond_5
    :goto_0
    return v2
.end method

.method public skipName()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    if-nez v0, :cond_0

    .line 582
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->d()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_2

    .line 780
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->f:Lokio/BufferedSource;

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/d;->n:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    .line 781
    iget-object v4, p0, Lcom/airbnb/lottie/parser/moshi/d;->g:Lokio/Buffer;

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v0

    :goto_0
    invoke-virtual {v4, v0, v1}, Lokio/Buffer;->skip(J)V

    goto :goto_1

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 587
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/d;->m:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/d;->k(Lokio/ByteString;)V

    goto :goto_1

    :cond_3
    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    .line 589
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/d;->l:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/d;->k(Lokio/ByteString;)V

    goto :goto_1

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    :goto_1
    const/4 v0, 0x0

    .line 593
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    .line 594
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->c:[Ljava/lang/String;

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    add-int/lit8 v1, v1, -0x1

    const-string v2, "null"

    aput-object v2, v0, v1

    return-void

    .line 591
    :cond_5
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 591
    throw v0
.end method

.method public skipValue()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 853
    :cond_0
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    if-nez v2, :cond_1

    .line 855
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->d()I

    move-result v2

    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 859
    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a(I)V

    :goto_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_2
    if-ne v2, v3, :cond_3

    .line 862
    invoke-virtual {p0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a(I)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x4

    .line 864
    const-string v5, " at path "

    const-string v6, "Expected a value but was "

    if-ne v2, v4, :cond_5

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    .line 870
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    goto/16 :goto_5

    .line 867
    :cond_4
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 868
    throw v0

    :cond_5
    const/4 v4, 0x2

    if-ne v2, v4, :cond_7

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_6

    .line 877
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    goto/16 :goto_5

    .line 874
    :cond_6
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 875
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 875
    throw v0

    :cond_7
    const/16 v4, 0xe

    .line 878
    iget-object v7, p0, Lcom/airbnb/lottie/parser/moshi/d;->g:Lokio/Buffer;

    if-eq v2, v4, :cond_f

    const/16 v4, 0xa

    if-ne v2, v4, :cond_8

    goto :goto_3

    :cond_8
    const/16 v4, 0x9

    if-eq v2, v4, :cond_e

    const/16 v4, 0xd

    if-ne v2, v4, :cond_9

    goto :goto_2

    :cond_9
    const/16 v4, 0x8

    if-eq v2, v4, :cond_d

    const/16 v4, 0xc

    if-ne v2, v4, :cond_a

    goto :goto_1

    :cond_a
    const/16 v4, 0x11

    if-ne v2, v4, :cond_b

    .line 885
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/d;->j:I

    int-to-long v4, v2

    invoke-virtual {v7, v4, v5}, Lokio/Buffer;->skip(J)V

    goto :goto_5

    :cond_b
    const/16 v4, 0x12

    if-eq v2, v4, :cond_c

    goto :goto_5

    .line 887
    :cond_c
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 888
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/d;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 888
    throw v0

    .line 883
    :cond_d
    :goto_1
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/d;->l:Lokio/ByteString;

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/d;->k(Lokio/ByteString;)V

    goto :goto_5

    .line 881
    :cond_e
    :goto_2
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/d;->m:Lokio/ByteString;

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/d;->k(Lokio/ByteString;)V

    goto :goto_5

    .line 780
    :cond_f
    :goto_3
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/d;->f:Lokio/BufferedSource;

    sget-object v4, Lcom/airbnb/lottie/parser/moshi/d;->n:Lokio/ByteString;

    invoke-interface {v2, v4}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v2, v4, v8

    if-eqz v2, :cond_10

    goto :goto_4

    .line 781
    :cond_10
    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v4

    :goto_4
    invoke-virtual {v7, v4, v5}, Lokio/Buffer;->skip(J)V

    .line 890
    :goto_5
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/d;->h:I

    if-nez v1, :cond_0

    .line 893
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d:[I

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a:I

    sub-int/2addr v1, v3

    aget v2, v0, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 894
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->c:[Ljava/lang/String;

    const-string v2, "null"

    aput-object v2, v0, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonReader("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/d;->f:Lokio/BufferedSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
