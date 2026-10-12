.class Lcom/google/appinventor/components/runtime/NiotronNetworkTools$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronNetworkTools;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
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

    .line 40
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronNetworkTools;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 43
    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 44
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronNetworkTools;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->NetworkConnected()V

    return-void

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronNetworkTools;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->NetworkDisconnected()V

    return-void
.end method
