.class Lcom/google/appinventor/components/runtime/SmsHistory$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/SmsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/SmsHistory;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/SmsHistory;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SmsHistory$2;->this$0:Lcom/google/appinventor/components/runtime/SmsHistory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 141
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ledu/mit/media/funf/json/IJsonObject;

    .line 142
    const-string v0, "SmsProbe"

    const-string v1, "Update component\'s varibles....."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SmsHistory$2;->this$0:Lcom/google/appinventor/components/runtime/SmsHistory;

    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/ProbeBase;->privacySafe:Z

    const-string v2, "body"

    const-string v3, "address"

    const-string v4, ""

    if-eqz v1, :cond_4

    .line 147
    invoke-virtual {p1, v3}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v4

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p1, v3}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_0
    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v4

    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 152
    :goto_1
    const-string v2, "ONE_WAY_HASH"

    if-eq v0, v4, :cond_2

    .line 153
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SmsHistory$2;->this$0:Lcom/google/appinventor/components/runtime/SmsHistory;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/SmsHistory;->jsonParser:Lcom/google/gson/JsonParser;

    invoke-virtual {v3, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 154
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SmsHistory$2;->this$0:Lcom/google/appinventor/components/runtime/SmsHistory;

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/SmsHistory;->f(Lcom/google/appinventor/components/runtime/SmsHistory;Ljava/lang/String;)V

    goto :goto_2

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SmsHistory$2;->this$0:Lcom/google/appinventor/components/runtime/SmsHistory;

    invoke-static {v0, v4}, Lcom/google/appinventor/components/runtime/SmsHistory;->f(Lcom/google/appinventor/components/runtime/SmsHistory;Ljava/lang/String;)V

    :goto_2
    if-eq v1, v4, :cond_3

    .line 160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SmsHistory$2;->this$0:Lcom/google/appinventor/components/runtime/SmsHistory;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/SmsHistory;->jsonParser:Lcom/google/gson/JsonParser;

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SmsHistory$2;->this$0:Lcom/google/appinventor/components/runtime/SmsHistory;

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/SmsHistory;->g(Lcom/google/appinventor/components/runtime/SmsHistory;Ljava/lang/String;)V

    goto :goto_5

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SmsHistory$2;->this$0:Lcom/google/appinventor/components/runtime/SmsHistory;

    invoke-static {v0, v4}, Lcom/google/appinventor/components/runtime/SmsHistory;->g(Lcom/google/appinventor/components/runtime/SmsHistory;Ljava/lang/String;)V

    goto :goto_5

    .line 169
    :cond_4
    invoke-virtual {p1, v3}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-nez v1, :cond_5

    move-object v1, v4

    goto :goto_3

    .line 170
    :cond_5
    invoke-virtual {p1, v3}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/SmsHistory;->f(Lcom/google/appinventor/components/runtime/SmsHistory;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SmsHistory$2;->this$0:Lcom/google/appinventor/components/runtime/SmsHistory;

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_4

    .line 173
    :cond_6
    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-static {v0, v4}, Lcom/google/appinventor/components/runtime/SmsHistory;->g(Lcom/google/appinventor/components/runtime/SmsHistory;Ljava/lang/String;)V

    .line 176
    :goto_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SmsHistory$2;->this$0:Lcom/google/appinventor/components/runtime/SmsHistory;

    const-string v1, "date"

    invoke-virtual {p1, v1}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/SmsHistory;->h(Lcom/google/appinventor/components/runtime/SmsHistory;J)V

    .line 177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SmsHistory$2;->this$0:Lcom/google/appinventor/components/runtime/SmsHistory;

    const-string v1, "read"

    invoke-virtual {p1, v1}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/SmsHistory;->i(Lcom/google/appinventor/components/runtime/SmsHistory;Z)V

    .line 180
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SmsHistory$2;->this$0:Lcom/google/appinventor/components/runtime/SmsHistory;

    const-string v1, "type"

    invoke-virtual {p1, v1}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/SmsHistory;->k(Lcom/google/appinventor/components/runtime/SmsHistory;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/SmsHistory;->j(Lcom/google/appinventor/components/runtime/SmsHistory;Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SmsHistory$2;->this$0:Lcom/google/appinventor/components/runtime/SmsHistory;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/SmsHistory;->c(Lcom/google/appinventor/components/runtime/SmsHistory;)J

    move-result-wide v2

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SmsHistory$2;->this$0:Lcom/google/appinventor/components/runtime/SmsHistory;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/SmsHistory;->a(Lcom/google/appinventor/components/runtime/SmsHistory;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SmsHistory$2;->this$0:Lcom/google/appinventor/components/runtime/SmsHistory;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/SmsHistory;->b(Lcom/google/appinventor/components/runtime/SmsHistory;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SmsHistory$2;->this$0:Lcom/google/appinventor/components/runtime/SmsHistory;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/SmsHistory;->e(Lcom/google/appinventor/components/runtime/SmsHistory;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SmsHistory$2;->this$0:Lcom/google/appinventor/components/runtime/SmsHistory;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/SmsHistory;->d(Lcom/google/appinventor/components/runtime/SmsHistory;)Z

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/SmsHistory;->SmsInfoReceived(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
