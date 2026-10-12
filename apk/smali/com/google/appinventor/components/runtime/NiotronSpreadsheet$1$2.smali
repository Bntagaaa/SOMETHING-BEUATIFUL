.class Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$2;
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


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$2;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 350
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$2;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    const-string v1, ""

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    const-string v4, "Server error occured."

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->GotSheet(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
