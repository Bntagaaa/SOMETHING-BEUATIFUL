.class Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->makeServerCallSheet(Ljava/lang/String;)V
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

    .line 284
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;->val$serverURL:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;->val$urlParameters:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 287
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;->val$serverURL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 290
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 291
    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v1, "Accept-Language"

    const-string v2, "en-US,en;q=0.5"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 294
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 295
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 296
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;->val$urlParameters:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 298
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 300
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 302
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 303
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 305
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 308
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 309
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 312
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$1;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 355
    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$3;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
