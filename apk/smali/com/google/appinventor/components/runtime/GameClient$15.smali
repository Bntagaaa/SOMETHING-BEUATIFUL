.class Lcom/google/appinventor/components/runtime/GameClient$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GameClient;->postGetInstanceLists()V
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


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/GameClient;)V
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$15;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2

    .line 635
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$15;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    const-string v0, "GetInstanceLists"

    const-string v1, "Failed to get up to date instance lists."

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->WebServiceError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 629
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$15;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$15;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->l(Lcom/google/appinventor/components/runtime/GameClient;Lorg/json/JSONObject;)V

    .line 632
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$15;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    const-string v0, "GetInstanceLists"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/GameClient;->FunctionCompleted(Ljava/lang/String;)V

    return-void
.end method
