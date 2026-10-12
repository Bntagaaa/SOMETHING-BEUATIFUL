.class public final Lcom/google/appinventor/components/runtime/AppLovinNative;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0x10
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Native ads let you monetize your app in a way that\u2019s consistent with its existing design. <br> SDK Version: 11.9.0"
    iconName = "images/appLovinBanner.png"
    nonVisible = false
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, com.google.android.gms.permission.AD_ID, android.permission.ACCESS_WIFI_STATE, com.applovin.array.apphub.permission.BIND_APPHUB_SERVICE"
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private nativeAd:Lcom/applovin/mediation/MaxAd;

.field private nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

.field private nativeContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 45
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->context:Landroid/app/Activity;

    .line 47
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->nativeContainer:Landroid/widget/FrameLayout;

    .line 50
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/AppLovinNative;)Lcom/applovin/mediation/MaxAd;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->nativeAd:Lcom/applovin/mediation/MaxAd;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/AppLovinNative;)Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/AppLovinNative;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->nativeContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/AppLovinNative;Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->nativeAd:Lcom/applovin/mediation/MaxAd;

    return-void
.end method


# virtual methods
.method public AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Clicked"
    .end annotation

    const/4 v0, 0x0

    .line 107
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClicked"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToLoad(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Failed to Load"
    .end annotation

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdFailedToLoad"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Loaded"
    .end annotation

    const/4 v0, 0x0

    .line 97
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Height()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public Height(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public HeightPercent(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public LoadNativeAd(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load a Native Ad"
    .end annotation

    .line 60
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->context:Landroid/app/Activity;

    invoke-direct {v0, p1, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    .line 61
    new-instance p1, Lcom/google/appinventor/components/runtime/AppLovinNative$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/AppLovinNative$1;-><init>(Lcom/google/appinventor/components/runtime/AppLovinNative;)V

    invoke-virtual {v0, p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->setNativeAdListener(Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;)V

    .line 87
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->loadAd()V

    return-void
.end method

.method public SdkInitialized()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Sdk Initialized"
    .end annotation

    const/4 v0, 0x0

    .line 92
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SdkInitialized"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Width()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public Width(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public WidthPercent(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->nativeContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method
