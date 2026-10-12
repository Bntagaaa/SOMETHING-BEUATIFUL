.class public Lcom/google/appinventor/components/runtime/CallLogHistory;
.super Lcom/google/appinventor/components/runtime/ProbeBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Return information of recent calls. A wrapper around Android.Calllog.Calls (see http://developer.android.com/reference/android/provider/CallLog.Calls.html). Could specifiy \"afterDate\" parameter to only read calllog information after that date. Some of the returning fields (name, number, numberType, numberLabel) can be returned as hashed for privacy reasons"
    iconName = "images/phoneCall.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "funf.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.READ_CONTACTS"
.end annotation


# instance fields
.field private final CALLLOG_PROBE:Ljava/lang/String;

.field private final SCHEDULE_DURATION:I

.field private final SCHEDULE_INTERVAL:I

.field private final TAG:Ljava/lang/String;

.field private afterDate:J

.field context:Landroid/content/Context;

.field private date:J

.field private duration:I

.field jsonParser:Lcom/google/gson/JsonParser;

.field private listener:Ledu/mit/media/funf/probe/Probe$DataListener;

.field final myHandler:Landroid/os/Handler;

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private numberLabel:Ljava/lang/String;

.field private numberType:Ljava/lang/String;

.field private probe:Ledu/mit/media/funf/probe/builtin/CallLogProbe;

.field sdf:Ljava/text/SimpleDateFormat;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .line 184
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ProbeBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 44
    const-string v0, "CallLogProbe"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->TAG:Ljava/lang/String;

    .line 46
    const-string v1, "edu.mit.media.funf.probe.builtin.CallLogProbe"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->CALLLOG_PROBE:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 58
    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->afterDate:J

    const v1, 0x15180

    .line 62
    iput v1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->SCHEDULE_INTERVAL:I

    const/16 v2, 0xf

    .line 63
    iput v2, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->SCHEDULE_DURATION:I

    .line 64
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->sdf:Ljava/text/SimpleDateFormat;

    .line 67
    new-instance v3, Lcom/google/gson/JsonParser;

    invoke-direct {v3}, Lcom/google/gson/JsonParser;-><init>()V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->jsonParser:Lcom/google/gson/JsonParser;

    .line 71
    new-instance v3, Lcom/google/appinventor/components/runtime/CallLogHistory$1;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/CallLogHistory$1;-><init>(Lcom/google/appinventor/components/runtime/CallLogHistory;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    .line 113
    new-instance v3, Lcom/google/appinventor/components/runtime/CallLogHistory$2;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/CallLogHistory$2;-><init>(Lcom/google/appinventor/components/runtime/CallLogHistory;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->myHandler:Landroid/os/Handler;

    .line 187
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 188
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->context:Landroid/content/Context;

    .line 189
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    .line 190
    const-string p1, "Before create probe"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    .line 192
    invoke-static {v0}, Ledu/mit/media/funf/FunfManager;->getProbeFactory(Landroid/content/Context;)Ledu/mit/media/funf/config/SingletonTypeAdapterFactory;

    move-result-object v0

    .line 191
    invoke-virtual {p1, v0}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 192
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->gson:Lcom/google/gson/Gson;

    .line 193
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->gson:Lcom/google/gson/Gson;

    const-class v3, Ledu/mit/media/funf/probe/builtin/CallLogProbe;

    invoke-virtual {v0, p1, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ledu/mit/media/funf/probe/builtin/CallLogProbe;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->probe:Ledu/mit/media/funf/probe/builtin/CallLogProbe;

    .line 197
    iput v1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->interval:I

    .line 198
    iput v2, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->duration:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/CallLogHistory;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->date:J

    return-wide v0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/CallLogHistory;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->duration:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/CallLogHistory;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/CallLogHistory;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->number:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/CallLogHistory;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->numberType:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/google/appinventor/components/runtime/CallLogHistory;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->type:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/google/appinventor/components/runtime/CallLogHistory;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->date:J

    return-void
.end method

.method private getTypeName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 178
    const-string p1, ""

    return-object p1

    .line 174
    :cond_0
    const-string p1, "MISSED"

    return-object p1

    .line 171
    :cond_1
    const-string p1, "OUTGOING"

    return-object p1

    .line 168
    :cond_2
    const-string p1, "INCOMING"

    return-object p1
.end method

.method public static bridge synthetic h(Lcom/google/appinventor/components/runtime/CallLogHistory;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->duration:I

    return-void
.end method

.method public static bridge synthetic i(Lcom/google/appinventor/components/runtime/CallLogHistory;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->name:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic j(Lcom/google/appinventor/components/runtime/CallLogHistory;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->number:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic k(Lcom/google/appinventor/components/runtime/CallLogHistory;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->numberLabel:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic l(Lcom/google/appinventor/components/runtime/CallLogHistory;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->numberType:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic m(Lcom/google/appinventor/components/runtime/CallLogHistory;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->type:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic n(Lcom/google/appinventor/components/runtime/CallLogHistory;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/CallLogHistory;->getTypeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public AfterDate(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Specify the date after which the callogs occurred. The formate should be \"YYYY-MM-DD HH:mm:ss\""
    .end annotation

    .line 214
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 218
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 221
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 222
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 221
    const-string p1, "AfterDate"

    const/16 v2, 0x2e40

    invoke-virtual {v0, p0, p1, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 224
    :goto_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 225
    sget-object p1, Ledu/mit/media/funf/time/TimeUnit;->MILLISECONDS:Ledu/mit/media/funf/time/TimeUnit;

    invoke-virtual {p1, v0, v1}, Ledu/mit/media/funf/time/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->afterDate:J

    .line 227
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->afterDate:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "afterDate: "

    const-string v1, "CallLogProbe"

    .line 0
    invoke-static {v0, p1, v1}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public CalllogsInfoReceived(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 315
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabledSchedule:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 317
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/CallLogHistory$3;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/google/appinventor/components/runtime/CallLogHistory$3;-><init>(Lcom/google/appinventor/components/runtime/CallLogHistory;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public DefaultInterval()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The default interval (in seconds) between each scan for this probe"
    .end annotation

    const v0, 0x47a8c000    # 86400.0f

    return v0
.end method

.method public Enabled(Z)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable calllog history probe to run once"
    .end annotation

    .line 258
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabled:Z

    if-eq v0, p1, :cond_0

    .line 259
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabled:Z

    .line 260
    :cond_0
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 263
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->afterDate:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    .line 264
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v3, "afterDate"

    invoke-virtual {v0, v3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 267
    :cond_1
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->privacySafe:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v3, "hideSensitiveData"

    invoke-virtual {v0, v3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 268
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->gson:Lcom/google/gson/Gson;

    const-class v3, Ledu/mit/media/funf/probe/builtin/CallLogProbe;

    invoke-virtual {p1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ledu/mit/media/funf/probe/builtin/CallLogProbe;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->probe:Ledu/mit/media/funf/probe/builtin/CallLogProbe;

    .line 269
    new-array v2, v2, [Ledu/mit/media/funf/probe/Probe$DataListener;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/probe/builtin/CallLogProbe;->registerListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "run-once config:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CallLogProbe"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 273
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->probe:Ledu/mit/media/funf/probe/builtin/CallLogProbe;

    new-array v0, v2, [Ledu/mit/media/funf/probe/Probe$DataListener;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ledu/mit/media/funf/probe/builtin/CallLogProbe;->unregisterListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    return-void
.end method

.method public registerDataRequest(II)V
    .locals 6

    .line 291
    const-string v0, "Registering calllogs requests."

    const-string v1, "CallLogProbe"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v0, "edu.mit.media.funf.probe.builtin.CallLogProbe"

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/ProbeBase;->getDataRequest(IILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 296
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->afterDate:J

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_0

    .line 297
    move-object p2, p1

    check-cast p2, Lcom/google/gson/JsonObject;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "afterDate"

    invoke-virtual {p2, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 299
    :cond_0
    move-object p2, p1

    check-cast p2, Lcom/google/gson/JsonObject;

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->privacySafe:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "hideSensitiveData"

    invoke-virtual {p2, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 300
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CallLog request: "

    .line 0
    invoke-static {v0, p2, v1}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {p2, v0, p1}, Ledu/mit/media/funf/FunfManager;->requestData(Ledu/mit/media/funf/probe/Probe$DataListener;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public unregisterDataRequest()V
    .locals 2

    .line 281
    const-string v0, "CallLogProbe"

    const-string v1, "Unregistering calllog data requests."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {v0, v1}, Ledu/mit/media/funf/FunfManager;->unrequestAllData2(Ledu/mit/media/funf/probe/Probe$DataListener;)V

    return-void
.end method
