.class Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->GetFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;

.field final synthetic val$urlWithParameters:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2;->val$urlWithParameters:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2;->val$urlWithParameters:Ljava/lang/String;

    .line 200
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 203
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x1000

    .line 204
    new-array v2, v2, [B

    .line 205
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 206
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 209
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->a(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;)Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2$1;

    invoke-direct {v2, p0, v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 226
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->a(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
