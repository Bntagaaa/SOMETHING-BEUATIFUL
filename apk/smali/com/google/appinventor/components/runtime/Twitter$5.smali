.class Lcom/google/appinventor/components/runtime/Twitter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter;->TweetWithImage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Twitter;

.field final synthetic val$imagePath:Ljava/lang/String;

.field final synthetic val$status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 538
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->val$imagePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->val$status:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    .line 541
    const-string v1, "TweetWithImage"

    const-string v2, "file://"

    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->val$imagePath:Ljava/lang/String;

    .line 543
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 544
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->val$imagePath:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    .line 546
    :cond_0
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 548
    new-instance v3, Ltwitter4j/StatusUpdate;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->val$status:Ljava/lang/String;

    invoke-direct {v3, v4}, Ltwitter4j/StatusUpdate;-><init>(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v3, v2}, Ltwitter4j/StatusUpdate;->setMedia(Ljava/io/File;)V

    .line 550
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Twitter;->k(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v2

    invoke-interface {v2, v3}, Ltwitter4j/Twitter;->updateStatus(Ltwitter4j/StatusUpdate;)Ltwitter4j/Status;

    return-void

    .line 553
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v3, v2, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v4, v0, [Ljava/lang/Object;

    const/16 v5, 0x13b

    invoke-virtual {v3, v2, v1, v5, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 557
    :goto_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v4, v3, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 558
    invoke-virtual {v2}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    const/16 v0, 0x132

    .line 557
    invoke-virtual {v4, v3, v1, v0, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method
