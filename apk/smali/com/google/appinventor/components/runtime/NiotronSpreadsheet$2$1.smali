.class Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;

.field final synthetic val$mResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 405
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$1;->val$mResponse:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v0, 0x191

    const/4 v1, 0x0

    .line 409
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$1;->val$mResponse:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->d(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 413
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$1;->val$mResponse:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->c(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->GotSpreadsheet(ILjava/lang/String;Z)V

    return-void

    .line 415
    :cond_0
    new-instance v2, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v2}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 416
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$1;->val$mResponse:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 417
    check-cast v2, Lorg/json/simple/JSONObject;

    .line 418
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 419
    const-string v4, "sheets"

    invoke-virtual {v2, v4}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 421
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->b(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "MySpreadsheet"

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->b(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;)Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 422
    const-string v5, "alldata"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 423
    const-string v3, "allsheets"

    invoke-interface {v4, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 424
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 426
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    const-string v3, "Successfully got data"

    const/4 v4, 0x1

    const/16 v5, 0xc8

    invoke-virtual {v2, v5, v3, v4}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->GotSpreadsheet(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 431
    :catch_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    const-string v3, "Unable to connect with server. Check credentials and try again."

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->GotSpreadsheet(ILjava/lang/String;Z)V

    return-void
.end method
