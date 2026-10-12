.class public Lcom/google/appinventor/components/runtime/TelephonyInfo;
.super Lcom/google/appinventor/components/runtime/ProbeBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A wrapper funciton of Android TelephonyManager. The components gives information about the telephony services on the device. Applications can use the methods in this class to determine telephony services and states, as well as to access some types of subscriber information. <p> For more info. check http://developer.android.com/reference/android/telephony/TelephonyManager.html"
    iconName = "images/telephony_manager.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "funf.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.Manifest.permission.READ_PHONE_STATE"
.end annotation


# instance fields
.field private final SCHEDULE_DURATION:I

.field private final SCHEDULE_INTERVAL:I

.field private final TAG:Ljava/lang/String;

.field protected final TELEPHONY_PROBE:Ljava/lang/String;

.field private callState:I

.field private deviceId:Ljava/lang/String;

.field private deviceSoftwareVersion:I

.field private lineNumber:Ljava/lang/String;

.field private listener:Ledu/mit/media/funf/probe/Probe$DataListener;

.field final myHandler:Landroid/os/Handler;

.field private networkCounteryIso:Ljava/lang/String;

.field private networkOperator:Ljava/lang/String;

.field private networkOperatorName:Ljava/lang/String;

.field private probe:Ledu/mit/media/funf/probe/builtin/TelephonyProbe;

.field private simCountryIso:Ljava/lang/String;

.field private simOperator:Ljava/lang/String;

.field private simOperatorName:Ljava/lang/String;

.field private simSerialNumber:Ljava/lang/String;

.field private subscriberId:Ljava/lang/String;

.field private voicemailNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .line 71
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ProbeBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 44
    const-string v0, "Telephony"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->TAG:Ljava/lang/String;

    .line 45
    const-string v1, "edu.mit.media.funf.probe.builtin.TelephonyProbe"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->TELEPHONY_PROBE:Ljava/lang/String;

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->callState:I

    .line 51
    const-string v2, ""

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->deviceId:Ljava/lang/String;

    .line 52
    iput v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->deviceSoftwareVersion:I

    .line 53
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->lineNumber:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->networkOperator:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->networkOperatorName:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->simCountryIso:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->simOperator:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->simOperatorName:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->simSerialNumber:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->subscriberId:Ljava/lang/String;

    .line 61
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->networkCounteryIso:Ljava/lang/String;

    .line 62
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->voicemailNumber:Ljava/lang/String;

    const v1, 0x93a80

    .line 64
    iput v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->SCHEDULE_INTERVAL:I

    const/16 v2, 0xf

    .line 65
    iput v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->SCHEDULE_DURATION:I

    .line 89
    new-instance v3, Lcom/google/appinventor/components/runtime/TelephonyInfo$1;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/TelephonyInfo$1;-><init>(Lcom/google/appinventor/components/runtime/TelephonyInfo;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    .line 117
    new-instance v3, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;-><init>(Lcom/google/appinventor/components/runtime/TelephonyInfo;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->myHandler:Landroid/os/Handler;

    .line 74
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 76
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    .line 77
    const-string p1, "Before create probe"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    .line 79
    invoke-static {v0}, Ledu/mit/media/funf/FunfManager;->getProbeFactory(Landroid/content/Context;)Ledu/mit/media/funf/config/SingletonTypeAdapterFactory;

    move-result-object v0

    .line 78
    invoke-virtual {p1, v0}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->gson:Lcom/google/gson/Gson;

    .line 81
    iput v1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->interval:I

    .line 82
    iput v2, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->duration:I

    .line 84
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->gson:Lcom/google/gson/Gson;

    const-class v1, Ledu/mit/media/funf/probe/builtin/TelephonyProbe;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ledu/mit/media/funf/probe/builtin/TelephonyProbe;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->probe:Ledu/mit/media/funf/probe/builtin/TelephonyProbe;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->lineNumber:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->networkCounteryIso:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->networkOperator:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->networkOperatorName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->simOperator:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->simSerialNumber:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->voicemailNumber:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/google/appinventor/components/runtime/TelephonyInfo;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->callState:I

    return-void
.end method

.method public static bridge synthetic j(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic k(Lcom/google/appinventor/components/runtime/TelephonyInfo;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->deviceSoftwareVersion:I

    return-void
.end method

.method public static bridge synthetic l(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->lineNumber:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic m(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->networkCounteryIso:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic n(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->networkOperator:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic o(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->networkOperatorName:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic p(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->simCountryIso:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic q(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->simOperator:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic r(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->simSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic s(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->subscriberId:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic t(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->voicemailNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Enabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable telephonyInfo sensor to run once"
    .end annotation

    .line 172
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabled:Z

    if-eq v0, p1, :cond_0

    .line 173
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabled:Z

    .line 175
    :cond_0
    const-string v0, "Telephony"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 176
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->probe:Ledu/mit/media/funf/probe/builtin/TelephonyProbe;

    new-array v2, v2, [Ledu/mit/media/funf/probe/Probe$DataListener;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/probe/builtin/TelephonyProbe;->registerListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    .line 177
    const-string p1, "register listener for run-once"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 179
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->probe:Ledu/mit/media/funf/probe/builtin/TelephonyProbe;

    new-array v2, v2, [Ledu/mit/media/funf/probe/Probe$DataListener;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/probe/builtin/TelephonyProbe;->unregisterListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    .line 180
    const-string p1, "unregister run-once listener"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public TelephonyInfoReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 153
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabledSchedule:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 155
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;-><init>(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerDataRequest(II)V
    .locals 3

    .line 198
    const-string v0, "Registering data requests."

    const-string v1, "Telephony"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v0, "edu.mit.media.funf.probe.builtin.TelephonyProbe"

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/ProbeBase;->getDataRequest(IILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 202
    move-object p2, p1

    check-cast p2, Lcom/google/gson/JsonObject;

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->privacySafe:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "hideSensitiveData"

    invoke-virtual {p2, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 203
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Data request: "

    .line 0
    invoke-static {v0, p2, v1}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {p2, v0, p1}, Ledu/mit/media/funf/FunfManager;->requestData(Ledu/mit/media/funf/probe/Probe$DataListener;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public unregisterDataRequest()V
    .locals 2

    .line 188
    const-string v0, "Telephony"

    const-string v1, "Unregistering data requests."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {v0, v1}, Ledu/mit/media/funf/FunfManager;->unrequestAllData2(Ledu/mit/media/funf/probe/Probe$DataListener;)V

    return-void
.end method
