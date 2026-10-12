.class Lcom/google/appinventor/components/runtime/SocialProximitySensor$1;
.super Landroid/os/Handler;
.source "SourceFile"


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

    .line 157
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$1;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 161
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ledu/mit/media/funf/json/IJsonObject;

    .line 162
    const-string v0, "BluetoothSensor"

    const-string v1, "Update component\'s varibles....."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$1;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v1}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    check-cast v2, Ledu/mit/media/funf/json/IJsonObject;

    const-string v3, "mAddress"

    invoke-virtual {v2, v3}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {p1, v1}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    check-cast v1, Ledu/mit/media/funf/json/IJsonObject;

    invoke-virtual {v1, v3}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->h(Lcom/google/appinventor/components/runtime/SocialProximitySensor;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$1;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    const-string v1, "android.bluetooth.device.extra.CLASS"

    invoke-virtual {p1, v1}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    check-cast v2, Ledu/mit/media/funf/json/IJsonObject;

    .line 171
    const-string v3, "mClass"

    invoke-virtual {v2, v3}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    check-cast v1, Ledu/mit/media/funf/json/IJsonObject;

    .line 172
    invoke-virtual {v1, v3}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->g(Lcom/google/appinventor/components/runtime/SocialProximitySensor;I)V

    .line 174
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$1;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    const-string v1, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p1, v1}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->f(Lcom/google/appinventor/components/runtime/SocialProximitySensor;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$1;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    const-string v1, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {p1, v1}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->i(Lcom/google/appinventor/components/runtime/SocialProximitySensor;I)V

    .line 177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$1;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    const-string v1, "timestamp"

    invoke-virtual {p1, v1}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v1

    long-to-float p1, v1

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->j(Lcom/google/appinventor/components/runtime/SocialProximitySensor;F)V

    .line 185
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$1;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->e(Lcom/google/appinventor/components/runtime/SocialProximitySensor;)F

    move-result v2

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$1;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->a(Lcom/google/appinventor/components/runtime/SocialProximitySensor;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$1;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->c(Lcom/google/appinventor/components/runtime/SocialProximitySensor;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$1;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->d(Lcom/google/appinventor/components/runtime/SocialProximitySensor;)I

    move-result v5

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$1;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->b(Lcom/google/appinventor/components/runtime/SocialProximitySensor;)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->SocialProximityInfoReceived(FLjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
