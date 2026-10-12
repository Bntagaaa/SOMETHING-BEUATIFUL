.class Lcom/google/appinventor/components/runtime/DataCollection$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/DataCollection;->ChangeDataSource(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/DataCollection;

.field final synthetic val$keyValue:Ljava/lang/String;

.field final synthetic val$source:Lcom/google/appinventor/components/runtime/DataSource;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/DataCollection;Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 451
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->val$source:Lcom/google/appinventor/components/runtime/DataSource;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->val$keyValue:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 456
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->val$source:Lcom/google/appinventor/components/runtime/DataSource;

    instance-of v1, v0, Lcom/google/appinventor/components/runtime/DataFile;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/Web;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->val$keyValue:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/DataCollection;->dataSourceKey:Ljava/lang/String;

    goto :goto_5

    .line 457
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->val$keyValue:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/CsvUtil;->fromCsvRow(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 463
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->val$source:Lcom/google/appinventor/components/runtime/DataSource;

    instance-of v2, v1, Lcom/google/appinventor/components/runtime/DataFile;

    if-eqz v2, :cond_2

    .line 470
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/DataCollection;->dataFileColumns:Ljava/util/List;

    goto :goto_2

    .line 471
    :cond_2
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/Spreadsheet;

    if-eqz v2, :cond_3

    .line 472
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/DataCollection;->sheetsColumns:Ljava/util/List;

    goto :goto_2

    .line 473
    :cond_3
    instance-of v1, v1, Lcom/google/appinventor/components/runtime/Web;

    if-eqz v1, :cond_6

    .line 474
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/DataCollection;->webColumns:Ljava/util/List;

    :goto_2
    const/4 v2, 0x0

    .line 480
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 485
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    if-le v3, v2, :cond_4

    .line 488
    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 485
    :cond_4
    const-string v3, ""

    .line 492
    :goto_4
    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 501
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/DataCollection;->d(Lcom/google/appinventor/components/runtime/DataCollection;)V

    .line 504
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->val$source:Lcom/google/appinventor/components/runtime/DataSource;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/DataCollection;->Source(Lcom/google/appinventor/components/runtime/DataSource;)V

    return-void

    .line 476
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->val$source:Lcom/google/appinventor/components/runtime/DataSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not an expected DataSource"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
