.class public final Lcom/google/appinventor/components/runtime/IronSourceBanner;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0xe
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "The Banner is a rectangular, system-initiated ad that can be either static or animated, and is served in a designated area around your live app content. This ad unit supports ad placements as well as capping and pacing. <br> SDK Version: 7.3.0.1"
    iconName = "images/ironSourceBanner.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "ironsource-mediationsdk.aar, ironsource-mediationsdk.jar, ironsource-adqualitysdk.aar, ironsource-adqualitysdk.jar,  play-services-appset.aar, play-services-appset.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-base.aar, play-services-base.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, annotation.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, com.google.android.gms.permission.AD_ID"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private appKey:Ljava/lang/String;

.field private banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field private bannerContainer:Landroid/widget/FrameLayout;

.field private bannerSize:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 54
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->bannerSize:I

    .line 55
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->activity:Landroid/app/Activity;

    .line 57
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->bannerContainer:Landroid/widget/FrameLayout;

    .line 59
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method private getActualAdSize(Ljava/lang/Object;)Lcom/ironsource/mediationsdk/ISBannerSize;
    .locals 3

    .line 225
    const-string v0, "Wrong AdSize, Loading \"Banner\" size as default"

    :try_start_0
    instance-of v1, p1, Lcom/ironsource/mediationsdk/ISBannerSize;

    if-eqz v1, :cond_0

    .line 226
    check-cast p1, Lcom/ironsource/mediationsdk/ISBannerSize;

    return-object p1

    .line 227
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/IronSourceBannerSize;->StandardBanner:Lcom/google/appinventor/components/common/IronSourceBannerSize;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/common/IronSourceBannerSize;->valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/IronSourceBannerSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/common/IronSourceBannerSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->bannerSize:I

    .line 229
    sget-object p1, Lcom/ironsource/mediationsdk/ISBannerSize;->BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-object p1

    .line 230
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/IronSourceBannerSize;->LargeBanner:Lcom/google/appinventor/components/common/IronSourceBannerSize;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/common/IronSourceBannerSize;->valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/IronSourceBannerSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/common/IronSourceBannerSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->bannerSize:I

    .line 232
    sget-object p1, Lcom/ironsource/mediationsdk/ISBannerSize;->LARGE:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-object p1

    .line 233
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/IronSourceBannerSize;->RectangleBanner:Lcom/google/appinventor/components/common/IronSourceBannerSize;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 234
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/common/IronSourceBannerSize;->valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/IronSourceBannerSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/common/IronSourceBannerSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->bannerSize:I

    .line 235
    sget-object p1, Lcom/ironsource/mediationsdk/ISBannerSize;->RECTANGLE:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-object p1

    .line 236
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/IronSourceBannerSize;->SmartBanner:Lcom/google/appinventor/components/common/IronSourceBannerSize;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 237
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/common/IronSourceBannerSize;->valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/IronSourceBannerSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/common/IronSourceBannerSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->bannerSize:I

    .line 238
    sget-object p1, Lcom/ironsource/mediationsdk/ISBannerSize;->SMART:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-object p1

    .line 240
    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/IronSourceBanner;->AdFailedToLoad(Ljava/lang/String;)V

    .line 241
    sget-object p1, Lcom/ironsource/mediationsdk/ISBannerSize;->BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 244
    :catch_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/IronSourceBanner;->AdFailedToLoad(Ljava/lang/String;)V

    .line 245
    sget-object p1, Lcom/ironsource/mediationsdk/ISBannerSize;->BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-object p1
.end method


# virtual methods
.method public AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Clicked"
    .end annotation

    const/4 v0, 0x0

    .line 282
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClicked"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Closed"
    .end annotation

    const/4 v0, 0x0

    .line 277
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClosed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdDisplayed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Displayed"
    .end annotation

    const/4 v0, 0x0

    .line 267
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdDisplayed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToLoad(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Failed To Load"
    .end annotation

    .line 262
    const-string v0, "AdFailedToLoad"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Loaded"
    .end annotation

    const/4 v0, 0x0

    .line 257
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdOpened()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Opened"
    .end annotation

    const/4 v0, 0x0

    .line 272
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdOpened"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AppKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Ironsource AppKey"
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public AppKey(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "IronSource Banner AppKey"
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->appKey:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const/4 v2, 0x0

    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Lcom/ironsource/mediationsdk/IronSource;->init(Landroid/content/Context;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    return-void
.end method

.method public CreateCustomBanner(II)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Custom Banner Size. width and height in dp. Use when loading ads"
    .end annotation

    .line 127
    new-instance v0, Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/mediationsdk/ISBannerSize;-><init>(II)V

    return-object v0
.end method

.method public DestroyBannerAd()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Destroys the banner ad, its necessary to make it working in other screens as well"
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    .line 252
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->bannerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

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

.method public LargeBanner()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Large Banner Size. Use when loading ads"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    sget-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->LARGE:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-object v0
.end method

.method public LoadAd(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/IronSourceBannerSize;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load a Banner Ad"
    .end annotation

    .line 132
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/IronSourceBanner;->getActualAdSize(Ljava/lang/Object;)Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object p1

    .line 133
    instance-of v0, p1, Lcom/ironsource/mediationsdk/ISBannerSize;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/IronSource;->createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 135
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->bannerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->bannerContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    new-instance v0, Lcom/google/appinventor/components/runtime/IronSourceBanner$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/IronSourceBanner$1;-><init>(Lcom/google/appinventor/components/runtime/IronSourceBanner;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->setLevelPlayBannerListener(Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;)V

    .line 171
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    return-void

    .line 173
    :cond_0
    const-string p1, "Wrong Banner Size"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/IronSourceBanner;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public LoadAdWithPlacement(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/IronSourceBannerSize;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load a Banner Ad with a Placement Name"
    .end annotation

    .line 179
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/IronSourceBanner;->getActualAdSize(Ljava/lang/Object;)Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object p2

    .line 180
    instance-of v0, p2, Lcom/ironsource/mediationsdk/ISBannerSize;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/ironsource/mediationsdk/IronSource;->createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 182
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 183
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->bannerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 184
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->bannerContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    new-instance v0, Lcom/google/appinventor/components/runtime/IronSourceBanner$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/IronSourceBanner$2;-><init>(Lcom/google/appinventor/components/runtime/IronSourceBanner;)V

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->setLevelPlayBannerListener(Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;)V

    .line 217
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-static {p2, p1}, Lcom/ironsource/mediationsdk/IronSource;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    return-void

    .line 219
    :cond_0
    const-string p1, "Wrong Banner Size"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/IronSourceBanner;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public RectangleBanner()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Rectangle Banner Size. Use when loading ads"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    sget-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->RECTANGLE:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-object v0
.end method

.method public SmartBanner()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Smart Banner Size. Use when loading ads"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    sget-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->SMART:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-object v0
.end method

.method public StandardBanner()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Standard Banner Size. Use when loading ads"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    sget-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-object v0
.end method

.method public ValidateIntegration()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Only to Validate if the Integration was Successful"
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateIntegration(Landroid/content/Context;)V

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

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->bannerContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .line 81
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/IronSourceBanner;->DestroyBannerAd()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/IronSourceBanner;->DestroyBannerAd()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 74
    iget v0, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner;->bannerSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/IronSourceBanner;->LoadAd(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
