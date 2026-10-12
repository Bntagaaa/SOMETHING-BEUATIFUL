.class Lcom/google/appinventor/components/runtime/UnityInterstitial$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/UnityInterstitial;->ShowAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/UnityInterstitial;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/UnityInterstitial;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/UnityInterstitial$2;->this$0:Lcom/google/appinventor/components/runtime/UnityInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnityAdsShowClick(Ljava/lang/String;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/UnityInterstitial$2;->this$0:Lcom/google/appinventor/components/runtime/UnityInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/UnityInterstitial;->AdClicked()V

    return-void
.end method

.method public onUnityAdsShowComplete(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;)V
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/UnityInterstitial$2;->this$0:Lcom/google/appinventor/components/runtime/UnityInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/UnityInterstitial;->AdFinished()V

    return-void
.end method

.method public onUnityAdsShowFailure(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/UnityInterstitial$2;->this$0:Lcom/google/appinventor/components/runtime/UnityInterstitial;

    invoke-virtual {p2}, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/UnityInterstitial;->AdFailedToShow(Ljava/lang/String;)V

    return-void
.end method

.method public onUnityAdsShowStart(Ljava/lang/String;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/UnityInterstitial$2;->this$0:Lcom/google/appinventor/components/runtime/UnityInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/UnityInterstitial;->AdStarted()V

    return-void
.end method
