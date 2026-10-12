.class Lcom/google/appinventor/components/runtime/Spreadsheet$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->DeleteSheet(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$sheetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 744
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;->val$sheetName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 748
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->g(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v0

    .line 749
    new-instance v1, Lcom/google/api/services/sheets/v4/model/DeleteSheetRequest;

    invoke-direct {v1}, Lcom/google/api/services/sheets/v4/model/DeleteSheetRequest;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;->val$sheetName:Ljava/lang/String;

    .line 750
    invoke-static {v2, v0, v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->f(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/api/services/sheets/v4/Sheets;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/services/sheets/v4/model/DeleteSheetRequest;->setSheetId(Ljava/lang/Integer;)Lcom/google/api/services/sheets/v4/model/DeleteSheetRequest;

    move-result-object v1

    .line 751
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 752
    new-instance v3, Lcom/google/api/services/sheets/v4/model/Request;

    invoke-direct {v3}, Lcom/google/api/services/sheets/v4/model/Request;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/api/services/sheets/v4/model/Request;->setDeleteSheet(Lcom/google/api/services/sheets/v4/model/DeleteSheetRequest;)Lcom/google/api/services/sheets/v4/model/Request;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    new-instance v1, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;

    invoke-direct {v1}, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;-><init>()V

    .line 754
    invoke-virtual {v1, v2}, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;->setRequests(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;

    move-result-object v1

    .line 755
    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->d(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->batchUpdate(Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$BatchUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$BatchUpdate;->execute()Ljava/lang/Object;

    .line 756
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;->val$sheetName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->h(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->a(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Spreadsheet$5$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Spreadsheet$5$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 767
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->a(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/Spreadsheet$5$2;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet$5$2;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$5;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
