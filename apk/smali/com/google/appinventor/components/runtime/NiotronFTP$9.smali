.class Lcom/google/appinventor/components/runtime/NiotronFTP$9;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronFTP;->GetListOfFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronFTP;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronFTP;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$9;->this$0:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 298
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$9;->this$0:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronFTP;->b(Lcom/google/appinventor/components/runtime/NiotronFTP;)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->listNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :catch_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$9;->this$0:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronFTP;->d(Lcom/google/appinventor/components/runtime/NiotronFTP;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronFTP$9$1;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/NiotronFTP$9$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP$9;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
