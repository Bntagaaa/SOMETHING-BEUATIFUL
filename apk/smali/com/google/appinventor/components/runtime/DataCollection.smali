.class public abstract Lcom/google/appinventor/components/runtime/DataCollection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/DataSource;
.implements Lcom/google/appinventor/components/runtime/DataSourceChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/google/appinventor/components/runtime/ComponentContainer;",
        "M:",
        "Lcom/google/appinventor/components/runtime/DataModel<",
        "*>;>",
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/Component;",
        "Lcom/google/appinventor/components/runtime/DataSource<",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "*>;>;",
        "Lcom/google/appinventor/components/runtime/DataSourceChangeListener;"
    }
.end annotation


# instance fields
.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field protected dataFileColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected dataModel:Lcom/google/appinventor/components/runtime/DataModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private dataSource:Lcom/google/appinventor/components/runtime/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/DataSource<",
            "**>;"
        }
    .end annotation
.end field

.field protected dataSourceKey:Ljava/lang/String;

.field private elements:Ljava/lang/String;

.field private initialized:Z

.field private lastDataSourceValue:Ljava/lang/Object;

.field protected final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/DataSourceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected sheetsColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected threadRunner:Ljava/util/concurrent/ExecutorService;

.field private tick:I

.field protected useSheetHeaders:Z

.field protected webColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->listeners:Ljava/util/Set;

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->initialized:Z

    .line 93
    iput v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->tick:I

    .line 99
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 102
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/DataCollection;->DataSourceKey(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->threadRunner:Ljava/util/concurrent/ExecutorService;

    .line 105
    filled-new-array {p1, p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->dataFileColumns:Ljava/util/List;

    .line 106
    filled-new-array {p1, p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->sheetsColumns:Ljava/util/List;

    .line 107
    filled-new-array {p1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection;->webColumns:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/DataCollection;)Lcom/google/appinventor/components/runtime/DataSource;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->dataSource:Lcom/google/appinventor/components/runtime/DataSource;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/DataCollection;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->lastDataSourceValue:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/DataCollection;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->tick:I

    return p0
.end method

.method public static castToDouble(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1062
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1063
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1064
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    .line 1065
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1068
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/DataCollection;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->lastDataSourceValue:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/DataCollection;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/DataCollection;->tick:I

    return-void
.end method

.method public static bridge synthetic f(Lcom/google/appinventor/components/runtime/DataCollection;Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/DataCollection;->updateCurrentDataSourceValue(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private isKeyValid(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1054
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->dataSourceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private updateCurrentDataSourceValue(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/DataSource<",
            "**>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1025
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->dataSource:Lcom/google/appinventor/components/runtime/DataSource;

    if-ne p1, v0, :cond_2

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/DataCollection;->isKeyValid(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1026
    instance-of p2, p1, Lcom/google/appinventor/components/runtime/Web;

    if-eqz p2, :cond_0

    .line 1028
    check-cast p1, Lcom/google/appinventor/components/runtime/Web;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/DataCollection;->webColumns:Ljava/util/List;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Web;->getColumns(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    .line 1033
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/DataCollection;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/google/appinventor/components/runtime/DataModel;->getTuplesFromColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection;->lastDataSourceValue:Ljava/lang/Object;

    return-void

    .line 1034
    :cond_0
    instance-of p2, p1, Lcom/google/appinventor/components/runtime/Spreadsheet;

    if-eqz p2, :cond_1

    .line 1035
    check-cast p1, Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/DataCollection;->sheetsColumns:Ljava/util/List;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p2

    iget-boolean p3, p0, Lcom/google/appinventor/components/runtime/DataCollection;->useSheetHeaders:Z

    invoke-virtual {p1, p2, p3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    .line 1037
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/DataCollection;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    iget-boolean p3, p0, Lcom/google/appinventor/components/runtime/DataCollection;->useSheetHeaders:Z

    invoke-virtual {p2, p1, p3}, Lcom/google/appinventor/components/runtime/DataModel;->getTuplesFromColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection;->lastDataSourceValue:Ljava/lang/Object;

    return-void

    .line 1040
    :cond_1
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/DataCollection;->lastDataSourceValue:Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public ChangeDataSource(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

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

    .line 451
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/DataCollection$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/DataCollection$4;-><init>(Lcom/google/appinventor/components/runtime/DataCollection;Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Clear()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears all of the data."
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/DataCollection$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/DataCollection$3;-><init>(Lcom/google/appinventor/components/runtime/DataCollection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public DataFileXColumn(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "data_file_column"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->dataFileColumns:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public DataFileYColumn(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "data_file_column"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->dataFileColumns:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public DataSourceKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 331
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection;->dataSourceKey:Ljava/lang/String;

    return-void
.end method

.method public ElementsFromPairs(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection;->elements:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 172
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->initialized:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/DataCollection$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/DataCollection$1;-><init>(Lcom/google/appinventor/components/runtime/DataCollection;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public GetAllEntries()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns all the entries of the Data Series. A single entry is represented as a List of values of the entry."
    .end annotation

    .line 609
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/DataCollection$8;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/DataCollection$8;-><init>(Lcom/google/appinventor/components/runtime/DataCollection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 614
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    .line 618
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 616
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :goto_2
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    return-object v0
.end method

.method public GetEntriesWithXValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns a List of entries with x values matching the specified x value. A single entry is represented as a List of values of the entry."
    .end annotation

    .line 552
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/DataCollection$6;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/DataCollection$6;-><init>(Lcom/google/appinventor/components/runtime/DataCollection;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 558
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 562
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 560
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :goto_2
    new-instance p1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {p1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    return-object p1
.end method

.method public GetEntriesWithYValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns a List of entries with y values matching the specified y value. A single entry is represented as a List of values of the entry."
    .end annotation

    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/DataCollection$7;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/DataCollection$7;-><init>(Lcom/google/appinventor/components/runtime/DataCollection;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 587
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 591
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 589
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :goto_2
    new-instance p1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {p1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    return-object p1
.end method

.method public ImportFromCloudDB(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 668
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/CloudDB;->getDataValue(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 671
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/appinventor/components/runtime/DataCollection$10;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/appinventor/components/runtime/DataCollection$10;-><init>(Lcom/google/appinventor/components/runtime/DataCollection;Ljava/util/concurrent/Future;Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ImportFromDataFile(Lcom/google/appinventor/components/runtime/DataFile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 824
    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p2

    .line 826
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/DataCollection;->importFromDataFileAsync(Lcom/google/appinventor/components/runtime/DataFile;Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method

.method public ImportFromList(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/DataCollection$2;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/DataCollection$2;-><init>(Lcom/google/appinventor/components/runtime/DataCollection;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ImportFromSpreadsheet(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 845
    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p2

    .line 847
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/appinventor/components/runtime/DataCollection;->importFromSpreadsheetAsync(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/appinventor/components/runtime/util/YailList;Z)V

    return-void
.end method

.method public ImportFromTinyDB(Lcom/google/appinventor/components/runtime/TinyDB;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 638
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/TinyDB;->getDataValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    .line 641
    invoke-direct {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/DataCollection;->updateCurrentDataSourceValue(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 644
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/google/appinventor/components/runtime/DataCollection$9;

    invoke-direct {p2, p0, v0}, Lcom/google/appinventor/components/runtime/DataCollection$9;-><init>(Lcom/google/appinventor/components/runtime/DataCollection;Ljava/util/List;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ImportFromWeb(Lcom/google/appinventor/components/runtime/Web;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Imports data from the specified Web component, given the names of the X and Y value columns. Empty columns are filled with default values (1, 2, 3, ... for Entry 1, 2, ...). In order for the data importing to be successful, to load the data, and then this block should be used on that Web component. The usage of the gotValue event in the Web component is unnecessary."
    .end annotation

    .line 872
    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p2

    .line 874
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/DataCollection;->importFromWebAsync(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method

.method public Initialize()V
    .locals 1

    const/4 v0, 0x1

    .line 886
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->initialized:Z

    .line 891
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->dataSource:Lcom/google/appinventor/components/runtime/DataSource;

    if-eqz v0, :cond_0

    .line 892
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/DataCollection;->Source(Lcom/google/appinventor/components/runtime/DataSource;)V

    return-void

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->elements:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/DataCollection;->ElementsFromPairs(Ljava/lang/String;)V

    return-void
.end method

.method public RemoveDataSource()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Un-links the currently associated Data Source component from the Chart."
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/DataCollection$5;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/DataCollection$5;-><init>(Lcom/google/appinventor/components/runtime/DataCollection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Source(Lcom/google/appinventor/components/runtime/DataSource;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "chart_data_source"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

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

    .line 356
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->dataSource:Lcom/google/appinventor/components/runtime/DataSource;

    if-eq v0, p1, :cond_0

    instance-of v1, v0, Lcom/google/appinventor/components/runtime/ObservableDataSource;

    if-eqz v1, :cond_0

    .line 357
    check-cast v0, Lcom/google/appinventor/components/runtime/ObservableDataSource;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/ObservableDataSource;->removeDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V

    .line 360
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection;->dataSource:Lcom/google/appinventor/components/runtime/DataSource;

    .line 365
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->initialized:Z

    if-eqz v0, :cond_6

    .line 366
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/ObservableDataSource;

    if-eqz v0, :cond_1

    .line 368
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/ObservableDataSource;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/ObservableDataSource;->addDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V

    .line 371
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->dataSourceKey:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    .line 376
    :cond_1
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/DataFile;

    if-eqz v0, :cond_2

    .line 377
    check-cast p1, Lcom/google/appinventor/components/runtime/DataFile;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->dataFileColumns:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/DataCollection;->importFromDataFileAsync(Lcom/google/appinventor/components/runtime/DataFile;Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void

    .line 378
    :cond_2
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/TinyDB;

    if-eqz v0, :cond_3

    .line 379
    check-cast p1, Lcom/google/appinventor/components/runtime/TinyDB;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->dataSourceKey:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/DataCollection;->ImportFromTinyDB(Lcom/google/appinventor/components/runtime/TinyDB;Ljava/lang/String;)V

    return-void

    .line 380
    :cond_3
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/CloudDB;

    if-eqz v0, :cond_4

    .line 381
    check-cast p1, Lcom/google/appinventor/components/runtime/CloudDB;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->dataSourceKey:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/DataCollection;->ImportFromCloudDB(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V

    return-void

    .line 382
    :cond_4
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/Spreadsheet;

    if-eqz v0, :cond_5

    .line 383
    check-cast p1, Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->sheetsColumns:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/DataCollection;->useSheetHeaders:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/DataCollection;->importFromSpreadsheetAsync(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/appinventor/components/runtime/util/YailList;Z)V

    return-void

    .line 385
    :cond_5
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/Web;

    if-eqz v0, :cond_6

    .line 386
    check-cast p1, Lcom/google/appinventor/components/runtime/Web;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->webColumns:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/DataCollection;->importFromWebAsync(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/util/YailList;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public SpreadsheetUseHeaders(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 196
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/DataCollection;->useSheetHeaders:Z

    return-void
.end method

.method public SpreadsheetXColumn(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->sheetsColumns:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public SpreadsheetYColumn(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->sheetsColumns:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public WebXColumn(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the column to parse from the attached Web component for the x values. If a column is not specified, default values for the x values will be generated instead."
        userVisible = false
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->webColumns:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public WebYColumn(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the column to parse from the attached Web component for the y values. If a column is not specified, default values for the y values will be generated instead."
        userVisible = false
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->webColumns:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addDataSourceChangeListener(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 125
    invoke-interface {p1, p0, v0, v0}, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;->onDataSourceValueChange(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic getDataValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/DataCollection;->getDataValue(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDataValue(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 136
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    return-object p1
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 1

    .line 903
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public importFromDataFileAsync(Lcom/google/appinventor/components/runtime/DataFile;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 1

    .line 708
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/DataFile;->getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 711
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/DataCollection;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/google/appinventor/components/runtime/DataCollection$11;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/DataCollection$11;-><init>(Lcom/google/appinventor/components/runtime/DataCollection;Ljava/util/concurrent/Future;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public importFromSpreadsheetAsync(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/appinventor/components/runtime/util/YailList;Z)V
    .locals 2

    .line 739
    invoke-virtual {p1, p2, p3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;Z)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 741
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/DataCollection$12;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/appinventor/components/runtime/DataCollection$12;-><init>(Lcom/google/appinventor/components/runtime/DataCollection;Ljava/util/concurrent/Future;Lcom/google/appinventor/components/runtime/Spreadsheet;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public importFromWebAsync(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2

    .line 775
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Web;->getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 778
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/DataCollection$13;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/appinventor/components/runtime/DataCollection$13;-><init>(Lcom/google/appinventor/components/runtime/DataCollection;Ljava/util/concurrent/Future;Lcom/google/appinventor/components/runtime/Web;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract onDataChange()V
.end method

.method public onDataSourceValueChange(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/DataSource<",
            "**>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 924
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->dataSource:Lcom/google/appinventor/components/runtime/DataSource;

    if-ne p1, v0, :cond_1

    .line 925
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/DataCollection;->isKeyValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/DataCollection$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/DataCollection$14;-><init>(Lcom/google/appinventor/components/runtime/DataCollection;Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onReceiveValue(Lcom/google/appinventor/components/runtime/RealTimeDataSource;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/RealTimeDataSource<",
            "**>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 953
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->dataSource:Lcom/google/appinventor/components/runtime/DataSource;

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 963
    :cond_0
    instance-of p1, p1, Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz p1, :cond_1

    .line 965
    move-object p1, p3

    check-cast p1, Ljava/lang/String;

    .line 969
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/DataCollection;->dataSourceKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 975
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/DataCollection;->dataSourceKey:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 980
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/DataCollection;->isKeyValid(Ljava/lang/String;)Z

    move-result p2

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 991
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/DataCollection$15;

    invoke-direct {p2, p0, p3}, Lcom/google/appinventor/components/runtime/DataCollection$15;-><init>(Lcom/google/appinventor/components/runtime/DataCollection;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public removeDataSourceChangeListener(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setExecutorService(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection;->threadRunner:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
