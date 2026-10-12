.class Lcom/google/appinventor/components/runtime/LocationProbeSensor$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/LocationProbeSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/LocationProbeSensor;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/LocationProbeSensor;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$1;->this$0:Lcom/google/appinventor/components/runtime/LocationProbeSensor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 100
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ledu/mit/media/funf/json/IJsonObject;

    .line 101
    const-string v0, "LocationProbeSensor"

    const-string v1, "Update component\'s varibles....."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$1;->this$0:Lcom/google/appinventor/components/runtime/LocationProbeSensor;

    const-string v2, "mLatitude"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->g(Lcom/google/appinventor/components/runtime/LocationProbeSensor;D)V

    .line 104
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$1;->this$0:Lcom/google/appinventor/components/runtime/LocationProbeSensor;

    const-string v2, "mLongitude"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->h(Lcom/google/appinventor/components/runtime/LocationProbeSensor;D)V

    .line 105
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$1;->this$0:Lcom/google/appinventor/components/runtime/LocationProbeSensor;

    const-string v2, "mAccuracy"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->f(Lcom/google/appinventor/components/runtime/LocationProbeSensor;F)V

    .line 106
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$1;->this$0:Lcom/google/appinventor/components/runtime/LocationProbeSensor;

    const-string v2, "timestamp"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->j(Lcom/google/appinventor/components/runtime/LocationProbeSensor;J)V

    .line 107
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$1;->this$0:Lcom/google/appinventor/components/runtime/LocationProbeSensor;

    const-string v2, "mProvider"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->i(Lcom/google/appinventor/components/runtime/LocationProbeSensor;Ljava/lang/String;)V

    .line 109
    const-string p1, " before call LocationInfoReceived();"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$1;->this$0:Lcom/google/appinventor/components/runtime/LocationProbeSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->e(Lcom/google/appinventor/components/runtime/LocationProbeSensor;)J

    move-result-wide v2

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$1;->this$0:Lcom/google/appinventor/components/runtime/LocationProbeSensor;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->b(Lcom/google/appinventor/components/runtime/LocationProbeSensor;)D

    move-result-wide v4

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$1;->this$0:Lcom/google/appinventor/components/runtime/LocationProbeSensor;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->c(Lcom/google/appinventor/components/runtime/LocationProbeSensor;)D

    move-result-wide v6

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$1;->this$0:Lcom/google/appinventor/components/runtime/LocationProbeSensor;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->a(Lcom/google/appinventor/components/runtime/LocationProbeSensor;)F

    move-result v8

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$1;->this$0:Lcom/google/appinventor/components/runtime/LocationProbeSensor;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->d(Lcom/google/appinventor/components/runtime/LocationProbeSensor;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Lcom/google/appinventor/components/runtime/LocationProbeSensor;->LocationInfoReceived(JDDFLjava/lang/String;)V

    .line 111
    const-string p1, " after call LocationInfoReceived();"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
