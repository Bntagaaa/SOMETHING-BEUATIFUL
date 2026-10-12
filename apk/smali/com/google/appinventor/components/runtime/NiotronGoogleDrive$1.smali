.class Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->UploadMedia(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 103
    const-string v0, "filename="

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;

    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->d(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 106
    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->g()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&folderid="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&mimetype="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&data="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->m(Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/net/URL;

    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 116
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 117
    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "Accept-Language"

    const-string v2, "en-US,en;q=0.5"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 121
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 122
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 123
    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 125
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 127
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 129
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 130
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 136
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 138
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->l(Ljava/lang/String;)V

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error"

    if-ne v0, v1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->c(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->c(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->c(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->b(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Required fields not filled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 167
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->l(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->c(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1$4;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1$4;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
