.class Lcom/google/appinventor/components/runtime/GooglePlayBilling$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GooglePlayBilling;->IsProductPurchased(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/GooglePlayBilling;

.field final synthetic val$productId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/GooglePlayBilling;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 303
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling$7;->this$0:Lcom/google/appinventor/components/runtime/GooglePlayBilling;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling$7;->val$productId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 307
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 308
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling$7;->val$productId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 309
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling$7;->this$0:Lcom/google/appinventor/components/runtime/GooglePlayBilling;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->a(Lcom/google/appinventor/components/runtime/GooglePlayBilling;Z)V

    goto :goto_0

    .line 311
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling$7;->this$0:Lcom/google/appinventor/components/runtime/GooglePlayBilling;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->a(Lcom/google/appinventor/components/runtime/GooglePlayBilling;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
