.class Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4;

.field final synthetic val$into:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4;Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 598
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4$1;->val$into:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v0, 0x191

    const/4 v1, 0x0

    .line 601
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4$1;->val$into:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 603
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->d(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 606
    new-instance v4, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v4}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    const/4 v5, 0x0

    goto :goto_0

    .line 609
    :cond_0
    new-instance v4, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v4}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 610
    invoke-virtual {v4, v2}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 611
    check-cast v4, Lorg/json/simple/JSONObject;

    .line 612
    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/simple/JSONArray;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    const/4 v5, 0x1

    .line 615
    :goto_0
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    invoke-static {v6, v2}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->c(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v3, v4, v2, v5}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->GotRow(ILcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 617
    :catch_0
    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    .line 619
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    const-string v4, "Server error occured"

    invoke-virtual {v3, v0, v2, v4, v1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->GotRow(ILcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;Z)V

    return-void
.end method
