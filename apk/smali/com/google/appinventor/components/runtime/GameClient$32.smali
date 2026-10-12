.class Lcom/google/appinventor/components/runtime/GameClient$32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/GameClient;

.field final synthetic val$allowInstanceIdChange:Z

.field final synthetic val$callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

.field final synthetic val$commandName:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1135
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$commandName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    iput-boolean p4, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$allowInstanceIdChange:Z

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$params:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 4

    .line 1175
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$commandName:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$params:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Posting to server failed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with arguments "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n Failure message: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1135
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$32;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 8

    .line 1137
    const-string v0, ""

    const-string v1, "Ignored server response to "

    const-string v2, "Incorrect game id in response: + "

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$commandName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Received response for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GameClient"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :try_start_0
    const-string v3, "e"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "response"

    if-eqz v3, :cond_0

    .line 1141
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 1143
    :cond_0
    const-string v3, "gid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1144
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "."

    if-nez v6, :cond_1

    .line 1145
    :try_start_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    return-void

    .line 1148
    :cond_1
    const-string v2, "iid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1149
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 1154
    :cond_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->m(Lcom/google/appinventor/components/runtime/GameClient;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 1157
    :cond_3
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$allowInstanceIdChange:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 1162
    :cond_4
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$commandName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for incorrect instance "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    return-void

    .line 1158
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/util/GameInstance;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->b(Lcom/google/appinventor/components/runtime/GameClient;Lcom/google/appinventor/components/runtime/util/GameInstance;)V

    .line 1159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->m(Lcom/google/appinventor/components/runtime/GameClient;Lorg/json/JSONObject;)V

    .line 1160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceIdChanged(Ljava/lang/String;)V

    .line 1167
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 1170
    :goto_2
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1171
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$commandName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse JSON response to command "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    return-void
.end method
