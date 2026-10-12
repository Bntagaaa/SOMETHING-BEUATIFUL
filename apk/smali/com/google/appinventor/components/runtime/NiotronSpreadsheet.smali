.class public final Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that provides access to the Google spreadsheet storage "
    iconName = "images/niotronSpreadsheet.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "json-spreadsheet.jar, json.jar"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private api:Ljava/lang/String;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private lastFunction:Ljava/lang/String;

.field public mainHandler:Landroid/os/Handler;

.field private main_url:Ljava/lang/String;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private sheet:Ljava/lang/String;

.field private useSheetData:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 54
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 41
    const-string v0, "Sheet1"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->sheet:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->lastFunction:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->api:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->main_url:Ljava/lang/String;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->useSheetData:Z

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->mainHandler:Landroid/os/Handler;

    .line 55
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->context:Landroid/content/Context;

    .line 56
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->activity:Landroid/app/Activity;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->getResponseCode(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 550
    new-instance v0, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v0}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 551
    invoke-virtual {v0, p1}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 552
    check-cast p1, Lorg/json/simple/JSONObject;

    .line 553
    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getResponseCode(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 543
    new-instance v0, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v0}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 544
    invoke-virtual {v0, p1}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 545
    check-cast p1, Lorg/json/simple/JSONObject;

    .line 546
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public APIEndpoint()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->api:Ljava/lang/String;

    return-object v0
.end method

.method public APIEndpoint(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "API endpoint is the access key that you\'ll get from us to read/write data on your Spreadsheet."
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->api:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->main_url:Ljava/lang/String;

    return-void
.end method

.method public DataChange(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that a request has finished. Here function name return the last function that you call.\n\nExmaple:\n 1. UPDATE : Update Data\n 2. UPLOAD : Upload data\n 3. DELETE : Delete Data"
    .end annotation

    .line 565
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->lastFunction:Ljava/lang/String;

    .line 566
    const-string v0, "DataChange"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Delete(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Delete a row by number"
    .end annotation

    .line 242
    const-string v0, "DELETE"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->lastFunction:Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->sheet:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method=Delete&sheetName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&row="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->makeServerCall(Ljava/lang/String;)V

    return-void
.end method

.method public ErrorOccured(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event for error occured"
    .end annotation

    .line 577
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "ErrorOccured"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetCell(ILjava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get Cell Value"
    .end annotation

    .line 704
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->main_url:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->sheet:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?row="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&column="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&sheetName="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&method=getCell"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 706
    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;

    invoke-direct {p2, p0, p1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;-><init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)V

    .line 753
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public GetCellValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->getValue2()Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->useSheetData:Z

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->getValue3()Ljava/lang/String;

    move-result-object v0

    .line 141
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v1}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 142
    invoke-virtual {v1, v0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONArray;

    const/4 v1, 0x0

    .line 143
    invoke-virtual {v0, v1}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/simple/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/simple/JSONArray;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 144
    invoke-virtual {v0, p2}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/simple/JSONArray;

    .line 145
    invoke-virtual {p2, p1}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 147
    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method public GetColumn(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get Column"
    .end annotation

    .line 644
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->main_url:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->sheet:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?column="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&sheetName="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&method=getColumn"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 646
    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5;-><init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)V

    .line 694
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public GetColumnList(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->getValue2()Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->useSheetData:Z

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->getValue3()Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v1}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 159
    invoke-virtual {v1, v0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONArray;

    const/4 v1, 0x0

    .line 160
    invoke-virtual {v0, v1}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/simple/JSONArray;

    invoke-virtual {v2, p1}, Lorg/json/simple/JSONArray;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 161
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-virtual {v0}, Lorg/json/simple/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_1

    .line 165
    check-cast v3, Lorg/json/simple/JSONArray;

    .line 166
    invoke-virtual {v3, p1}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 171
    :cond_2
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 173
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {p1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    return-object p1
.end method

.method public GetRow(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get Row"
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->main_url:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->sheet:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?row="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&sheetName="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&method=getRow"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 585
    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4;-><init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)V

    .line 633
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public GetRowList(I)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 179
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->getValue2()Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->useSheetData:Z

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->getValue3()Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v1}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 185
    invoke-virtual {v1, v0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONArray;

    .line 186
    invoke-virtual {v0, p1}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/simple/JSONArray;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 188
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {p1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    return-object p1
.end method

.method public GetSheet(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 117
    const-string v0, "[]"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 119
    :try_start_0
    new-instance v2, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v2}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 120
    invoke-virtual {v2, v1}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 121
    check-cast v1, Lorg/json/simple/JSONArray;

    const/4 v2, 0x0

    .line 122
    :goto_0
    invoke-virtual {v1}, Lorg/json/simple/JSONArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 123
    invoke-virtual {v1, v2}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/simple/JSONObject;

    .line 124
    invoke-virtual {v3, p1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 125
    invoke-virtual {v3, p1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public GetSheet()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTPS POST request to read/get data from your spreadsheet"
    .end annotation

    .line 276
    const-string v0, "READ"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->lastFunction:Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->sheet:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method=GETSHEET&sheetName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->makeServerCallSheet(Ljava/lang/String;)V

    return-void
.end method

.method public GetSheetList()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->context:Landroid/content/Context;

    const-string v1, "MySpreadsheet"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 195
    const-string v1, "allsheets"

    const-string v3, "[]"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    const-string v1, "["

    const-string v3, "]"

    .line 0
    invoke-static {v1, v0, v3}, L_COROUTINE/a;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    :try_start_0
    new-instance v1, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v1}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 199
    invoke-virtual {v1, v0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONArray;

    .line 200
    invoke-virtual {v0, v2}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONArray;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 202
    :catch_0
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    return-object v0
.end method

.method public GetSpreadsheet()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTPS POST request to read/get data from your spreadsheet"
    .end annotation

    .line 268
    const-string v0, "READ"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->lastFunction:Ljava/lang/String;

    .line 269
    const-string v0, "method=Read"

    .line 270
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->makeServerCallREAD(Ljava/lang/String;)V

    return-void
.end method

.method public GotCell(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when Get Cell value. Data Type = String"
    .end annotation

    .line 758
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const-string p1, "GotCell"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotColumn(ILcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when got column values as list"
    .end annotation

    .line 699
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const-string p1, "GotColumn"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotRow(ILcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when got row values as list"
    .end annotation

    .line 638
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const-string p1, "GotRow"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotSheet(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when got sheet data. Data type = JSON"
    .end annotation

    .line 572
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const-string p1, "GotSheet"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotSpreadsheet(ILjava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when got spreadsheet data"
    .end annotation

    .line 559
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "GotSpreadsheet"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SheetName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->sheet:Ljava/lang/String;

    return-object v0
.end method

.method public SheetName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Sheet1"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sheet Name."
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->sheet:Ljava/lang/String;

    return-void
.end method

.method public UpdateData(ILcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update Row by number and columns."
    .end annotation

    .line 250
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 251
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p3

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 253
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 254
    aget-object v2, p2, v1

    aget-object v3, p3, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_0
    new-instance p2, Lorg/json/simple/JSONArray;

    invoke-direct {p2}, Lorg/json/simple/JSONArray;-><init>()V

    .line 258
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2, p3}, Lorg/json/simple/JSONArray;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-virtual {p2}, Lorg/json/simple/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object p2

    .line 261
    const-string p3, "UPDATE"

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->lastFunction:Ljava/lang/String;

    .line 262
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->sheet:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "method=Update&sheetName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&row="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&content="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 263
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->makeServerCall(Ljava/lang/String;)V

    return-void
.end method

.method public UploadData(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Append row in your sheet"
    .end annotation

    .line 208
    const-string v0, "UPLOAD"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->lastFunction:Ljava/lang/String;

    const/4 v0, 0x1

    .line 210
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 212
    new-instance v0, Lorg/json/simple/JSONArray;

    invoke-direct {v0}, Lorg/json/simple/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 213
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 214
    aget-object v3, p1, v2

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 215
    new-instance v4, Lorg/json/simple/JSONArray;

    invoke-direct {v4}, Lorg/json/simple/JSONArray;-><init>()V

    const/4 v5, 0x0

    .line 216
    :goto_1
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 217
    invoke-virtual {v3, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/simple/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 219
    :cond_0
    invoke-virtual {v0, v4}, Lorg/json/simple/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {v0}, Lorg/json/simple/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 224
    :cond_2
    new-instance v0, Lorg/json/simple/JSONArray;

    invoke-direct {v0}, Lorg/json/simple/JSONArray;-><init>()V

    .line 226
    :goto_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 227
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/simple/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 229
    :cond_3
    invoke-virtual {v0}, Lorg/json/simple/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object p1

    .line 230
    const-string v0, "["

    const-string v1, "]"

    .line 0
    invoke-static {v0, p1, v1}, L_COROUTINE/a;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 235
    :goto_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->sheet:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method=Append&sheetName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&content="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->makeServerCall(Ljava/lang/String;)V

    return-void
.end method

.method public UseSheetData(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Use sheet data, if true then it\'ll include return value of sheet when you use offline get data blocks. else include spreadsheet data."
    .end annotation

    .line 86
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->useSheetData:Z

    return-void
.end method

.method public UseSheetData()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 91
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->useSheetData:Z

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->context:Landroid/content/Context;

    const-string v1, "MySpreadsheet"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    const-string v1, "alldata"

    const-string v2, "[]"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue2()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->sheet:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->GetSheet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue3()Ljava/lang/String;
    .locals 4

    .line 106
    const-string v0, "[]"

    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->context:Landroid/content/Context;

    const-string v2, "MySpreadsheet"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 107
    const-string v2, "sheetdata"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public makeServerCall(Ljava/lang/String;)V
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->main_url:Ljava/lang/String;

    .line 463
    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public makeServerCallREAD(Ljava/lang/String;)V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->main_url:Ljava/lang/String;

    .line 372
    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public makeServerCallSheet(Ljava/lang/String;)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->main_url:Ljava/lang/String;

    .line 284
    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
