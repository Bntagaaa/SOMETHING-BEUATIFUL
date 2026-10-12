.class Lcom/google/appinventor/components/runtime/PieChartView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/PieChartView;->removeLegendEntry(Lcom/github/mikephil/charting/components/LegendEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/PieChartView;

.field final synthetic val$entry:Lcom/github/mikephil/charting/components/LegendEntry;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/PieChartView;Lcom/github/mikephil/charting/components/LegendEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 394
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PieChartView$2;->this$0:Lcom/google/appinventor/components/runtime/PieChartView;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/PieChartView$2;->val$entry:Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartView$2;->this$0:Lcom/google/appinventor/components/runtime/PieChartView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/PieChartView;->a(Lcom/google/appinventor/components/runtime/PieChartView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PieChartView$2;->val$entry:Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
