.class Lcom/google/appinventor/components/runtime/UnityRewarded$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/UnityRewarded;->LoadAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/UnityRewarded;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/UnityRewarded;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/UnityRewarded$1;->this$0:Lcom/google/appinventor/components/runtime/UnityRewarded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnityAdsAdLoaded(Ljava/lang/String;)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/UnityRewarded$1;->this$0:Lcom/google/appinventor/components/runtime/UnityRewarded;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/UnityRewarded;->AdLoaded()V

    return-void
.end method

.method public onUnityAdsFailedToLoad(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;)V
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/UnityRewarded$1;->this$0:Lcom/google/appinventor/components/runtime/UnityRewarded;

    invoke-virtual {p2}, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/UnityRewarded;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method
