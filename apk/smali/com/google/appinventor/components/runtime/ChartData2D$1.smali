.class Lcom/google/appinventor/components/runtime/ChartData2D$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ChartData2D;->AddEntry(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

.field final synthetic val$isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$x:Ljava/lang/String;

.field final synthetic val$y:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ChartData2D;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->val$x:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->val$y:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->val$isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->val$x:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->val$y:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/DataCollection;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v2, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v2, v1}, Lcom/google/appinventor/components/runtime/DataModel;->addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 77
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/ChartDataBase;->onDataChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    monitor-enter v1

    .line 80
    :try_start_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->val$isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 81
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 82
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 79
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    monitor-enter v2

    .line 80
    :try_start_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->val$isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 81
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 82
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 83
    throw v1

    :catchall_2
    move-exception v0

    .line 82
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method
