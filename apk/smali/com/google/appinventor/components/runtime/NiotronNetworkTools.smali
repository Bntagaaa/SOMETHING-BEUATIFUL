.class public final Lcom/google/appinventor/components/runtime/NiotronNetworkTools;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTRAS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A new component "
    iconName = "images/niotronNetworkTools.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.ACCESS_NETWORK_STATE, android.permission.ACCESS_WIFI_STATE"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private networkChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 37
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 38
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->context:Landroid/content/Context;

    .line 39
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->activity:Landroid/app/Activity;

    .line 40
    new-instance p1, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronNetworkTools;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->networkChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->registerReceiver()V

    .line 53
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 54
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/NiotronNetworkTools;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private isReceiverRegistered(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z
    .locals 2

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-static {p1, p2, v0}, Lcom/google/appinventor/components/runtime/b;->j(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private registerReceiver()V
    .locals 3

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->networkChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/google/appinventor/components/runtime/b;->w(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public CheckIsConnectedToInternet()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Checks if connected to internet"
    .end annotation

    .line 107
    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronNetworkTools;)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public ConnectedToInternetResult(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Result of connected to internet"
    .end annotation

    .line 132
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ConnectedToInternetResult"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public IsConnected()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns if connected"
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 101
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public NTSDownloads(Z)I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "NTS = Network Traffic Statistics\nReturns the size of total downloaded data/packets in bytes of over all interfaces in current session. If oi/overall_Interface is set to false then it returns the size of total downloaded in bytes over the mobile interface only."
    .end annotation

    if-eqz p1, :cond_0

    .line 188
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    :goto_0
    long-to-int p1, v0

    return p1

    .line 191
    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    goto :goto_0
.end method

.method public NTSUploads(Z)I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "NTS = Network Traffic Statistics\nReturns the size of total Uploaded data/packets in bytes of over all interfaces in current session. If oi/overall_Interface is set to false then it returns the size of total Uploaded in bytes over the mobile interface only."
    .end annotation

    if-eqz p1, :cond_0

    .line 198
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v0

    :goto_0
    long-to-int p1, v0

    return p1

    .line 201
    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    goto :goto_0
.end method

.method public NetworkConnected()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Checks if network connected"
    .end annotation

    const/4 v0, 0x0

    .line 89
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NetworkConnected"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public NetworkDisconnected()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Check if network disconnected"
    .end annotation

    const/4 v0, 0x0

    .line 94
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NetworkDisconnected"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public isInRoaming()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return true device is in roaming."
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMobileConnection()Z
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return true if the device is connected via Mobile/Personal network."
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    aget-object v6, v0, v3

    .line 156
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MOBILE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    return v5

    :cond_2
    return v2
.end method

.method public isVPNConnected()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return true if VPN turned ON, in device."
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/16 v1, 0x11

    .line 170
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    return v0
.end method

.method public isWifiConnection()Z
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return true if the device is connected via Wifi."
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    aget-object v6, v0, v3

    .line 141
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "WIFI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    return v5

    :cond_2
    return v2
.end method

.method public onDestroy()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->networkChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->isReceiverRegistered(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->networkChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->networkChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->isReceiverRegistered(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->networkChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->registerReceiver()V

    return-void
.end method
