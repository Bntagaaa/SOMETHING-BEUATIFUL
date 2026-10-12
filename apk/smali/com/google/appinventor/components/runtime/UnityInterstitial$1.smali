.class Lcom/google/appinventor/components/runtime/UnityInterstitial$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/UnityInterstitial;->LoadAd(Ljava/lang/String;)V
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

    .line 39
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/UnityInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/UnityInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnityAdsAdLoaded(Ljava/lang/String;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/UnityInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/UnityInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/UnityInterstitial;->AdLoaded()V

    return-void
.end method

.method public onUnityAdsFailedToLoad(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/UnityInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/UnityInterstitial;

    invoke-virtual {p2}, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/UnityInterstitial;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method
