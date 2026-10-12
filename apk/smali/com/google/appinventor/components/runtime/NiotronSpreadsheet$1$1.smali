.class Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;

.field final synthetic val$mResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 316
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$1;->val$mResponse:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 320
    const-string v0, ""

    const/16 v1, 0x191

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$1;->val$mResponse:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->d(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 324
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$1;->val$mResponse:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->c(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5, v0, v2}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->GotSheet(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 326
    :cond_0
    new-instance v3, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v3}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 327
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$1;->val$mResponse:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 328
    check-cast v3, Lorg/json/simple/JSONObject;

    .line 329
    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 331
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->b(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "MySpreadsheet"

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->b(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;)Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 332
    const-string v5, "sheetdata"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 333
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 335
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    const-string v5, "Successfully got sheet data"

    const/4 v6, 0x1

    const/16 v7, 0xc8

    invoke-virtual {v4, v7, v5, v3, v6}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->GotSheet(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 340
    :catch_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    const-string v4, "Unable to connect with server. Check credentials and try again."

    invoke-virtual {v3, v1, v4, v0, v2}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->GotSheet(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
