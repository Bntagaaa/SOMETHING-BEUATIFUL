.class Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mbridge/msdk/newinterstitial/out/NewInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd;->AdClicked()V

    return-void
.end method

.method public onAdClose(Lcom/mbridge/msdk/out/MBridgeIds;Lcom/mbridge/msdk/out/RewardInfo;)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd;

    invoke-virtual {p2}, Lcom/mbridge/msdk/out/RewardInfo;->isCompleteView()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd;->AdClosed(Z)V

    return-void
.end method

.method public onAdCloseWithNIReward(Lcom/mbridge/msdk/out/MBridgeIds;Lcom/mbridge/msdk/out/RewardInfo;)V
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd;->AdClosedWithReward()V

    return-void
.end method

.method public onAdShow(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 0

    .line 93
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd;->AdShown()V

    return-void
.end method

.method public onEndcardShow(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd;->EndCardShown()V

    return-void
.end method

.method public onLoadCampaignSuccess(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 0

    .line 73
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd;->AdLoaded()V

    return-void
.end method

.method public onResourceLoadFail(Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onResourceLoadSuccess(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 0

    return-void
.end method

.method public onShowFail(Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd;->AdFailedToShow(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoComplete(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 0

    .line 108
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronMintegralInterstitialAd;->VideoCompleted()V

    return-void
.end method
