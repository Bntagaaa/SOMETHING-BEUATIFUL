.class Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$3;
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

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 446
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$3;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$3;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 449
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$3;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 451
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$3;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    invoke-virtual {v1, v3, v0, v2}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->GotSpreadsheet(ILjava/lang/String;Z)V

    return-void
.end method
