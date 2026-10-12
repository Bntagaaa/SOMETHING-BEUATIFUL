.class Lme/aemo/buttonwatcher/addons/HomeWatcher$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/aemo/buttonwatcher/addons/HomeWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lme/aemo/buttonwatcher/addons/HomeWatcher;


# direct methods
.method public constructor <init>(Lme/aemo/buttonwatcher/addons/HomeWatcher;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher$b;->a:Lme/aemo/buttonwatcher/addons/HomeWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 66
    const-string p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", Reason: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HomeWatcher"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p2, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher$b;->a:Lme/aemo/buttonwatcher/addons/HomeWatcher;

    iget-object v0, p2, Lme/aemo/buttonwatcher/addons/HomeWatcher;->c:Lme/aemo/buttonwatcher/addons/OnHomePressedListener;

    if-eqz v0, :cond_1

    .line 70
    const-string v0, "homekey"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object p1, p2, Lme/aemo/buttonwatcher/addons/HomeWatcher;->c:Lme/aemo/buttonwatcher/addons/OnHomePressedListener;

    .line 71
    invoke-interface {p1}, Lme/aemo/buttonwatcher/addons/OnHomePressedListener;->onHomePressed()V

    return-void

    .line 72
    :cond_0
    const-string v0, "recentapps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p2, Lme/aemo/buttonwatcher/addons/HomeWatcher;->c:Lme/aemo/buttonwatcher/addons/OnHomePressedListener;

    .line 73
    invoke-interface {p1}, Lme/aemo/buttonwatcher/addons/OnHomePressedListener;->onRecentAppPressed()V

    :cond_1
    return-void
.end method
