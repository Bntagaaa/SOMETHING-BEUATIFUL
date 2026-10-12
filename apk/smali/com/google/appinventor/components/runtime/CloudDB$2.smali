.class Lcom/google/appinventor/components/runtime/CloudDB$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
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

    .line 632
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    .line 643
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/CloudDB;->g(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :try_start_1
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/CloudDB;->g(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    move-object v5, v0

    goto :goto_1

    .line 657
    :cond_0
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/CloudDB;->g(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;

    .line 662
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    if-nez v5, :cond_1

    if-eqz v1, :cond_4

    .line 669
    :try_start_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 673
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const-string v5, "local key = KEYS[1];local value = ARGV[1];local topublish = cjson.decode(ARGV[2]);local project = ARGV[3];local newtable = {};table.insert(newtable, key);table.insert(newtable, topublish);redis.call(\"publish\", project, cjson.encode(newtable));return redis.call(\'set\', project .. \":\" .. key, value);"

    const-string v6, "765978e4c340012f50733280368a0ccc4a14dfb7"

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/CloudDB;->e(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v1, v3, v0, v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v6, v4, v0}, Lcom/google/appinventor/components/runtime/CloudDB;->jEval(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;

    .line 674
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const-string v2, "StoreValue"

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/CloudDB;->UpdateDone(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 677
    :try_start_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v0}, Lredis/clients/jedis/exceptions/JedisException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/CloudDB;->k(Lcom/google/appinventor/components/runtime/CloudDB;)V

    goto :goto_3

    .line 683
    :cond_1
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;->getTag()Ljava/lang/String;

    move-result-object v7

    .line 684
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;->getValueList()Lorg/json/JSONArray;

    move-result-object v5

    if-nez v1, :cond_2

    .line 697
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v3, v1

    move-object v2, v5

    move-object v1, v7

    goto :goto_0

    .line 698
    :cond_2
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 699
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 700
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 703
    :cond_3
    :try_start_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 707
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const-string v9, "local key = KEYS[1];local value = ARGV[1];local topublish = cjson.decode(ARGV[2]);local project = ARGV[3];local newtable = {};table.insert(newtable, key);table.insert(newtable, topublish);redis.call(\"publish\", project, cjson.encode(newtable));return redis.call(\'set\', project .. \":\" .. key, value);"

    const-string v10, "765978e4c340012f50733280368a0ccc4a14dfb7"

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/CloudDB;->e(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v1, v3, v2, v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v9, v10, v4, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->jEval(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;
    :try_end_4
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 716
    :try_start_5
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :catch_2
    move-exception v0

    .line 709
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v0}, Lredis/clients/jedis/exceptions/JedisException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/CloudDB;->k(Lcom/google/appinventor/components/runtime/CloudDB;)V

    .line 711
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/CloudDB;->g(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_4
    :goto_3
    return-void

    :catchall_0
    move-exception v0

    .line 662
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 720
    :goto_4
    const-string v1, "CloudDB"

    const-string v2, "Exception in store worker!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
