.class public Lcom/google/appinventor/components/runtime/LineChartDataModel;
.super Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/LineChartBaseDataModel<",
        "Lcom/google/appinventor/components/runtime/LineChartView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/data/LineData;Lcom/google/appinventor/components/runtime/LineChartView;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;-><init>(Lcom/github/mikephil/charting/data/LineData;Lcom/google/appinventor/components/runtime/LineChartViewBase;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/mikephil/charting/data/LineData;Lcom/google/appinventor/components/runtime/LineChartView;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;-><init>(Lcom/github/mikephil/charting/data/LineData;Lcom/google/appinventor/components/runtime/LineChartViewBase;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    return-void
.end method
