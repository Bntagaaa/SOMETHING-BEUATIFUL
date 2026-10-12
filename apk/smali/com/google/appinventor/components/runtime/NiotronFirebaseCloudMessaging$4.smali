.class Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->createPostRequest(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;

.field final synthetic val$apiKey:Ljava/lang/String;

.field final synthetic val$json:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;->val$apiKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;->val$json:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 456
    const-string v0, "key="

    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://fcm.googleapis.com/fcm/send"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 458
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 459
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 460
    const-string v2, "Authorization"

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;->val$apiKey:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v0, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v1, v0, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;->val$json:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 465
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 466
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 467
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 468
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    .line 469
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 470
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->a(Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;)Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 477
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
