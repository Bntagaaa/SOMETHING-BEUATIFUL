.class Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mbridge/msdk/out/BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;->LoadBannerAd(Ljava/lang/Object;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeFullScreen(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;->AdFullScreenClosed()V

    return-void
.end method

.method public onClick(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;->AdClicked()V

    return-void
.end method

.method public onCloseBanner(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;->BannerAdClosed()V

    return-void
.end method

.method public onLeaveApp(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;->BannerAdLeaveApp()V

    return-void
.end method

.method public onLoadFailed(Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onLoadSuccessed(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;->AdLoaded()V

    return-void
.end method

.method public onLogImpression(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;->AdImpressionLogged()V

    return-void
.end method

.method public showFullScreen(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 0

    .line 87
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;->AdFullScreenShown()V

    return-void
.end method
