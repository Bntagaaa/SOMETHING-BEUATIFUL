.class Lcom/google/appinventor/components/runtime/Spreadsheet$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->ClearRange(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$rangeRef:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1729
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$16;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$16;->val$rangeRef:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1733
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$16;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->g(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v0

    .line 1735
    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->values()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$16;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->d(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$16;->val$rangeRef:Ljava/lang/String;

    new-instance v3, Lcom/google/api/services/sheets/v4/model/ClearValuesRequest;

    invoke-direct {v3}, Lcom/google/api/services/sheets/v4/model/ClearValuesRequest;-><init>()V

    .line 1736
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;->clear(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ClearValuesRequest;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Clear;

    move-result-object v0

    .line 1737
    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Clear;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/sheets/v4/model/ClearValuesResponse;

    .line 1738
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$16;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/Spreadsheet$16$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Spreadsheet$16$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$16;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1745
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1746
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$16;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ClearRange: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method
