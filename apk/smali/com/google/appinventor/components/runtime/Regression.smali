.class public final Lcom/google/appinventor/components/runtime/Regression;
.super Lcom/google/appinventor/components/runtime/DataCollection;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->DATASCIENCE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that contains regression models"
    iconName = "images/regression.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/DataCollection<",
        "Lcom/google/appinventor/components/runtime/ComponentContainer;",
        "Lcom/google/appinventor/components/runtime/DataModel<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final LINEAR_REGRESSION:Lcom/google/appinventor/components/common/LinearRegression;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/google/appinventor/components/common/LinearRegression;

    invoke-direct {v0}, Lcom/google/appinventor/components/common/LinearRegression;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Regression;->LINEAR_REGRESSION:Lcom/google/appinventor/components/common/LinearRegression;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/DataCollection;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    return-void
.end method

.method public static computeLineOfBestFit(Ljava/util/List;Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    sget-object v1, Lcom/google/appinventor/components/runtime/Regression;->LINEAR_REGRESSION:Lcom/google/appinventor/components/common/LinearRegression;

    invoke-virtual {v1, p0, p1}, Lcom/google/appinventor/components/common/LinearRegression;->compute(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public CalculateLineOfBestFitValue(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/LOBFValues;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns one of the Line of Best Fit values. A value could be\"slope\", \"Yintercept\", \"correlation coefficient\"or \"predictions\". The block returns the complete dictionary with all values if no specific value string is provided"
    .end annotation

    .line 76
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/LList;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/DataCollection;->castToDouble(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 77
    invoke-virtual {p2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgnu/lists/LList;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/DataCollection;->castToDouble(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 76
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Regression;->computeLineOfBestFit(Ljava/util/List;Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object p1

    .line 78
    invoke-virtual {p1, p3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p1, p3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public ChangeDataSource(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/appinventor/components/runtime/DataSource<",
            "TK;TV;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public Clear()V
    .locals 0

    return-void
.end method

.method public DataFileXColumn(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public DataFileYColumn(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public DataSourceKey(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public ElementsFromPairs(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public GetAllEntries()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1

    .line 155
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public GetEntriesWithXValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 0

    .line 145
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    return-object p1
.end method

.method public GetEntriesWithYValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 0

    .line 150
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    return-object p1
.end method

.method public ImportFromCloudDB(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public ImportFromDataFile(Lcom/google/appinventor/components/runtime/DataFile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public ImportFromList(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0

    return-void
.end method

.method public ImportFromSpreadsheet(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public ImportFromTinyDB(Lcom/google/appinventor/components/runtime/TinyDB;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public ImportFromWeb(Lcom/google/appinventor/components/runtime/Web;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public RemoveDataSource()V
    .locals 0

    return-void
.end method

.method public Source(Lcom/google/appinventor/components/runtime/DataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/appinventor/components/runtime/DataSource<",
            "TK;TV;>;)V"
        }
    .end annotation

    return-void
.end method

.method public SpreadsheetUseHeaders(Z)V
    .locals 0

    return-void
.end method

.method public SpreadsheetXColumn(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public SpreadsheetYColumn(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public WebXColumn(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public WebYColumn(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDataChange()V
    .locals 0

    return-void
.end method
