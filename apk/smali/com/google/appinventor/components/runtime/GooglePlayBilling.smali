.class public final Lcom/google/appinventor/components/runtime/GooglePlayBilling;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0x15
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Google Play Billing is a service that lets you sell digital content on Android."
    iconName = "images/googlePlayBilling.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "billing.aar, billing.jar, transport-backend-cct.aar, transport-backend-cct.jar, transport-runtime.aar, transport-runtime.jar, firebase-encoders-json.aar, firebase-encoders-json.jar, firebase-encoders-proto.jar, firebase-encoders.jar, play-services-location.aar, play-services-location.jar, play-services-base.aar, play-services-base.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, transport-api.aar, transport-api.jar, annotation.jar, javax.inject.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "com.android.vending.BILLING"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private billingClient:Lcom/android/billingclient/api/BillingClient;

.field private isProductPurchased:Z

.field private isSubscriptionPurchased:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 46
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 47
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->activity:Landroid/app/Activity;

    .line 49
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/GooglePlayBilling$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling$1;-><init>(Lcom/google/appinventor/components/runtime/GooglePlayBilling;)V

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 64
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->StartBillingClientConnection()V

    return-void
.end method

.method private StartBillingClientConnection()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/google/appinventor/components/runtime/GooglePlayBilling$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling$2;-><init>(Lcom/google/appinventor/components/runtime/GooglePlayBilling;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/GooglePlayBilling;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->isProductPurchased:Z

    return-void
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/GooglePlayBilling;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->isSubscriptionPurchased:Z

    return-void
.end method


# virtual methods
.method public BillingClientConnected()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Billing Client Connected"
    .end annotation

    const/4 v0, 0x0

    .line 493
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BillingClientConnected"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public BillingClientConnectionFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Billing Client Connection Failed. Check errorMessage for Info"
    .end annotation

    .line 503
    const-string v0, "BillingClientConnectionFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public BillingClientDisconnected()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Billing Client Disconnected"
    .end annotation

    const/4 v0, 0x0

    .line 498
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BillingClientDisconnected"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Some Error Occurred"
    .end annotation

    .line 558
    const-string v0, "ErrorOccurred"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FailedToGetProductDetails(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Failed to Get Product Details"
    .end annotation

    .line 553
    const-string v0, "FailedToGetProductDetails"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FailedToGetSubscriptionItemDetails(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Failed to Get Subscription Details"
    .end annotation

    .line 548
    const-string v0, "FailedToGetSubscriptionItemDetails"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetBillingClientConnectionState()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Billing Client Connection State as a String"
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->getConnectionState()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 99
    const-string v0, "UNKNOWN"

    return-object v0

    .line 97
    :cond_0
    const-string v0, "CLOSED"

    return-object v0

    .line 95
    :cond_1
    const-string v0, "CONNECTED"

    return-object v0

    .line 93
    :cond_2
    const-string v0, "CONNECTING"

    return-object v0

    .line 91
    :cond_3
    const-string v0, "DISCONNECTED"

    return-object v0
.end method

.method public GetProductDescription(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Product Description. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event"
    .end annotation

    .line 423
    instance-of v0, p1, Lcom/android/billingclient/api/ProductDetails;

    if-eqz v0, :cond_0

    .line 424
    check-cast p1, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 426
    :cond_0
    const-string p1, "Invalid Product Details"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->ErrorOccurred(Ljava/lang/String;)V

    .line 427
    const-string p1, ""

    return-object p1
.end method

.method public GetProductDetails(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the product item which can be used to get Individual Product Details"
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p1

    const-string v0, "inapp"

    .line 166
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object p1

    .line 164
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 169
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object p1

    .line 173
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/google/appinventor/components/runtime/GooglePlayBilling$5;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling$5;-><init>(Lcom/google/appinventor/components/runtime/GooglePlayBilling;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->StartBillingClientConnection()V

    .line 187
    const-string p1, "Billing Client is not Ready"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->FailedToGetProductDetails(Ljava/lang/String;)V

    return-void
.end method

.method public GetProductIconUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Product Icon Url. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event"
    .end annotation

    .line 433
    instance-of v0, p1, Lcom/android/billingclient/api/SkuDetails;

    if-eqz v0, :cond_0

    .line 434
    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getIconUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 436
    :cond_0
    const-string p1, "Invalid Product Details"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->ErrorOccurred(Ljava/lang/String;)V

    .line 437
    const-string p1, ""

    return-object p1
.end method

.method public GetProductOriginalJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Product Original Json. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event"
    .end annotation

    .line 453
    instance-of v0, p1, Lcom/android/billingclient/api/SkuDetails;

    if-eqz v0, :cond_0

    .line 454
    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getOriginalJson()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 456
    :cond_0
    const-string p1, "Invalid Product Details"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->ErrorOccurred(Ljava/lang/String;)V

    .line 457
    const-string p1, ""

    return-object p1
.end method

.method public GetProductOriginalPrice(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Product Original Price. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event"
    .end annotation

    .line 443
    instance-of v0, p1, Lcom/android/billingclient/api/SkuDetails;

    if-eqz v0, :cond_0

    .line 444
    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getOriginalPrice()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 446
    :cond_0
    const-string p1, "Invalid Product Details"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->ErrorOccurred(Ljava/lang/String;)V

    .line 447
    const-string p1, ""

    return-object p1
.end method

.method public GetProductPrice(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Product Price. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 396
    instance-of v0, p1, Lcom/android/billingclient/api/SkuDetails;

    if-eqz v0, :cond_0

    .line 397
    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 399
    :cond_0
    const-string p1, "Invalid Product Details"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->ErrorOccurred(Ljava/lang/String;)V

    .line 400
    const-string p1, ""

    return-object p1
.end method

.method public GetProductPrice(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 2
    .param p2    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/BillingProductType;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Product Price. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event"
    .end annotation

    .line 406
    sget-object v0, Lcom/google/appinventor/components/common/BillingProductType;->Product:Lcom/google/appinventor/components/common/BillingProductType;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/BillingProductType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, ""

    if-ne p2, v0, :cond_1

    .line 407
    instance-of p2, p1, Lcom/android/billingclient/api/ProductDetails;

    if-eqz p2, :cond_0

    .line 408
    check-cast p1, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 410
    :cond_0
    const-string p1, "Invalid Product Details"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->ErrorOccurred(Ljava/lang/String;)V

    return-object v1

    .line 413
    :cond_1
    sget-object v0, Lcom/google/appinventor/components/common/BillingProductType;->Subscription:Lcom/google/appinventor/components/common/BillingProductType;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/BillingProductType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 414
    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 416
    :cond_2
    const-string p1, "Invalid Product Type"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->ErrorOccurred(Ljava/lang/String;)V

    return-object v1
.end method

.method public GetProductPriceCurrencyCode(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Product Currency Code like INR, USD. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event"
    .end annotation

    .line 463
    instance-of v0, p1, Lcom/android/billingclient/api/SkuDetails;

    if-eqz v0, :cond_0

    .line 464
    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 466
    :cond_0
    const-string p1, "Invalid Product Details"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->ErrorOccurred(Ljava/lang/String;)V

    .line 467
    const-string p1, ""

    return-object p1
.end method

.method public GetProductSku(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Product Sku. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event"
    .end annotation

    .line 385
    instance-of v0, p1, Lcom/android/billingclient/api/ProductDetails;

    if-eqz v0, :cond_0

    .line 386
    check-cast p1, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 388
    :cond_0
    const-string p1, "Invalid Product Details"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->ErrorOccurred(Ljava/lang/String;)V

    .line 389
    const-string p1, ""

    return-object p1
.end method

.method public GetProductTitle(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Product Title. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event"
    .end annotation

    .line 375
    instance-of v0, p1, Lcom/android/billingclient/api/ProductDetails;

    if-eqz v0, :cond_0

    .line 376
    check-cast p1, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 378
    :cond_0
    const-string p1, "Invalid Product Details"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->ErrorOccurred(Ljava/lang/String;)V

    .line 379
    const-string p1, ""

    return-object p1
.end method

.method public GetPurchasedProducts()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get All the Purchased Products Details. A Product Item will be returned. Use the GetProductDetails Function to get Product Info"
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 345
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    const-string v2, "inapp"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/GooglePlayBilling$9;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling$9;-><init>(Lcom/google/appinventor/components/runtime/GooglePlayBilling;)V

    .line 344
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method public GetPurchasedSubscriptions()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get All the Purchased Subscription Details. A Product Item will be returned. Use the GetProductDetails Function and GetSubscriptionItem to get Subscription Info"
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 361
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    const-string v2, "subs"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/GooglePlayBilling$10;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling$10;-><init>(Lcom/google/appinventor/components/runtime/GooglePlayBilling;)V

    .line 360
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method public GetSubscriptionFreeTrialPeriod(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Subscription Item Free Trial Period. Pass the Product Details from GotSubscriptionItemDetails Event"
    .end annotation

    .line 473
    instance-of v0, p1, Lcom/android/billingclient/api/SkuDetails;

    if-eqz v0, :cond_0

    .line 474
    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getFreeTrialPeriod()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 476
    :cond_0
    const-string p1, "Invalid Subscription Item Details"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->ErrorOccurred(Ljava/lang/String;)V

    .line 477
    const-string p1, ""

    return-object p1
.end method

.method public GetSubscriptionItemDetails(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Subscription Item as a Product Item which can be used inside the GetProductDetails Function and the GetSubscriptionItem Functions"
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v0

    .line 273
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p1

    const-string v0, "subs"

    .line 274
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p1

    .line 275
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object p1

    .line 272
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 277
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    .line 278
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    .line 279
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object p1

    .line 281
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/google/appinventor/components/runtime/GooglePlayBilling$6;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling$6;-><init>(Lcom/google/appinventor/components/runtime/GooglePlayBilling;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->StartBillingClientConnection()V

    .line 295
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->GetProductDetails(Ljava/lang/String;)V

    return-void
.end method

.method public GetSubscriptionItemPeriod(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Subscription Item Period. Pass the Product Details from GotSubscriptionItemDetails Event"
    .end annotation

    .line 483
    instance-of v0, p1, Lcom/android/billingclient/api/SkuDetails;

    if-eqz v0, :cond_0

    .line 484
    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getSubscriptionPeriod()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 486
    :cond_0
    const-string p1, "Invalid Subscription Item Details"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->ErrorOccurred(Ljava/lang/String;)V

    .line 487
    const-string p1, ""

    return-object p1
.end method

.method public GotProductDetails(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Got the Product Details. Use the \'productDetails\' inside the GetProduct--- Function"
    .end annotation

    .line 528
    const-string v0, "GotProductDetails"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotPurchasedProducts(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Gets a List of Purchased products item. Use each item in the GetProduct--- Function"
    .end annotation

    .line 538
    const-string v0, "GotPurchasedProducts"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotPurchasedSubscriptions(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Gets a List of Purchased Subscriptions item. Use each item in the GetProduct--- or GetSubscription--- Function"
    .end annotation

    .line 543
    const-string v0, "GotPurchasedSubscriptions"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotSubscriptionItemDetails(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Got the Subscription Details. Use the \'productDetails\' inside the GetProduct--- and GetSubscription--- Function"
    .end annotation

    .line 533
    const-string v0, "GotProductDetails"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public HandlePurchaseAsConsumable(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Handle as Consumable, can be bought again"
    .end annotation

    .line 134
    instance-of v0, p1, Lcom/android/billingclient/api/Purchase;

    if-eqz v0, :cond_2

    .line 135
    check-cast p1, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 137
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object p1

    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/google/appinventor/components/runtime/GooglePlayBilling$4;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling$4;-><init>(Lcom/google/appinventor/components/runtime/GooglePlayBilling;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    return-void

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->PurchaseSuccessful()V

    :cond_1
    return-void

    .line 156
    :cond_2
    const-string p1, "Wrong Purchase Item"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->PurchaseFailed(Ljava/lang/String;)V

    return-void
.end method

.method public HandlePurchaseAsNonConsumable(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Handle as Non Consumable, can be bought only Once"
    .end annotation

    .line 105
    instance-of v0, p1, Lcom/android/billingclient/api/Purchase;

    if-eqz v0, :cond_2

    .line 106
    check-cast p1, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 108
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object p1

    .line 113
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/google/appinventor/components/runtime/GooglePlayBilling$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling$3;-><init>(Lcom/google/appinventor/components/runtime/GooglePlayBilling;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->PurchaseSuccessful()V

    :cond_1
    return-void

    .line 128
    :cond_2
    const-string p1, "Wrong Purchase Item"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->PurchaseFailed(Ljava/lang/String;)V

    return-void
.end method

.method public IsAcknowledgedOrConsumed(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns If purchased is acknowledged or consumed"
    .end annotation

    .line 193
    instance-of v0, p1, Lcom/android/billingclient/api/Purchase;

    if-eqz v0, :cond_0

    .line 194
    check-cast p1, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public IsProductPurchased(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check if a product is purchased using the Product Id"
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 302
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    const-string v2, "inapp"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/GooglePlayBilling$7;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling$7;-><init>(Lcom/google/appinventor/components/runtime/GooglePlayBilling;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 317
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->isProductPurchased:Z

    return p1
.end method

.method public IsSubscriptionPurchased(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check if a Subscription is purchased using the Product Id"
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 323
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    const-string v2, "subs"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/GooglePlayBilling$8;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling$8;-><init>(Lcom/google/appinventor/components/runtime/GooglePlayBilling;Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 338
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->isSubscriptionPurchased:Z

    return p1
.end method

.method public LaunchBillingFlow(Ljava/lang/Object;Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Launch the Billing Flow to purchase the product. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event. productDetails can also be a list of productDetails. Pass in true or false for personalized offer to disclose to users that an item\'s price was personalized using automated decision-making"
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v1, :cond_0

    .line 207
    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {p1}, Lgnu/lists/AbstractSequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 209
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v2

    check-cast v1, Lcom/android/billingclient/api/ProductDetails;

    .line 210
    invoke-virtual {v2, v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v1

    check-cast p1, Lcom/android/billingclient/api/ProductDetails;

    .line 217
    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p1

    .line 215
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_1
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    .line 223
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    .line 224
    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setIsOfferPersonalized(Z)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    .line 226
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->activity:Landroid/app/Activity;

    invoke-virtual {p2, v0, p1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    return-void

    .line 228
    :cond_2
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->StartBillingClientConnection()V

    .line 229
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->LaunchBillingFlow(Ljava/lang/Object;Z)V

    return-void
.end method

.method public LaunchBillingFlowWithOffer(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Launch the Billing Flow to purchase the product. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event. productDetails can also be a list of productDetails. Pass in true or false for personalized offer to disclose to users that an item\'s price was personalized using automated decision-making"
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v1, :cond_0

    .line 240
    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {p1}, Lgnu/lists/AbstractSequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 242
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v2

    check-cast v1, Lcom/android/billingclient/api/ProductDetails;

    .line 243
    invoke-virtual {v2, v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v1

    .line 244
    invoke-virtual {v1, p2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v1

    .line 241
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v1

    check-cast p1, Lcom/android/billingclient/api/ProductDetails;

    .line 251
    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p1

    .line 252
    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p1

    .line 249
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_1
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    .line 258
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    .line 259
    invoke-virtual {p1, p3}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setIsOfferPersonalized(Z)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    .line 260
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    .line 261
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->activity:Landroid/app/Activity;

    invoke-virtual {p2, p3, p1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    return-void

    .line 263
    :cond_2
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->StartBillingClientConnection()V

    .line 264
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->LaunchBillingFlowWithOffer(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public PurchaseCancelled()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Purchase Cancelled by the User"
    .end annotation

    const/4 v0, 0x0

    .line 523
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PurchaseCancelled"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PurchaseFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Purchase Failed. Check errorMessage for Info"
    .end annotation

    .line 513
    const-string v0, "PurchaseFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PurchaseSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Purchased was Successful and handled"
    .end annotation

    const/4 v0, 0x0

    .line 508
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PurchaseSuccessful"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PurchaseUpdated(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Purchase Updated. Handle Purchase here else it will be refunded within 3 days"
    .end annotation

    .line 518
    const-string v0, "PurchaseUpdated"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
