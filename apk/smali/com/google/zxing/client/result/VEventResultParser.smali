.class public final Lcom/google/zxing/client/result/VEventResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    invoke-static {p0, p1, v0, v1}, Lcom/google/zxing/client/result/VCardResultParser;->d(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 91
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/CalendarParsedResult;
    .locals 17

    .line 33
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string v1, "BEGIN:VEVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    :goto_0
    const/16 p1, 0x0

    goto/16 :goto_6

    .line 39
    :cond_0
    const-string v1, "SUMMARY"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/VEventResultParser;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 40
    const-string v1, "DTSTART"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/VEventResultParser;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 44
    :cond_1
    const-string v1, "DTEND"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/VEventResultParser;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 45
    const-string v1, "LOCATION"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/VEventResultParser;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 46
    const-string v1, "ORGANIZER"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/VEventResultParser;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    .line 108
    const-string v8, "MAILTO:"

    const-string v9, "mailto:"

    if-eqz v1, :cond_3

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 109
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    :cond_3
    const-string v10, "ATTENDEE"

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v10, v0, v11, v12}, Lcom/google/zxing/client/result/VCardResultParser;->e(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 96
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_5

    :cond_4
    const/16 p1, 0x0

    goto :goto_2

    .line 99
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    .line 100
    new-array v14, v13, [Ljava/lang/String;

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v13, :cond_6

    .line 102
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    const/16 p1, 0x0

    move-object/from16 v2, v16

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_6
    const/16 p1, 0x0

    goto :goto_3

    :goto_2
    move-object/from16 v14, p1

    :goto_3
    if-eqz v14, :cond_9

    const/4 v2, 0x0

    .line 50
    :goto_4
    array-length v10, v14

    if-ge v2, v10, :cond_9

    .line 51
    aget-object v10, v14, v2

    if-eqz v10, :cond_8

    .line 108
    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 109
    :cond_7
    invoke-virtual {v10, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 51
    :cond_8
    aput-object v10, v14, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 54
    :cond_9
    const-string v2, "DESCRIPTION"

    invoke-static {v2, v0}, Lcom/google/zxing/client/result/VEventResultParser;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 56
    const-string v2, "GEO"

    invoke-static {v2, v0}, Lcom/google/zxing/client/result/VEventResultParser;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    move-wide v11, v2

    goto :goto_5

    :cond_a
    const/16 v2, 0x3b

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 65
    :try_start_0
    invoke-virtual {v0, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    add-int/2addr v2, v11

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v11, v8

    .line 73
    :goto_5
    :try_start_1
    new-instance v0, Lcom/google/zxing/client/result/CalendarParsedResult;

    move-object v8, v1

    move-object v9, v14

    move-wide v13, v2

    move-object v3, v0

    invoke-direct/range {v3 .. v14}, Lcom/google/zxing/client/result/CalendarParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;DD)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    :goto_6
    return-object p1
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/VEventResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/CalendarParsedResult;

    move-result-object p1

    return-object p1
.end method
