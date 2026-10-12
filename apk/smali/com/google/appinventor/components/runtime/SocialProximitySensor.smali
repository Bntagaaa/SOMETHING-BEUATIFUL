.class public Lcom/google/appinventor/components/runtime/SocialProximitySensor;
.super Lcom/google/appinventor/components/runtime/ProbeBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that detects whether the Bluetooth-enabled device owned by a friend is close by or not."
    iconName = "images/social_proximity_sensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "funf.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.WAKE_LOCK, android.permission.BLUETOOTH, android.permission.BLUETOOTH_ADMIN"
.end annotation


# static fields
.field private static final REQUEST_ENABLE_BT:I = 0x3e9


# instance fields
.field private final BLUETOOTH_PROBE:Ljava/lang/String;

.field private final PROBE_SCHEDULE_NOTIFICATION:I

.field private final SCHEDULE_DURATION:I

.field private final SCHEDULE_INTERVAL:I

.field private final TAG:Ljava/lang/String;

.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private deviceName:Ljava/lang/String;

.field private duration:I

.field private enabled:Z

.field private enabledSchedule:Z

.field private gson:Lcom/google/gson/Gson;

.field private interval:I

.field isScanningForFirstTime:Z

.field private listener:Ledu/mit/media/funf/probe/Probe$DataListener;

.field private mClass:I

.field private mNM:Landroid/app/NotificationManager;

.field private macAddress:Ljava/lang/String;

.field private mainUIThreadActivity:Landroid/app/Activity;

.field final myHandler:Landroid/os/Handler;

.field private probe:Ledu/mit/media/funf/probe/builtin/BluetoothProbe;

.field private rssi:I

.field private timestamp:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .line 267
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ProbeBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 52
    const-string v0, "edu.mit.media.funf.probe.builtin.BluetoothProbe"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->BLUETOOTH_PROBE:Ljava/lang/String;

    const/16 v0, 0x539

    .line 53
    iput v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->PROBE_SCHEDULE_NOTIFICATION:I

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->isScanningForFirstTime:Z

    .line 72
    const-string v0, "BluetoothSensor"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->TAG:Ljava/lang/String;

    const/16 v1, 0x3c

    .line 77
    iput v1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->SCHEDULE_INTERVAL:I

    const/16 v2, 0x1e

    .line 78
    iput v2, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->SCHEDULE_DURATION:I

    .line 157
    new-instance v3, Lcom/google/appinventor/components/runtime/SocialProximitySensor$1;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/SocialProximitySensor$1;-><init>(Lcom/google/appinventor/components/runtime/SocialProximitySensor;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->myHandler:Landroid/os/Handler;

    .line 192
    new-instance v3, Lcom/google/appinventor/components/runtime/SocialProximitySensor$2;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/SocialProximitySensor$2;-><init>(Lcom/google/appinventor/components/runtime/SocialProximitySensor;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    .line 270
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 272
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->mainUIThreadActivity:Landroid/app/Activity;

    .line 275
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->mainUIThreadActivity:Landroid/app/Activity;

    .line 276
    invoke-static {v3}, Ledu/mit/media/funf/FunfManager;->getProbeFactory(Landroid/content/Context;)Ledu/mit/media/funf/config/SingletonTypeAdapterFactory;

    move-result-object v3

    .line 275
    invoke-virtual {p1, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 276
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->gson:Lcom/google/gson/Gson;

    .line 277
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 278
    const-string v3, "sensorDelay"

    const-string v4, "NORMAL"

    invoke-virtual {p1, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->gson:Lcom/google/gson/Gson;

    const-class v4, Ledu/mit/media/funf/probe/builtin/BluetoothProbe;

    invoke-virtual {v3, p1, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ledu/mit/media/funf/probe/builtin/BluetoothProbe;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->probe:Ledu/mit/media/funf/probe/builtin/BluetoothProbe;

    .line 281
    const-string p1, "Probe created"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iput v1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->interval:I

    .line 285
    iput v2, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->duration:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/SocialProximitySensor;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->deviceName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/SocialProximitySensor;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->mClass:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/SocialProximitySensor;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->macAddress:Ljava/lang/String;

    return-object p0
.end method

.method private checkBluetoothAvailabiblity()V
    .locals 4

    .line 120
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "checkBluetoothAvailabiblity"

    const/16 v3, 0x1f5

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/SocialProximitySensor;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->rssi:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/SocialProximitySensor;)F
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->timestamp:F

    return p0
.end method

.method public static bridge synthetic f(Lcom/google/appinventor/components/runtime/SocialProximitySensor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic g(Lcom/google/appinventor/components/runtime/SocialProximitySensor;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->mClass:I

    return-void
.end method

.method private getDataRequest(II)Lcom/google/gson/JsonElement;
    .locals 4

    .line 242
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 250
    move-object v1, v0

    check-cast v1, Lcom/google/gson/JsonObject;

    const-string v1, "@type"

    const-string v2, "edu.mit.media.funf.probe.builtin.BluetoothProbe"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x28

    .line 252
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maxScanTime"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 253
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 254
    move-object v2, v1

    check-cast v2, Lcom/google/gson/JsonObject;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "strict"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 255
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "interval"

    invoke-virtual {v1, v3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 256
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {v1, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 257
    const-string p1, "opportunistic"

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 259
    const-string p1, "@schedule"

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/google/appinventor/components/runtime/SocialProximitySensor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->macAddress:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic i(Lcom/google/appinventor/components/runtime/SocialProximitySensor;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->rssi:I

    return-void
.end method

.method public static bridge synthetic j(Lcom/google/appinventor/components/runtime/SocialProximitySensor;F)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->timestamp:F

    return-void
.end method


# virtual methods
.method public Enabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable social proximity sensor to run once"
    .end annotation

    .line 307
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->checkBluetoothAvailabiblity()V

    .line 309
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->enabled:Z

    if-eq v0, p1, :cond_0

    .line 310
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->enabled:Z

    .line 312
    :cond_0
    const-string v0, "BluetoothSensor"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 314
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->probe:Ledu/mit/media/funf/probe/builtin/BluetoothProbe;

    new-array v2, v2, [Ledu/mit/media/funf/probe/Probe$DataListener;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/probe/builtin/BluetoothProbe;->registerListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    .line 315
    const-string p1, "register listener for run-once"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 317
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->probe:Ledu/mit/media/funf/probe/builtin/BluetoothProbe;

    new-array v2, v2, [Ledu/mit/media/funf/probe/Probe$DataListener;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/probe/builtin/BluetoothProbe;->unregisterListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    .line 318
    const-string p1, "unregister run-once listener"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 295
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->enabled:Z

    return v0
.end method

.method public EnabledSchedule(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable proximity sensor periodically"
    .end annotation

    .line 102
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->checkBluetoothAvailabiblity()V

    .line 104
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->enabledSchedule:Z

    if-eq v0, p1, :cond_0

    .line 105
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->enabledSchedule:Z

    :cond_0
    if-eqz p1, :cond_1

    .line 110
    iget p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->interval:I

    iget v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->duration:I

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->registerDataRequest(II)V

    return-void

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->unregisterDataRequest()V

    return-void
.end method

.method public EnabledSchedule()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 89
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->enabledSchedule:Z

    return v0
.end method

.method public SetDiscoverable(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enabling discoverability. If set, the device will be discoverable for a period of time as specified in the variable \"seconds\". Note that if set seconds to be 0, the device will be discoverable forever."
    .end annotation

    .line 138
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->checkBluetoothAvailabiblity()V

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    const-string v1, "BluetoothSensor"

    if-nez v0, :cond_0

    .line 142
    const-string v0, "Bluetooth is not enabled, request to turn on Bluetooth"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 148
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    const-string v2, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Set discoverability to:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "seconds"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public SocialProximityInfoReceived(FLjava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 391
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->enabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->enabledSchedule:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 393
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->mainUIThreadActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;-><init>(Lcom/google/appinventor/components/runtime/SocialProximitySensor;FLjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SocialProximityScanComplete()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 409
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->enabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->enabledSchedule:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 410
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->mainUIThreadActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/SocialProximitySensor$4;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/SocialProximitySensor$4;-><init>(Lcom/google/appinventor/components/runtime/SocialProximitySensor;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getOwnDeviceName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get your own device name (Bluetooth)"
    .end annotation

    .line 465
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->checkBluetoothAvailabiblity()V

    .line 466
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerDataRequest(II)V
    .locals 2

    .line 432
    const-string v0, "Registering data requests."

    const-string v1, "BluetoothSensor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->getDataRequest(II)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 438
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Data request: "

    .line 0
    invoke-static {v0, p2, v1}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {p2, v0, p1}, Ledu/mit/media/funf/FunfManager;->requestData(Ledu/mit/media/funf/probe/Probe$DataListener;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public setOwnDeviceName(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Overwrite your own device name (Bluetooth)"
    .end annotation

    .line 451
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->checkBluetoothAvailabiblity()V

    .line 452
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "localdevicename before : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " localdeviceAddress : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothSensor"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 454
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "localdevicename after: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterDataRequest()V
    .locals 3

    .line 423
    const-string v0, "Unregistering data requests."

    const-string v1, "BluetoothSensor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {v0, v2}, Ledu/mit/media/funf/FunfManager;->unrequestAllData2(Ledu/mit/media/funf/probe/Probe$DataListener;)V

    .line 425
    const-string v0, "After Unregistering data requests."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
