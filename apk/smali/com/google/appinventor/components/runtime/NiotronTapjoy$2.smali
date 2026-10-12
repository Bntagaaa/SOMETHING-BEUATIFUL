.class Lcom/google/appinventor/components/runtime/NiotronTapjoy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJGetCurrencyBalanceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronTapjoy;->GetCurrency()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronTapjoy;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronTapjoy;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronTapjoy$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronTapjoy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetCurrencyBalanceResponse(Ljava/lang/String;I)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronTapjoy$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronTapjoy;

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronTapjoy;->GotCurrencyBalance(Ljava/lang/String;I)V

    return-void
.end method

.method public onGetCurrencyBalanceResponseFailure(Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronTapjoy$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronTapjoy;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronTapjoy;->CurrencyResponseFailure(Ljava/lang/String;)V

    return-void
.end method
