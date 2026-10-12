.class Lcom/google/appinventor/components/runtime/TelephonyInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ledu/mit/media/funf/probe/Probe$DataListener;


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

    .line 89
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$1;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataCompleted(Ledu/mit/media/funf/json/IJsonObject;Lcom/google/gson/JsonElement;)V
    .locals 0

    return-void
.end method

.method public onDataReceived(Ledu/mit/media/funf/json/IJsonObject;Ledu/mit/media/funf/json/IJsonObject;)V
    .locals 3

    .line 99
    const-string v0, "receive data of telephony info"

    const-string v1, "Telephony"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p2}, Ledu/mit/media/funf/json/IJsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DATA: "

    .line 0
    invoke-static {v2, v0, v1}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$1;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabledSaveToDB:Z

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/ProbeBase;->saveToDB(Ledu/mit/media/funf/json/IJsonObject;Ledu/mit/media/funf/json/IJsonObject;)V

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$1;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/TelephonyInfo;->myHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 109
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 110
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$1;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/TelephonyInfo;->myHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
