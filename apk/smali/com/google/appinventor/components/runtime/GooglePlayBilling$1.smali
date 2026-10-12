.class Lcom/google/appinventor/components/runtime/GooglePlayBilling$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GooglePlayBilling;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
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

    .line 49
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling$1;->this$0:Lcom/google/appinventor/components/runtime/GooglePlayBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 53
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 54
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling$1;->this$0:Lcom/google/appinventor/components/runtime/GooglePlayBilling;

    invoke-virtual {v0, p2}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->PurchaseUpdated(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 57
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling$1;->this$0:Lcom/google/appinventor/components/runtime/GooglePlayBilling;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->PurchaseCancelled()V

    return-void

    .line 59
    :cond_2
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling$1;->this$0:Lcom/google/appinventor/components/runtime/GooglePlayBilling;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->PurchaseFailed(Ljava/lang/String;)V

    return-void
.end method
