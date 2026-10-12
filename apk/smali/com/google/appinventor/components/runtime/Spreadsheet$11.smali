.class Lcom/google/appinventor/components/runtime/Spreadsheet$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->RemoveColumn(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$columnNumber:I

.field final synthetic val$sheetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1248
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->val$sheetName:Ljava/lang/String;

    iput p3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->val$columnNumber:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1252
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->g(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v0

    .line 1253
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->val$sheetName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->f(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/api/services/sheets/v4/Sheets;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    const-string v1, "RemoveColumn: sheetName not found"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 1259
    :cond_0
    new-instance v2, Lcom/google/api/services/sheets/v4/model/DeleteDimensionRequest;

    invoke-direct {v2}, Lcom/google/api/services/sheets/v4/model/DeleteDimensionRequest;-><init>()V

    new-instance v3, Lcom/google/api/services/sheets/v4/model/DimensionRange;

    invoke-direct {v3}, Lcom/google/api/services/sheets/v4/model/DimensionRange;-><init>()V

    .line 1262
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/api/services/sheets/v4/model/DimensionRange;->setSheetId(Ljava/lang/Integer;)Lcom/google/api/services/sheets/v4/model/DimensionRange;

    move-result-object v1

    const-string v3, "COLUMNS"

    .line 1263
    invoke-virtual {v1, v3}, Lcom/google/api/services/sheets/v4/model/DimensionRange;->setDimension(Ljava/lang/String;)Lcom/google/api/services/sheets/v4/model/DimensionRange;

    move-result-object v1

    iget v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->val$columnNumber:I

    add-int/lit8 v3, v3, -0x1

    .line 1264
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/services/sheets/v4/model/DimensionRange;->setStartIndex(Ljava/lang/Integer;)Lcom/google/api/services/sheets/v4/model/DimensionRange;

    move-result-object v1

    iget v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->val$columnNumber:I

    .line 1265
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/services/sheets/v4/model/DimensionRange;->setEndIndex(Ljava/lang/Integer;)Lcom/google/api/services/sheets/v4/model/DimensionRange;

    move-result-object v1

    .line 1260
    invoke-virtual {v2, v1}, Lcom/google/api/services/sheets/v4/model/DeleteDimensionRequest;->setRange(Lcom/google/api/services/sheets/v4/model/DimensionRange;)Lcom/google/api/services/sheets/v4/model/DeleteDimensionRequest;

    move-result-object v1

    .line 1267
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1268
    new-instance v3, Lcom/google/api/services/sheets/v4/model/Request;

    invoke-direct {v3}, Lcom/google/api/services/sheets/v4/model/Request;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/api/services/sheets/v4/model/Request;->setDeleteDimension(Lcom/google/api/services/sheets/v4/model/DeleteDimensionRequest;)Lcom/google/api/services/sheets/v4/model/Request;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1270
    new-instance v1, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;

    invoke-direct {v1}, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;-><init>()V

    .line 1271
    invoke-virtual {v1, v2}, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;->setRequests(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;

    move-result-object v1

    .line 1272
    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->d(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->batchUpdate(Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$BatchUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$BatchUpdate;->execute()Ljava/lang/Object;

    .line 1274
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->a(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Spreadsheet$11$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Spreadsheet$11$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$11;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1282
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1283
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RemoveColumn: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method
