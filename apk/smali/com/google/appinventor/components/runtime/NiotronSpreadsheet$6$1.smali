.class Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;

.field final synthetic val$into:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 719
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6$1;->val$into:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 722
    const-string v0, ""

    const/16 v1, 0x191

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6$1;->val$into:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 723
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    invoke-static {v4, v3}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->d(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_0

    move-object v5, v0

    const/4 v6, 0x0

    goto :goto_0

    .line 730
    :cond_0
    new-instance v5, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v5}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 731
    invoke-virtual {v5, v3}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 732
    check-cast v5, Lorg/json/simple/JSONObject;

    .line 733
    const-string v6, "data"

    invoke-virtual {v5, v6}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 735
    :goto_0
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    invoke-static {v7, v3}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->c(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v4, v5, v3, v6}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->GotCell(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 739
    :catch_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    const-string v4, "Server error occured"

    invoke-virtual {v3, v1, v0, v4, v2}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->GotCell(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
