.class public Lme/aemo/buttonwatcher/addons/HomeWatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/aemo/buttonwatcher/addons/HomeWatcher$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/IntentFilter;

.field public c:Lme/aemo/buttonwatcher/addons/OnHomePressedListener;

.field public final d:Lme/aemo/buttonwatcher/addons/HomeWatcher$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->a:Landroid/content/Context;

    .line 25
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->b:Landroid/content/IntentFilter;

    .line 26
    new-instance p1, Lme/aemo/buttonwatcher/addons/HomeWatcher$b;

    invoke-direct {p1, p0}, Lme/aemo/buttonwatcher/addons/HomeWatcher$b;-><init>(Lme/aemo/buttonwatcher/addons/HomeWatcher;)V

    iput-object p1, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->d:Lme/aemo/buttonwatcher/addons/HomeWatcher$b;

    return-void
.end method


# virtual methods
.method public setOnHomePressedListener(Lme/aemo/buttonwatcher/addons/OnHomePressedListener;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->c:Lme/aemo/buttonwatcher/addons/OnHomePressedListener;

    return-void
.end method

.method public startWatching()V
    .locals 5

    .line 35
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->b:Landroid/content/IntentFilter;

    const/16 v2, 0x21

    iget-object v3, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->d:Lme/aemo/buttonwatcher/addons/HomeWatcher$b;

    iget-object v4, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->a:Landroid/content/Context;

    if-lt v0, v2, :cond_0

    .line 37
    :try_start_1
    invoke-static {v4, v3, v1}, Lcom/google/appinventor/components/runtime/b;->w(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v4, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 43
    :goto_0
    iget-object v1, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->c:Lme/aemo/buttonwatcher/addons/OnHomePressedListener;

    if-eqz v1, :cond_1

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to register receiver.\nError: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception ~ startWatching"

    invoke-interface {v1, v2, v3}, Lme/aemo/buttonwatcher/addons/OnHomePressedListener;->onErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    const-string v1, "HomeWatcher"

    const-string v2, "Failed to register receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public stopWatching()V
    .locals 4

    .line 52
    :try_start_0
    iget-object v0, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->a:Landroid/content/Context;

    iget-object v1, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->d:Lme/aemo/buttonwatcher/addons/HomeWatcher$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 54
    iget-object v1, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->c:Lme/aemo/buttonwatcher/addons/OnHomePressedListener;

    if-eqz v1, :cond_0

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Receiver not registered.\nError: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IllegalArgumentException ~ stopWatching"

    invoke-interface {v1, v2, v3}, Lme/aemo/buttonwatcher/addons/OnHomePressedListener;->onErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    const-string v1, "HomeWatcher"

    const-string v2, "Receiver not registered"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
