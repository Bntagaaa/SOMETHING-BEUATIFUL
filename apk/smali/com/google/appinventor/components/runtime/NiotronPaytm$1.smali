.class Lcom/google/appinventor/components/runtime/NiotronPaytm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronPaytm;->StartPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronPaytm;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronPaytm;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronPaytm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clientAuthenticationFailed(Ljava/lang/String;)V
    .locals 0

    .line 153
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronPaytm;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronPaytm;->ClientAuthenticationFailed()V

    return-void
.end method

.method public networkNotAvailable()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronPaytm;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronPaytm;->NetworkNotAvailable()V

    return-void
.end method

.method public onBackPressedCancelTransaction()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronPaytm;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronPaytm;->TransactionCancelled()V

    return-void
.end method

.method public onErrorLoadingWebPage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronPaytm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/NiotronPaytm;->ErrorLoadingWebPage(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTransactionCancel(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 173
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronPaytm;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronPaytm;->TransactionCancelled()V

    return-void
.end method

.method public onTransactionResponse(Landroid/os/Bundle;)V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronPaytm;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "STATUS"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/NiotronPaytm;->TransactionResponse(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public someUIErrorOccurred(Ljava/lang/String;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronPaytm;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronPaytm;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method
