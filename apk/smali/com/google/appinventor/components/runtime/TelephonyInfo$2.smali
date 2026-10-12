.class Lcom/google/appinventor/components/runtime/TelephonyInfo$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/TelephonyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/TelephonyInfo;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 121
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ledu/mit/media/funf/json/IJsonObject;

    .line 122
    const-string v0, "Telephony"

    const-string v1, "Update component\'s varibles....."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const-string v2, "callState"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->i(Lcom/google/appinventor/components/runtime/TelephonyInfo;I)V

    .line 125
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const-string v2, "deviceId"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->j(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const-string v2, "deviceSoftwareVersion"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->k(Lcom/google/appinventor/components/runtime/TelephonyInfo;I)V

    .line 127
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const-string v2, "line1Number"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->l(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const-string v2, "networkOperator"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->n(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const-string v2, "networkOperatorName"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->o(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const-string v2, "simCountryIso"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->p(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const-string v2, "simOperator"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->q(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const-string v2, "simSerialNumber"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->r(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const-string v2, "subscriberId"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->s(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const-string v2, "networkCountryIso"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->m(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const-string v2, "voicemailNumber"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->t(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V

    .line 137
    const-string p1, " before call LocationInfoReceived();"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->a(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->b(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->h(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->d(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->e(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->c(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->g(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->f(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->TelephonyInfoReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string p1, " after call LocationInfoReceived();"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
