.class Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->CreateRow(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 338
    const-string v0, "action=createRow&table="

    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->i(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 340
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->c(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->h(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->b(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->f(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->g(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 341
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->g(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->b(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->c(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->h(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->f(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&dbname="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&pass="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&user="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&mhost="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&mdata="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->m(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->e(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/set.php"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 352
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 353
    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v1, "Accept-Language"

    const-string v2, "en-US,en;q=0.5"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 357
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 358
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 359
    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 361
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 363
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 365
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 366
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 368
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 371
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 372
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->d(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1$1;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->d(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->a(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Required fields not filled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 393
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->d(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
