.class Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/NiotronMySQLDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Perform_GET_Data"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;-><init>(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 84
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 89
    array-length v0, p1

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 91
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v7, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 94
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 98
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 101
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 84
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 5

    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->ALLRESPONSE:Ljava/lang/String;

    .line 110
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    iget-wide v0, p1, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->CHECKA:D

    const-wide/high16 v2, 0x4026000000000000L    # 11.0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 111
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->DEMOKIL:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->ALLRESPONSE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->GotRow(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    iget-wide v0, p1, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->CHECKA:D

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    .line 114
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->DEMOKIL:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->ALLRESPONSE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->GotColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    iget-wide v0, p1, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->CHECKA:D

    const-wide/high16 v2, 0x402a000000000000L    # 13.0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_2

    .line 117
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->DEMOKIL:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->ALLRESPONSE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->GotCell(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    iget-wide v0, p1, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->CHECKA:D

    const-wide/high16 v2, 0x402c000000000000L    # 14.0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_3

    .line 120
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->ALLRESPONSE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->ColumnCreated(Ljava/lang/String;)V

    .line 122
    :cond_3
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    iget-wide v0, p1, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->CHECKA:D

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_4

    .line 123
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->ALLRESPONSE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->RowDeleted(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
