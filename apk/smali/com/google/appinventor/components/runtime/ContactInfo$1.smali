.class Lcom/google/appinventor/components/runtime/ContactInfo$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ContactInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ContactInfo;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ContactInfo;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 74
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ledu/mit/media/funf/json/IJsonObject;

    .line 81
    const-string v2, "contactData"

    invoke-virtual {v1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 84
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v4, "mimetype"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 86
    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/ContactInfo;->n(Lcom/google/appinventor/components/runtime/ContactInfo;Lcom/google/gson/JsonElement;)V

    .line 88
    :cond_1
    const-string v4, "vnd.android.cursor.item/nickname"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/ContactInfo;->p(Lcom/google/appinventor/components/runtime/ContactInfo;Lcom/google/gson/JsonElement;)V

    .line 90
    :cond_2
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 91
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/ContactInfo;->s(Lcom/google/appinventor/components/runtime/ContactInfo;Lcom/google/gson/JsonElement;)V

    .line 92
    :cond_3
    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 93
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/ContactInfo;->o(Lcom/google/appinventor/components/runtime/ContactInfo;Lcom/google/gson/JsonElement;)V

    .line 94
    :cond_4
    const-string v4, "vnd.android.cursor.item/organization"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 95
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/ContactInfo;->r(Lcom/google/appinventor/components/runtime/ContactInfo;Lcom/google/gson/JsonElement;)V

    .line 96
    :cond_5
    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 97
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/ContactInfo;->m(Lcom/google/appinventor/components/runtime/ContactInfo;Lcom/google/gson/JsonElement;)V

    .line 98
    :cond_6
    const-string v4, "vnd.android.cursor.item/website"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 99
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/ContactInfo;->t(Lcom/google/appinventor/components/runtime/ContactInfo;Lcom/google/gson/JsonElement;)V

    .line 102
    :cond_7
    const-string v4, "vnd.android.cursor.item/note"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/ContactInfo;->q(Lcom/google/appinventor/components/runtime/ContactInfo;Lcom/google/gson/JsonElement;)V

    goto/16 :goto_0

    .line 134
    :cond_8
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/ContactInfo;->g(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ContactInfo;->f(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ContactInfo;->c(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ContactInfo;->j(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ContactInfo;->k(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;

    move-result-object v9

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ContactInfo;->d(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;

    move-result-object v10

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ContactInfo;->e(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;

    move-result-object v11

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ContactInfo;->a(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;

    move-result-object v12

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ContactInfo;->b(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;

    move-result-object v13

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ContactInfo;->i(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;

    move-result-object v14

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ContactInfo;->l(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;

    move-result-object v15

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ContactInfo;->h(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v4 .. v16}, Lcom/google/appinventor/components/runtime/ContactInfo;->ContactInfoReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
