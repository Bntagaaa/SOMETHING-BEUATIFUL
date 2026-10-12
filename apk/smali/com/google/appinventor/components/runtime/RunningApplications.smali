.class public Lcom/google/appinventor/components/runtime/RunningApplications;
.super Lcom/google/appinventor/components/runtime/ProbeBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "The current running stack of applications. Tells you what application that the user is currently using"
    iconName = "images/running_applications.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "funf.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.GET_TASKS"
.end annotation


# instance fields
.field private final RUNNINGAPPLICATIONS_PROBE:Ljava/lang/String;

.field private final SCHEDULE_DURATION:I

.field private final SCHEDULE_INTERVAL:I

.field private final TAG:Ljava/lang/String;

.field private listener:Ledu/mit/media/funf/probe/Probe$DataListener;

.field final myHandler:Landroid/os/Handler;

.field private probe:Ledu/mit/media/funf/probe/builtin/RunningApplicationsProbe;

.field private runningClass:Ljava/lang/String;

.field private runningPackage:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .line 142
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ProbeBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 32
    const-string v0, "RunningApplicationsProbe"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/RunningApplications;->TAG:Ljava/lang/String;

    .line 33
    const-string v1, "edu.mit.media.funf.probe.builtin.RunningApplicationsProbe"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/RunningApplications;->RUNNINGAPPLICATIONS_PROBE:Ljava/lang/String;

    .line 36
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/RunningApplications;->runningPackage:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/RunningApplications;->runningClass:Ljava/lang/String;

    const/16 v1, 0xe10

    .line 41
    iput v1, p0, Lcom/google/appinventor/components/runtime/RunningApplications;->SCHEDULE_INTERVAL:I

    const/16 v2, 0xf

    .line 42
    iput v2, p0, Lcom/google/appinventor/components/runtime/RunningApplications;->SCHEDULE_DURATION:I

    .line 44
    new-instance v3, Lcom/google/appinventor/components/runtime/RunningApplications$1;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/RunningApplications$1;-><init>(Lcom/google/appinventor/components/runtime/RunningApplications;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/RunningApplications;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    .line 100
    new-instance v3, Lcom/google/appinventor/components/runtime/RunningApplications$2;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/RunningApplications$2;-><init>(Lcom/google/appinventor/components/runtime/RunningApplications;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/RunningApplications;->myHandler:Landroid/os/Handler;

    .line 144
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 146
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    .line 147
    const-string p1, "Before create probe"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    .line 149
    invoke-static {v0}, Ledu/mit/media/funf/FunfManager;->getProbeFactory(Landroid/content/Context;)Ledu/mit/media/funf/config/SingletonTypeAdapterFactory;

    move-result-object v0

    .line 148
    invoke-virtual {p1, v0}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->gson:Lcom/google/gson/Gson;

    .line 150
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->gson:Lcom/google/gson/Gson;

    const-class v3, Ledu/mit/media/funf/probe/builtin/RunningApplicationsProbe;

    invoke-virtual {v0, p1, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ledu/mit/media/funf/probe/builtin/RunningApplicationsProbe;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/RunningApplications;->probe:Ledu/mit/media/funf/probe/builtin/RunningApplicationsProbe;

    .line 154
    iput v1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->interval:I

    .line 155
    iput v2, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->duration:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/RunningApplications;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/RunningApplications;->runningClass:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/RunningApplications;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/RunningApplications;->runningPackage:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/RunningApplications;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/RunningApplications;->timestamp:J

    return-wide v0
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/RunningApplications;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/RunningApplications;->runningClass:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/RunningApplications;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/RunningApplications;->runningPackage:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic f(Lcom/google/appinventor/components/runtime/RunningApplications;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/RunningApplications;->timestamp:J

    return-void
.end method

.method public static bridge synthetic g(Lcom/google/appinventor/components/runtime/RunningApplications;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/RunningApplications;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    invoke-virtual {v0}, Ledu/mit/media/funf/FunfManager;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 130
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string p1, "(unknown)"

    :goto_1
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public AppsInfoReceived(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 211
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabledSchedule:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 213
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/RunningApplications$3;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/RunningApplications$3;-><init>(Lcom/google/appinventor/components/runtime/RunningApplications;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public DefaultDuration()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The default duration (in seconds) of each scan for this probe"
    .end annotation

    const/high16 v0, 0x41700000    # 15.0f

    return v0
.end method

.method public DefaultInterval()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The default interval (in seconds) between each scan for this probe"
    .end annotation

    const/high16 v0, 0x45610000    # 3600.0f

    return v0
.end method

.method public Enabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable running application probe to run once and receive location"
    .end annotation

    .line 168
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabled:Z

    if-eq v0, p1, :cond_0

    .line 169
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabled:Z

    .line 171
    :cond_0
    const-string v0, "RunningApplicationsProbe"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 172
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/RunningApplications;->probe:Ledu/mit/media/funf/probe/builtin/RunningApplicationsProbe;

    new-array v2, v2, [Ledu/mit/media/funf/probe/Probe$DataListener;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/RunningApplications;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/probe/builtin/RunningApplicationsProbe;->registerListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    .line 173
    const-string p1, "register listener for run-once"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 175
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/RunningApplications;->probe:Ledu/mit/media/funf/probe/builtin/RunningApplicationsProbe;

    new-array v2, v2, [Ledu/mit/media/funf/probe/Probe$DataListener;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/RunningApplications;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/probe/builtin/RunningApplicationsProbe;->unregisterListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    .line 176
    const-string p1, "unregister run-once listener"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerDataRequest(II)V
    .locals 2

    .line 195
    const-string v0, "Registering data requests."

    const-string v1, "RunningApplicationsProbe"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v0, "edu.mit.media.funf.probe.builtin.RunningApplicationsProbe"

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/ProbeBase;->getDataRequest(IILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Data request: "

    .line 0
    invoke-static {v0, p2, v1}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/RunningApplications;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {p2, v0, p1}, Ledu/mit/media/funf/FunfManager;->requestData(Ledu/mit/media/funf/probe/Probe$DataListener;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public unregisterDataRequest()V
    .locals 3

    .line 184
    const-string v0, "Unregistering data requests."

    const-string v1, "RunningApplicationsProbe"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/RunningApplications;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {v0, v2}, Ledu/mit/media/funf/FunfManager;->unrequestAllData2(Ledu/mit/media/funf/probe/Probe$DataListener;)V

    .line 187
    const-string v0, "After Unregistering data requests."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
