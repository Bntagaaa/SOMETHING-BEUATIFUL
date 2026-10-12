.class Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$2;
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


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$2;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$2;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    const/16 v1, 0x1f4

    const-string v2, "Server error occured."

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->ErrorOccured(ILjava/lang/String;)V

    return-void
.end method
