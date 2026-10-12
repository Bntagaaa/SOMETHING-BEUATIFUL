.class public abstract Lcom/google/appinventor/components/runtime/ProbeBase;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/SensorComponent;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "funf.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.WRITE_EXTERNAL_STORAGE, android.permission.ACCESS_NETWORK_STATE, android.permission.WAKE_LOCK, android.permission.VIBRATE, android.permission.INTERNET"
.end annotation


# static fields
.field public static final PASSWORD_KEY:Ljava/lang/String; = "PASSWORD"

.field public static final PROBE_BASE_NAME:Ljava/lang/String;

.field private static final PROBE_NOTIFICATION_MIN_ID:I = 0x22b8

.field private static probeCounter:I


# instance fields
.field private final PROBE_NOTIFICATION_ID:I

.field private final TAG:Ljava/lang/String;

.field private calendar:Ljava/util/Calendar;

.field protected duration:I

.field protected enabled:Z

.field protected enabledSaveToDB:Z

.field protected enabledSchedule:Z

.field private exportFormat:Ljava/lang/String;

.field private exportPath:Ljava/lang/String;

.field protected gson:Lcom/google/gson/Gson;

.field protected interval:I

.field private localOffsetSeconds:Ljava/math/BigDecimal;

.field protected mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContentIntent:Landroid/app/PendingIntent;

.field protected mIsBound:Z

.field private mNM:Landroid/app/NotificationManager;

.field protected mainUIThreadActivity:Landroid/app/Activity;

.field private notification:Landroid/app/Notification;

.field privacySafe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 349
    sget-object v0, Lcom/google/appinventor/components/runtime/util/SensorDbUtil;->DB_NAME:Ljava/lang/String;

    sput-object v0, Lcom/google/appinventor/components/runtime/ProbeBase;->PROBE_BASE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .line 175
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabled:Z

    .line 95
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabledSchedule:Z

    .line 96
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->privacySafe:Z

    .line 98
    const-string v1, "ProbeBase"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    .line 103
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    .line 104
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mIsBound:Z

    .line 127
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabledSaveToDB:Z

    .line 133
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xf

    .line 135
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->calendar:Ljava/util/Calendar;

    const/16 v3, 0x10

    .line 136
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    int-to-long v2, v2

    const/4 v0, -0x3

    .line 134
    invoke-static {v2, v3, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->localOffsetSeconds:Ljava/math/BigDecimal;

    .line 140
    new-instance v0, Lcom/google/appinventor/components/runtime/ProbeBase$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ProbeBase$1;-><init>(Lcom/google/appinventor/components/runtime/ProbeBase;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mConnection:Landroid/content/ServiceConnection;

    .line 180
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 182
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    .line 186
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    const-class v2, Ledu/mit/media/funf/FunfManager;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 191
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ProbeBase;->doBindService()V

    .line 195
    invoke-static {}, Lcom/google/appinventor/components/runtime/ProbeBase;->getNotificationID()I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->PROBE_NOTIFICATION_ID:I

    .line 198
    const-string p1, "notification"

    .line 199
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mNM:Landroid/app/NotificationManager;

    .line 200
    const-string p1, "created notification manager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "export"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->exportPath:Ljava/lang/String;

    .line 203
    const-string p1, "csv"

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->exportFormat:Ljava/lang/String;

    return-void
.end method

.method private static getNotificationID()I
    .locals 2

    .line 169
    sget v0, Lcom/google/appinventor/components/runtime/ProbeBase;->probeCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/google/appinventor/components/runtime/ProbeBase;->probeCounter:I

    add-int/lit16 v0, v0, 0x22b9

    return v0
.end method

.method public static getSystemPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 353
    const-class v0, Lcom/google/appinventor/components/runtime/ProbeBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract Enabled(Z)V
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 337
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabled:Z

    return v0
.end method

.method public EnabledSaveToDB()Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabledSaveToDB:Z

    return v0
.end method

.method public doBindService()V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    const-class v3, Ledu/mit/media/funf/FunfManager;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 216
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mIsBound:Z

    .line 217
    const-string v0, "ProbeBase"

    const-string v1, "FunfManager is bound, and now we could have register dataRequests"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public doUnbindService()V
    .locals 2

    .line 223
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ProbeBase;->unregisterDataRequest()V

    .line 229
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 230
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mIsBound:Z

    :cond_0
    return-void
.end method

.method public getDataRequest(IILjava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 3

    .line 246
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 247
    move-object v1, v0

    check-cast v1, Lcom/google/gson/JsonObject;

    const-string v1, "@type"

    invoke-virtual {v0, v1, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 251
    move-object v1, p3

    check-cast v1, Lcom/google/gson/JsonObject;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "strict"

    invoke-virtual {p3, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 252
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "interval"

    invoke-virtual {p3, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 253
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {p3, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 254
    const-string p1, "opportunistic"

    invoke-virtual {p3, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 256
    const-string p1, "@schedule"

    invoke-virtual {v0, p1, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .line 343
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ProbeBase;->doUnbindService()V

    return-void
.end method

.method public abstract registerDataRequest(II)V
.end method

.method public saveToDB(Ledu/mit/media/funf/json/IJsonObject;Ledu/mit/media/funf/json/IJsonObject;)V
    .locals 5

    .line 361
    invoke-virtual {p2}, Ledu/mit/media/funf/json/IJsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Writing data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProbeBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p2}, Ledu/mit/media/funf/json/IJsonObject;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 364
    const-string v1, "@type"

    invoke-virtual {p1, v1}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 363
    const-string v3, "probe"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 365
    new-instance v2, Lcom/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->localOffsetSeconds:Ljava/math/BigDecimal;

    invoke-direct {v2, v3}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v3, "timezoneOffset"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 367
    const-string v2, "timestamp"

    invoke-virtual {p2, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    .line 368
    invoke-virtual {p1, v1}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    .line 371
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 372
    const-string v1, "DATABASE_NAME"

    sget-object v4, Lcom/google/appinventor/components/runtime/ProbeBase;->PROBE_BASE_NAME:Ljava/lang/String;

    invoke-virtual {p2, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v1, "TIMESTAMP"

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 374
    const-string v1, "NAME"

    invoke-virtual {p2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string p1, "VALUE"

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    const-class v1, Ledu/mit/media/funf/storage/NameValueDatabaseService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 377
    const-string v0, "edu.mit.media.funf.RECORD"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 379
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    invoke-virtual {p2, p1}, Ledu/mit/media/funf/FunfManager;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public abstract unregisterDataRequest()V
.end method
