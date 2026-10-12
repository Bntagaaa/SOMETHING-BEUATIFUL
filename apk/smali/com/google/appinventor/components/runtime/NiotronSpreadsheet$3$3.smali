.class Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$3;
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

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 526
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$3;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$3;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 529
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$3;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 531
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$3;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2, v0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->ErrorOccured(ILjava/lang/String;)V

    return-void
.end method
