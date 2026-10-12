.class public Lcom/google/appinventor/components/runtime/util/SensorDbUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DB_NAME:Ljava/lang/String;

.field public static final sensorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    const-string v1, "ActivitySensor"

    const-string v2, "edu.mit.media.funf.probe.builtin.ActivityProbe"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "BatterySensor"

    const-string v2, "edu.mit.media.funf.probe.builtin.BatteryProbe"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v1, "CallLogHistory"

    const-string v2, "edu.mit.media.funf.probe.builtin.CallLogProbe"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v1, "CellTowerProbeSensor"

    const-string v2, "edu.mit.media.funf.probe.builtin.CellTowerProbe"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "LightSensor"

    const-string v2, "edu.mit.media.funf.probe.builtin.LightSensorProbe"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "LocationProbeSensor"

    const-string v2, "edu.mit.media.funf.probe.builtin.SimpleLocationProbe"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "PedometerSensor"

    const-string v2, "edu.mit.media.funf.probe.builtin.PedometerProbe"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "ProximitySensor"

    const-string v2, "edu.mit.media.funf.probe.builtin.ProximitySensorProbe"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "RunningApplications"

    const-string v2, "edu.mit.media.funf.probe.builtin.RunningApplicationsProbe"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "ScreenStatus"

    const-string v2, "edu.mit.media.funf.probe.builtin.ScreenProbe"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "SmsHistory"

    const-string v2, "edu.mit.media.funf.probe.builtin.SmsProbe"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "SocialProximitySensor"

    const-string v2, "edu.mit.media.funf.probe.builtin.BluetoothProbe"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "TelephonyInfo"

    const-string v2, "edu.mit.media.funf.probe.builtin.TelephonyProbe"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "WifiSensor"

    const-string v2, "edu.mit.media.funf.probe.builtin.WifiProbe"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/SensorDbUtil;->sensorMap:Ljava/util/Map;

    .line 51
    const-string v0, "__SENSOR_DB__"

    sput-object v0, Lcom/google/appinventor/components/runtime/util/SensorDbUtil;->DB_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPipelineName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".__SENSOR_DB__"

    .line 0
    invoke-static {p0, v0}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
