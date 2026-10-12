.class public Lcom/google/appinventor/components/runtime/BatterySensor;
.super Lcom/google/appinventor/components/runtime/ProbeBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Information about the type and current state of the battery in the device. "
    iconName = "images/niotronBatteryTools.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "funf.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.BATTERY_STATS"
.end annotation


# instance fields
.field private final BATTERYSENSOR_PROBE:Ljava/lang/String;

.field private final SCHEDULE_DURATION:I

.field private final SCHEDULE_INTERVAL:I

.field private final TAG:Ljava/lang/String;

.field private level:I

.field private listener:Ledu/mit/media/funf/probe/Probe$DataListener;

.field final myHandler:Landroid/os/Handler;

.field private probe:Ledu/mit/media/funf/probe/builtin/BatteryProbe;

.field private scale:I

.field private timestamp:J


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .line 48
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ProbeBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 32
    const-string v0, "BatterySensor"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->TAG:Ljava/lang/String;

    .line 34
    const-string v1, "edu.mit.media.funf.probe.builtin.BatteryProbe"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->BATTERYSENSOR_PROBE:Ljava/lang/String;

    const/16 v1, 0x384

    .line 43
    iput v1, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->SCHEDULE_INTERVAL:I

    const/16 v2, 0xf

    .line 44
    iput v2, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->SCHEDULE_DURATION:I

    .line 67
    new-instance v3, Lcom/google/appinventor/components/runtime/BatterySensor$1;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/BatterySensor$1;-><init>(Lcom/google/appinventor/components/runtime/BatterySensor;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    .line 101
    new-instance v3, Lcom/google/appinventor/components/runtime/BatterySensor$2;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/BatterySensor$2;-><init>(Lcom/google/appinventor/components/runtime/BatterySensor;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->myHandler:Landroid/os/Handler;

    .line 52
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 54
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    .line 55
    const-string p1, "Before create probe"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    .line 57
    invoke-static {v0}, Ledu/mit/media/funf/FunfManager;->getProbeFactory(Landroid/content/Context;)Ledu/mit/media/funf/config/SingletonTypeAdapterFactory;

    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->gson:Lcom/google/gson/Gson;

    .line 58
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->gson:Lcom/google/gson/Gson;

    const-class v3, Ledu/mit/media/funf/probe/builtin/BatteryProbe;

    invoke-virtual {v0, p1, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ledu/mit/media/funf/probe/builtin/BatteryProbe;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->probe:Ledu/mit/media/funf/probe/builtin/BatteryProbe;

    .line 62
    iput v1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->interval:I

    .line 63
    iput v2, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->duration:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/BatterySensor;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->level:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/BatterySensor;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->scale:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/BatterySensor;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->timestamp:J

    return-wide v0
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/BatterySensor;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->level:I

    return-void
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/BatterySensor;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->scale:I

    return-void
.end method

.method public static bridge synthetic f(Lcom/google/appinventor/components/runtime/BatterySensor;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->timestamp:J

    return-void
.end method


# virtual methods
.method public BatteryInfoReceived(JII)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 165
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabledSchedule:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 167
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/BatterySensor$3;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/BatterySensor$3;-><init>(Lcom/google/appinventor/components/runtime/BatterySensor;JII)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Enabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable battery sensor to run once"
    .end annotation

    .line 126
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabled:Z

    if-eq v0, p1, :cond_0

    .line 127
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabled:Z

    .line 129
    :cond_0
    const-string v0, "BatterySensor"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 130
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->probe:Ledu/mit/media/funf/probe/builtin/BatteryProbe;

    new-array v2, v2, [Ledu/mit/media/funf/probe/Probe$DataListener;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/probe/builtin/BatteryProbe;->registerListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    .line 131
    const-string p1, "register listener for run-once"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 133
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->probe:Ledu/mit/media/funf/probe/builtin/BatteryProbe;

    new-array v2, v2, [Ledu/mit/media/funf/probe/Probe$DataListener;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/probe/builtin/BatteryProbe;->unregisterListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    .line 134
    const-string p1, "unregister run-once listener"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Level()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "the current battery level of the device"
    .end annotation

    .line 184
    iget v0, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->level:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "returning level: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatterySensor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget v0, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->level:I

    return v0
.end method

.method public Scale()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Battery SCALE, integer containing the maximum battery level"
    .end annotation

    .line 202
    iget v0, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->scale:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "returning bettery scale: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatterySensor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget v0, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->scale:I

    return v0
.end method

.method public Timestamp()F
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The timestamp of this sensor event."
    .end annotation

    .line 193
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->timestamp:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "returning timestamp: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatterySensor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->timestamp:J

    long-to-float v0, v0

    return v0
.end method

.method public registerDataRequest(II)V
    .locals 2

    .line 151
    const-string v0, "Registering data requests."

    const-string v1, "BatterySensor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v0, "edu.mit.media.funf.probe.builtin.BatteryProbe"

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/ProbeBase;->getDataRequest(IILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Data request: "

    .line 0
    invoke-static {v0, p2, v1}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {p2, v0, p1}, Ledu/mit/media/funf/FunfManager;->requestData(Ledu/mit/media/funf/probe/Probe$DataListener;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public unregisterDataRequest()V
    .locals 3

    .line 141
    const-string v0, "Unregistering data requests."

    const-string v1, "BatterySensor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BatterySensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {v0, v2}, Ledu/mit/media/funf/FunfManager;->unrequestAllData2(Ledu/mit/media/funf/probe/Probe$DataListener;)V

    .line 144
    const-string v0, "After Unregistering data requests."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
