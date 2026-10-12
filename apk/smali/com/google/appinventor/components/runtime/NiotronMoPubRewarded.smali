.class public final Lcom/google/appinventor/components/runtime/NiotronMoPubRewarded;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/MoPubRewardedAdListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for MoPub Rewarded Video Ads"
    iconName = "images/niotronMobPubRewarded.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "media.jar, media.aar, media2-common.jar, media2-common.aar, media2-player.aar, media2-player.jar, media2-session.jar, media2-session.aar, media2-widget.jar, media2-widget.aar, palette.jar, media2-exoplayer.jar, concurrent-futures.jar"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 33
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 34
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedAds;->setRewardedAdListener(Lcom/mopub/mobileads/MoPubRewardedAdListener;)V

    return-void
.end method


# virtual methods
.method public AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad clicked"
    .end annotation

    const/4 v0, 0x0

    .line 69
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClicked"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad clicked"
    .end annotation

    const/4 v0, 0x0

    .line 74
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClosed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdCompleted(ILjava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad completed"
    .end annotation

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "AdCompleted"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoadFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad load failed"
    .end annotation

    .line 54
    const-string v0, "AdLoadFailed"

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
        description = "Ad loaded"
    .end annotation

    const/4 v0, 0x0

    .line 49
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdPlaybackError(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad playback error"
    .end annotation

    .line 64
    const-string v0, "AdPlaybackError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdStarted()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad started"
    .end annotation

    const/4 v0, 0x0

    .line 59
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdStarted"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LoadAd(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load ad"
    .end annotation

    const/4 v0, 0x0

    .line 39
    new-array v0, v0, [Lcom/mopub/common/MediationSettings;

    invoke-static {p1, v0}, Lcom/mopub/mobileads/MoPubRewardedAds;->loadRewardedAd(Ljava/lang/String;[Lcom/mopub/common/MediationSettings;)V

    return-void
.end method

.method public ShowAd(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows the ad"
    .end annotation

    .line 44
    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedAds;->showRewardedAd(Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedAdClicked(Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronMoPubRewarded;->AdClicked()V

    return-void
.end method

.method public onRewardedAdClosed(Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronMoPubRewarded;->AdClosed()V

    return-void
.end method

.method public onRewardedAdCompleted(Ljava/util/Set;Lcom/mopub/common/MoPubReward;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/common/MoPubReward;",
            ")V"
        }
    .end annotation

    .line 94
    invoke-virtual {p2}, Lcom/mopub/common/MoPubReward;->getAmount()I

    move-result p1

    invoke-virtual {p2}, Lcom/mopub/common/MoPubReward;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mopub/common/MoPubReward;->isSuccessful()Z

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/appinventor/components/runtime/NiotronMoPubRewarded;->AdCompleted(ILjava/lang/String;Z)V

    return-void
.end method

.method public onRewardedAdLoadFailure(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    .line 99
    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMoPubRewarded;->AdLoadFailed(Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedAdLoadSuccess(Ljava/lang/String;)V
    .locals 0

    .line 104
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronMoPubRewarded;->AdLoaded()V

    return-void
.end method

.method public onRewardedAdShowError(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    .line 109
    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMoPubRewarded;->AdPlaybackError(Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedAdStarted(Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronMoPubRewarded;->AdStarted()V

    return-void
.end method
