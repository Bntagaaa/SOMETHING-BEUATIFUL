.class Lcom/google/appinventor/components/runtime/UnityBannerAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/services/banners/BannerView$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/UnityBannerAd;->LoadAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/UnityBannerAd;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/UnityBannerAd;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/UnityBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/UnityBannerAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerClick(Lcom/unity3d/services/banners/BannerView;)V
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/UnityBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/UnityBannerAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/UnityBannerAd;->AdClicked()V

    return-void
.end method

.method public onBannerFailedToLoad(Lcom/unity3d/services/banners/BannerView;Lcom/unity3d/services/banners/BannerErrorInfo;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/UnityBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/UnityBannerAd;

    iget-object p2, p2, Lcom/unity3d/services/banners/BannerErrorInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/UnityBannerAd;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onBannerLeftApplication(Lcom/unity3d/services/banners/BannerView;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/UnityBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/UnityBannerAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/UnityBannerAd;->AdLeftApplication()V

    return-void
.end method

.method public onBannerLoaded(Lcom/unity3d/services/banners/BannerView;)V
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/UnityBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/UnityBannerAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/UnityBannerAd;->AdLoaded()V

    return-void
.end method

.method public onBannerShown(Lcom/unity3d/services/banners/BannerView;)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/UnityBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/UnityBannerAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/UnityBannerAd;->AdShown()V

    return-void
.end method
