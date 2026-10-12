.class public final Lcom/google/zxing/client/result/WifiResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/WifiResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;
    .locals 7

    .line 35
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object p1

    .line 36
    const-string v0, "WIFI:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 240
    :cond_0
    const-string v0, "S:"

    const/16 v2, 0x3b

    const/4 v3, 0x0

    invoke-static {v0, p1, v2, v3}, Lcom/google/zxing/client/result/ResultParser;->a(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 241
    :cond_1
    aget-object v0, v0, v3

    :goto_0
    if-eqz v0, :cond_7

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_4

    .line 240
    :cond_2
    const-string v4, "P:"

    invoke-static {v4, p1, v2, v3}, Lcom/google/zxing/client/result/ResultParser;->a(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, v1

    goto :goto_1

    .line 241
    :cond_3
    aget-object v4, v4, v3

    .line 240
    :goto_1
    const-string v5, "T:"

    invoke-static {v5, p1, v2, v3}, Lcom/google/zxing/client/result/ResultParser;->a(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    move-object v5, v1

    goto :goto_2

    .line 241
    :cond_4
    aget-object v5, v5, v3

    :goto_2
    if-nez v5, :cond_5

    .line 46
    const-string v5, "nopass"

    .line 240
    :cond_5
    const-string v6, "B:"

    invoke-static {v6, p1, v2, v3}, Lcom/google/zxing/client/result/ResultParser;->a(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    .line 241
    :cond_6
    aget-object v1, p1, v3

    .line 48
    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 49
    new-instance v1, Lcom/google/zxing/client/result/WifiParsedResult;

    invoke-direct {v1, v5, v0, v4, p1}, Lcom/google/zxing/client/result/WifiParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_7
    :goto_4
    return-object v1
.end method
