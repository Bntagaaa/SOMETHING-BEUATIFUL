.class Lcom/google/appinventor/components/runtime/Twitter$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Twitter$7;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Twitter$7;)V
    .locals 0

    .line 679
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$7$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 681
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$7$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$7;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Twitter$7;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->d(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 682
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$7$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$7;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Twitter$7;->friends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/User;

    .line 683
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$7$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$7;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Twitter$7;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Twitter;->d(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Ltwitter4j/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$7$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$7;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Twitter$7;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->d(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Twitter;->FollowersReceived(Ljava/util/List;)V

    return-void
.end method
