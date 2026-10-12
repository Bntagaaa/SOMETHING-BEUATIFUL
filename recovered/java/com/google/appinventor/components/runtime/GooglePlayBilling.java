package com.google.appinventor.components.runtime;

import android.app.Activity;
import androidx.annotation.Nullable;
import com.android.billingclient.api.AcknowledgePurchaseParams;
import com.android.billingclient.api.AcknowledgePurchaseResponseListener;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ConsumeParams;
import com.android.billingclient.api.ConsumeResponseListener;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.ProductDetailsResponseListener;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.android.billingclient.api.QueryPurchasesParams;
import com.android.billingclient.api.SkuDetails;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.BillingProductType;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.YailList;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@SimpleObject
@UsesPermissions(permissionNames = "com.android.vending.BILLING")
@DesignerComponent(androidMinSdk = 21, category = ComponentCategory.MONETIZATION, description = "Google Play Billing is a service that lets you sell digital content on Android.", iconName = "images/googlePlayBilling.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "billing.aar, billing.jar, transport-backend-cct.aar, transport-backend-cct.jar, transport-runtime.aar, transport-runtime.jar, firebase-encoders-json.aar, firebase-encoders-json.jar, firebase-encoders-proto.jar, firebase-encoders.jar, play-services-location.aar, play-services-location.jar, play-services-base.aar, play-services-base.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, transport-api.aar, transport-api.jar, annotation.jar, javax.inject.jar")
/* loaded from: classes.dex */
public final class GooglePlayBilling extends AndroidNonvisibleComponent {
    private Activity activity;
    private BillingClient billingClient;
    private boolean isProductPurchased;
    private boolean isSubscriptionPurchased;

    public GooglePlayBilling(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        Activity activity$context = componentContainer.$context();
        this.activity = activity$context;
        this.billingClient = BillingClient.newBuilder(activity$context).enablePendingPurchases().setListener(new PurchasesUpdatedListener() { // from class: com.google.appinventor.components.runtime.GooglePlayBilling.1
            public void onPurchasesUpdated(BillingResult billingResult, @Nullable List<Purchase> list) {
                if (billingResult.getResponseCode() == 0 && list != null) {
                    Iterator<Purchase> it = list.iterator();
                    while (it.hasNext()) {
                        GooglePlayBilling.this.PurchaseUpdated(it.next());
                    }
                    return;
                }
                if (billingResult.getResponseCode() == 1) {
                    GooglePlayBilling.this.PurchaseCancelled();
                } else {
                    GooglePlayBilling.this.PurchaseFailed(billingResult.getDebugMessage());
                }
            }
        }).build();
        StartBillingClientConnection();
    }

    private void StartBillingClientConnection() {
        this.billingClient.startConnection(new BillingClientStateListener() { // from class: com.google.appinventor.components.runtime.GooglePlayBilling.2
            public void onBillingSetupFinished(BillingResult billingResult) {
                if (billingResult.getResponseCode() == 0) {
                    GooglePlayBilling.this.BillingClientConnected();
                } else {
                    GooglePlayBilling.this.BillingClientConnectionFailed(billingResult.getDebugMessage());
                }
            }

            public void onBillingServiceDisconnected() {
                GooglePlayBilling.this.BillingClientDisconnected();
            }
        });
    }

    @SimpleFunction(description = "Get the Billing Client Connection State as a String")
    public String GetBillingClientConnectionState() {
        int connectionState = this.billingClient.getConnectionState();
        if (connectionState == 0) {
            return "DISCONNECTED";
        }
        if (connectionState == 1) {
            return "CONNECTING";
        }
        if (connectionState == 2) {
            return "CONNECTED";
        }
        if (connectionState == 3) {
            return "CLOSED";
        }
        return "UNKNOWN";
    }

    @SimpleFunction(description = "Handle as Non Consumable, can be bought only Once")
    public void HandlePurchaseAsNonConsumable(Object obj) {
        if (obj instanceof Purchase) {
            Purchase purchase = (Purchase) obj;
            if (purchase.getPurchaseState() == 1) {
                if (!purchase.isAcknowledged()) {
                    this.billingClient.acknowledgePurchase(AcknowledgePurchaseParams.newBuilder().setPurchaseToken(purchase.getPurchaseToken()).build(), new AcknowledgePurchaseResponseListener() { // from class: com.google.appinventor.components.runtime.GooglePlayBilling.3
                        public void onAcknowledgePurchaseResponse(BillingResult billingResult) {
                            if (billingResult.getResponseCode() == 0) {
                                GooglePlayBilling.this.PurchaseSuccessful();
                            } else {
                                GooglePlayBilling.this.PurchaseFailed(billingResult.getDebugMessage());
                            }
                        }
                    });
                    return;
                } else {
                    PurchaseSuccessful();
                    return;
                }
            }
            return;
        }
        PurchaseFailed("Wrong Purchase Item");
    }

    @SimpleFunction(description = "Handle as Consumable, can be bought again")
    public void HandlePurchaseAsConsumable(Object obj) {
        if (obj instanceof Purchase) {
            Purchase purchase = (Purchase) obj;
            if (purchase.getPurchaseState() == 1) {
                if (!purchase.isAcknowledged()) {
                    this.billingClient.consumeAsync(ConsumeParams.newBuilder().setPurchaseToken(purchase.getPurchaseToken()).build(), new ConsumeResponseListener() { // from class: com.google.appinventor.components.runtime.GooglePlayBilling.4
                        public void onConsumeResponse(BillingResult billingResult, String str) {
                            if (billingResult.getResponseCode() == 0) {
                                GooglePlayBilling.this.PurchaseSuccessful();
                            } else {
                                GooglePlayBilling.this.PurchaseFailed(billingResult.getDebugMessage());
                            }
                        }
                    });
                    return;
                } else {
                    PurchaseSuccessful();
                    return;
                }
            }
            return;
        }
        PurchaseFailed("Wrong Purchase Item");
    }

    @SimpleFunction(description = "Get the product item which can be used to get Individual Product Details")
    public void GetProductDetails(String str) {
        if (this.billingClient.isReady()) {
            this.billingClient.queryProductDetailsAsync(QueryProductDetailsParams.newBuilder().setProductList(ImmutableList.of(QueryProductDetailsParams.Product.newBuilder().setProductId(str).setProductType("inapp").build())).build(), new ProductDetailsResponseListener() { // from class: com.google.appinventor.components.runtime.GooglePlayBilling.5
                public void onProductDetailsResponse(BillingResult billingResult, List<ProductDetails> list) {
                    if (billingResult.getResponseCode() == 0 && list != null) {
                        GooglePlayBilling.this.GotProductDetails(list.get(0));
                    } else {
                        GooglePlayBilling.this.FailedToGetProductDetails(billingResult.getDebugMessage());
                    }
                }
            });
        } else {
            StartBillingClientConnection();
            FailedToGetProductDetails("Billing Client is not Ready");
        }
    }

    @SimpleFunction(description = "Returns If purchased is acknowledged or consumed")
    public boolean IsAcknowledgedOrConsumed(Object obj) {
        if (obj instanceof Purchase) {
            return ((Purchase) obj).isAcknowledged();
        }
        return false;
    }

    @SimpleFunction(description = "Launch the Billing Flow to purchase the product. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event. productDetails can also be a list of productDetails. Pass in true or false for personalized offer to disclose to users that an item's price was personalized using automated decision-making")
    public void LaunchBillingFlow(Object obj, boolean z) {
        if (this.billingClient.isReady()) {
            ArrayList arrayList = new ArrayList();
            if (obj instanceof YailList) {
                Iterator it = ((YailList) obj).iterator();
                while (it.hasNext()) {
                    arrayList.add(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails((ProductDetails) it.next()).build());
                }
            } else {
                arrayList.add(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails((ProductDetails) obj).build());
            }
            this.billingClient.launchBillingFlow(this.activity, BillingFlowParams.newBuilder().setProductDetailsParamsList(arrayList).setIsOfferPersonalized(z).build());
            return;
        }
        StartBillingClientConnection();
        LaunchBillingFlow(obj, z);
    }

    @SimpleFunction(description = "Launch the Billing Flow to purchase the product. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event. productDetails can also be a list of productDetails. Pass in true or false for personalized offer to disclose to users that an item's price was personalized using automated decision-making")
    public void LaunchBillingFlowWithOffer(Object obj, String str, boolean z) {
        if (this.billingClient.isReady()) {
            ArrayList arrayList = new ArrayList();
            if (obj instanceof YailList) {
                Iterator it = ((YailList) obj).iterator();
                while (it.hasNext()) {
                    arrayList.add(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails((ProductDetails) it.next()).setOfferToken(str).build());
                }
            } else {
                arrayList.add(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails((ProductDetails) obj).setOfferToken(str).build());
            }
            this.billingClient.launchBillingFlow(this.activity, BillingFlowParams.newBuilder().setProductDetailsParamsList(arrayList).setIsOfferPersonalized(z).build());
            return;
        }
        StartBillingClientConnection();
        LaunchBillingFlowWithOffer(obj, str, z);
    }

    @SimpleFunction(description = "Get the Subscription Item as a Product Item which can be used inside the GetProductDetails Function and the GetSubscriptionItem Functions")
    public void GetSubscriptionItemDetails(String str) {
        if (this.billingClient.isReady()) {
            this.billingClient.queryProductDetailsAsync(QueryProductDetailsParams.newBuilder().setProductList(ImmutableList.of(QueryProductDetailsParams.Product.newBuilder().setProductId(str).setProductType("subs").build())).build(), new ProductDetailsResponseListener() { // from class: com.google.appinventor.components.runtime.GooglePlayBilling.6
                public void onProductDetailsResponse(BillingResult billingResult, List<ProductDetails> list) {
                    if (billingResult.getResponseCode() == 0 && list != null) {
                        GooglePlayBilling.this.GotSubscriptionItemDetails(list.get(0));
                    } else {
                        GooglePlayBilling.this.FailedToGetSubscriptionItemDetails(billingResult.getDebugMessage());
                    }
                }
            });
        } else {
            StartBillingClientConnection();
            GetProductDetails(str);
        }
    }

    @SimpleFunction(description = "Check if a product is purchased using the Product Id")
    public boolean IsProductPurchased(final String str) {
        this.billingClient.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType("inapp").build(), new PurchasesResponseListener() { // from class: com.google.appinventor.components.runtime.GooglePlayBilling.7
            public void onQueryPurchasesResponse(BillingResult billingResult, List<Purchase> list) {
                Iterator<Purchase> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next().getSkus().contains(str)) {
                        GooglePlayBilling.this.isProductPurchased = true;
                    } else {
                        GooglePlayBilling.this.isProductPurchased = false;
                    }
                }
            }
        });
        return this.isProductPurchased;
    }

    @SimpleFunction(description = "Check if a Subscription is purchased using the Product Id")
    public boolean IsSubscriptionPurchased(final String str) {
        this.billingClient.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType("subs").build(), new PurchasesResponseListener() { // from class: com.google.appinventor.components.runtime.GooglePlayBilling.8
            public void onQueryPurchasesResponse(BillingResult billingResult, List<Purchase> list) {
                Iterator<Purchase> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next().getSkus().contains(str)) {
                        GooglePlayBilling.this.isSubscriptionPurchased = true;
                    } else {
                        GooglePlayBilling.this.isSubscriptionPurchased = false;
                    }
                }
            }
        });
        return this.isSubscriptionPurchased;
    }

    @SimpleFunction(description = "Get All the Purchased Products Details. A Product Item will be returned. Use the GetProductDetails Function to get Product Info")
    public void GetPurchasedProducts() {
        this.billingClient.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType("inapp").build(), new PurchasesResponseListener() { // from class: com.google.appinventor.components.runtime.GooglePlayBilling.9
            public void onQueryPurchasesResponse(BillingResult billingResult, List<Purchase> list) {
                GooglePlayBilling.this.GotPurchasedProducts(YailList.makeList((List) list));
            }
        });
    }

    @SimpleFunction(description = "Get All the Purchased Subscription Details. A Product Item will be returned. Use the GetProductDetails Function and GetSubscriptionItem to get Subscription Info")
    public void GetPurchasedSubscriptions() {
        this.billingClient.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType("subs").build(), new PurchasesResponseListener() { // from class: com.google.appinventor.components.runtime.GooglePlayBilling.10
            public void onQueryPurchasesResponse(BillingResult billingResult, List<Purchase> list) {
                GooglePlayBilling.this.GotPurchasedProducts(YailList.makeList((List) list));
            }
        });
    }

    @SimpleFunction(description = "Get the Product Title. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event")
    public String GetProductTitle(Object obj) {
        if (obj instanceof ProductDetails) {
            return ((ProductDetails) obj).getTitle();
        }
        ErrorOccurred("Invalid Product Details");
        return "";
    }

    @SimpleFunction(description = "Get the Product Sku. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event")
    public String GetProductSku(Object obj) {
        if (obj instanceof ProductDetails) {
            return ((ProductDetails) obj).getProductId();
        }
        ErrorOccurred("Invalid Product Details");
        return "";
    }

    @SimpleFunction(description = "Get the Product Price. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event")
    @Deprecated
    public String GetProductPrice(Object obj) {
        if (obj instanceof SkuDetails) {
            return ((SkuDetails) obj).getPrice();
        }
        ErrorOccurred("Invalid Product Details");
        return "";
    }

    @SimpleFunction(description = "Get the Product Price. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event")
    public String GetProductPrice(Object obj, @Options(BillingProductType.class) int i) {
        if (i == BillingProductType.Product.toUnderlyingValue().intValue()) {
            if (obj instanceof ProductDetails) {
                return ((ProductDetails) obj).getOneTimePurchaseOfferDetails().getFormattedPrice();
            }
            ErrorOccurred("Invalid Product Details");
            return "";
        }
        if (i == BillingProductType.Subscription.toUnderlyingValue().intValue()) {
            return ((SkuDetails) obj).getPrice();
        }
        ErrorOccurred("Invalid Product Type");
        return "";
    }

    @SimpleFunction(description = "Get the Product Description. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event")
    public String GetProductDescription(Object obj) {
        if (obj instanceof ProductDetails) {
            return ((ProductDetails) obj).getDescription();
        }
        ErrorOccurred("Invalid Product Details");
        return "";
    }

    @SimpleFunction(description = "Get the Product Icon Url. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event")
    public String GetProductIconUrl(Object obj) {
        if (obj instanceof SkuDetails) {
            return ((SkuDetails) obj).getIconUrl();
        }
        ErrorOccurred("Invalid Product Details");
        return "";
    }

    @SimpleFunction(description = "Get the Product Original Price. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event")
    public String GetProductOriginalPrice(Object obj) {
        if (obj instanceof SkuDetails) {
            return ((SkuDetails) obj).getOriginalPrice();
        }
        ErrorOccurred("Invalid Product Details");
        return "";
    }

    @SimpleFunction(description = "Get the Product Original Json. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event")
    public String GetProductOriginalJson(Object obj) {
        if (obj instanceof SkuDetails) {
            return ((SkuDetails) obj).getOriginalJson();
        }
        ErrorOccurred("Invalid Product Details");
        return "";
    }

    @SimpleFunction(description = "Get the Product Currency Code like INR, USD. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event")
    public String GetProductPriceCurrencyCode(Object obj) {
        if (obj instanceof SkuDetails) {
            return ((SkuDetails) obj).getPriceCurrencyCode();
        }
        ErrorOccurred("Invalid Product Details");
        return "";
    }

    @SimpleFunction(description = "Get the Subscription Item Free Trial Period. Pass the Product Details from GotSubscriptionItemDetails Event")
    public String GetSubscriptionFreeTrialPeriod(Object obj) {
        if (obj instanceof SkuDetails) {
            return ((SkuDetails) obj).getFreeTrialPeriod();
        }
        ErrorOccurred("Invalid Subscription Item Details");
        return "";
    }

    @SimpleFunction(description = "Get the Subscription Item Period. Pass the Product Details from GotSubscriptionItemDetails Event")
    public String GetSubscriptionItemPeriod(Object obj) {
        if (obj instanceof SkuDetails) {
            return ((SkuDetails) obj).getSubscriptionPeriod();
        }
        ErrorOccurred("Invalid Subscription Item Details");
        return "";
    }

    @SimpleEvent(description = "Billing Client Connected")
    public void BillingClientConnected() {
        EventDispatcher.dispatchEvent(this, "BillingClientConnected", new Object[0]);
    }

    @SimpleEvent(description = "Billing Client Disconnected")
    public void BillingClientDisconnected() {
        EventDispatcher.dispatchEvent(this, "BillingClientDisconnected", new Object[0]);
    }

    @SimpleEvent(description = "Billing Client Connection Failed. Check errorMessage for Info")
    public void BillingClientConnectionFailed(String str) {
        EventDispatcher.dispatchEvent(this, "BillingClientConnectionFailed", str);
    }

    @SimpleEvent(description = "Purchased was Successful and handled")
    public void PurchaseSuccessful() {
        EventDispatcher.dispatchEvent(this, "PurchaseSuccessful", new Object[0]);
    }

    @SimpleEvent(description = "Purchase Failed. Check errorMessage for Info")
    public void PurchaseFailed(String str) {
        EventDispatcher.dispatchEvent(this, "PurchaseFailed", str);
    }

    @SimpleEvent(description = "Purchase Updated. Handle Purchase here else it will be refunded within 3 days")
    public void PurchaseUpdated(Object obj) {
        EventDispatcher.dispatchEvent(this, "PurchaseUpdated", obj);
    }

    @SimpleEvent(description = "Purchase Cancelled by the User")
    public void PurchaseCancelled() {
        EventDispatcher.dispatchEvent(this, "PurchaseCancelled", new Object[0]);
    }

    @SimpleEvent(description = "Got the Product Details. Use the 'productDetails' inside the GetProduct--- Function")
    public void GotProductDetails(Object obj) {
        EventDispatcher.dispatchEvent(this, "GotProductDetails", obj);
    }

    @SimpleEvent(description = "Got the Subscription Details. Use the 'productDetails' inside the GetProduct--- and GetSubscription--- Function")
    public void GotSubscriptionItemDetails(Object obj) {
        EventDispatcher.dispatchEvent(this, "GotProductDetails", obj);
    }

    @SimpleEvent(description = "Gets a List of Purchased products item. Use each item in the GetProduct--- Function")
    public void GotPurchasedProducts(YailList yailList) {
        EventDispatcher.dispatchEvent(this, "GotPurchasedProducts", yailList);
    }

    @SimpleEvent(description = "Gets a List of Purchased Subscriptions item. Use each item in the GetProduct--- or GetSubscription--- Function")
    public void GotPurchasedSubscriptions(YailList yailList) {
        EventDispatcher.dispatchEvent(this, "GotPurchasedSubscriptions", yailList);
    }

    @SimpleEvent(description = "Failed to Get Subscription Details")
    public void FailedToGetSubscriptionItemDetails(String str) {
        EventDispatcher.dispatchEvent(this, "FailedToGetSubscriptionItemDetails", str);
    }

    @SimpleEvent(description = "Failed to Get Product Details")
    public void FailedToGetProductDetails(String str) {
        EventDispatcher.dispatchEvent(this, "FailedToGetProductDetails", str);
    }

    @SimpleEvent(description = "Some Error Occurred")
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }
}
