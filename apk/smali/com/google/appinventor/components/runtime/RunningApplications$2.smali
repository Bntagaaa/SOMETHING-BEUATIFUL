.class Lcom/google/appinventor/components/runtime/RunningApplications$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/RunningApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/RunningApplications;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/RunningApplications;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/RunningApplications$2;->this$0:Lcom/google/appinventor/components/runtime/RunningApplications;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 104
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ledu/mit/media/funf/json/IJsonObject;

    .line 105
    const-string v0, "RunningApplicationsProbe"

    const-string v1, "Update component\'s varibles....."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v1, "taskInfo"

    invoke-virtual {p1, v1}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 108
    const-string v2, "baseIntent"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 109
    const-string v2, "mComponent"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/RunningApplications$2;->this$0:Lcom/google/appinventor/components/runtime/RunningApplications;

    const-string v3, "mClass"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/RunningApplications;->d(Lcom/google/appinventor/components/runtime/RunningApplications;Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/RunningApplications$2;->this$0:Lcom/google/appinventor/components/runtime/RunningApplications;

    const-string v3, "mPackage"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/RunningApplications;->e(Lcom/google/appinventor/components/runtime/RunningApplications;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/RunningApplications$2;->this$0:Lcom/google/appinventor/components/runtime/RunningApplications;

    const-string v2, "timestamp"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/RunningApplications;->f(Lcom/google/appinventor/components/runtime/RunningApplications;J)V

    .line 115
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/RunningApplications$2;->this$0:Lcom/google/appinventor/components/runtime/RunningApplications;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/RunningApplications;->b(Lcom/google/appinventor/components/runtime/RunningApplications;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/RunningApplications;->g(Lcom/google/appinventor/components/runtime/RunningApplications;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 117
    const-string p1, " before call ApplicationsInfoReceived()"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/RunningApplications$2;->this$0:Lcom/google/appinventor/components/runtime/RunningApplications;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/RunningApplications;->c(Lcom/google/appinventor/components/runtime/RunningApplications;)J

    move-result-wide v3

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/RunningApplications$2;->this$0:Lcom/google/appinventor/components/runtime/RunningApplications;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/RunningApplications;->a(Lcom/google/appinventor/components/runtime/RunningApplications;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/RunningApplications$2;->this$0:Lcom/google/appinventor/components/runtime/RunningApplications;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/RunningApplications;->b(Lcom/google/appinventor/components/runtime/RunningApplications;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/RunningApplications;->AppsInfoReceived(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string p1, " after call ApplicationsInfoReceived()"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
