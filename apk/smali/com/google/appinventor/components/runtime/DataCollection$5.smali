.class Lcom/google/appinventor/components/runtime/DataCollection$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/DataCollection;->RemoveDataSource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/DataCollection;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/DataCollection;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection$5;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 523
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$5;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/DataCollection;->Source(Lcom/google/appinventor/components/runtime/DataSource;)V

    .line 526
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$5;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    const-string v1, ""

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/DataCollection;->dataSourceKey:Ljava/lang/String;

    .line 529
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/DataCollection;->d(Lcom/google/appinventor/components/runtime/DataCollection;)V

    const/4 v0, 0x0

    .line 531
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DataCollection$5;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/DataCollection;->dataFileColumns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 532
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DataCollection$5;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/DataCollection;->dataFileColumns:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 533
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DataCollection$5;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/DataCollection;->sheetsColumns:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 534
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DataCollection$5;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/DataCollection;->webColumns:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
