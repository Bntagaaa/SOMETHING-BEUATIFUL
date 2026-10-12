.class Lcom/google/appinventor/components/runtime/GooglePlayBilling$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GooglePlayBilling;->HandlePurchaseAsConsumable(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/GooglePlayBilling;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/GooglePlayBilling;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling$4;->this$0:Lcom/google/appinventor/components/runtime/GooglePlayBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 0

    .line 144
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    if-nez p2, :cond_0

    .line 145
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling$4;->this$0:Lcom/google/appinventor/components/runtime/GooglePlayBilling;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->PurchaseSuccessful()V

    return-void

    .line 147
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling$4;->this$0:Lcom/google/appinventor/components/runtime/GooglePlayBilling;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->PurchaseFailed(Ljava/lang/String;)V

    return-void
.end method
