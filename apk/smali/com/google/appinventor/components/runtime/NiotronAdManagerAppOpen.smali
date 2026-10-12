.class public final Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "App open ad view provided by Ad Manager"
    iconName = "images/niotronAdManagerAppOpen.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppOpenAdManager"

.field private static final TEST_AD_UNIT_ID:Ljava/lang/String; = "/6499/example/app-open"


# instance fields
.field private appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

.field private context:Landroid/content/Context;

.field private isLoadingAd:Z

.field private isShowingAd:Z

.field private loadTime:J

.field private testMode:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 59
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->isLoadingAd:Z

    .line 46
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->isShowingAd:Z

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->loadTime:J

    .line 60
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->context:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;Lcom/google/android/gms/ads/appopen/AppOpenAd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    return-void
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->isLoadingAd:Z

    return-void
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->isShowingAd:Z

    return-void
.end method

.method private wasLoadTimeLessThanNHoursAgo(J)Z
    .locals 4

    .line 168
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->loadTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    mul-long p1, p1, v2

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad clicked triggers this event"
    .end annotation

    const/4 v0, 0x0

    .line 143
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClicked"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdDismissedFullScreenContent()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Dismissal of ad triggers this event"
    .end annotation

    const/4 v0, 0x0

    .line 148
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdDismissedFullScreenContent"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToShowFullScreenContent(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Failure of showing full screen content triggers this event"
    .end annotation

    .line 153
    const-string v0, "FailedToShowFullScreenContent"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdImpression()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad impression triggers this event"
    .end annotation

    const/4 v0, 0x0

    .line 158
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdImpression"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdShowedFullScreenContent()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad showed full screen content triggers this event"
    .end annotation

    const/4 v0, 0x0

    .line 163
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdShowedFullScreenContent"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LoadAd(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load ad"
    .end annotation

    .line 66
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->isLoadingAd:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->isAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->isLoadingAd:Z

    .line 71
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->context:Landroid/content/Context;

    .line 73
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->testMode:Z

    if-eqz v3, :cond_1

    const-string p1, "/6499/example/app-open"

    :cond_1
    new-instance v3, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen$1;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;)V

    .line 72
    invoke-static {v2, p1, v1, v0, v3}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;ILcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public ShowAd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the ad"
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->isShowingAd:Z

    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->show(Landroid/app/Activity;)V

    return-void
.end method

.method public TestMode(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 134
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->testMode:Z

    return-void
.end method

.method public isAdAvailable()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns if Ad is available"
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->wasLoadTimeLessThanNHoursAgo(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
