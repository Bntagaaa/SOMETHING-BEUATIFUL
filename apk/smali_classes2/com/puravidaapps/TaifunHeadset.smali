.class public Lcom/puravidaapps/TaifunHeadset;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Headset extension. Version 1 as of 2018-02-15 for App Inventor version version nb166 and Companion version 2.66."
    helpUrl = "https://puravidaapps.com/headset.php"
    iconName = "https://puravidaapps.com/images/taifun16.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.MODIFY_AUDIO_SETTINGS"
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# instance fields
.field public final a:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field public final b:Landroid/app/Activity;

.field public final c:Landroid/app/Activity;

.field public d:Z

.field public e:Ljava/lang/String;

.field public final f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 49
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/puravidaapps/TaifunHeadset;->d:Z

    .line 45
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/puravidaapps/TaifunHeadset;->e:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/puravidaapps/TaifunHeadset$a;

    invoke-direct {v0, p0}, Lcom/puravidaapps/TaifunHeadset$a;-><init>(Lcom/puravidaapps/TaifunHeadset;)V

    iput-object v0, p0, Lcom/puravidaapps/TaifunHeadset;->f:Landroid/content/BroadcastReceiver;

    .line 50
    iput-object p1, p0, Lcom/puravidaapps/TaifunHeadset;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 51
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/puravidaapps/TaifunHeadset;->b:Landroid/app/Activity;

    .line 52
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/puravidaapps/TaifunHeadset;->c:Landroid/app/Activity;

    .line 59
    iget-boolean v1, p0, Lcom/puravidaapps/TaifunHeadset;->d:Z

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/puravidaapps/TaifunHeadset;->d:Z

    .line 54
    :cond_0
    const-string p1, "TaifunHeadset"

    const-string v0, "TaifunHeadset Created"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public Changed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that headset plug changed."
    .end annotation

    .line 120
    const-string v0, "Changed: "

    const-string v1, "TaifunHeadset"

    .line 0
    invoke-static {v0, p1, v1}, L_COROUTINE/a;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "Changed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Status()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the headset plug status. Possible values are: unplugged, plugged or unknown."
    .end annotation

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/puravidaapps/TaifunHeadset;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaifunHeadset"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/puravidaapps/TaifunHeadset;->e:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/puravidaapps/TaifunHeadset;->b:Landroid/app/Activity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 86
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "plugged"

    return-object v0

    :cond_0
    const-string v0, "unplugged"

    return-object v0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/puravidaapps/TaifunHeadset;->e:Ljava/lang/String;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 127
    const-string v0, "TaifunHeadset"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-boolean v0, p0, Lcom/puravidaapps/TaifunHeadset;->d:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/puravidaapps/TaifunHeadset;->f:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/puravidaapps/TaifunHeadset;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/puravidaapps/TaifunHeadset;->d:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 59
    iget-boolean v0, p0, Lcom/puravidaapps/TaifunHeadset;->d:Z

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/puravidaapps/TaifunHeadset;->f:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/puravidaapps/TaifunHeadset;->c:Landroid/app/Activity;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/puravidaapps/TaifunHeadset;->d:Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 68
    iget-boolean v0, p0, Lcom/puravidaapps/TaifunHeadset;->d:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/puravidaapps/TaifunHeadset;->f:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/puravidaapps/TaifunHeadset;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/puravidaapps/TaifunHeadset;->d:Z

    :cond_0
    return-void
.end method
