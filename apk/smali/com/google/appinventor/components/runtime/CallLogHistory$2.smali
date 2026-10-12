.class Lcom/google/appinventor/components/runtime/CallLogHistory$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/CallLogHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/CallLogHistory;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$2;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 119
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ledu/mit/media/funf/json/IJsonObject;

    .line 120
    const-string v0, "CallLogProbe"

    const-string v1, "Update component\'s varibles....."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$2;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/ProbeBase;->privacySafe:Z

    const-string v2, "numberlabel"

    const-string v3, "numbertype"

    const-string v4, "number"

    const-string v5, "name"

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {p1, v5}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {p1, v4}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {p1, v3}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 128
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$2;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/CallLogHistory;->jsonParser:Lcom/google/gson/JsonParser;

    invoke-virtual {v4, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 129
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$2;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/CallLogHistory;->jsonParser:Lcom/google/gson/JsonParser;

    invoke-virtual {v4, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 130
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$2;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/CallLogHistory;->jsonParser:Lcom/google/gson/JsonParser;

    invoke-virtual {v4, v3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 131
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$2;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/CallLogHistory;->jsonParser:Lcom/google/gson/JsonParser;

    invoke-virtual {v4, v2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 133
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$2;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    const-string v5, "ONE_WAY_HASH"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/appinventor/components/runtime/CallLogHistory;->i(Lcom/google/appinventor/components/runtime/CallLogHistory;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$2;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    invoke-virtual {v1, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/CallLogHistory;->j(Lcom/google/appinventor/components/runtime/CallLogHistory;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$2;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/CallLogHistory;->l(Lcom/google/appinventor/components/runtime/CallLogHistory;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$2;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/CallLogHistory;->k(Lcom/google/appinventor/components/runtime/CallLogHistory;Ljava/lang/String;)V

    goto :goto_4

    .line 140
    :cond_0
    invoke-virtual {p1, v5}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    const-string v6, ""

    if-nez v1, :cond_1

    move-object v1, v6

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p1, v5}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/CallLogHistory;->i(Lcom/google/appinventor/components/runtime/CallLogHistory;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$2;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    invoke-virtual {p1, v4}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v6

    goto :goto_1

    .line 143
    :cond_2
    invoke-virtual {p1, v4}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/CallLogHistory;->j(Lcom/google/appinventor/components/runtime/CallLogHistory;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$2;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    invoke-virtual {p1, v3}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v1, v6

    goto :goto_2

    .line 145
    :cond_3
    invoke-virtual {p1, v3}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/CallLogHistory;->l(Lcom/google/appinventor/components/runtime/CallLogHistory;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$2;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_3

    .line 147
    :cond_4
    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-static {v0, v6}, Lcom/google/appinventor/components/runtime/CallLogHistory;->k(Lcom/google/appinventor/components/runtime/CallLogHistory;Ljava/lang/String;)V

    .line 151
    :goto_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$2;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    const-string v1, "date"

    invoke-virtual {p1, v1}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/CallLogHistory;->g(Lcom/google/appinventor/components/runtime/CallLogHistory;J)V

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$2;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    const-string v1, "duration"

    invoke-virtual {p1, v1}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/CallLogHistory;->h(Lcom/google/appinventor/components/runtime/CallLogHistory;I)V

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$2;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    const-string v1, "type"

    invoke-virtual {p1, v1}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/CallLogHistory;->n(Lcom/google/appinventor/components/runtime/CallLogHistory;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/CallLogHistory;->m(Lcom/google/appinventor/components/runtime/CallLogHistory;Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$2;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/CallLogHistory;->a(Lcom/google/appinventor/components/runtime/CallLogHistory;)J

    move-result-wide v2

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$2;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/CallLogHistory;->b(Lcom/google/appinventor/components/runtime/CallLogHistory;)I

    move-result p1

    int-to-long v4, p1

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$2;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/CallLogHistory;->c(Lcom/google/appinventor/components/runtime/CallLogHistory;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$2;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/CallLogHistory;->d(Lcom/google/appinventor/components/runtime/CallLogHistory;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$2;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/CallLogHistory;->e(Lcom/google/appinventor/components/runtime/CallLogHistory;)Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$2;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/CallLogHistory;->f(Lcom/google/appinventor/components/runtime/CallLogHistory;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Lcom/google/appinventor/components/runtime/CallLogHistory;->CalllogsInfoReceived(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
