.class Lcom/google/appinventor/components/runtime/ChartView$RefreshTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ChartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RefreshTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/google/appinventor/components/runtime/ChartDataModel<",
        "TE;TT;TD;TC;TV;>;",
        "Ljava/lang/Void;",
        "Lcom/google/appinventor/components/runtime/ChartDataModel<",
        "TE;TT;TD;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ChartView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ChartView;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartView$RefreshTask;->this$0:Lcom/google/appinventor/components/runtime/ChartView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 160
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartView$RefreshTask;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final varargs doInBackground([Lcom/google/appinventor/components/runtime/ChartDataModel;)Lcom/google/appinventor/components/runtime/ChartDataModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/appinventor/components/runtime/ChartDataModel<",
            "TE;TT;TD;TC;TV;>;)",
            "Lcom/google/appinventor/components/runtime/ChartDataModel<",
            "TE;TT;TD;TC;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v0, 0x0

    .line 169
    aget-object p1, p1, v0

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 151
    check-cast p1, [Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ChartView$RefreshTask;->doInBackground([Lcom/google/appinventor/components/runtime/ChartDataModel;)Lcom/google/appinventor/components/runtime/ChartDataModel;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lcom/google/appinventor/components/runtime/ChartDataModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/ChartDataModel<",
            "TE;TT;TD;TC;TV;>;)V"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView$RefreshTask;->this$0:Lcom/google/appinventor/components/runtime/ChartView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartView$RefreshTask;->entries:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/ChartView;->refresh(Lcom/google/appinventor/components/runtime/ChartDataModel;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 151
    check-cast p1, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ChartView$RefreshTask;->onPostExecute(Lcom/google/appinventor/components/runtime/ChartDataModel;)V

    return-void
.end method
