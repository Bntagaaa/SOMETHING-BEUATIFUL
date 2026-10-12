.class Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;

.field final synthetic val$mResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 495
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$1;->val$mResponse:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0x191

    .line 499
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$1;->val$mResponse:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->d(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 503
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$1;->val$mResponse:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->c(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->ErrorOccured(ILjava/lang/String;)V

    return-void

    .line 506
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->DataChange(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 511
    :catch_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    const-string v2, "Unable to connect with server. Check credentials and try again."

    invoke-virtual {v1, v0, v2}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->ErrorOccured(ILjava/lang/String;)V

    return-void
.end method
