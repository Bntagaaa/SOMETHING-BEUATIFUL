.class Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HTTPSession"
.end annotation


# instance fields
.field private mySocket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/net/Socket;)V
    .locals 2

    .line 343
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->this$0:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->mySocket:Ljava/net/Socket;

    .line 345
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->a(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NanoHTTPD: getPoolSize() = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AppInvHTTPD"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->a(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private decodeHeader(Ljava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 520
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 522
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "400 Bad Request"

    if-nez v0, :cond_1

    .line 524
    :try_start_1
    const-string v0, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    invoke-direct {p0, v2, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 526
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 527
    const-string v3, "method"

    invoke-virtual {p2, v3, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_2

    .line 530
    const-string v0, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    invoke-direct {p0, v2, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3f

    .line 535
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_3

    add-int/lit8 v4, v2, 0x1

    .line 538
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Properties;)V

    .line 539
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 541
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 547
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 549
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_5

    .line 550
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    const/16 v1, 0x3a

    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    .line 554
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    :cond_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 559
    :cond_5
    const-string p1, "uri"

    invoke-virtual {p2, p1, p3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 563
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SERVER INTERNAL ERROR: IOException: "

    .line 0
    invoke-static {p2, p1}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 563
    const-string p2, "500 Internal Server Error"

    invoke-direct {p0, p2, p1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private decodeMultipartData(Ljava/lang/String;[BLjava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 576
    const-string v3, "500 Internal Server Error"

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->getBoundaryPositions([B[B)[I

    move-result-object v4

    .line 578
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    :goto_0
    if-eqz v5, :cond_e

    .line 581
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "400 Bad Request"

    const/4 v9, -0x1

    if-ne v5, v9, :cond_0

    .line 582
    :try_start_1
    const-string v5, "BAD REQUEST: Content type is multipart/form-data but next chunk does not start with boundary. Usage: GET /example/file.html"

    invoke-direct {v1, v8, v5}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :cond_0
    :goto_1
    add-int/lit8 v5, v7, 0x1

    .line 584
    new-instance v10, Ljava/util/Properties;

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    .line 585
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    :goto_2
    const/4 v12, 0x0

    if-eqz v11, :cond_2

    .line 586
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_2

    const/16 v13, 0x3a

    .line 588
    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v9, :cond_1

    .line 590
    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v12, v11}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_2
    if-eqz v11, :cond_d

    .line 595
    const-string v13, "content-disposition"

    invoke-virtual {v10, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_3

    .line 598
    const-string v14, "BAD REQUEST: Content type is multipart/form-data but no content-disposition info found. Usage: GET /example/file.html"

    invoke-direct {v1, v8, v14}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_3
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v14, "; "

    invoke-direct {v8, v13, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    new-instance v13, Ljava/util/Properties;

    invoke-direct {v13}, Ljava/util/Properties;-><init>()V

    .line 602
    :goto_3
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 604
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x3d

    .line 605
    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-eq v15, v9, :cond_4

    .line 607
    invoke-virtual {v14, v12, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v12, 0x0

    goto :goto_3

    .line 609
    :cond_5
    const-string v8, "name"

    invoke-virtual {v13, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 610
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v6

    invoke-virtual {v8, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 612
    const-string v12, ""

    .line 613
    const-string v14, "content-type"

    invoke-virtual {v10, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_a

    :cond_6
    :goto_4
    if-eqz v11, :cond_8

    .line 614
    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v9, :cond_8

    .line 616
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 619
    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v9, :cond_7

    .line 621
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    :goto_5
    move-object v12, v7

    goto :goto_4

    :cond_7
    add-int/lit8 v7, v7, -0x2

    const/4 v10, 0x0

    .line 623
    invoke-virtual {v11, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_8
    move-object/from16 v10, p5

    :cond_9
    :goto_6
    move-object/from16 v7, p4

    goto :goto_7

    .line 629
    :cond_a
    array-length v10, v4

    if-le v5, v10, :cond_b

    .line 630
    const-string v10, "Error processing request"

    invoke-direct {v1, v3, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    add-int/lit8 v10, v7, -0x1

    .line 631
    aget v10, v4, v10

    invoke-direct {v1, v2, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->stripMultipartHeaders([BI)I

    move-result v10

    .line 632
    aget v7, v4, v7

    sub-int/2addr v7, v10

    add-int/lit8 v7, v7, -0x4

    invoke-direct {v1, v2, v10, v7}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->saveTmpFile([BII)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v10, p5

    .line 633
    invoke-virtual {v10, v8, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const-string v7, "filename"

    invoke-virtual {v13, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 635
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v6

    invoke-virtual {v7, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 637
    :cond_c
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 638
    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v9, :cond_c

    goto :goto_6

    .line 640
    :goto_7
    invoke-virtual {v7, v8, v12}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :cond_d
    move-object/from16 v7, p4

    move-object/from16 v10, p5

    :goto_8
    move v7, v5

    move-object v5, v11

    goto/16 :goto_0

    .line 646
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SERVER INTERNAL ERROR: IOException: "

    .line 0
    invoke-static {v2, v0}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 646
    invoke-direct {v1, v3, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method private decodeParms(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    .line 775
    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "&"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 778
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3d

    .line 779
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v2, 0x0

    .line 781
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    .line 782
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 781
    invoke-virtual {p2, v2, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private decodePercent(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 735
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 736
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 738
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_0

    .line 749
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    const/16 v2, 0x20

    .line 742
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v1, 0x3

    .line 745
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 753
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 757
    :catch_0
    const-string p1, "400 Bad Request"

    const-string v0, "BAD REQUEST: Bad percent-encoding."

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private saveTmpFile([BII)Ljava/lang/String;
    .locals 4

    .line 695
    const-string v0, ""

    if-lez p3, :cond_0

    .line 697
    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 699
    :try_start_0
    const-string v2, "NanoHTTPD"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 700
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 701
    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 702
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 703
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 705
    sget-object p2, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myErr:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private sendError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 792
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p2, "text/plain"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;)V

    .line 793
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method private sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;)V
    .locals 6

    .line 803
    const-string v0, "Date: "

    const-string v1, "Content-Type: "

    const-string v2, "HTTP/1.0 "

    if-eqz p1, :cond_7

    .line 806
    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->mySocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 807
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 808
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \r\n"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    const-string p1, "\r\n"

    if-eqz p2, :cond_0

    .line 811
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 813
    const-string p2, "Date"

    invoke-virtual {p3, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 814
    :cond_1
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->c()Ljava/text/SimpleDateFormat;

    move-result-object p2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 818
    invoke-virtual {p3}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object p2

    .line 819
    :goto_0
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 821
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 822
    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 827
    :cond_3
    invoke-virtual {v4, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    if-eqz p4, :cond_6

    .line 832
    invoke-virtual {p4}, Ljava/io/InputStream;->available()I

    move-result p1

    .line 833
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->d()I

    move-result p2

    new-array p2, p2, [B

    :goto_1
    if-lez p1, :cond_6

    .line 836
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->d()I

    move-result p3

    if-le p1, p3, :cond_4

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->d()I

    move-result p3

    goto :goto_2

    :cond_4
    move p3, p1

    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p4, p2, v0, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-gtz p3, :cond_5

    goto :goto_3

    .line 838
    :cond_5
    invoke-virtual {v3, p2, v0, p3}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr p1, p3

    goto :goto_1

    .line 842
    :cond_6
    :goto_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 843
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    if-eqz p4, :cond_8

    .line 845
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V

    return-void

    .line 804
    :cond_7
    new-instance p1, Ljava/lang/Error;

    const-string p2, "sendResponse(): Status can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 850
    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->mySocket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_8
    return-void
.end method

.method private stripMultipartHeaders([BI)I
    .locals 4

    .line 719
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_2

    .line 721
    aget-byte v0, p1, p2

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, p2, 0x1

    aget-byte v2, p1, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, p2, 0x2

    aget-byte v2, p1, v0

    if-ne v2, v1, :cond_0

    add-int/lit8 p2, p2, 0x3

    aget-byte v0, p1, p2

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_0
    move p2, v0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    return p2
.end method


# virtual methods
.method public getBoundaryPositions([B[B)[I
    .locals 8

    .line 657
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 658
    :goto_0
    array-length v6, p1

    if-ge v3, v6, :cond_3

    .line 660
    aget-byte v6, p1, v3

    aget-byte v7, p2, v4

    if-ne v6, v7, :cond_1

    if-nez v4, :cond_0

    move v5, v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 665
    array-length v6, p2

    if-ne v4, v6, :cond_2

    .line 667
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    const/4 v4, 0x0

    const/4 v5, -0x1

    goto :goto_2

    :cond_1
    sub-int/2addr v3, v4

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 679
    :cond_3
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p2, p1, [I

    :goto_3
    if-ge v1, p1, :cond_4

    .line 682
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-object p2
.end method

.method public run()V
    .locals 22

    move-object/from16 v1, p0

    .line 353
    const-string v7, "500 Internal Server Error"

    :try_start_0
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->mySocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_d

    :cond_0
    const/16 v2, 0x2000

    .line 360
    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 361
    invoke-virtual {v0, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gtz v2, :cond_1

    goto/16 :goto_d

    .line 365
    :cond_1
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v3, v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 366
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 367
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 368
    new-instance v12, Ljava/util/Properties;

    invoke-direct {v12}, Ljava/util/Properties;-><init>()V

    .line 369
    new-instance v11, Ljava/util/Properties;

    invoke-direct {v11}, Ljava/util/Properties;-><init>()V

    .line 370
    new-instance v13, Ljava/util/Properties;

    invoke-direct {v13}, Ljava/util/Properties;-><init>()V

    .line 373
    invoke-direct {v1, v6, v5, v12, v11}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodeHeader(Ljava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)V

    .line 374
    const-string v6, "method"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 375
    const-string v6, "uri"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 378
    const-string v5, "content-length"

    invoke-virtual {v11, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v5, :cond_2

    .line 381
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    int-to-long v5, v5

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_c

    :catch_1
    nop

    :cond_2
    const-wide v5, 0x7fffffffffffffffL

    :goto_0
    const/4 v8, 0x0

    :goto_1
    const/16 v16, 0x1

    if-ge v8, v2, :cond_6

    const-wide v17, 0x7fffffffffffffffL

    .line 391
    :try_start_2
    aget-byte v14, v3, v8

    const/16 v15, 0xd

    if-ne v14, v15, :cond_5

    add-int/lit8 v14, v8, 0x1

    aget-byte v4, v3, v14

    const/16 v15, 0xa

    if-ne v4, v15, :cond_4

    add-int/lit8 v4, v8, 0x2

    aget-byte v14, v3, v4

    const/16 v15, 0xd

    if-ne v14, v15, :cond_3

    add-int/lit8 v8, v8, 0x3

    aget-byte v4, v3, v8

    const/16 v14, 0xa

    if-ne v4, v14, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    move v8, v4

    goto :goto_2

    :cond_4
    move v8, v14

    :cond_5
    :goto_2
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    const-wide v17, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 401
    const-string v14, "PUT"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 403
    const-string v14, "upload"

    const-string v15, "bin"

    invoke-static {v14, v15}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 404
    invoke-virtual {v14}, Ljava/io/File;->deleteOnExit()V

    .line 405
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move/from16 v19, v4

    .line 406
    const-string v4, "content"

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v4, v14}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    move/from16 v19, v4

    .line 410
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_4
    if-ge v8, v2, :cond_8

    sub-int v4, v2, v8

    .line 412
    invoke-virtual {v15, v3, v8, v4}, Ljava/io/OutputStream;->write([BII)V

    :cond_8
    if-ge v8, v2, :cond_9

    sub-int v8, v2, v8

    add-int/lit8 v8, v8, 0x1

    const-wide/16 v20, 0x0

    int-to-long v3, v8

    sub-long/2addr v5, v3

    goto :goto_5

    :cond_9
    const-wide/16 v20, 0x0

    if-eqz v19, :cond_a

    cmp-long v3, v5, v17

    if-nez v3, :cond_b

    :cond_a
    move-wide/from16 v5, v20

    :cond_b
    :goto_5
    const/16 v3, 0x200

    .line 426
    new-array v4, v3, [B

    :goto_6
    if-ltz v2, :cond_d

    cmp-long v2, v5, v20

    if-lez v2, :cond_d

    const/4 v2, 0x0

    .line 429
    invoke-virtual {v0, v4, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    int-to-long v2, v8

    sub-long/2addr v5, v2

    if-lez v8, :cond_c

    const/4 v2, 0x0

    .line 432
    invoke-virtual {v15, v4, v2, v8}, Ljava/io/OutputStream;->write([BII)V

    :cond_c
    move v2, v8

    const/16 v3, 0x200

    goto :goto_6

    .line 437
    :cond_d
    const-string v2, "POST"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 440
    check-cast v15, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 443
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 444
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 447
    const-string v2, "content-type"

    invoke-virtual {v11, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 448
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, "; "

    invoke-direct {v5, v2, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    const-string v6, ""

    if-eqz v2, :cond_e

    .line 450
    :try_start_3
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_e
    move-object v2, v6

    .line 453
    :goto_7
    const-string v8, "multipart/form-data"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 456
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    const-string v6, "400 Bad Request"

    if-nez v2, :cond_f

    .line 457
    :try_start_4
    const-string v2, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    invoke-direct {v1, v6, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_f
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 459
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v8, "="

    invoke-direct {v5, v2, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    const/4 v8, 0x2

    if-eq v2, v8, :cond_10

    .line 461
    const-string v2, "BAD REQUEST: Content type is multipart/form-data but boundary syntax error. Usage: GET /example/file.html"

    invoke-direct {v1, v6, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_10
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 463
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    move-object v5, v12

    move-object v6, v13

    .line 465
    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodeMultipartData(Ljava/lang/String;[BLjava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;)V

    move-object v13, v6

    goto :goto_9

    :cond_11
    move-object v5, v12

    const/16 v14, 0x200

    .line 471
    new-array v2, v14, [C

    .line 472
    invoke-virtual {v4, v2}, Ljava/io/Reader;->read([C)I

    move-result v3

    :goto_8
    if-ltz v3, :cond_12

    .line 473
    const-string v8, "\r\n"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_12

    const/4 v8, 0x0

    .line 475
    invoke-static {v2, v8, v3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 476
    invoke-virtual {v4, v2}, Ljava/io/Reader;->read([C)I

    move-result v3

    goto :goto_8

    .line 478
    :cond_12
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 479
    invoke-direct {v1, v2, v5}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Properties;)V

    .line 481
    :goto_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_a

    :cond_13
    move-object v5, v12

    .line 483
    const-string v2, "PUT "

    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 485
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    .line 489
    :cond_14
    :goto_a
    iget-object v8, v1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->this$0:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    iget-object v14, v1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->mySocket:Ljava/net/Socket;

    move-object v12, v5

    invoke-virtual/range {v8 .. v14}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->serve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;Ljava/net/Socket;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v2

    if-nez v2, :cond_15

    .line 491
    const-string v2, "SERVER INTERNAL ERROR: Serve() returned a null response."

    invoke-direct {v1, v7, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 493
    :cond_15
    iget-object v3, v2, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->status:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->header:Ljava/util/Properties;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;)V

    .line 495
    :goto_b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_d

    .line 501
    :goto_c
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v7, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_2
    :catchall_0
    :goto_d
    return-void
.end method
