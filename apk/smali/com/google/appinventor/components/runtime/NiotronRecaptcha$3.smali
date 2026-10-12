.class Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->handleSiteVerify(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronRecaptcha;

.field final synthetic val$responseToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronRecaptcha;Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecaptcha;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;->val$responseToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 97
    const-string v0, "secret="

    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://www.google.com/recaptcha/api/siteverify"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecaptcha;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->b(Lcom/google/appinventor/components/runtime/NiotronRecaptcha;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;->val$responseToken:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&response="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 102
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 103
    const-string v2, "User-Agent"

    const-string v3, "Mozilla/5.0"

    invoke-virtual {v1, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v2, "Accept-Language"

    const-string v3, "en-US,en;q=0.5"

    invoke-virtual {v1, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 107
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 108
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 109
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 111
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 113
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 115
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 118
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 121
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecaptcha;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->a(Lcom/google/appinventor/components/runtime/NiotronRecaptcha;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3$1;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 137
    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecaptcha;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->a(Lcom/google/appinventor/components/runtime/NiotronRecaptcha;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3$2;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
