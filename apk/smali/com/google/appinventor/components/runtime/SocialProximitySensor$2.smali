.class Lcom/google/appinventor/components/runtime/SocialProximitySensor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ledu/mit/media/funf/probe/Probe$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/SocialProximitySensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/SocialProximitySensor;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$2;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataCompleted(Ledu/mit/media/funf/json/IJsonObject;Lcom/google/gson/JsonElement;)V
    .locals 0

    .line 196
    const-string p1, "BluetoothSensor"

    const-string p2, " before call SocialProximityScanComplete()"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$2;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->SocialProximityScanComplete()V

    return-void
.end method

.method public onDataReceived(Ledu/mit/media/funf/json/IJsonObject;Ledu/mit/media/funf/json/IJsonObject;)V
    .locals 3

    .line 213
    const-string v0, "received Bluetooth sensor info"

    const-string v1, "BluetoothSensor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "data: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$2;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabledSaveToDB:Z

    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/ProbeBase;->saveToDB(Ledu/mit/media/funf/json/IJsonObject;Ledu/mit/media/funf/json/IJsonObject;)V

    .line 228
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$2;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->myHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 230
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 232
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$2;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->myHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
