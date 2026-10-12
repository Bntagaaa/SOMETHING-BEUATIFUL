.class Lcom/google/appinventor/components/runtime/Voting$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Voting;->postRequestBallot()V
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
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Voting;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Voting;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "postRequestBallot Failure "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Voting"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Voting;->a(Lcom/google/appinventor/components/runtime/Voting;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Voting$2$5;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Voting$2$5;-><init>(Lcom/google/appinventor/components/runtime/Voting$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 268
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Voting$2;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 3

    .line 270
    const-string v0, "postRequestBallot: ballot retrieved "

    if-nez p1, :cond_0

    .line 273
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Voting;->a(Lcom/google/appinventor/components/runtime/Voting;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/Voting$2$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Voting$2$1;-><init>(Lcom/google/appinventor/components/runtime/Voting$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 281
    :cond_0
    :try_start_0
    const-string v1, "Voting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    const-string v1, "isPolling"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Voting;->j(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/Boolean;)V

    .line 287
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Voting;->c(Lcom/google/appinventor/components/runtime/Voting;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    const-string v1, "idRequested"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Voting;->i(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/Boolean;)V

    .line 290
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    const-string v1, "question"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Voting;->h(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    const-string v1, "options"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/Voting;->g(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/String;)V

    .line 292
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Voting;->b(Lcom/google/appinventor/components/runtime/Voting;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/Voting;->k(Lcom/google/appinventor/components/runtime/Voting;Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/Voting;->f(Lcom/google/appinventor/components/runtime/Voting;Ljava/util/ArrayList;)V

    .line 293
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Voting;->a(Lcom/google/appinventor/components/runtime/Voting;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/Voting$2$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Voting$2$2;-><init>(Lcom/google/appinventor/components/runtime/Voting$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 299
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Voting;->a(Lcom/google/appinventor/components/runtime/Voting;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/Voting$2$3;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Voting$2$3;-><init>(Lcom/google/appinventor/components/runtime/Voting$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 313
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Voting;->a(Lcom/google/appinventor/components/runtime/Voting;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/Voting$2$4;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Voting$2$4;-><init>(Lcom/google/appinventor/components/runtime/Voting$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
