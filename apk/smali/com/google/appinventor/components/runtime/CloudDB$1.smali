.class Lcom/google/appinventor/components/runtime/CloudDB$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->startListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/CloudDB;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 359
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->getJedis(Z)Lredis/clients/jedis/Jedis;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    if-eqz v0, :cond_0

    .line 362
    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    new-instance v4, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;)V

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/CloudDB;->i(Lcom/google/appinventor/components/runtime/CloudDB;Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;)V

    .line 363
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/CloudDB;->c(Lcom/google/appinventor/components/runtime/CloudDB;)Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/CloudDB;->e(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lredis/clients/jedis/Jedis;->subscribe(Lredis/clients/jedis/JedisPubSub;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 365
    const-string v4, "CloudDB"

    const-string v5, "Error in listener thread"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    :try_start_1
    invoke-virtual {v0}, Lredis/clients/jedis/Jedis;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 375
    :catch_1
    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 387
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    nop

    .line 394
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/CloudDB;->j(Lcom/google/appinventor/components/runtime/CloudDB;)V

    .line 395
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/CloudDB;->d(Lcom/google/appinventor/components/runtime/CloudDB;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/CloudDB;->f(Lcom/google/appinventor/components/runtime/CloudDB;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/CloudDB;->m(Lcom/google/appinventor/components/runtime/CloudDB;)V

    :cond_1
    return-void
.end method
