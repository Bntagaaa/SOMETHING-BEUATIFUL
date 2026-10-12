.class public final Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Rewarded Ad Provided By Google Ad Manager"
    iconName = "images/niotronAdManagerRewarded.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private mRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

.field private testMode:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 36
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 37
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;->activity:Landroid/app/Activity;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;)Lcom/google/android/gms/ads/rewarded/RewardedAd;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;->mRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;->mRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-void
.end method


# virtual methods
.method public AdDismissed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Rewarded Ad was Dismissed"
    .end annotation

    const/4 v0, 0x0

    .line 127
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdDismissed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdDisplayed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Rewarded Ad was Displayed"
    .end annotation

    const/4 v0, 0x0

    .line 137
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdDisplayed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToDisplay(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Rewarded Ad Failed to display. Check Error Message for info"
    .end annotation

    .line 142
    const-string v0, "AdFailedToDisplay"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToLoad(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Failed to Load Ad. Check Error Message for info"
    .end annotation

    .line 112
    const-string v0, "AdFailedToLoad"

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
        description = "Rewarded Ad Impression"
    .end annotation

    const/4 v0, 0x0

    .line 132
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdImpression"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Loaded. Use Show Ad Block Inside this Event"
    .end annotation

    const/4 v0, 0x0

    .line 107
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdOnReward(Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Rewarded Ad Rewarded Some Item for the user"
    .end annotation

    .line 117
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "AdOnReward"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdOpened()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Rewarded AD Was Opened"
    .end annotation

    const/4 v0, 0x0

    .line 122
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdOpened"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LoadAd(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load a Rewarded Ad"
    .end annotation

    .line 54
    new-instance v0, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->build()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;->activity:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;->testMode:Z

    if-eqz v2, :cond_0

    const-string p1, "/6499/example/rewarded"

    :cond_0
    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;)V

    invoke-static {v1, p1, v0, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    return-void
.end method

.method public ShowAd()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show a Rewarded Ad After Loading"
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;->mRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$2;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    return-void

    .line 101
    :cond_0
    const-string v0, "Ad Not Loaded"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;->AdFailedToDisplay(Ljava/lang/String;)V

    return-void
.end method

.method public TestMode(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Test Ads"
    .end annotation

    .line 43
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;->testMode:Z

    return-void
.end method

.method public TestMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Test Ads"
    .end annotation

    .line 48
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;->testMode:Z

    return v0
.end method
