.class Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->makeServerCallREAD(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

.field final synthetic val$serverURL:Ljava/lang/String;

.field final synthetic val$urlParameters:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;->val$serverURL:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;->val$urlParameters:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 375
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;->val$serverURL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 378
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 379
    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v1, "Accept-Language"

    const-string v2, "en-US,en;q=0.5"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded; charset=UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 383
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 384
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 385
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;->val$urlParameters:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 387
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 389
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 391
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 392
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 394
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 397
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 398
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 401
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 404
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$1;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 446
    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$3;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
