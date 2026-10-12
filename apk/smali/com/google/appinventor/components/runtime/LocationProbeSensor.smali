.class public Lcom/google/appinventor/components/runtime/LocationProbeSensor;
.super Lcom/google/appinventor/components/runtime/ProbeBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Similar compoment to LocationSensor that provides location information, including longitude, latitude, altitude (if supported by the device).  </p>The \"probe\" can be scheduled to periodically receive location information. In addition, LocationProbeSensor filters the verbose location set for the most accurate location within a max wait time (default 2 mins), ending early if it finds a location that has at most the goodEnoughAccuracy.The default max_wait_time is 2 mins and the default goodEnoughAccuracy is 80. Useful for sparse polling of location to limit battery usage."
    iconName = "images/marker.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "funf.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.ACCESS_COARSE_LOCATION, android.permission.ACCESS_FINE_LOCATION"
.end annotation


# static fields
.field public static final UNKNOWN_VALUE:I


# instance fields
.field private final GOOD_ENOUGHT_ACCURACY:I

.field private final SCHEDULE_DURATION:I

.field private final SCHEDULE_INTERVAL:I

.field protected final SIMPLE_LOCATION_PROBE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private goodEnoughAccurary:I

.field private listener:Ledu/mit/media/funf/probe/Probe$DataListener;

.field private mAccuracy:F

.field private mLatitude:D

.field private mLongitude:D

.field private mProvider:Ljava/lang/String;

.field final myHandler:Landroid/os/Handler;

.field private probe:Ledu/mit/media/funf/probe/builtin/SimpleLocationProbe;

.field private timestamp:J

.field private useCache:Z

.field private useGPS:Z

.field private useNetwork:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .line 76
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ProbeBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 49
    const-string v0, "LocationProbeSensor"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->TAG:Ljava/lang/String;

    .line 50
    const-string v1, "edu.mit.media.funf.probe.builtin.SimpleLocationProbe"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->SIMPLE_LOCATION_PROBE:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 55
    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->mLatitude:D

    .line 56
    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->mLongitude:D

    const/4 v1, 0x0

    .line 57
    iput v1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->mAccuracy:F

    .line 59
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->mProvider:Ljava/lang/String;

    const/16 v1, 0x708

    .line 65
    iput v1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->SCHEDULE_INTERVAL:I

    const/16 v2, 0x3c

    .line 66
    iput v2, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->SCHEDULE_DURATION:I

    const/16 v3, 0x50

    .line 67
    iput v3, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->GOOD_ENOUGHT_ACCURACY:I

    const/4 v4, 0x1

    .line 68
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->useGPS:Z

    .line 69
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->useNetwork:Z

    const/4 v4, 0x0

    .line 70
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->useCache:Z

    .line 96
    new-instance v4, Lcom/google/appinventor/components/runtime/LocationProbeSensor$1;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/LocationProbeSensor$1;-><init>(Lcom/google/appinventor/components/runtime/LocationProbeSensor;)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->myHandler:Landroid/os/Handler;

    .line 166
    new-instance v4, Lcom/google/appinventor/components/runtime/LocationProbeSensor$4;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/LocationProbeSensor$4;-><init>(Lcom/google/appinventor/components/runtime/LocationProbeSensor;)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    .line 80
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 82
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    .line 83
    const-string p1, "Before create probe"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    .line 85
    invoke-static {v0}, Ledu/mit/media/funf/FunfManager;->getProbeFactory(Landroid/content/Context;)Ledu/mit/media/funf/config/SingletonTypeAdapterFactory;

    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->gson:Lcom/google/gson/Gson;

    .line 90
    iput v1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->interval:I

    .line 91
    iput v2, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->duration:I

    .line 92
    iput v3, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->goodEnoughAccurary:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/LocationProbeSensor;)F
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->mAccuracy:F

    return p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/LocationProbeSensor;)D
    .locals 2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->mLatitude:D

    return-wide v0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/LocationProbeSensor;)D
    .locals 2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->mLongitude:D

    return-wide v0
.end method

.method private createNewConfig(ZZI)Lcom/google/gson/JsonObject;
    .locals 2

    .line 236
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 238
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "goodEnoughAccuracy"

    invoke-virtual {v0, v1, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 239
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p3, "useGPS"

    invoke-virtual {v0, p3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 240
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "useNetwork"

    invoke-virtual {v0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 241
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->useCache:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "useCache"

    invoke-virtual {v0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/LocationProbeSensor;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->mProvider:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/LocationProbeSensor;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->timestamp:J

    return-wide v0
.end method

.method public static bridge synthetic f(Lcom/google/appinventor/components/runtime/LocationProbeSensor;F)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->mAccuracy:F

    return-void
.end method

.method public static bridge synthetic g(Lcom/google/appinventor/components/runtime/LocationProbeSensor;D)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->mLatitude:D

    return-void
.end method

.method public static bridge synthetic h(Lcom/google/appinventor/components/runtime/LocationProbeSensor;D)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->mLongitude:D

    return-void
.end method

.method public static bridge synthetic i(Lcom/google/appinventor/components/runtime/LocationProbeSensor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->mProvider:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic j(Lcom/google/appinventor/components/runtime/LocationProbeSensor;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->timestamp:J

    return-void
.end method


# virtual methods
.method public DefaultDuration()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The default duration (in seconds) of each scan for this probe"
    .end annotation

    const/high16 v0, 0x42700000    # 60.0f

    return v0
.end method

.method public DefaultInterval()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The default interval (in seconds) between each scan for this probe"
    .end annotation

    const/high16 v0, 0x44e10000    # 1800.0f

    return v0
.end method

.method public Enabled(Z)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable location probe to run once and receive location"
    .end annotation

    .line 215
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabled:Z

    if-eq v0, p1, :cond_0

    .line 216
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabled:Z

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 218
    const-string v2, "LocationProbeSensor"

    if-eqz p1, :cond_1

    .line 220
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->useGPS:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->useNetwork:Z

    iget v4, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->goodEnoughAccurary:I

    invoke-direct {p0, p1, v3, v4}, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->createNewConfig(ZZI)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 221
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->gson:Lcom/google/gson/Gson;

    const-class v4, Ledu/mit/media/funf/probe/builtin/SimpleLocationProbe;

    invoke-virtual {v3, p1, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ledu/mit/media/funf/probe/builtin/SimpleLocationProbe;

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->probe:Ledu/mit/media/funf/probe/builtin/SimpleLocationProbe;

    .line 222
    new-array v1, v1, [Ledu/mit/media/funf/probe/Probe$DataListener;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v4, v1, v0

    invoke-virtual {v3, v1}, Ledu/mit/media/funf/probe/builtin/SimpleLocationProbe;->registerListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    .line 223
    const-string v0, "register location listener for run-once"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "run-once config:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 226
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->probe:Ledu/mit/media/funf/probe/builtin/SimpleLocationProbe;

    new-array v1, v1, [Ledu/mit/media/funf/probe/Probe$DataListener;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v3, v1, v0

    invoke-virtual {p1, v1}, Ledu/mit/media/funf/probe/builtin/SimpleLocationProbe;->unregisterListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    .line 227
    const-string p1, "unregister location run-once listener"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public GoodEnoughAccuracy()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 284
    iget v0, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->goodEnoughAccurary:I

    return v0
.end method

.method public GoodEnoughAccuracy(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "80"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 272
    iget v0, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->goodEnoughAccurary:I

    if-eq v0, p1, :cond_0

    .line 273
    iput p1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->goodEnoughAccurary:I

    :cond_0
    return-void
.end method

.method public LocationInfoReceived(JDDFLjava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 129
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabledSchedule:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 131
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;-><init>(Lcom/google/appinventor/components/runtime/LocationProbeSensor;JDDFLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public LocationUpdateComplete()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 150
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabledSchedule:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 152
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/LocationProbeSensor$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/LocationProbeSensor$3;-><init>(Lcom/google/appinventor/components/runtime/LocationProbeSensor;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public UseCache(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Fsocalse"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set whether the location info will use the last known location without acquring a new location either through GPC or Network fix"
    .end annotation

    .line 255
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->useCache:Z

    if-eq v0, p1, :cond_0

    .line 256
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->useCache:Z

    :cond_0
    return-void
.end method

.method public UseCache()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 262
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->useCache:Z

    return v0
.end method

.method public UseGPS(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 293
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->useGPS:Z

    if-eq v0, p1, :cond_0

    .line 294
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->useGPS:Z

    :cond_0
    return-void
.end method

.method public UseGPS()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 306
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->useGPS:Z

    return v0
.end method

.method public UseNetwork(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 316
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->useNetwork:Z

    if-eq v0, p1, :cond_0

    .line 317
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->useNetwork:Z

    :cond_0
    return-void
.end method

.method public UseNetwork()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 329
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->useNetwork:Z

    return v0
.end method

.method public registerDataRequest(II)V
    .locals 3

    .line 338
    const-string v0, "Registering location data requests."

    const-string v1, "LocationProbeSensor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v0, "edu.mit.media.funf.probe.builtin.SimpleLocationProbe"

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/ProbeBase;->getDataRequest(IILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 342
    move-object p2, p1

    check-cast p2, Lcom/google/gson/JsonObject;

    iget v0, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->goodEnoughAccurary:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "goodEnoughAccurary"

    invoke-virtual {p2, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 343
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->useGPS:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "useGPS"

    invoke-virtual {p2, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 344
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->useNetwork:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "useNetwork"

    invoke-virtual {p2, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 345
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->useCache:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "useCache"

    invoke-virtual {p2, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 347
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Location Data request: "

    .line 0
    invoke-static {v0, p2, v1}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {p2, v0, p1}, Ledu/mit/media/funf/FunfManager;->requestData(Ledu/mit/media/funf/probe/Probe$DataListener;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public unregisterDataRequest()V
    .locals 3

    .line 359
    const-string v0, "Unregistering location data requests."

    const-string v1, "LocationProbeSensor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {v0, v2}, Ledu/mit/media/funf/FunfManager;->unrequestAllData2(Ledu/mit/media/funf/probe/Probe$DataListener;)V

    .line 363
    const-string v0, "After Unregistering location data requests."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
