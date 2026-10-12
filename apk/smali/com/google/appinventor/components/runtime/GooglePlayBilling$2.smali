.class Lcom/google/appinventor/components/runtime/GooglePlayBilling$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GooglePlayBilling;->StartBillingClientConnection()V
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

    .line 68
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling$2;->this$0:Lcom/google/appinventor/components/runtime/GooglePlayBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling$2;->this$0:Lcom/google/appinventor/components/runtime/GooglePlayBilling;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->BillingClientDisconnected()V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 1

    .line 71
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling$2;->this$0:Lcom/google/appinventor/components/runtime/GooglePlayBilling;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->BillingClientConnected()V

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling$2;->this$0:Lcom/google/appinventor/components/runtime/GooglePlayBilling;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->BillingClientConnectionFailed(Ljava/lang/String;)V

    return-void
.end method
