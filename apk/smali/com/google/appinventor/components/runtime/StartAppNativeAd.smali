.class public final Lcom/google/appinventor/components/runtime/StartAppNativeAd;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A Native Ad is a raw representation of an ad without any pre-defined wrapping UI, which gives you the freedom to design and control the ad exactly as you want. Using Native Ads, you can design an ad experience that perfectly fits your application\'s scene, content and functionality. <br> SDK Version: 4.10.12"
    iconName = "images/startAppNativeAd.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private nativeAd:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 38
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 39
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppNativeAd;->context:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/StartAppNativeAd;)Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/StartAppNativeAd;->nativeAd:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;

    return-object p0
.end method


# virtual methods
.method public AdFailedToLoad(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Failed To Loaded"
    .end annotation

    .line 185
    const-string v0, "AdFailedToLoad"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoaded(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Loaded"
    .end annotation

    .line 180
    const-string v0, "AdLoaded"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Error Occurred"
    .end annotation

    .line 190
    const-string v0, "ErrorOccurred"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetAdCampaignActionType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the Ad Campaign Type, if it will open the app or the store"
    .end annotation

    .line 163
    instance-of v0, p1, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    if-eqz v0, :cond_2

    .line 164
    sget-object v0, Lcom/google/appinventor/components/runtime/StartAppNativeAd$2;->$SwitchMap$com$startapp$sdk$ads$nativead$StartAppNativeAd$CampaignAction:[I

    check-cast p1, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getCampaignAction()Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$CampaignAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$CampaignAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 170
    const-string p1, "Unknown"

    return-object p1

    .line 168
    :cond_0
    const-string p1, "Market"

    return-object p1

    .line 166
    :cond_1
    const-string p1, "App"

    return-object p1

    .line 173
    :cond_2
    const-string p1, "GetAdCampaignActionType requires a Native Ad as input"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/StartAppNativeAd;->ErrorOccurred(Ljava/lang/String;)V

    .line 174
    const-string p1, ""

    return-object p1
.end method

.method public GetAdCategory(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the Ad Category"
    .end annotation

    .line 153
    instance-of v0, p1, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    if-eqz v0, :cond_0

    .line 154
    check-cast p1, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getCategory()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 156
    :cond_0
    const-string p1, "GetAdCategory requires a Native Ad as input"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/StartAppNativeAd;->ErrorOccurred(Ljava/lang/String;)V

    .line 157
    const-string p1, ""

    return-object p1
.end method

.method public GetAdDescription(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the Ad Description"
    .end annotation

    .line 103
    instance-of v0, p1, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    if-eqz v0, :cond_0

    .line 104
    check-cast p1, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 106
    :cond_0
    const-string p1, "GetAdDescription requires a Native Ad as input"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/StartAppNativeAd;->ErrorOccurred(Ljava/lang/String;)V

    .line 107
    const-string p1, ""

    return-object p1
.end method

.method public GetAdImageUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the Ad Image Url"
    .end annotation

    .line 123
    instance-of v0, p1, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    if-eqz v0, :cond_0

    .line 124
    check-cast p1, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 126
    :cond_0
    const-string p1, "GetAdImageUrl requires a Native Ad as input"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/StartAppNativeAd;->ErrorOccurred(Ljava/lang/String;)V

    .line 127
    const-string p1, ""

    return-object p1
.end method

.method public GetAdInstalls(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the Ad Install in the Store"
    .end annotation

    .line 143
    instance-of v0, p1, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    if-eqz v0, :cond_0

    .line 144
    check-cast p1, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getInstalls()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 146
    :cond_0
    const-string p1, "GetAdInstalls requires a Native Ad as input"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/StartAppNativeAd;->ErrorOccurred(Ljava/lang/String;)V

    .line 147
    const-string p1, ""

    return-object p1
.end method

.method public GetAdRating(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the Ad Rating in PlayStore"
    .end annotation

    .line 113
    instance-of v0, p1, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    if-eqz v0, :cond_0

    .line 114
    check-cast p1, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getRating()F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 116
    :cond_0
    const-string p1, "GetAdRating requires a Native Ad as input"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/StartAppNativeAd;->ErrorOccurred(Ljava/lang/String;)V

    .line 117
    const-string p1, ""

    return-object p1
.end method

.method public GetAdSecondaryImageUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the Ad Secondary Image Url"
    .end annotation

    .line 133
    instance-of v0, p1, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    if-eqz v0, :cond_0

    .line 134
    check-cast p1, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getSecondaryImageUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 136
    :cond_0
    const-string p1, "GetAdSecondaryImageUrl requires a Native Ad as input"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/StartAppNativeAd;->ErrorOccurred(Ljava/lang/String;)V

    .line 137
    const-string p1, ""

    return-object p1
.end method

.method public GetAdTitle(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the Ad Title"
    .end annotation

    .line 93
    instance-of v0, p1, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    if-eqz v0, :cond_0

    .line 94
    check-cast p1, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 96
    :cond_0
    const-string p1, "GetAdTitle requires a Native Ad as input"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/StartAppNativeAd;->ErrorOccurred(Ljava/lang/String;)V

    .line 97
    const-string p1, ""

    return-object p1
.end method

.method public IsSdkInitialized()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check if the StartApp SDK Is Initialized"
    .end annotation

    .line 44
    sget-boolean v0, Lcom/google/appinventor/components/runtime/StartAppCore;->SdkInitialized:Z

    return v0
.end method

.method public LoadAd(III)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load a Native Ad. numberOfAds is the number of ads to load, primary and secondary Image Sizes can be the following:0 \u2013 for image size 72px X 72px \n1 \u2013 for image size 100px X 100px \n2 \u2013 for image size 150px X 150px \n3 \u2013 for image size 340px X 340px \n4 \u2013 for image size 1200px X 628px \n5 \u2013 for image size 320px X 480px \n6 \u2013 for image size 480px X 320px. \nNote: Size 5-6 can\'t be used together with sizes 0-4. Also 0 - 3 are the allowed ad Sizes for Secondary Image Size"
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/StartAppNativeAd;->IsSdkInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/StartAppNativeAd;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppNativeAd;->nativeAd:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;

    .line 60
    new-instance v0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    invoke-direct {v0}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;-><init>()V

    .line 61
    invoke-virtual {v0, p1}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setAdsNumber(I)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object p1

    .line 62
    invoke-virtual {p1, p2}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setPrimaryImageSize(I)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object p1

    .line 63
    invoke-virtual {p1, p3}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setSecondaryImageSize(I)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object p1

    .line 64
    new-instance p2, Lcom/google/appinventor/components/runtime/StartAppNativeAd$1;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/StartAppNativeAd$1;-><init>(Lcom/google/appinventor/components/runtime/StartAppNativeAd;)V

    .line 76
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/StartAppNativeAd;->nativeAd:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;

    invoke-virtual {p3, p1, p2}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->loadAd(Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)Z

    return-void

    .line 78
    :cond_0
    const-string p1, "SDK Not Yet Loaded"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/StartAppNativeAd;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public RegisterContainerForClick(Ljava/lang/Object;Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set a Container to listen for Interaction from the User"
    .end annotation

    .line 84
    instance-of v0, p1, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    if-eqz v0, :cond_0

    .line 85
    check-cast p1, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->registerViewForInteraction(Landroid/view/View;)V

    return-void

    .line 87
    :cond_0
    const-string p1, "RegisterContainerForClick requires a Native Ad as input"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/StartAppNativeAd;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method
