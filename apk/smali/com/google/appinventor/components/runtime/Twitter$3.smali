.class Lcom/google/appinventor/components/runtime/Twitter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter;->resultReturned(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Twitter;

.field final synthetic val$oauthVerifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 390
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->val$oauthVerifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->k(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Twitter;->h(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/auth/RequestToken;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->val$oauthVerifier:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/Twitter;->l(Lcom/google/appinventor/components/runtime/Twitter;Ltwitter4j/auth/AccessToken;)V

    .line 397
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Twitter;->a(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/auth/AccessToken;

    move-result-object v2

    invoke-virtual {v2}, Ltwitter4j/auth/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/Twitter;->n(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/Twitter;->q(Lcom/google/appinventor/components/runtime/Twitter;Ltwitter4j/auth/AccessToken;)V

    .line 399
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->e(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Twitter$3$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Twitter$3$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 406
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Got exception: "

    const-string v3, "Twitter"

    .line 0
    invoke-static {v2, v1, v3}, L_COROUTINE/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->printStackTrace()V

    .line 408
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v2, v1, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 410
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 408
    const-string v0, "Authorize"

    const/16 v4, 0x130

    invoke-virtual {v2, v1, v0, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 411
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->p(Lcom/google/appinventor/components/runtime/Twitter;)V

    return-void
.end method
