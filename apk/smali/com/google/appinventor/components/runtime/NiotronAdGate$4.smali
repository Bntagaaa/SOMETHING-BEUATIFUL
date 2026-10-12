.class Lcom/google/appinventor/components/runtime/NiotronAdGate$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adgatemedia/sdk/network/OnConversionsReceived;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAdGate;->GetConversion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAdGate;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAdGate;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdGate$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdGate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdGate$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdGate;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronAdGate;->ErrorGettingConversionReport(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/adgatemedia/sdk/model/Conversion;",
            ">;)V"
        }
    .end annotation

    .line 111
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adgatemedia/sdk/model/Conversion;

    .line 112
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 113
    iget v2, v0, Lcom/adgatemedia/sdk/model/Conversion;->offerId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Offer ID"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 114
    const-string v2, "Offer Title"

    iget-object v3, v0, Lcom/adgatemedia/sdk/model/Conversion;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v2, "Transaction ID"

    iget-object v3, v0, Lcom/adgatemedia/sdk/model/Conversion;->txId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-wide v2, v0, Lcom/adgatemedia/sdk/model/Conversion;->points:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "Points Earned"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 117
    iget v2, v0, Lcom/adgatemedia/sdk/model/Conversion;->payout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Payouts In Cents"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 118
    const-string v2, "Sub ID 2"

    iget-object v3, v0, Lcom/adgatemedia/sdk/model/Conversion;->subid2:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v2, "Sub ID 3"

    iget-object v3, v0, Lcom/adgatemedia/sdk/model/Conversion;->subid3:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v2, "Sub ID 4"

    iget-object v3, v0, Lcom/adgatemedia/sdk/model/Conversion;->subid4:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v2, "Sub ID 5"

    iget-object v0, v0, Lcom/adgatemedia/sdk/model/Conversion;->subid5:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdGate$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdGate;

    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronAdGate;->GotConversionReport(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
