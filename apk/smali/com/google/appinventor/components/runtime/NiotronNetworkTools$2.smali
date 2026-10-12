.class Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->CheckIsConnectedToInternet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronNetworkTools;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronNetworkTools;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronNetworkTools;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 110
    :try_start_0
    const-string v0, "ping -c 1 google.com"

    .line 111
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronNetworkTools;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->a(Lcom/google/appinventor/components/runtime/NiotronNetworkTools;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2$1;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2;Z)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 119
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronNetworkTools;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->a(Lcom/google/appinventor/components/runtime/NiotronNetworkTools;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
