.class Lcom/google/appinventor/components/runtime/GameClient$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GameClient;->postGetMessages(Ljava/lang/String;I)V
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

.field final synthetic val$requestedType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 713
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->val$requestedType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2

    .line 741
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    const-string v1, "GetMessages"

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/GameClient;->WebServiceError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 713
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$17;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 8

    .line 716
    :try_start_0
    const-string v0, "count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 717
    const-string v1, "messages"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 719
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 720
    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 721
    const-string v4, "msender"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 722
    const-string v5, "mtime"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 723
    const-string v6, "contents"

    .line 724
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v6, 0x1

    .line 723
    invoke-static {v2, v6}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonArray(Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v2

    .line 727
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->val$requestedType:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 728
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/GameClient;->a(Lcom/google/appinventor/components/runtime/GameClient;)Lcom/google/appinventor/components/runtime/util/GameInstance;

    move-result-object v6

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->val$requestedType:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/google/appinventor/components/runtime/util/GameInstance;->putMessageTime(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 730
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/GameClient;->a(Lcom/google/appinventor/components/runtime/GameClient;)Lcom/google/appinventor/components/runtime/util/GameInstance;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Lcom/google/appinventor/components/runtime/util/GameInstance;->putMessageTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-virtual {v5, v3, v4, v2}, Lcom/google/appinventor/components/runtime/GameClient;->GotMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 734
    :goto_2
    const-string v0, "GameClient"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 735
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    const-string v0, "Failed to parse messages response."

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    .line 737
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    const-string v0, "GetMessages"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/GameClient;->FunctionCompleted(Ljava/lang/String;)V

    return-void
.end method
