.class Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->GetTranslation(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 76
    const-string v0, "text="

    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 77
    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&tlang="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->h(Ljava/lang/String;)V

    .line 83
    const-string v0, "https://script.google.com/macros/s/AKfycbzpXZ5jiWMhE62niS96KB4AjL9tqboXAUdPBWoqLnWrhjWaUsgB/exec"

    .line 84
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 88
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 89
    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "Accept-Language"

    const-string v2, "en-US,en;q=0.5"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 93
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 94
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 95
    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 97
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 99
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 101
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 102
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 110
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->g(Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-ne v1, v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->b(Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->b(Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->a(Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Required fields not filled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 130
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->g(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->b(Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
