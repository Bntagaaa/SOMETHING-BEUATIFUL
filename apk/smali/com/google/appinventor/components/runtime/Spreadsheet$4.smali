.class Lcom/google/appinventor/components/runtime/Spreadsheet$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->AddSheet(Ljava/lang/String;)V
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

    .line 682
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$4;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$4;->val$sheetName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$4;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->g(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v0

    .line 687
    new-instance v1, Lcom/google/api/services/sheets/v4/model/AddSheetRequest;

    invoke-direct {v1}, Lcom/google/api/services/sheets/v4/model/AddSheetRequest;-><init>()V

    new-instance v2, Lcom/google/api/services/sheets/v4/model/SheetProperties;

    invoke-direct {v2}, Lcom/google/api/services/sheets/v4/model/SheetProperties;-><init>()V

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$4;->val$sheetName:Ljava/lang/String;

    .line 690
    invoke-virtual {v2, v3}, Lcom/google/api/services/sheets/v4/model/SheetProperties;->setTitle(Ljava/lang/String;)Lcom/google/api/services/sheets/v4/model/SheetProperties;

    move-result-object v2

    .line 688
    invoke-virtual {v1, v2}, Lcom/google/api/services/sheets/v4/model/AddSheetRequest;->setProperties(Lcom/google/api/services/sheets/v4/model/SheetProperties;)Lcom/google/api/services/sheets/v4/model/AddSheetRequest;

    move-result-object v1

    .line 692
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 693
    new-instance v3, Lcom/google/api/services/sheets/v4/model/Request;

    invoke-direct {v3}, Lcom/google/api/services/sheets/v4/model/Request;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/api/services/sheets/v4/model/Request;->setAddSheet(Lcom/google/api/services/sheets/v4/model/AddSheetRequest;)Lcom/google/api/services/sheets/v4/model/Request;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    new-instance v1, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;

    invoke-direct {v1}, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;-><init>()V

    .line 695
    invoke-virtual {v1, v2}, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;->setRequests(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;

    move-result-object v1

    .line 697
    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$4;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->d(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->batchUpdate(Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$BatchUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$BatchUpdate;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetResponse;

    .line 698
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$4;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$4;->val$sheetName:Ljava/lang/String;

    .line 699
    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetResponse;->getReplies()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/sheets/v4/model/Response;

    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/model/Response;->getAddSheet()Lcom/google/api/services/sheets/v4/model/AddSheetResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/model/AddSheetResponse;->getProperties()Lcom/google/api/services/sheets/v4/model/SheetProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/model/SheetProperties;->getSheetId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 698
    invoke-static {v1, v2, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->j(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;I)V

    .line 702
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$4;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->a(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Spreadsheet$4$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Spreadsheet$4$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 710
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$4;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->a(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/Spreadsheet$4$2;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet$4$2;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$4;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
